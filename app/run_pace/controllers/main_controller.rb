module RunPace
  class MainController < Volt::ModelController
    def index
      # Add code for when the index view is loaded
    end

    def about
      # Add code for when the about view is loaded
    end

    private

    VDOT_Table = {85=>{:"1500"=>203, :mile=>219, :"3k"=>434, :"2mile"=>468, :"5k"=>757, :"8k"=>1250, :"5mile"=>1258, :"10k"=>1579, :"15k"=>2417, :"10mile"=>2606, :"20k"=>3280, :"12_marathon"=>3470, :"25k"=>633, :"30k"=>1533, :marathon=>190}, 84=>{:"1500"=>205, :mile=>221, :"3k"=>438, :"2mile"=>473, :"5k"=>765, :"8k"=>1262, :"5mile"=>1270, :"10k"=>1594, :"15k"=>2442, :"10mile"=>2633, :"20k"=>3314, :"12_marathon"=>3505, :"25k"=>675, :"30k"=>1585, :marathon=>264}, 83=>{:"1500"=>207, :mile=>224, :"3k"=>443, :"2mile"=>478, :"5k"=>773, :"8k"=>1276, :"5mile"=>1284, :"10k"=>1611, :"15k"=>2466, :"10mile"=>2659, :"20k"=>3348, :"12_marathon"=>3541, :"25k"=>719, :"30k"=>1638, :marathon=>340}, 82=>{:"1500"=>209, :mile=>226, :"3k"=>447, :"2mile"=>483, :"5k"=>781, :"8k"=>1289, :"5mile"=>1297, :"10k"=>1627, :"15k"=>2492, :"10mile"=>2687, :"20k"=>3383, :"12_marathon"=>3578, :"25k"=>763, :"30k"=>1692, :marathon=>417}, 81=>{:"1500"=>211, :mile=>228, :"3k"=>452, :"2mile"=>488, :"5k"=>789, :"8k"=>1302, :"5mile"=>1310, :"10k"=>1644, :"15k"=>2518, :"10mile"=>2715, :"20k"=>3418, :"12_marathon"=>75, :"25k"=>808, :"30k"=>1747, :marathon=>497}, 80=>{:"1500"=>214, :mile=>231, :"3k"=>457, :"2mile"=>494, :"5k"=>798, :"8k"=>1316, :"5mile"=>1324, :"10k"=>1661, :"15k"=>2545, :"10mile"=>2744, :"20k"=>3454, :"12_marathon"=>114, :"25k"=>855, :"30k"=>1804, :marathon=>578}, 79=>{:"1500"=>216, :mile=>233, :"3k"=>463, :"2mile"=>500, :"5k"=>806, :"8k"=>1330, :"5mile"=>1338, :"10k"=>1679, :"15k"=>2572, :"10mile"=>2773, :"20k"=>3492, :"12_marathon"=>154, :"25k"=>903, :"30k"=>1862, :marathon=>662}, 78=>{:"1500"=>218, :mile=>236, :"3k"=>468, :"2mile"=>505, :"5k"=>815, :"8k"=>1344, :"5mile"=>1352, :"10k"=>1697, :"15k"=>2600, :"10mile"=>2804, :"20k"=>3531, :"12_marathon"=>195, :"25k"=>952, :"30k"=>1922, :marathon=>747}, 77=>{:"1500"=>221, :mile=>238, :"3k"=>473, :"2mile"=>511, :"5k"=>824, :"8k"=>1359, :"5mile"=>1368, :"10k"=>1716, :"15k"=>2629, :"10mile"=>2835, :"20k"=>3570, :"12_marathon"=>236, :"25k"=>1001, :"30k"=>1982, :marathon=>834}, 76=>{:"1500"=>224, :mile=>242, :"3k"=>478, :"2mile"=>517, :"5k"=>834, :"8k"=>1375, :"5mile"=>1383, :"10k"=>1735, :"15k"=>2658, :"10mile"=>2866, :"20k"=>70, :"12_marathon"=>279, :"25k"=>1053, :"30k"=>2045, :marathon=>923}, 75=>{:"1500"=>226, :mile=>244, :"3k"=>484, :"2mile"=>523, :"5k"=>843, :"8k"=>1390, :"5mile"=>1398, :"10k"=>1754, :"15k"=>2688, :"10mile"=>2899, :"20k"=>112, :"12_marathon"=>323, :"25k"=>1106, :"30k"=>2109, :marathon=>1015}, 74=>{:"1500"=>229, :mile=>247, :"3k"=>490, :"2mile"=>529, :"5k"=>853, :"8k"=>1406, :"5mile"=>1414, :"10k"=>1774, :"15k"=>2719, :"10mile"=>2932, :"20k"=>154, :"12_marathon"=>368, :"25k"=>1160, :"30k"=>2174, :marathon=>1109}, 73=>{:"1500"=>232, :mile=>250, :"3k"=>496, :"2mile"=>535, :"5k"=>863, :"8k"=>1422, :"5mile"=>1431, :"10k"=>1795, :"15k"=>2751, :"10mile"=>2967, :"20k"=>197, :"12_marathon"=>414, :"25k"=>1215, :"30k"=>2242, :marathon=>1205}, 72=>{:"1500"=>234, :mile=>253, :"3k"=>502, :"2mile"=>542, :"5k"=>873, :"8k"=>1439, :"5mile"=>1448, :"10k"=>1816, :"15k"=>2784, :"10mile"=>3002, :"20k"=>243, :"12_marathon"=>462, :"25k"=>1273, :"30k"=>2311, :marathon=>1304}, 71=>{:"1500"=>237, :mile=>256, :"3k"=>508, :"2mile"=>549, :"5k"=>884, :"8k"=>1456, :"5mile"=>1465, :"10k"=>1838, :"15k"=>2818, :"10mile"=>3039, :"20k"=>289, :"12_marathon"=>511, :"25k"=>1331, :"30k"=>2382, :marathon=>1406}, 70=>{:"1500"=>240, :mile=>259, :"3k"=>514, :"2mile"=>556, :"5k"=>895, :"8k"=>1474, :"5mile"=>1483, :"10k"=>1860, :"15k"=>2852, :"10mile"=>3076, :"20k"=>336, :"12_marathon"=>561, :"25k"=>1391, :"30k"=>2455, :marathon=>1510}, 69=>{:"1500"=>243, :mile=>263, :"3k"=>521, :"2mile"=>563, :"5k"=>906, :"8k"=>1492, :"5mile"=>1501, :"10k"=>1883, :"15k"=>2888, :"10mile"=>3115, :"20k"=>384, :"12_marathon"=>612, :"25k"=>1453, :"30k"=>2530, :marathon=>1617}, 68=>{:"1500"=>246, :mile=>266, :"3k"=>528, :"2mile"=>570, :"5k"=>918, :"8k"=>1511, :"5mile"=>1520, :"10k"=>1906, :"15k"=>2924, :"10mile"=>3154, :"20k"=>434, :"12_marathon"=>665, :"25k"=>1516, :"30k"=>2607, :marathon=>1727}, 67=>{:"1500"=>250, :mile=>270, :"3k"=>535, :"2mile"=>577, :"5k"=>929, :"8k"=>1530, :"5mile"=>1540, :"10k"=>1931, :"15k"=>2962, :"10mile"=>3195, :"20k"=>486, :"12_marathon"=>720, :"25k"=>1582, :"30k"=>2686, :marathon=>1840}, 66=>{:"1500"=>253, :mile=>273, :"3k"=>542, :"2mile"=>585, :"5k"=>942, :"8k"=>1550, :"5mile"=>1559, :"10k"=>1955, :"15k"=>3000, :"10mile"=>3236, :"20k"=>539, :"12_marathon"=>776, :"25k"=>1649, :"30k"=>2768, :marathon=>1956}, 65=>{:"1500"=>256, :mile=>277, :"3k"=>549, :"2mile"=>593, :"5k"=>954, :"8k"=>1570, :"5mile"=>1580, :"10k"=>1981, :"15k"=>3040, :"10mile"=>3279, :"20k"=>593, :"12_marathon"=>833, :"25k"=>1718, :"30k"=>2851, :marathon=>2075}, 64=>{:"1500"=>260, :mile=>281, :"3k"=>557, :"2mile"=>601, :"5k"=>967, :"8k"=>1592, :"5mile"=>1601, :"10k"=>2008, :"15k"=>3081, :"10mile"=>3323, :"20k"=>650, :"12_marathon"=>893, :"25k"=>1789, :"30k"=>2937, :marathon=>2198}, 63=>{:"1500"=>264, :mile=>285, :"3k"=>565, :"2mile"=>610, :"5k"=>980, :"8k"=>1613, :"5mile"=>1623, :"10k"=>2035, :"15k"=>3123, :"10mile"=>3369, :"20k"=>707, :"12_marathon"=>954, :"25k"=>1862, :"30k"=>3026, :marathon=>2324}, 62=>{:"1500"=>267, :mile=>289, :"3k"=>573, :"2mile"=>618, :"5k"=>994, :"8k"=>1635, :"5mile"=>1645, :"10k"=>2063, :"15k"=>3167, :"10mile"=>3416, :"20k"=>767, :"12_marathon"=>1017, :"25k"=>1938, :"30k"=>3117, :marathon=>2454}, 61=>{:"1500"=>271, :mile=>293, :"3k"=>581, :"2mile"=>627, :"5k"=>1008, :"8k"=>1658, :"5mile"=>1669, :"10k"=>2092, :"15k"=>3212, :"10mile"=>3465, :"20k"=>828, :"12_marathon"=>1082, :"25k"=>2015, :"30k"=>3211, :marathon=>2588}, 60=>{:"1500"=>275, :mile=>297, :"3k"=>590, :"2mile"=>637, :"5k"=>1023, :"8k"=>1682, :"5mile"=>1693, :"10k"=>2122, :"15k"=>3258, :"10mile"=>3515, :"20k"=>891, :"12_marathon"=>1149, :"25k"=>2095, :"30k"=>3308, :marathon=>2725}, 59=>{:"1500"=>279, :mile=>302, :"3k"=>598, :"2mile"=>646, :"5k"=>1037, :"8k"=>1706, :"5mile"=>1716, :"10k"=>2152, :"15k"=>3306, :"10mile"=>3566, :"20k"=>957, :"12_marathon"=>1218, :"25k"=>2178, :"30k"=>3408, :marathon=>2867}, 58=>{:"1500"=>284, :mile=>306, :"3k"=>608, :"2mile"=>656, :"5k"=>1053, :"8k"=>1732, :"5mile"=>1742, :"10k"=>2184, :"15k"=>3355, :"10mile"=>80, :"20k"=>1025, :"12_marathon"=>1290, :"25k"=>2264, :"30k"=>3511, :marathon=>3014}, 57=>{:"1500"=>288, :mile=>311, :"3k"=>617, :"2mile"=>666, :"5k"=>1069, :"8k"=>1758, :"5mile"=>1769, :"10k"=>2217, :"15k"=>3406, :"10mile"=>134, :"20k"=>1094, :"12_marathon"=>1363, :"25k"=>2351, :"30k"=>3617, :marathon=>3165}, 56=>{:"1500"=>293, :mile=>316, :"3k"=>627, :"2mile"=>677, :"5k"=>1085, :"8k"=>1785, :"5mile"=>1795, :"10k"=>2251, :"15k"=>3459, :"10mile"=>192, :"20k"=>1166, :"12_marathon"=>1440, :"25k"=>2443, :"30k"=>187, :marathon=>3320}, 55=>{:"1500"=>297, :mile=>321, :"3k"=>637, :"2mile"=>688, :"5k"=>1102, :"8k"=>1812, :"5mile"=>1823, :"10k"=>2286, :"15k"=>3513, :"10mile"=>250, :"20k"=>1240, :"12_marathon"=>1518, :"25k"=>2536, :"30k"=>300, :marathon=>3481}, 54=>{:"1500"=>302, :mile=>327, :"3k"=>647, :"2mile"=>699, :"5k"=>1120, :"8k"=>1841, :"5mile"=>1852, :"10k"=>2322, :"15k"=>3570, :"10mile"=>312, :"20k"=>1317, :"12_marathon"=>1600, :"25k"=>2633, :"30k"=>418, :marathon=>3647}, 53=>{:"1500"=>307, :mile=>332, :"3k"=>658, :"2mile"=>710, :"5k"=>1138, :"8k"=>1871, :"5mile"=>1883, :"10k"=>2360, :"15k"=>88, :"10mile"=>374, :"20k"=>1397, :"12_marathon"=>1684, :"25k"=>2734, :"30k"=>539, :marathon=>279}, 52=>{:"1500"=>313, :mile=>338, :"3k"=>669, :"2mile"=>722, :"5k"=>1157, :"8k"=>1902, :"5mile"=>1914, :"10k"=>2399, :"15k"=>149, :"10mile"=>440, :"20k"=>1479, :"12_marathon"=>1771, :"25k"=>2837, :"30k"=>664, :marathon=>456}, 51=>{:"1500"=>318, :mile=>344, :"3k"=>681, :"2mile"=>735, :"5k"=>1176, :"8k"=>1934, :"5mile"=>1946, :"10k"=>2439, :"15k"=>211, :"10mile"=>507, :"20k"=>1565, :"12_marathon"=>1862, :"25k"=>2945, :"30k"=>793, :marathon=>639}, 50=>{:"1500"=>324, :mile=>350, :"3k"=>693, :"2mile"=>748, :"5k"=>1197, :"8k"=>1967, :"5mile"=>1979, :"10k"=>2481, :"15k"=>276, :"10mile"=>577, :"20k"=>1653, :"12_marathon"=>1955, :"25k"=>3056, :"30k"=>927, :marathon=>829}, 49=>{:"1500"=>330, :mile=>356, :"3k"=>705, :"2mile"=>761, :"5k"=>1218, :"8k"=>2002, :"5mile"=>2014, :"10k"=>2524, :"15k"=>344, :"10mile"=>650, :"20k"=>1745, :"12_marathon"=>2052, :"25k"=>3172, :"30k"=>1067, :marathon=>1026}, 48=>{:"1500"=>336, :mile=>363, :"3k"=>718, :"2mile"=>775, :"5k"=>1239, :"8k"=>2038, :"5mile"=>2050, :"10k"=>2570, :"15k"=>413, :"10mile"=>725, :"20k"=>1840, :"12_marathon"=>2153, :"25k"=>3292, :"30k"=>1211, :marathon=>1229}, 47=>{:"1500"=>342, :mile=>370, :"3k"=>732, :"2mile"=>790, :"5k"=>1262, :"8k"=>2074, :"5mile"=>2087, :"10k"=>2616, :"15k"=>486, :"10mile"=>804, :"20k"=>1939, :"12_marathon"=>2258, :"25k"=>3416, :"30k"=>1360, :marathon=>1440}, 46=>{:"1500"=>349, :mile=>377, :"3k"=>746, :"2mile"=>805, :"5k"=>1285, :"8k"=>2113, :"5mile"=>2126, :"10k"=>2665, :"15k"=>562, :"10mile"=>886, :"20k"=>2042, :"12_marathon"=>2367, :"25k"=>3546, :"30k"=>1516, :marathon=>1659}, 45=>{:"1500"=>356, :mile=>385, :"3k"=>760, :"2mile"=>820, :"5k"=>1310, :"8k"=>2154, :"5mile"=>2167, :"10k"=>2716, :"15k"=>640, :"10mile"=>970, :"20k"=>2149, :"12_marathon"=>2480, :"25k"=>140, :"30k"=>1677, :marathon=>1886}, 44=>{:"1500"=>363, :mile=>392, :"3k"=>775, :"2mile"=>836, :"5k"=>1335, :"8k"=>2195, :"5mile"=>2209, :"10k"=>2769, :"15k"=>722, :"10mile"=>1058, :"20k"=>2260, :"12_marathon"=>2597, :"25k"=>279, :"30k"=>1845, :marathon=>2123}, 43=>{:"1500"=>371, :mile=>401, :"3k"=>791, :"2mile"=>853, :"5k"=>1361, :"8k"=>2239, :"5mile"=>2252, :"10k"=>2824, :"15k"=>807, :"10mile"=>1150, :"20k"=>2376, :"12_marathon"=>2720, :"25k"=>425, :"30k"=>2019, :marathon=>2368}, 42=>{:"1500"=>379, :mile=>409, :"3k"=>808, :"2mile"=>871, :"5k"=>1389, :"8k"=>2284, :"5mile"=>2298, :"10k"=>2881, :"15k"=>896, :"10mile"=>1246, :"20k"=>2496, :"12_marathon"=>2847, :"25k"=>575, :"30k"=>2200, :marathon=>2623}, 41=>{:"1500"=>387, :mile=>418, :"3k"=>825, :"2mile"=>889, :"5k"=>1418, :"8k"=>2332, :"5mile"=>2346, :"10k"=>2941, :"15k"=>989, :"10mile"=>1346, :"20k"=>2622, :"12_marathon"=>2980, :"25k"=>733, :"30k"=>2389, :marathon=>2889}, 40=>{:"1500"=>395, :mile=>427, :"3k"=>843, :"2mile"=>908, :"5k"=>1448, :"8k"=>2381, :"5mile"=>2396, :"10k"=>3003, :"15k"=>1086, :"10mile"=>1451, :"20k"=>2753, :"12_marathon"=>3119, :"25k"=>897, :"30k"=>2586, :marathon=>3165}, 39=>{:"1500"=>404, :mile=>437, :"3k"=>861, :"2mile"=>929, :"5k"=>1479, :"8k"=>2433, :"5mile"=>2448, :"10k"=>3069, :"15k"=>1187, :"10mile"=>1559, :"20k"=>2890, :"12_marathon"=>3264, :"25k"=>1069, :"30k"=>2792, :marathon=>3454}, 38=>{:"1500"=>414, :mile=>447, :"3k"=>881, :"2mile"=>949, :"5k"=>1512, :"8k"=>2487, :"5mile"=>2502, :"10k"=>3137, :"15k"=>1293, :"10mile"=>1674, :"20k"=>3033, :"12_marathon"=>3415, :"25k"=>1248, :"30k"=>3006, :marathon=>3755}, 37=>{:"1500"=>424, :mile=>458, :"3k"=>901, :"2mile"=>971, :"5k"=>1546, :"8k"=>2544, :"5mile"=>2559, :"10k"=>3209, :"15k"=>1404, :"10mile"=>1793, :"20k"=>3183, :"12_marathon"=>3574, :"25k"=>1435, :"30k"=>3231, :marathon=>530}, 36=>{:"1500"=>434, :mile=>469, :"3k"=>923, :"2mile"=>994, :"5k"=>1582, :"8k"=>2603, :"5mile"=>2619, :"10k"=>3284, :"15k"=>1520, :"10mile"=>1918, :"20k"=>3340, :"12_marathon"=>199, :"25k"=>1631, :"30k"=>3465, :marathon=>859}, 35=>{:"1500"=>445, :mile=>481, :"3k"=>945, :"2mile"=>1018, :"5k"=>1620, :"8k"=>2666, :"5mile"=>2682, :"10k"=>3363, :"15k"=>1642, :"10mile"=>2049, :"20k"=>3504, :"12_marathon"=>373, :"25k"=>1836, :"30k"=>3711, :marathon=>1203}, 34=>{:"1500"=>457, :mile=>494, :"3k"=>969, :"2mile"=>1044, :"5k"=>1659, :"8k"=>2731, :"5mile"=>2748, :"10k"=>3446, :"15k"=>1770, :"10mile"=>2187, :"20k"=>137, :"12_marathon"=>556, :"25k"=>2052, :"30k"=>428, :marathon=>1563}, 33=>{:"1500"=>469, :mile=>507, :"3k"=>993, :"2mile"=>1070, :"5k"=>1701, :"8k"=>2801, :"5mile"=>2818, :"10k"=>3534, :"15k"=>1905, :"10mile"=>2332, :"20k"=>318, :"12_marathon"=>747, :"25k"=>2278, :"30k"=>699, :marathon=>1942}, 32=>{:"1500"=>482, :mile=>521, :"3k"=>1019, :"2mile"=>1098, :"5k"=>1745, :"8k"=>2874, :"5mile"=>2891, :"10k"=>86, :"15k"=>2047, :"10mile"=>2485, :"20k"=>509, :"12_marathon"=>949, :"25k"=>2516, :"30k"=>983, :marathon=>2339}, 31=>{:"1500"=>495, :mile=>535, :"3k"=>1047, :"2mile"=>1128, :"5k"=>1791, :"8k"=>2950, :"5mile"=>2968, :"10k"=>183, :"15k"=>2196, :"10mile"=>2645, :"20k"=>710, :"12_marathon"=>1161, :"25k"=>2766, :"30k"=>1282, :marathon=>2757}, 30=>{:"1500"=>510, :mile=>551, :"3k"=>1076, :"2mile"=>1159, :"5k"=>1840, :"8k"=>3032, :"5mile"=>3050, :"10k"=>286, :"15k"=>2354, :"10mile"=>2815, :"20k"=>921, :"12_marathon"=>1384, :"25k"=>3029, :"30k"=>1597, :marathon=>3197}}

    Col_Names = {
      :"1500"=>"1500 Meters", 
      :mile=> "Mile", 
      :"3k"=> "3k", 
      :"2mile"=>"2 Mile", 
      :"5k"=>"5k", 
      :"8k"=>"8k", 
      :"5mile"=>"5 Mile", 
      :"10k"=>"10k", 
      :"15k"=>"15k", 
      :"10mile"=>"10 Mile", 
      :"20k"=>"20k", 
      :"12_marathon"=>"1/2 Marathon", 
      :"25k"=>"25k", 
      :"30k"=>"30k", 
      :marathon=>"Marathon"
    }

    def col_names 
      Col_Names
    end

    def prettify_hash(vdot_row)
      col_names = {
        :"1500"=>"1500 Meters", 
        :mile=> "Mile", 
        :"3k"=> "3k", 
        :"2mile"=>"2 Mile", 
        :"5k"=>"5k", 
        :"8k"=>"8k", 
        :"5mile"=>"5 Mile", 
        :"10k"=>"10k", 
        :"15k"=>"15k", 
        :"10mile"=>"10 Mile", 
        :"20k"=>"20k", 
        :"12_marathon"=>"1/2 Marathon", 
        :"25k"=>"25k", 
        :"30k"=>"30k", 
        :marathon=>"Marathon"
      }


    end

    def convert_time(time_str)
      splits = time_str.split(':').map{|v| v.to_i}
      case splits.size
      when 1
        return splits[0]
      when 2
        return splits[1] + splits[0] * 60
      when 3
        return splits[2] + splits[1] * 60 + splits[0] * 360
      end
    end

    def vdot
      distance = page._distance
      time = page._run_time

      p distance, time

      target_time = convert_time(time)

      prev_delta = Float::INFINITY
      prev_nearest = nil

      VDOT_Table.each {|vdot, times|
        delta = (times[distance] - target_time).abs

        if delta < prev_delta
          prev_delta = delta
          prev_nearest = vdot
        else
          break
        end
      }

      return prev_nearest
    end

    def performance
      VDOT_Table[vdot]
    end


    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end
  end
end
