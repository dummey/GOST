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

    def add_todo
      _todos << { name: page._new_todo }
      page._new_todo = ''
    end

    def current_todo
      _todos[(params._index || 0).to_i]
    end

    def front_chainring
      return unless page._front_chainring
      #page._fc_arrays = 
      page._front_chainring.split(/\s*,\s*/)
    end

    def rear_cassette
      return unless page._rear_cassette
      # page._rc_arrays = 
      page._rear_cassette.split(/\s*,\s*/)
    end

    def gear_calc
      p "in gear calc"
      # return unless page._fc_arrays && page._rc_arrays
      wheel_size = page._wheel_size.to_i || 26.3
      low_cadence = page._low_cadence ? page._low_cadence.to_i : 70
      top_cadence = page._top_cadence ? page._top_cadence.to_i : 110
      mid_cadence = (low_cadence + top_cadence) / 2
      converstion = 336
      gear_ratios = []

      gear_ratios = front_chainring.map {|f| rear_cassette.map{|r| [f,r]}}
      gear_ratios = gear_ratios.to_a.flatten(1)

      gear_ratios.map{ |gears|
        gears << (gears[0].to_i / gears[1].to_i * wheel_size * low_cadence / converstion).round(2)
        gears << (gears[0].to_i / gears[1].to_i * wheel_size * mid_cadence / converstion).round(2)
        gears << (gears[0].to_i / gears[1].to_i * wheel_size * top_cadence / converstion).round(2)
      }

      gear_ratios
    end
  end
end
