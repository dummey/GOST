module BikeSpeed
  class MainController < Volt::ModelController
    private

    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    def bike_speed_ready
      #Do google charts stuff
      `
        google.setOnLoadCallback(drawChart);
          function drawChart() {
            var data = google.visualization.arrayToDataTable(
              []
              , true);

            var options = {
              legend:'none',
              hAxis: {
                title: 'gear ratio',
              },
              vAxis: {
                title: 'mph'
              },
              axisTitlesPosition: 'in'
            };

            var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));

            chart.draw(data, options);
          }

      `

      #Do Tooltip stuff
      `
        $('[data-toggle="tooltip"]').tooltip(); 
      `

      #Do datatables stuff
      `
        $('#gear-chart').addClass('table table-striped table-bordered table-condensed');
      `
    end

    def front_chainring
      return unless page._front_chainring
      page._front_chainring.split(/\s*,\s*/)
    end

    def rear_cassette
      return unless page._rear_cassette
      page._rear_cassette.split(/\s*,\s*/)
    end


    def draw_chart(gear_chart)
      if RUBY_PLATFORM == 'opal'
        `
          var data = google.visualization.arrayToDataTable(
            #{gear_chart}
            , true);

          var options = {
              legend:'none',
              hAxis: {
                title: 'gear ratio',
              },
              vAxis: {
                title: 'mph'
              }
            };

          var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));

          chart.draw(data, options);
        `
      end
    end

    def bike_speed
      return [] unless front_chainring && 
        rear_cassette && 
        page._wheel_size &&
        page._tire_size &&
        page._tire_size &&
        page._low_cadence &&
        page._top_cadence

      wheel_size = page._wheel_size.to_i# ? page._wheel_size.to_i : 622
      tire_size = page._tire_size.to_i# ? page._tire_size.to_i : 23
      low_cadence = page._low_cadence.to_i# ? page._low_cadence.to_i : 80
      top_cadence = page._top_cadence.to_i# ? page._top_cadence.to_i : 100
      mid_cadence = (low_cadence + top_cadence) / 2
      converstion = 336

      gear_ratios = front_chainring.map {|f| rear_cassette.map{|r| [f,r]}}
      gear_ratios = gear_ratios.to_a.flatten(1)

      gear_ratios.map{ |gears|
        gears << (gears[0].to_i / gears[1].to_i * ((wheel_size + tire_size)/25.4) * low_cadence / converstion).round(2)
        gears << (gears[0].to_i / gears[1].to_i * ((wheel_size + tire_size)/25.4) * mid_cadence / converstion).round(2)
        gears << (gears[0].to_i / gears[1].to_i * ((wheel_size + tire_size)/25.4) * top_cadence / converstion).round(2)
      }


      gear_chart = gear_ratios.to_a
      gear_chart = gear_chart.map do |e| 
        name = "#{e[0]}x#{e[1]}"
        delta = e[4] - e[2]
        mid = e[3]
        optimal = [mid - delta/4, mid + delta/4]
        [name, e[2], *optimal, e[4]]
      end
      
      draw_chart(gear_chart)

      gear_ratios
    end

  end
end