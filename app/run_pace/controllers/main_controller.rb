module RunPace
  class MainController < Volt::ModelController
    def index
      # Add code for when the index view is loaded
    end

    def about
      # Add code for when the about view is loaded
    end

    private

    VDOT_Table = {85=>{:"1500"=>203, :mile=>219, :"3k"=>434, :"2mile"=>468, :"5k"=>757, :"10k"=>1579, :"15k"=>2417, :"12_marathon"=>3470, :marathon=>7270}, 84=>{:"1500"=>205, :mile=>221, :"3k"=>438, :"2mile"=>473, :"5k"=>765, :"10k"=>1594, :"15k"=>2442, :"12_marathon"=>3505, :marathon=>7344}, 83=>{:"1500"=>207, :mile=>224, :"3k"=>443, :"2mile"=>478, :"5k"=>773, :"10k"=>1611, :"15k"=>2466, :"12_marathon"=>3541, :marathon=>7420}, 82=>{:"1500"=>209, :mile=>226, :"3k"=>447, :"2mile"=>483, :"5k"=>781, :"10k"=>1627, :"15k"=>2492, :"12_marathon"=>3578, :marathon=>7497}, 81=>{:"1500"=>211, :mile=>228, :"3k"=>452, :"2mile"=>488, :"5k"=>789, :"10k"=>1644, :"15k"=>2518, :"12_marathon"=>3615, :marathon=>7577}, 80=>{:"1500"=>214, :mile=>231, :"3k"=>457, :"2mile"=>494, :"5k"=>798, :"10k"=>1661, :"15k"=>2545, :"12_marathon"=>3654, :marathon=>7658}, 79=>{:"1500"=>216, :mile=>233, :"3k"=>463, :"2mile"=>500, :"5k"=>806, :"10k"=>1679, :"15k"=>2572, :"12_marathon"=>3694, :marathon=>7742}, 78=>{:"1500"=>218, :mile=>236, :"3k"=>468, :"2mile"=>505, :"5k"=>815, :"10k"=>1697, :"15k"=>2600, :"12_marathon"=>3735, :marathon=>7827}, 77=>{:"1500"=>221, :mile=>238, :"3k"=>473, :"2mile"=>511, :"5k"=>824, :"10k"=>1716, :"15k"=>2629, :"12_marathon"=>3776, :marathon=>7914}, 76=>{:"1500"=>224, :mile=>242, :"3k"=>478, :"2mile"=>517, :"5k"=>834, :"10k"=>1735, :"15k"=>2658, :"12_marathon"=>3819, :marathon=>8003}, 75=>{:"1500"=>226, :mile=>244, :"3k"=>484, :"2mile"=>523, :"5k"=>843, :"10k"=>1754, :"15k"=>2688, :"12_marathon"=>3863, :marathon=>8095}, 74=>{:"1500"=>229, :mile=>247, :"3k"=>490, :"2mile"=>529, :"5k"=>853, :"10k"=>1774, :"15k"=>2719, :"12_marathon"=>3908, :marathon=>8189}, 73=>{:"1500"=>232, :mile=>250, :"3k"=>496, :"2mile"=>535, :"5k"=>863, :"10k"=>1795, :"15k"=>2751, :"12_marathon"=>3954, :marathon=>8285}, 72=>{:"1500"=>234, :mile=>253, :"3k"=>502, :"2mile"=>542, :"5k"=>873, :"10k"=>1816, :"15k"=>2784, :"12_marathon"=>4002, :marathon=>8384}, 71=>{:"1500"=>237, :mile=>256, :"3k"=>508, :"2mile"=>549, :"5k"=>884, :"10k"=>1838, :"15k"=>2818, :"12_marathon"=>4051, :marathon=>8486}, 70=>{:"1500"=>240, :mile=>259, :"3k"=>514, :"2mile"=>556, :"5k"=>895, :"10k"=>1860, :"15k"=>2852, :"12_marathon"=>4101, :marathon=>8590}, 69=>{:"1500"=>243, :mile=>263, :"3k"=>521, :"2mile"=>563, :"5k"=>906, :"10k"=>1883, :"15k"=>2888, :"12_marathon"=>4152, :marathon=>8697}, 68=>{:"1500"=>246, :mile=>266, :"3k"=>528, :"2mile"=>570, :"5k"=>918, :"10k"=>1906, :"15k"=>2924, :"12_marathon"=>4205, :marathon=>8807}, 67=>{:"1500"=>250, :mile=>270, :"3k"=>535, :"2mile"=>577, :"5k"=>929, :"10k"=>1931, :"15k"=>2962, :"12_marathon"=>4260, :marathon=>8920}, 66=>{:"1500"=>253, :mile=>273, :"3k"=>542, :"2mile"=>585, :"5k"=>942, :"10k"=>1955, :"15k"=>3000, :"12_marathon"=>4316, :marathon=>9036}, 65=>{:"1500"=>256, :mile=>277, :"3k"=>549, :"2mile"=>593, :"5k"=>954, :"10k"=>1981, :"15k"=>3040, :"12_marathon"=>4373, :marathon=>9155}, 64=>{:"1500"=>260, :mile=>281, :"3k"=>557, :"2mile"=>601, :"5k"=>967, :"10k"=>2008, :"15k"=>3081, :"12_marathon"=>4433, :marathon=>9278}, 63=>{:"1500"=>264, :mile=>285, :"3k"=>565, :"2mile"=>610, :"5k"=>980, :"10k"=>2035, :"15k"=>3123, :"12_marathon"=>4494, :marathon=>9404}, 62=>{:"1500"=>267, :mile=>289, :"3k"=>573, :"2mile"=>618, :"5k"=>994, :"10k"=>2063, :"15k"=>3167, :"12_marathon"=>4557, :marathon=>9534}, 61=>{:"1500"=>271, :mile=>293, :"3k"=>581, :"2mile"=>627, :"5k"=>1008, :"10k"=>2092, :"15k"=>3212, :"12_marathon"=>4622, :marathon=>9668}, 60=>{:"1500"=>275, :mile=>297, :"3k"=>590, :"2mile"=>637, :"5k"=>1023, :"10k"=>2122, :"15k"=>3258, :"12_marathon"=>4689, :marathon=>9805}, 59=>{:"1500"=>279, :mile=>302, :"3k"=>598, :"2mile"=>646, :"5k"=>1037, :"10k"=>2152, :"15k"=>3306, :"12_marathon"=>4758, :marathon=>9947}, 58=>{:"1500"=>284, :mile=>306, :"3k"=>608, :"2mile"=>656, :"5k"=>1053, :"10k"=>2184, :"15k"=>3355, :"12_marathon"=>4830, :marathon=>10094}, 57=>{:"1500"=>288, :mile=>311, :"3k"=>617, :"2mile"=>666, :"5k"=>1069, :"10k"=>2217, :"15k"=>3406, :"12_marathon"=>4903, :marathon=>10245}, 56=>{:"1500"=>293, :mile=>316, :"3k"=>627, :"2mile"=>677, :"5k"=>1085, :"10k"=>2251, :"15k"=>3459, :"12_marathon"=>4980, :marathon=>10400}, 55=>{:"1500"=>297, :mile=>321, :"3k"=>637, :"2mile"=>688, :"5k"=>1102, :"10k"=>2286, :"15k"=>3513, :"12_marathon"=>5058, :marathon=>10561}, 54=>{:"1500"=>302, :mile=>327, :"3k"=>647, :"2mile"=>699, :"5k"=>1120, :"10k"=>2322, :"15k"=>3570, :"12_marathon"=>5140, :marathon=>10727}, 53=>{:"1500"=>307, :mile=>332, :"3k"=>658, :"2mile"=>710, :"5k"=>1138, :"10k"=>2360, :"15k"=>3628, :"12_marathon"=>5224, :marathon=>10899}, 52=>{:"1500"=>313, :mile=>338, :"3k"=>669, :"2mile"=>722, :"5k"=>1157, :"10k"=>2399, :"15k"=>3689, :"12_marathon"=>5311, :marathon=>11076}, 51=>{:"1500"=>318, :mile=>344, :"3k"=>681, :"2mile"=>735, :"5k"=>1176, :"10k"=>2439, :"15k"=>3751, :"12_marathon"=>5402, :marathon=>11259}, 50=>{:"1500"=>324, :mile=>350, :"3k"=>693, :"2mile"=>748, :"5k"=>1197, :"10k"=>2481, :"15k"=>3816, :"12_marathon"=>5495, :marathon=>11449}, 49=>{:"1500"=>330, :mile=>356, :"3k"=>705, :"2mile"=>761, :"5k"=>1218, :"10k"=>2524, :"15k"=>3884, :"12_marathon"=>5592, :marathon=>11646}, 48=>{:"1500"=>336, :mile=>363, :"3k"=>718, :"2mile"=>775, :"5k"=>1239, :"10k"=>2570, :"15k"=>3953, :"12_marathon"=>5693, :marathon=>11849}, 47=>{:"1500"=>342, :mile=>370, :"3k"=>732, :"2mile"=>790, :"5k"=>1262, :"10k"=>2616, :"15k"=>4026, :"12_marathon"=>5798, :marathon=>12060}, 46=>{:"1500"=>349, :mile=>377, :"3k"=>746, :"2mile"=>805, :"5k"=>1285, :"10k"=>2665, :"15k"=>4102, :"12_marathon"=>5907, :marathon=>12279}, 45=>{:"1500"=>356, :mile=>385, :"3k"=>760, :"2mile"=>820, :"5k"=>1310, :"10k"=>2716, :"15k"=>4180, :"12_marathon"=>6020, :marathon=>12506}, 44=>{:"1500"=>363, :mile=>392, :"3k"=>775, :"2mile"=>836, :"5k"=>1335, :"10k"=>2769, :"15k"=>4262, :"12_marathon"=>6137, :marathon=>12743}, 43=>{:"1500"=>371, :mile=>401, :"3k"=>791, :"2mile"=>853, :"5k"=>1361, :"10k"=>2824, :"15k"=>4347, :"12_marathon"=>6260, :marathon=>12988}, 42=>{:"1500"=>379, :mile=>409, :"3k"=>808, :"2mile"=>871, :"5k"=>1389, :"10k"=>2881, :"15k"=>4436, :"12_marathon"=>6387, :marathon=>13243}, 41=>{:"1500"=>387, :mile=>418, :"3k"=>825, :"2mile"=>889, :"5k"=>1418, :"10k"=>2941, :"15k"=>4529, :"12_marathon"=>6520, :marathon=>13509}, 40=>{:"1500"=>395, :mile=>427, :"3k"=>843, :"2mile"=>908, :"5k"=>1448, :"10k"=>3003, :"15k"=>4626, :"12_marathon"=>6659, :marathon=>13785}, 39=>{:"1500"=>404, :mile=>437, :"3k"=>861, :"2mile"=>929, :"5k"=>1479, :"10k"=>3069, :"15k"=>4727, :"12_marathon"=>6804, :marathon=>14074}, 38=>{:"1500"=>414, :mile=>447, :"3k"=>881, :"2mile"=>949, :"5k"=>1512, :"10k"=>3137, :"15k"=>4833, :"12_marathon"=>6955, :marathon=>14375}, 37=>{:"1500"=>424, :mile=>458, :"3k"=>901, :"2mile"=>971, :"5k"=>1546, :"10k"=>3209, :"15k"=>4944, :"12_marathon"=>7114, :marathon=>14690}, 36=>{:"1500"=>434, :mile=>469, :"3k"=>923, :"2mile"=>994, :"5k"=>1582, :"10k"=>3284, :"15k"=>5060, :"12_marathon"=>7279, :marathon=>15019}, 35=>{:"1500"=>445, :mile=>481, :"3k"=>945, :"2mile"=>1018, :"5k"=>1620, :"10k"=>3363, :"15k"=>5182, :"12_marathon"=>7453, :marathon=>15363}, 34=>{:"1500"=>457, :mile=>494, :"3k"=>969, :"2mile"=>1044, :"5k"=>1659, :"10k"=>3446, :"15k"=>5310, :"12_marathon"=>7636, :marathon=>15723}, 33=>{:"1500"=>469, :mile=>507, :"3k"=>993, :"2mile"=>1070, :"5k"=>1701, :"10k"=>3534, :"15k"=>5445, :"12_marathon"=>7827, :marathon=>16102}, 32=>{:"1500"=>482, :mile=>521, :"3k"=>1019, :"2mile"=>1098, :"5k"=>1745, :"10k"=>3626, :"15k"=>5587, :"12_marathon"=>8029, :marathon=>16499}, 31=>{:"1500"=>495, :mile=>535, :"3k"=>1047, :"2mile"=>1128, :"5k"=>1791, :"10k"=>3723, :"15k"=>5736, :"12_marathon"=>8241, :marathon=>16917}, 30=>{:"1500"=>510, :mile=>551, :"3k"=>1076, :"2mile"=>1159, :"5k"=>1840, :"10k"=>3826, :"15k"=>5894, :"12_marathon"=>8464, :marathon=>17357}}
    Pace_Table = {30=>{:easylong_mile=>760, :marathon_pace_mile=>661, :threshold_pace_400m=>153, :threshold_pace_1000m=>384, :threshold_pace_mile=>618, :interval_pace_400m=>142, :interval_pace_1000m=>nil, :interval_pace_1200m=>0, :interval_pace_mile=>0, :repeat_pace_200m=>67, :repeat_pace_400m=>136, :repeat_pace_800m=>0}, 31=>{:easylong_mile=>742, :marathon_pace_mile=>645, :threshold_pace_400m=>150, :threshold_pace_1000m=>374, :threshold_pace_mile=>602, :interval_pace_400m=>138, :interval_pace_1000m=>nil, :interval_pace_1200m=>0, :interval_pace_mile=>nil, :repeat_pace_200m=>65, :repeat_pace_400m=>132, :repeat_pace_800m=>nil}, 32=>{:easylong_mile=>724, :marathon_pace_mile=>629, :threshold_pace_400m=>146, :threshold_pace_1000m=>365, :threshold_pace_mile=>587, :interval_pace_400m=>134, :interval_pace_1000m=>nil, :interval_pace_1200m=>0, :interval_pace_mile=>0, :repeat_pace_200m=>63, :repeat_pace_400m=>128, :repeat_pace_800m=>0}, 33=>{:easylong_mile=>708, :marathon_pace_mile=>614, :threshold_pace_400m=>143, :threshold_pace_1000m=>356, :threshold_pace_mile=>573, :interval_pace_400m=>131, :interval_pace_1000m=>nil, :interval_pace_1200m=>0, :interval_pace_mile=>nil, :repeat_pace_200m=>62, :repeat_pace_400m=>125, :repeat_pace_800m=>nil}, 34=>{:easylong_mile=>692, :marathon_pace_mile=>600, :threshold_pace_400m=>139, :threshold_pace_1000m=>348, :threshold_pace_mile=>560, :interval_pace_400m=>128, :interval_pace_1000m=>nil, :interval_pace_1200m=>0, :interval_pace_mile=>0, :repeat_pace_200m=>60, :repeat_pace_400m=>122, :repeat_pace_800m=>0}, 35=>{:easylong_mile=>677, :marathon_pace_mile=>586, :threshold_pace_400m=>136, :threshold_pace_1000m=>340, :threshold_pace_mile=>547, :interval_pace_400m=>125, :interval_pace_1000m=>nil, :interval_pace_1200m=>0, :interval_pace_mile=>nil, :repeat_pace_200m=>59, :repeat_pace_400m=>119, :repeat_pace_800m=>nil}, 36=>{:easylong_mile=>662, :marathon_pace_mile=>573, :threshold_pace_400m=>133, :threshold_pace_1000m=>333, :threshold_pace_mile=>535, :interval_pace_400m=>122, :interval_pace_1000m=>nil, :interval_pace_1200m=>0, :interval_pace_mile=>0, :repeat_pace_200m=>57, :repeat_pace_400m=>115, :repeat_pace_800m=>0}, 37=>{:easylong_mile=>649, :marathon_pace_mile=>560, :threshold_pace_400m=>130, :threshold_pace_1000m=>325, :threshold_pace_mile=>524, :interval_pace_400m=>119, :interval_pace_1000m=>300, :interval_pace_1200m=>0, :interval_pace_mile=>nil, :repeat_pace_200m=>56, :repeat_pace_400m=>113, :repeat_pace_800m=>0}, 38=>{:easylong_mile=>635, :marathon_pace_mile=>548, :threshold_pace_400m=>127, :threshold_pace_1000m=>319, :threshold_pace_mile=>513, :interval_pace_400m=>116, :interval_pace_1000m=>294, :interval_pace_1200m=>0, :interval_pace_mile=>0, :repeat_pace_200m=>54, :repeat_pace_400m=>110, :repeat_pace_800m=>0}, 39=>{:easylong_mile=>623, :marathon_pace_mile=>537, :threshold_pace_400m=>125, :threshold_pace_1000m=>312, :threshold_pace_mile=>502, :interval_pace_400m=>114, :interval_pace_1000m=>288, :interval_pace_1200m=>0, :interval_pace_mile=>nil, :repeat_pace_200m=>53, :repeat_pace_400m=>108, :repeat_pace_800m=>0}, 40=>{:easylong_mile=>611, :marathon_pace_mile=>526, :threshold_pace_400m=>122, :threshold_pace_1000m=>306, :threshold_pace_mile=>492, :interval_pace_400m=>112, :interval_pace_1000m=>282, :interval_pace_1200m=>0, :interval_pace_mile=>0, :repeat_pace_200m=>52, :repeat_pace_400m=>106, :repeat_pace_800m=>0}, 41=>{:easylong_mile=>599, :marathon_pace_mile=>515, :threshold_pace_400m=>120, :threshold_pace_1000m=>300, :threshold_pace_mile=>482, :interval_pace_400m=>110, :interval_pace_1000m=>276, :interval_pace_1200m=>0, :interval_pace_mile=>nil, :repeat_pace_200m=>51, :repeat_pace_400m=>104, :repeat_pace_800m=>0}, 42=>{:easylong_mile=>588, :marathon_pace_mile=>505, :threshold_pace_400m=>117, :threshold_pace_1000m=>294, :threshold_pace_mile=>472, :interval_pace_400m=>108, :interval_pace_1000m=>271, :interval_pace_1200m=>0, :interval_pace_mile=>0, :repeat_pace_200m=>50, :repeat_pace_400m=>102, :repeat_pace_800m=>0}, 43=>{:easylong_mile=>577, :marathon_pace_mile=>495, :threshold_pace_400m=>115, :threshold_pace_1000m=>289, :threshold_pace_mile=>462, :interval_pace_400m=>106, :interval_pace_1000m=>266, :interval_pace_1200m=>0, :interval_pace_mile=>nil, :repeat_pace_200m=>49, :repeat_pace_400m=>100, :repeat_pace_800m=>0}, 44=>{:easylong_mile=>567, :marathon_pace_mile=>486, :threshold_pace_400m=>113, :threshold_pace_1000m=>283, :threshold_pace_mile=>453, :interval_pace_400m=>104, :interval_pace_1000m=>261, :interval_pace_1200m=>0, :interval_pace_mile=>0, :repeat_pace_200m=>48, :repeat_pace_400m=>98, :repeat_pace_800m=>0}, 45=>{:easylong_mile=>557, :marathon_pace_mile=>477, :threshold_pace_400m=>111, :threshold_pace_1000m=>278, :threshold_pace_mile=>445, :interval_pace_400m=>102, :interval_pace_1000m=>256, :interval_pace_1200m=>0, :interval_pace_mile=>0, :repeat_pace_200m=>47, :repeat_pace_400m=>96, :repeat_pace_800m=>0}, 46=>{:easylong_mile=>547, :marathon_pace_mile=>468, :threshold_pace_400m=>109, :threshold_pace_1000m=>273, :threshold_pace_mile=>437, :interval_pace_400m=>100, :interval_pace_1000m=>252, :interval_pace_1200m=>300, :interval_pace_mile=>0, :repeat_pace_200m=>46, :repeat_pace_400m=>94, :repeat_pace_800m=>0}, 47=>{:easylong_mile=>538, :marathon_pace_mile=>460, :threshold_pace_400m=>107, :threshold_pace_1000m=>269, :threshold_pace_mile=>430, :interval_pace_400m=>98, :interval_pace_1000m=>247, :interval_pace_1200m=>294, :interval_pace_mile=>0, :repeat_pace_200m=>45, :repeat_pace_400m=>92, :repeat_pace_800m=>0}, 48=>{:easylong_mile=>529, :marathon_pace_mile=>452, :threshold_pace_400m=>105, :threshold_pace_1000m=>264, :threshold_pace_mile=>422, :interval_pace_400m=>96, :interval_pace_1000m=>243, :interval_pace_1200m=>289, :interval_pace_mile=>0, :repeat_pace_200m=>44, :repeat_pace_400m=>90, :repeat_pace_800m=>0}, 49=>{:easylong_mile=>520, :marathon_pace_mile=>444, :threshold_pace_400m=>103, :threshold_pace_1000m=>260, :threshold_pace_mile=>415, :interval_pace_400m=>95, :interval_pace_1000m=>239, :interval_pace_1200m=>285, :interval_pace_mile=>0, :repeat_pace_200m=>44, :repeat_pace_400m=>89, :repeat_pace_800m=>0}, 50=>{:easylong_mile=>512, :marathon_pace_mile=>437, :threshold_pace_400m=>102, :threshold_pace_1000m=>255, :threshold_pace_mile=>411, :interval_pace_400m=>93, :interval_pace_1000m=>235, :interval_pace_1200m=>281, :interval_pace_mile=>0, :repeat_pace_200m=>43, :repeat_pace_400m=>87, :repeat_pace_800m=>0}, 51=>{:easylong_mile=>504, :marathon_pace_mile=>429, :threshold_pace_400m=>100, :threshold_pace_1000m=>251, :threshold_pace_mile=>404, :interval_pace_400m=>92, :interval_pace_1000m=>231, :interval_pace_1200m=>276, :interval_pace_mile=>0, :repeat_pace_200m=>42, :repeat_pace_400m=>86, :repeat_pace_800m=>0}, 52=>{:easylong_mile=>496, :marathon_pace_mile=>422, :threshold_pace_400m=>98, :threshold_pace_1000m=>247, :threshold_pace_mile=>398, :interval_pace_400m=>91, :interval_pace_1000m=>228, :interval_pace_1200m=>273, :interval_pace_mile=>0, :repeat_pace_200m=>42, :repeat_pace_400m=>85, :repeat_pace_800m=>0}, 53=>{:easylong_mile=>489, :marathon_pace_mile=>416, :threshold_pace_400m=>97, :threshold_pace_1000m=>244, :threshold_pace_mile=>392, :interval_pace_400m=>90, :interval_pace_1000m=>224, :interval_pace_1200m=>269, :interval_pace_mile=>0, :repeat_pace_200m=>41, :repeat_pace_400m=>84, :repeat_pace_800m=>0}, 54=>{:easylong_mile=>481, :marathon_pace_mile=>409, :threshold_pace_400m=>95, :threshold_pace_1000m=>240, :threshold_pace_mile=>386, :interval_pace_400m=>88, :interval_pace_1000m=>221, :interval_pace_1200m=>265, :interval_pace_mile=>0, :repeat_pace_200m=>40, :repeat_pace_400m=>82, :repeat_pace_800m=>0}, 55=>{:easylong_mile=>474, :marathon_pace_mile=>403, :threshold_pace_400m=>94, :threshold_pace_1000m=>236, :threshold_pace_mile=>380, :interval_pace_400m=>87, :interval_pace_1000m=>217, :interval_pace_1200m=>261, :interval_pace_mile=>0, :repeat_pace_200m=>40, :repeat_pace_400m=>81, :repeat_pace_800m=>0}, 56=>{:easylong_mile=>468, :marathon_pace_mile=>397, :threshold_pace_400m=>93, :threshold_pace_1000m=>233, :threshold_pace_mile=>375, :interval_pace_400m=>86, :interval_pace_1000m=>214, :interval_pace_1200m=>258, :interval_pace_mile=>0, :repeat_pace_200m=>39, :repeat_pace_400m=>80, :repeat_pace_800m=>0}, 57=>{:easylong_mile=>461, :marathon_pace_mile=>391, :threshold_pace_400m=>91, :threshold_pace_1000m=>230, :threshold_pace_mile=>369, :interval_pace_400m=>85, :interval_pace_1000m=>211, :interval_pace_1200m=>255, :interval_pace_mile=>0, :repeat_pace_200m=>39, :repeat_pace_400m=>79, :repeat_pace_800m=>0}, 58=>{:easylong_mile=>454, :marathon_pace_mile=>385, :threshold_pace_400m=>90, :threshold_pace_1000m=>225, :threshold_pace_mile=>364, :interval_pace_400m=>83, :interval_pace_1000m=>208, :interval_pace_1200m=>250, :interval_pace_mile=>0, :repeat_pace_200m=>38, :repeat_pace_400m=>77, :repeat_pace_800m=>0}, 59=>{:easylong_mile=>448, :marathon_pace_mile=>379, :threshold_pace_400m=>89, :threshold_pace_1000m=>223, :threshold_pace_mile=>359, :interval_pace_400m=>82, :interval_pace_1000m=>205, :interval_pace_1200m=>247, :interval_pace_mile=>0, :repeat_pace_200m=>37, :repeat_pace_400m=>76, :repeat_pace_800m=>0}, 60=>{:easylong_mile=>442, :marathon_pace_mile=>374, :threshold_pace_400m=>88, :threshold_pace_1000m=>220, :threshold_pace_mile=>354, :interval_pace_400m=>81, :interval_pace_1000m=>203, :interval_pace_1200m=>243, :interval_pace_mile=>0, :repeat_pace_200m=>37, :repeat_pace_400m=>75, :repeat_pace_800m=>150}, 61=>{:easylong_mile=>436, :marathon_pace_mile=>369, :threshold_pace_400m=>86, :threshold_pace_1000m=>217, :threshold_pace_mile=>350, :interval_pace_400m=>80, :interval_pace_1000m=>200, :interval_pace_1200m=>240, :interval_pace_mile=>0, :repeat_pace_200m=>36, :repeat_pace_400m=>74, :repeat_pace_800m=>148}, 62=>{:easylong_mile=>431, :marathon_pace_mile=>364, :threshold_pace_400m=>85, :threshold_pace_1000m=>214, :threshold_pace_mile=>345, :interval_pace_400m=>79, :interval_pace_1000m=>197, :interval_pace_1200m=>237, :interval_pace_mile=>0, :repeat_pace_200m=>36, :repeat_pace_400m=>73, :repeat_pace_800m=>146}, 63=>{:easylong_mile=>425, :marathon_pace_mile=>359, :threshold_pace_400m=>84, :threshold_pace_1000m=>212, :threshold_pace_mile=>341, :interval_pace_400m=>78, :interval_pace_1000m=>195, :interval_pace_1200m=>234, :interval_pace_mile=>0, :repeat_pace_200m=>35, :repeat_pace_400m=>72, :repeat_pace_800m=>144}, 64=>{:easylong_mile=>420, :marathon_pace_mile=>354, :threshold_pace_400m=>83, :threshold_pace_1000m=>209, :threshold_pace_mile=>336, :interval_pace_400m=>77, :interval_pace_1000m=>192, :interval_pace_1200m=>231, :interval_pace_mile=>0, :repeat_pace_200m=>35, :repeat_pace_400m=>71, :repeat_pace_800m=>142}, 65=>{:easylong_mile=>414, :marathon_pace_mile=>349, :threshold_pace_400m=>82, :threshold_pace_1000m=>206, :threshold_pace_mile=>332, :interval_pace_400m=>76, :interval_pace_1000m=>190, :interval_pace_1200m=>228, :interval_pace_mile=>0, :repeat_pace_200m=>34, :repeat_pace_400m=>70, :repeat_pace_800m=>140}, 66=>{:easylong_mile=>409, :marathon_pace_mile=>345, :threshold_pace_400m=>81, :threshold_pace_1000m=>204, :threshold_pace_mile=>328, :interval_pace_400m=>75, :interval_pace_1000m=>188, :interval_pace_1200m=>225, :interval_pace_mile=>300, :repeat_pace_200m=>34, :repeat_pace_400m=>69, :repeat_pace_800m=>138}, 67=>{:easylong_mile=>404, :marathon_pace_mile=>340, :threshold_pace_400m=>80, :threshold_pace_1000m=>201, :threshold_pace_mile=>324, :interval_pace_400m=>74, :interval_pace_1000m=>185, :interval_pace_1200m=>222, :interval_pace_mile=>297, :repeat_pace_200m=>33, :repeat_pace_400m=>68, :repeat_pace_800m=>136}, 68=>{:easylong_mile=>399, :marathon_pace_mile=>336, :threshold_pace_400m=>79, :threshold_pace_1000m=>199, :threshold_pace_mile=>320, :interval_pace_400m=>73, :interval_pace_1000m=>183, :interval_pace_1200m=>219, :interval_pace_mile=>293, :repeat_pace_200m=>33, :repeat_pace_400m=>67, :repeat_pace_800m=>134}, 69=>{:easylong_mile=>395, :marathon_pace_mile=>332, :threshold_pace_400m=>78, :threshold_pace_1000m=>196, :threshold_pace_mile=>316, :interval_pace_400m=>72, :interval_pace_1000m=>181, :interval_pace_1200m=>216, :interval_pace_mile=>245, :repeat_pace_200m=>32, :repeat_pace_400m=>66, :repeat_pace_800m=>132}, 70=>{:easylong_mile=>390, :marathon_pace_mile=>328, :threshold_pace_400m=>77, :threshold_pace_1000m=>194, :threshold_pace_mile=>313, :interval_pace_400m=>71, :interval_pace_1000m=>179, :interval_pace_1200m=>214, :interval_pace_mile=>286, :repeat_pace_200m=>32, :repeat_pace_400m=>65, :repeat_pace_800m=>130}, 71=>{:easylong_mile=>386, :marathon_pace_mile=>324, :threshold_pace_400m=>76, :threshold_pace_1000m=>192, :threshold_pace_mile=>309, :interval_pace_400m=>70, :interval_pace_1000m=>177, :interval_pace_1200m=>211, :interval_pace_mile=>283, :repeat_pace_200m=>31, :repeat_pace_400m=>64, :repeat_pace_800m=>128}, 72=>{:easylong_mile=>381, :marathon_pace_mile=>320, :threshold_pace_400m=>76, :threshold_pace_1000m=>190, :threshold_pace_mile=>305, :interval_pace_400m=>69, :interval_pace_1000m=>175, :interval_pace_1200m=>209, :interval_pace_mile=>244, :repeat_pace_200m=>31, :repeat_pace_400m=>63, :repeat_pace_800m=>126}, 73=>{:easylong_mile=>377, :marathon_pace_mile=>316, :threshold_pace_400m=>75, :threshold_pace_1000m=>188, :threshold_pace_mile=>302, :interval_pace_400m=>69, :interval_pace_1000m=>173, :interval_pace_1200m=>207, :interval_pace_mile=>277, :repeat_pace_200m=>31, :repeat_pace_400m=>62, :repeat_pace_800m=>125}, 74=>{:easylong_mile=>360, :marathon_pace_mile=>312, :threshold_pace_400m=>74, :threshold_pace_1000m=>186, :threshold_pace_mile=>299, :interval_pace_400m=>68, :interval_pace_1000m=>171, :interval_pace_1200m=>205, :interval_pace_mile=>274, :repeat_pace_200m=>30, :repeat_pace_400m=>62, :repeat_pace_800m=>124}, 75=>{:easylong_mile=>369, :marathon_pace_mile=>309, :threshold_pace_400m=>74, :threshold_pace_1000m=>184, :threshold_pace_mile=>296, :interval_pace_400m=>67, :interval_pace_1000m=>169, :interval_pace_1200m=>202, :interval_pace_mile=>271, :repeat_pace_200m=>30, :repeat_pace_400m=>61, :repeat_pace_800m=>123}, 76=>{:easylong_mile=>365, :marathon_pace_mile=>305, :threshold_pace_400m=>73, :threshold_pace_1000m=>182, :threshold_pace_mile=>292, :interval_pace_400m=>66, :interval_pace_1000m=>168, :interval_pace_1200m=>200, :interval_pace_mile=>268, :repeat_pace_200m=>29, :repeat_pace_400m=>60, :repeat_pace_800m=>122}, 77=>{:easylong_mile=>361, :marathon_pace_mile=>301, :threshold_pace_400m=>72, :threshold_pace_1000m=>180, :threshold_pace_mile=>289, :interval_pace_400m=>65, :interval_pace_1000m=>166, :interval_pace_1200m=>198, :interval_pace_mile=>265, :repeat_pace_200m=>29, :repeat_pace_400m=>59, :repeat_pace_800m=>120}, 78=>{:easylong_mile=>357, :marathon_pace_mile=>298, :threshold_pace_400m=>71, :threshold_pace_1000m=>178, :threshold_pace_mile=>286, :interval_pace_400m=>65, :interval_pace_1000m=>164, :interval_pace_1200m=>196, :interval_pace_mile=>263, :repeat_pace_200m=>29, :repeat_pace_400m=>59, :repeat_pace_800m=>119}, 79=>{:easylong_mile=>354, :marathon_pace_mile=>295, :threshold_pace_400m=>70, :threshold_pace_1000m=>176, :threshold_pace_mile=>283, :interval_pace_400m=>64, :interval_pace_1000m=>162, :interval_pace_1200m=>194, :interval_pace_mile=>242, :repeat_pace_200m=>28, :repeat_pace_400m=>58, :repeat_pace_800m=>118}, 80=>{:easylong_mile=>350, :marathon_pace_mile=>292, :threshold_pace_400m=>70, :threshold_pace_1000m=>174, :threshold_pace_mile=>281, :interval_pace_400m=>64, :interval_pace_1000m=>161, :interval_pace_1200m=>192, :interval_pace_mile=>257, :repeat_pace_200m=>28, :repeat_pace_400m=>58, :repeat_pace_800m=>116}, 81=>{:easylong_mile=>346, :marathon_pace_mile=>289, :threshold_pace_400m=>69, :threshold_pace_1000m=>173, :threshold_pace_mile=>278, :interval_pace_400m=>63, :interval_pace_1000m=>159, :interval_pace_1200m=>190, :interval_pace_mile=>255, :repeat_pace_200m=>28, :repeat_pace_400m=>57, :repeat_pace_800m=>115}, 82=>{:easylong_mile=>343, :marathon_pace_mile=>286, :threshold_pace_400m=>68, :threshold_pace_1000m=>171, :threshold_pace_mile=>275, :interval_pace_400m=>62, :interval_pace_1000m=>158, :interval_pace_1200m=>188, :interval_pace_mile=>252, :repeat_pace_200m=>27, :repeat_pace_400m=>56, :repeat_pace_800m=>114}, 83=>{:easylong_mile=>340, :marathon_pace_mile=>283, :threshold_pace_400m=>68, :threshold_pace_1000m=>169, :threshold_pace_mile=>272, :interval_pace_400m=>62, :interval_pace_1000m=>156, :interval_pace_1200m=>187, :interval_pace_mile=>241, :repeat_pace_200m=>27, :repeat_pace_400m=>56, :repeat_pace_800m=>113}, 84=>{:easylong_mile=>336, :marathon_pace_mile=>280, :threshold_pace_400m=>67, :threshold_pace_1000m=>168, :threshold_pace_mile=>270, :interval_pace_400m=>61, :interval_pace_1000m=>155, :interval_pace_1200m=>185, :interval_pace_mile=>248, :repeat_pace_200m=>27, :repeat_pace_400m=>55, :repeat_pace_800m=>112}, 85=>{:easylong_mile=>333, :marathon_pace_mile=>277, :threshold_pace_400m=>66, :threshold_pace_1000m=>166, :threshold_pace_mile=>267, :interval_pace_400m=>61, :interval_pace_1000m=>153, :interval_pace_1200m=>183, :interval_pace_mile=>245, :repeat_pace_200m=>27, :repeat_pace_400m=>55, :repeat_pace_800m=>111}}


    Col_Names = {
      :"1500"=>"1500 Meters",
      :mile=> "Mile",
      :"3k"=> "3k",
      :"2mile"=> "2 Mile",
      :"5k"=> "5k",
      :"10k"=>"10k",
      :"15k"=>"15k",
      :"12_marathon"=>"1/2 Marathon",
      :marathon=>"Marathon"

      # :easylong_mile=>760,
      # :marathon_pace_mile=>661, 
      # :threshold_pace_400m=>153, 
      # :threshold_pace_1000m=>384, 
      # :threshold_pace_mile=>618, 
      # :interval_pace_400m=>142, 
      # :interval_pace_1000m=>nil, 
      # :interval_pace_1200m=>0, 
      # :interval_pace_mile=>0, 
      # :repeat_pace_200m=>67, 
      # :repeat_pace_400m=>136, 
      # :repeat_pace_800m=>0
      # "Easy/Long Mile"
      # "Marathon Pace Mile"
      # "Threshold Pace 400m"
      # "Threshold Pace 1000m"
      # "Threshold Pace Mile"
      # "Repeat Pace 200m"
      # "Repeat Pace 400m"
      # "Repeat Pace 800m"
      # "Interval Pace"
    }

    def col_names
      Col_Names
    end

    Col_Distances = {
      :"1500"=> 0.932057,
      :mile=> 1,
      :"3k"=> 1.86411,
      :"2mile"=> 2.0,
      :"5k"=>3.10686,
      :"10k"=>6.21371,
      :"15k"=>9.32057,
      :"12_marathon"=>13.109375,
      :marathon=>26.21875
    }

    def col_distances
      Col_Distances
    end

    def convert_time(time_str)
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

    def unconvert_time(seconds, level = 3)
      time = []
      seconds = seconds.to_i

      time << (seconds / 3600).floor
      seconds %= 3600
      time << (seconds / 60).floor
      seconds %=60
      time << (seconds).round(0)

      while time.size > level
        time = time[1..-1]
      end

      time.map{|t| "%02d" % t}.join(':')
    end

    def index_ready
      #Do google charts stuff
      `
        google.setOnLoadCallback(drawChart);
          function drawChart() {
            var data = google.visualization.arrayToDataTable(
              []
              , true);

            var options = {
              legend:'none',
              curveType: 'function',
            };

            var chart = new google.visualization.LineChart(document.getElementById('pace_chart'));

            chart.draw(data, options);
          }

      `
    end

    def vdot
      return unless page._distance && page._run_time

      distance = page._distance
      time = page._run_time

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

    def performance_finish_time
      return {} unless vdot

      row = VDOT_Table[vdot]

      Hash[
        row.map {|d, t|
          [col_names[d], unconvert_time(t)]
        }
      ]
    end

    def performance_pace
      return {} unless vdot

      row = VDOT_Table[vdot]

      # paces_chart_data = row.map {|d, t| [col_names[d], t] }
      # paces_chart_data = [['Distance', 'Pace']] + paces_chart_data
      # performance_pace_chart(paces_chart_data)

      paces = Hash[
        row.map {|d, t|
          [col_names[d], unconvert_time(t/col_distances[d], 2)]
        }
      ]
      paces
    end

    # def performance_pace_chart(pace_data)
    #   p pace_data
    #   if RUBY_PLATFORM == 'opal'
    #     `
    #       var data = google.visualization.arrayToDataTable(#{pace_data});

    #       var options = {
    #         title: 'Company Performance',
    #         curveType: 'function',
    #         legend: { position: 'bottom' }
    #       };

    #       var chart = new google.visualization.LineChart(document.getElementById('pace_chart'));

    #       chart.draw(data, options);
    #     `
    #   end
    # end

    def training_pace 
      return {} unless vdot


      row = Pace_Table[vdot]


      p row

      paces = Hash[
        row.map {|d, t|
          if t.nil? 
            [d, '-']
          else
            [d, unconvert_time(t, 2)]
          end
        }
      ]

      paces
    end


    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end
  end
end
