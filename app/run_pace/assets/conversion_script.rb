require 'csv'
require 'pp'

# CSV.foreach('vdot.csv', headers: true, :header_converters => :symbol) do |row|
#   puts row.to_h # hash
# end

csv = CSV.read('training.csv', headers: true, :converters => [:all])

csv_arr = csv.to_a
headers = csv_arr.shift
headers.shift

def convert_time(time_str)
  return nil if time_str == '-' || time_str == nil
  return time_str.to_i if time_str.kind_of? Fixnum


  conv = [360, 60, 1]
  splits = time_str.split(':').map{|v| v.to_i}
  case splits.size
  when 1
    return splits[0]
  when 2
    return splits[1] + splits[0] * 60
  when 3
    return splits[2] + splits[1] * 60 + splits[0] * 3600
  end
end

pp headers
VDOT_HASH = csv_arr.map {|row|
  times = row[1..-1].map{|t| convert_time(t)}
  {row[0] => Hash[headers.zip(times)]}
}.reduce({}, :update)

def lookup_vdot(distance, time)
  target_time = convert_time(time)

  prev_delta = Float::INFINITY
  prev_nearest = nil

  VDOT_HASH.each {|vdot, times|
    time = times[distance]

    delta = (time - target_time).abs

    p [time, target_time, delta, prev_delta]

    if delta < prev_delta
      prev_delta = delta
      prev_nearest = vdot
    else
      return prev_nearest
    end
  }

  return prev_nearest
end

p VDOT_HASH

# p lookup_vdot(:"5mile", "50:48")