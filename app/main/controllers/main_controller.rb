# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    model :store

    def index
      # Add code for when the index view is loaded
    end

    def about
      # Add code for when the about view is loaded
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end

    def front_chainring
      return unless page._front_chainring
      page._front_chainring.split(/\s*,\s*/)
    end

    def rear_cassette
      return unless page._rear_cassette
      page._rear_cassette.split(/\s*,\s*/)
    end

    def gear_calc_ready
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

    def gear_calc
      return [] unless front_chainring && rear_cassette

      wheel_size = page._wheel_size ? page._wheel_size.to_i : 622
      wheel_size = wheel_size / 25.4 #converting from mm to inch
      tire_size = page._tire_size ? page._tire_size.to_i : 23
      low_cadence = page._low_cadence ? page._low_cadence.to_i : 80
      top_cadence = page._top_cadence ? page._top_cadence.to_i : 100
      mid_cadence = (low_cadence + top_cadence) / 2
      converstion = 336

      gear_ratios = front_chainring.map {|f| rear_cassette.map{|r| [f,r]}}
      gear_ratios = gear_ratios.to_a.flatten(1)

      gear_ratios.map{ |gears|
        gears << (gears[0].to_i / gears[1].to_i * (wheel_size + tire_size) * low_cadence / converstion).round(2)
        gears << (gears[0].to_i / gears[1].to_i * (wheel_size + tire_size) * mid_cadence / converstion).round(2)
        gears << (gears[0].to_i / gears[1].to_i * (wheel_size + tire_size) * top_cadence / converstion).round(2)
      }


      gear_chart = gear_ratios.to_a
      gear_chart = gear_chart.map do |e| 
        name = "#{e[0]}x#{e[1]}"
        delta = e[4] - e[2]
        mid = e[3]
        optimal = [mid - delta/4, mid + delta/4]
        [name, e[2], *optimal, e[4]]
      end
      # p gear_chart.to_s


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

      gear_ratios
    end

  end
end
