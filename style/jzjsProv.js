var g_state_color = [
"#CECAD6",
"#FCF502",
"#F09ABD",
"#FFFF00",
"#FFFF00",
"#FFFF00",
"#FFFF00",
"#FFFF00",
"#FFFF00",
"#FFFF00",
"#01933F"
];

var gNavigate = [
    "initRoot",
    "overviewPage",
    "wjjsPage",
    "guoNPage",
    "guoJPage"
];

var geoCoordMap = {
  '内蒙古': [111.4124,40.4901],
  '北京': [116.4551,40.2539],
  '天津': [117.4219,39.4189],
  '山东': [117.1582,36.8701],
  '河北': [114.4995,38.1006],
  '山西': [112.3352,37.9413],
  '安徽': [117.29,32.0581],
  '上海': [121.4648,31.2891],
  '江苏': [118.8062,31.9208],
  '浙江': [119.5313,29.8773],
  '福建': [119.4543,25.9222],
  '海南': [110.3893,19.8516],
  '广东': [113.5107,23.2196],
  '广西': [108.479,23.1152],
  '青海': [101.4038,36.8207],
  '湖北': [114.3896,30.6628],
  '湖南': [113.0823,28.2568],
  '江西': [116.0046,28.6633],
  '河南': [113.4668,34.6234],
  '西藏': [91.1865,30.1465],
  '四川': [103.9526,30.7617],
  '重庆': [107.7539,30.1904],
  '陕西': [109.1162,34.2004],
  '贵州': [106.6992,26.7682],
  '云南': [102.9199,25.4663],
  '甘肃': [103.5901,36.3043],
  '宁夏': [106.3586,38.1775],
  '新疆': [87.9236,43.5883],
  '吉林': [125.8154,44.2584],
  '辽宁': [123.1238,42.1216],
  '黑龙江': [127.9688,45.368],
};

var gStateColor = [
  "#C23531",
  "#F3F3F3",
];

var planePath = 'path://M1705.06,1318.313v-89.254l-319.9-221.799l0.073-208.063c0.521-84.662-26.629-121.796-63.961-121.491c-37.332-0.305-64.482,36.829-63.961,121.491l0.073,208.063l-319.9,221.799v89.254l330.343-157.288l12.238,241.308l-134.449,92.931l0.531,42.034l175.125-42.917l175.125,42.917l0.531-42.034l-134.449-92.931l12.238-241.308L1705.06,1318.313z';

var gProvCode = {
  10: '内蒙古',
  11: '北京',
  13: '天津',
  17: '山东',
  18: '河北',
  19: '山西',
  30: '安徽',
  31: '上海',
  34: '江苏',
  36: '浙江',
  38: '福建',
  50: '海南',
  51: '广东',
  59: '广西',
  70: '青海',
  71: '湖北',
  74: '湖南',
  75: '江西',
  76: '河南',
  79: '西藏',
  81: '四川',
  83: '重庆',
  84: '陕西',
  85: '贵州',
  86: '云南',
  87: '甘肃',
  88: '宁夏',
  89: '新疆',
  90: '吉林',
  91: '辽宁',
  97: '黑龙江',
  61: '香港国际',
  99: '总部',
  95: '智网科技公司'
};

var gProvCodeReverse = {
  '内蒙古':'10',
  '北京':'11',
  '天津':'13',
  '山东':'17',
  '河北':'18',
  '山西':'19',
  '安徽':'30',
  '上海':'31',
  '江苏':'34',
  '浙江':'36',
  '福建':'38',
  '海南':'50',
  '广东':'51',
  '广西':'59',
  '青海':'70',
  '湖北':'71',
  '湖南':'74',
  '江西':'75',
  '河南':'76',
  '西藏':'79',
  '四川':'81',
  '重庆':'83',
  '陕西':'84',
  '贵州':'85',
  '云南':'86',
  '甘肃':'87',
  '宁夏':'88',
  '新疆':'89',
  '吉林':'90',
  '辽宁':'91',
  '黑龙江':'97',
  '香港国际':'61',
  '总部':'99',
  '智网科技公司':'95',
}

var gWorldLatlong={
  '斐济': [179.414413,-16.578193],
  '新西兰': [174.885971,-40.900557],
  '瓦努阿图': [166.959158,-15.376706],
  '新喀里多尼亚': [165.618042,-20.904305],
  '密克罗尼西亚': [150.550812,7.425554],
  '关岛': [144.793731,13.444304],
  '巴布亚新几内亚': [143.95555,-6.314993],
  '日本': [138.252924,36.204824],
  '帕劳': [134.58252,7.51498],
  '澳大利亚': [133.775136,-25.274398],
  '韩国': [127.766922,35.907757],
  '东帝汶': [125.727539,-8.874217],
  '菲律宾': [121.774017,12.879721],
  '文莱': [114.727669,4.535277],
  '印度尼西亚': [113.921327,-0.789275],
  '越南': [108.277199,14.058324],
  '俄罗斯': [105.318756,61.52401],
  '柬埔寨': [104.990963,12.565679],
  '中国': [104.195397,35.86166],
  '中国香港': [114.14,22.39],
  '中国澳门': [113.57,22.17],
  '中国台湾': [120.7,24.1],
  '蒙古': [103.846656,46.862496],
  '新加坡': [103.819836,1.352083],
  '马来西亚': [101.975766,4.210484],
  '泰国': [100.992541,15.870032],
  '缅甸': [95.956223,21.913965],
  '不丹': [90.433601,27.514162],
  '孟加拉国': [90.356331,23.684994],
  '尼泊尔': [84.124008,28.394857],
  '斯里兰卡': [80.771797,7.873054],
  '印度': [78.96288,20.593684],
  '吉尔吉斯斯坦': [74.766098,41.20438],
  '塔吉克斯坦': [71.276093,38.861034],
  '巴基斯坦': [69.345116,30.375321],
  '阿富汗': [67.709953,33.93911],
  '哈萨克斯坦': [66.923684,48.019573],
  '乌兹别克斯坦': [64.585262,41.377491],
  '土库曼斯坦': [59.556278,38.969719],
  '毛里求斯': [57.552152,-20.348404],
  '阿曼': [55.923255,21.512583],
  '塞舌尔': [55.491977,-4.679574],
  '阿拉伯联合酋长国': [53.847818,23.424076],
  '伊朗': [53.688046,32.427908],
  '卡塔尔': [51.183884,25.354826],
  '巴林': [50.637772,25.930414],
  '也门': [48.516388,15.552727],
  '阿塞拜疆': [47.576927,40.143105],
  '科威特': [47.481766,29.31166],
  '马达加斯加': [46.869107,-18.766947],
  '索马里': [46.199616,5.152149],
  '沙特阿拉伯': [45.079162,23.885942],
  '亚美尼亚': [45.038189,40.069099],
  '科摩罗': [43.872219,-11.875001],
  '伊拉克': [43.679291,33.223191],
  '格鲁吉亚': [43.356892,42.315407],
  '吉布提': [42.590275,11.825138],
  '埃塞俄比亚': [40.489673,9.145],
  '厄立特里亚': [39.782334,15.179384],
  '叙利亚': [38.996815,34.802075],
  '肯尼亚': [37.906193,-0.023559],
  '约旦': [36.238414,30.585164],
  '黎巴嫩': [35.862285,33.854721],
  '莫桑比克': [35.529562,-18.665695],
  '土耳其': [35.243322,38.963745],
  '坦桑尼亚': [34.888822,-6.369028],
  '以色列': [34.851612,31.046051],
  '马拉维': [34.301525,-13.254308],
  '塞浦路斯': [33.429859,35.126413],
  '乌干达': [32.290275,1.373333],
  '斯威士兰': [31.465866,-26.522503],
  '乌克兰': [31.16558,48.379433],
  '埃及': [30.802498,26.820553],
  '苏丹': [30.217636,12.862807],
  '布隆迪': [29.918886,-3.373056],
  '卢旺达': [29.873888,-1.940278],
  '津巴布韦': [29.154857,-19.015438],
  '摩尔多瓦': [28.369885,47.411631],
  '莱索托': [28.233608,-29.609988],
  '白俄罗斯': [27.953389,53.709807],
  '赞比亚': [27.849332,-13.133897],
  '芬兰': [25.748151,61.92411],
  '保加利亚': [25.48583,42.733883],
  '爱沙尼亚': [25.013607,58.595272],
  '罗马尼亚': [24.96676,45.943161],
  '博茨瓦纳': [24.684866,-22.328474],
  '拉脱维亚': [24.603189,56.879635],
  '立陶宛': [23.881275,55.169438],
  '南非': [22.937506,-30.559482],
  '希腊': [21.824312,39.074208],
  '马其顿': [21.745275,41.608635],
  '塞尔维亚': [21.005859,44.016521],
  '阿尔巴尼亚': [20.168331,41.153332],
  '斯洛伐克': [19.699024,48.669026],
  '匈牙利': [19.503304,47.162494],
  '黑山共和国': [19.37439,42.708678],
  '波兰': [19.145136,51.919438],
  '乍得': [18.732207,15.454166],
  '瑞典': [18.643501,60.128161],
  '纳米比亚': [18.49041,-22.95764],
  '安哥拉': [17.873887,-11.202692],
  '利比亚': [17.228331,26.3351],
  '克罗地亚': [15.2,45.1],
  '斯洛文尼亚': [14.995463,46.151241],
  '奥地利': [14.550072,47.516231],
  '马耳他': [14.375416,35.937496],
  '意大利': [12.56738,41.87194],
  '喀麦隆': [12.354722,7.369722],
  '加蓬': [11.609444,-0.803689],
  '德国': [10.451526,51.165691],
  '列支敦士登': [9.555373,47.166],
  '突尼斯': [9.537499,33.886917],
  '丹麦': [9.501785,56.26392],
  '尼日利亚': [8.675277,9.081999],
  '挪威': [8.468946,60.472024],
  '瑞士': [8.227512,46.818188],
  '尼日尔': [8.081666,17.607789],
  '卢森堡': [6.129583,49.815273],
  '荷兰': [5.291266,52.132633],
  '比利时': [4.469936,50.503887],
  '贝宁': [2.315834,9.30769],
  '法国': [2.213749,46.227638],
  '阿尔及利亚': [1.659626,28.033886],
  '安道尔': [1.601554,42.546245],
  '多哥': [0.824782,8.619543],
  '加纳': [-1.023194,7.946527],
  '布基纳法索': [-1.561593,12.238333],
  '泽西岛': [-2.13125,49.214439],
  '英国': [-3.435973,55.378051],
  '西班牙': [-3.74922,40.463667],
  '马里': [-3.996166,17.570692],
  '曼岛': [-4.548056,54.236107],
  '科特迪瓦': [-5.54708,7.539989],
  '摩洛哥': [-7.09262,31.791702],
  '葡萄牙': [-8.224454,39.399872],
  '爱尔兰': [-8.24389,53.41291],
  '利比里亚': [-9.429499,6.428055],
  '几内亚': [-9.696645,9.945587],
  '圣赫勒拿': [-10.030696,-24.143474],
  '毛里塔尼亚': [-10.940835,21.00789],
  '塞拉利昂': [-11.779889,8.460555],
  '塞内加尔': [-14.452362,14.497401],
  '几内亚比绍': [-15.180413,11.803749],
  '冈比亚': [-15.310139,13.443182],
  '冰岛': [-19.020835,64.963051],
  '佛得角': [-24.013197,16.002082],
  '格陵兰': [-42.604303,71.706936],
  '巴西': [-51.92528,-14.235004],
  '乌拉圭': [-55.765835,-32.522779],
  '苏里南': [-56.027783,3.919305],
  '圣皮埃尔和密克隆群岛': [-56.27111,46.941936],
  '巴拉圭': [-58.443832,-23.442503],
  '圭亚那': [-58.93018,4.860416],
  '巴巴多斯': [-59.543198,13.193887],
  '圣卢西亚': [-60.978893,13.909444],
  '特立尼达和多巴哥': [-61.222503,10.691803],
  '多米尼克': [-61.370976,15.414999],
  '格林纳达': [-61.604171,12.262776],
  '蒙特塞拉特': [-62.187366,16.742498],
  '玻利维亚': [-63.588653,-16.290154],
  '阿根廷': [-63.616672,-38.416097],
  '百慕大': [-64.75737,32.321384],
  '委内瑞拉': [-66.58973,6.42375],
  '波多黎各': [-66.590149,18.220833],
  '智利': [-71.542969,-35.675147],
  '海地': [-72.285215,18.971187],
  '哥伦比亚': [-74.297333,4.570868],
  '秘鲁': [-75.015152,-9.189967],
  '牙买加': [-77.297508,18.109581],
  '巴哈马': [-77.39628,25.03428],
  '古巴': [-77.781167,21.521757],
  '厄瓜多尔': [-78.183406,-1.831239],
  '巴拿马': [-80.782127,8.537981],
  '哥斯达黎加': [-83.753428,9.748917],
  '尼加拉瓜': [-85.207229,12.865416],
  '洪都拉斯': [-86.241905,15.199999],
  '伯利兹': [-88.49765,17.189877],
  '萨尔瓦多': [-88.89653,13.794185],
  '危地马拉': [-90.230759,15.783471],
  '美国': [-95.712891,37.09024],
  '墨西哥': [-102.55278,23.634501],
  '加拿大': [-106.34677,56.130366],
  '基里巴斯': [-168.73403,-3.370417],
  '纽埃': [-169.86723,-19.054445],
  '美属萨摩亚': [-170.13221,-14.270972],
  '萨摩亚': [-172.10462,-13.759029],
  '汤加': [-175.19824,-21.178986],
  '西撒哈拉': [-12.885834,24.215527],
  '奥兰群岛': [0,0],
  '南极洲': [-0.071389,-75.250973],
  '安提瓜和巴布达': [-61.796428,17.060816],
  '波斯尼亚和黑塞哥维那': [17.679076,43.915886],
  '中非': [20.939444,6.611111],
  '刚果（金）': [21.758664,-4.038333],
  '刚果（布）': [15.827659,-0.228021],
  '库拉索岛': [0,0],
  '开曼群岛': [-80.566956,19.513469],
  '捷克': [15.472962,49.817492],
  '多米尼加': [-70.162651,18.735693],
  '马尔维纳斯群岛（福克兰）': [-59.523613,-51.796253],
  '法罗群岛': [-6.911806,61.892635],
  '赤道几内亚': [10.267895,1.650801],
  '赫德岛和麦克唐纳群岛': [73.504158,-53.08181],
  '英属印度洋领地': [71.876519,-6.343194],
  '老挝': [102.495496,19.85627],
  '北马里亚纳群岛': [145.38469,17.33083],
  '朝鲜': [127.510093,40.339852],
  '巴勒斯坦': [35.233154,31.952162],
  '法属波利尼西亚': [-149.40684,-17.679742],
  '南苏丹': [29.970703,7.449624],
  '南乔治亚岛和南桑威奇群岛': [-36.587909,-54.429579],
  '所罗门群岛': [160.156194,-9.64571],
  '圣多美和普林西比': [6.613081,0.18636],
  '特克斯和凯科斯群岛': [-71.797928,21.694025],
  '圣文森特和格林纳丁斯': [-61.287228,12.984305],
  '美属维尔京群岛': [-64.896335,18.335765],
  '马尔代夫': [73.5, 4.2],
};

var gWorldCode = {
'FJ': '斐济',
'NZ': '新西兰',
'VU': '瓦努阿图',
'NC': '新喀里多尼亚',
'FM': '密克罗尼西亚',
'GU': '关岛',
'PG': '巴布亚新几内亚',
'JP': '日本',
'PW': '帕劳',
'AU': '澳大利亚',
'KR': '韩国',
'TL': '东帝汶',
'PH': '菲律宾',
'BN': '文莱',
'ID': '印度尼西亚',
'VN': '越南',
'RU': '俄罗斯',
'KH': '柬埔寨',
'CN': '中国',
'MN': '蒙古',
'SG': '新加坡',
'MY': '马来西亚',
'TH': '泰国',
'MM': '缅甸',
'BT': '不丹',
'BD': '孟加拉国',
'NP': '尼泊尔',
'LK': '斯里兰卡',
'IN': '印度',
'KG': '吉尔吉斯斯坦',
'TJ': '塔吉克斯坦',
'PK': '巴基斯坦',
'AF': '阿富汗',
'KZ': '哈萨克斯坦',
'UZ': '乌兹别克斯坦',
'TM': '土库曼斯坦',
'MU': '毛里求斯',
'OM': '阿曼',
'SC': '塞舌尔',
'AE': '阿拉伯联合酋长国',
'IR': '伊朗',
'QA': '卡塔尔',
'BH': '巴林',
'YE': '也门',
'AZ': '阿塞拜疆',
'KW': '科威特',
'MG': '马达加斯加',
'SO': '索马里',
'SA': '沙特阿拉伯',
'AM': '亚美尼亚',
'KM': '科摩罗',
'IQ': '伊拉克',
'GE': '格鲁吉亚',
'DJ': '吉布提',
'ET': '埃塞俄比亚',
'ER': '厄立特里亚',
'SY': '叙利亚',
'KE': '肯尼亚',
'JO': '约旦',
'LB': '黎巴嫩',
'MZ': '莫桑比克',
'TR': '土耳其',
'TZ': '坦桑尼亚',
'IL': '以色列',
'MW': '马拉维',
'CY': '塞浦路斯',
'UG': '乌干达',
'SZ': '斯威士兰',
'UA': '乌克兰',
'EG': '埃及',
'SD': '苏丹',
'BI': '布隆迪',
'RW': '卢旺达',
'ZW': '津巴布韦',
'MD': '摩尔多瓦',
'LS': '莱索托',
'BY': '白俄罗斯',
'ZM': '赞比亚',
'FI': '芬兰',
'BG': '保加利亚',
'EE': '爱沙尼亚',
'RO': '罗马尼亚',
'BW': '博茨瓦纳',
'LV': '拉脱维亚',
'LT': '立陶宛',
'ZA': '南非',
'GR': '希腊',
'MK': '马其顿',
'RS': '塞尔维亚',
'AL': '阿尔巴尼亚',
'SK': '斯洛伐克',
'HU': '匈牙利',
'ME': '黑山共和国',
'PL': '波兰',
'TD': '乍得',
'SE': '瑞典',
'NA': '纳米比亚',
'AO': '安哥拉',
'LY': '利比亚',
'HR': '克罗地亚',
'SI': '斯洛文尼亚',
'AT': '奥地利',
'MT': '马耳他',
'IT': '意大利',
'CM': '喀麦隆',
'GA': '加蓬',
'DE': '德国',
'LI': '列支敦士登',
'TN': '突尼斯',
'DK': '丹麦',
'NG': '尼日利亚',
'NO': '挪威',
'CH': '瑞士',
'NE': '尼日尔',
'LU': '卢森堡',
'NL': '荷兰',
'BE': '比利时',
'BJ': '贝宁',
'FR': '法国',
'DZ': '阿尔及利亚',
'AD': '安道尔',
'TG': '多哥',
'GH': '加纳',
'BF': '布基纳法索',
'JE': '泽西岛',
'GB': '英国',
'ES': '西班牙',
'ML': '马里',
'IM': '曼岛',
'CI': '科特迪瓦',
'MA': '摩洛哥',
'PT': '葡萄牙',
'IE': '爱尔兰',
'LR': '利比里亚',
'GN': '几内亚',
'SH': '圣赫勒拿',
'MR': '毛里塔尼亚',
'SL': '塞拉利昂',
'SN': '塞内加尔',
'GW': '几内亚比绍',
'GM': '冈比亚',
'IS': '冰岛',
'CV': '佛得角',
'GL': '格陵兰',
'BR': '巴西',
'UY': '乌拉圭',
'SR': '苏里南',
'PM': '圣皮埃尔和密克隆群岛',
'PY': '巴拉圭',
'GY': '圭亚那',
'BB': '巴巴多斯',
'LC': '圣卢西亚',
'TT': '特立尼达和多巴哥',
'DM': '多米尼克',
'GD': '格林纳达',
'MS': '蒙特塞拉特',
'BO': '玻利维亚',
'AR': '阿根廷',
'BM': '百慕大',
'VE': '委内瑞拉',
'PR': '波多黎各',
'CL': '智利',
'HT': '海地',
'CO': '哥伦比亚',
'PE': '秘鲁',
'JM': '牙买加',
'BS': '巴哈马',
'CU': '古巴',
'EC': '厄瓜多尔',
'PA': '巴拿马',
'CR': '哥斯达黎加',
'NI': '尼加拉瓜',
'HN': '洪都拉斯',
'BZ': '伯利兹',
'SV': '萨尔瓦多',
'GT': '危地马拉',
'US': '美国',
'MX': '墨西哥',
'CA': '加拿大',
'KI': '基里巴斯',
'NU': '纽埃',
'AS': '美属萨摩亚',
'WS': '萨摩亚',
'TO': '汤加',
'EH': '西撒哈拉',
'AX': '奥兰群岛',
'AQ': '南极洲',
'AG': '安提瓜和巴布达',
'BA': '波斯尼亚和黑塞哥维那',
'CF': '中非',
'CD': '刚果（金）',
'CG': '刚果（布）',
'CW': '库拉索岛',
'KY': '开曼群岛',
'CZ': '捷克',
'DO': '多米尼加',
'FK': '马尔维纳斯群岛（福克兰）',
'FO': '法罗群岛',
'GQ': '赤道几内亚',
'HM': '赫德岛和麦克唐纳群岛',
'IO': '英属印度洋领地',
'LA': '老挝',
'MP': '北马里亚纳群岛',
'KP': '朝鲜',
'PS': '巴勒斯坦',
'PF': '法属波利尼西亚',
'SS': '南苏丹',
'GS': '南乔治亚岛和南桑威奇群岛',
'SB': '所罗门群岛',
'ST': '圣多美和普林西比',
'TC': '特克斯和凯科斯群岛',
'VC': '圣文森特和格林纳丁斯',
'VI': '美属维尔京群岛',
'HK': '中国香港',
'MO': '中国澳门',
'TW': '中国台湾',
'MV': '马尔代夫',
}

var gWorldName = {
'FJ': 'Fiji',
'NZ': 'New Zealand',
'VU': 'Vanuatu',
'NC': 'New Caledonia',
'FM': 'Micronesia',
'GU': 'Guam',
'PG': 'Papua New Guinea',
'JP': 'Japan',
'PW': 'Palau',
'AU': 'Australia',
'KR': 'Korea',
'TL': 'Timor-Leste',
'PH': 'Philippines',
'BN': 'Brunei',
'ID': 'Indonesia',
'VN': 'Vietnam',
'RU': 'Russia',
'KH': 'Cambodia',
'CN': 'China',
'MN': 'Mongolia',
'SG': 'Singapore',
'MY': 'Malaysia',
'TH': 'Thailand',
'MM': 'Myanmar',
'BT': 'Bhutan',
'BD': 'Bangladesh',
'NP': 'Nepal',
'LK': 'Sri Lanka',
'IN': 'India',
'KG': 'Kyrgyzstan',
'TJ': 'Tajikistan',
'PK': 'Pakistan',
'AF': 'Afghanistan',
'KZ': 'Kazakhstan',
'UZ': 'Uzbekistan',
'TM': 'Turkmenistan',
'MU': 'Mauritius',
'OM': 'Oman',
'SC': 'Seychelles',
'AE': 'United Arab Emirates',
'IR': 'Iran',
'QA': 'Qatar',
'BH': 'Bahrain',
'YE': 'Yemen',
'AZ': 'Azerbaijan',
'KW': 'Kuwait',
'MG': 'Madagascar',
'SO': 'Somalia',
'SA': 'Saudi Arabia',
'AM': 'Armenia',
'KM': 'Comoros',
'IQ': 'Iraq',
'GE': 'Georgia',
'DJ': 'Djibouti',
'ET': 'Ethiopia',
'ER': 'Eritrea',
'SY': 'Syria',
'KE': 'Kenya',
'JO': 'Jordan',
'LB': 'Lebanon',
'MZ': 'Mozambique',
'TR': 'Turkey',
'TZ': 'Tanzania',
'IL': 'Israel',
'MW': 'Malawi',
'CY': 'Cyprus',
'UG': 'Uganda',
'SZ': 'Swaziland',
'UA': 'Ukraine',
'EG': 'Egypt',
'SD': 'Sudan',
'BI': 'Burundi',
'RW': 'Rwanda',
'ZW': 'Zimbabwe',
'MD': 'Moldova',
'LS': 'Lesotho',
'BY': 'Belarus',
'ZM': 'Zambia',
'FI': 'Finland',
'BG': 'Bulgaria',
'EE': 'Estonia',
'RO': 'Romania',
'BW': 'Botswana',
'LV': 'Latvia',
'LT': 'Lithuania',
'ZA': 'South Africa',
'GR': 'Greece',
'MK': 'Macedonia',
'RS': 'Serbia',
'AL': 'Albania',
'SK': 'Slovakia',
'HU': 'Hungary',
'ME': 'Montenegro',
'PL': 'Poland',
'TD': 'Chad',
'SE': 'Sweden',
'NA': 'Namibia',
'AO': 'Angola',
'LY': 'Libya',
'HR': 'Croatia',
'SI': 'Slovenia',
'AT': 'Austria',
'MT': 'Malta',
'IT': 'Italy',
'CM': 'Cameroon',
'GA': 'Gabon',
'DE': 'Germany',
'LI': 'Liechtenstein',
'TN': 'Tunisia',
'DK': 'Denmark',
'NG': 'Nigeria',
'NO': 'Norway',
'CH': 'Switzerland',
'NE': 'Niger',
'LU': 'Luxembourg',
'NL': 'Netherlands',
'BE': 'Belgium',
'BJ': 'Benin',
'FR': 'France',
'DZ': 'Algeria',
'AD': 'Andorra',
'TG': 'Togo',
'GH': 'Ghana',
'BF': 'Burkina Faso',
'JE': 'Jersey',
'GB': 'United Kingdom',
'ES': 'Spain',
'ML': 'Mali',
'IM': 'Isle of Man',
//'CI': 'Côte d'+"'"+'Ivoire',
'CI': 'Côte d\'Ivoire',
'MA': 'Morocco',
'PT': 'Portugal',
'IE': 'Ireland',
'LR': 'Liberia',
'GN': 'Guinea',
'SH': 'Saint Helena',
'MR': 'Mauritania',
'SL': 'Sierra Leone',
'SN': 'Senegal',
'GW': 'Guinea-Bissau',
'GM': 'Gambia',
'IS': 'Iceland',
'CV': 'Cape Verde',
'GL': 'Greenland',
'BR': 'Brazil',
'UY': 'Uruguay',
'SR': 'Suriname',
'PM': 'St. Pierre and Miquelon',
'PY': 'Paraguay',
'GY': 'Guyana',
'BB': 'Barbados',
'LC': 'Saint Lucia',
'TT': 'Trinidad and Tobago',
'DM': 'Dominica',
'GD': 'Grenada',
'MS': 'Montserrat',
'BO': 'Bolivia',
'AR': 'Argentina',
'BM': 'Bermuda',
'VE': 'Venezuela',
'PR': 'Puerto Rico',
'CL': 'Chile',
'HT': 'Haiti',
'CO': 'Colombia',
'PE': 'Peru',
'JM': 'Jamaica',
'BS': 'Bahamas',
'CU': 'Cuba',
'EC': 'Ecuador',
'PA': 'Panama',
'CR': 'Costa Rica',
'NI': 'Nicaragua',
'HN': 'Honduras',
'BZ': 'Belize',
'SV': 'El Salvador',
'GT': 'Guatemala',
'US': 'United States',
'MX': 'Mexico',
'CA': 'Canada',
'KI': 'Kiribati',
'NU': 'Niue',
'AS': 'American Samoa',
'WS': 'Samoa',
'TO': 'Tonga',
'EH': 'W. Sahara',
'AX': 'Aland',
'AQ': 'Fr. S. Antarctic Lands',
'AG': 'Antigua and Barb.',
'BA': 'Bosnia and Herz.',
'CF': 'Central African Rep.',
'CD': 'Dem. Rep. Congo',
'CG': 'Congo',
'CW': 'Curaçao',
'KY': 'Cayman Is.',
'CZ': 'Czech Rep.',
'DO': 'Dominican Rep.',
'FK': 'Falkland Is.',
'FO': 'Faeroe Is.',
'GQ': 'Eq. Guinea',
'HM': 'Heard I. and McDonald Is.',
'IO': 'Br. Indian Ocean Ter.',
'LA': 'Lao PDR',
'MP': 'N. Mariana Is.',
'KP': 'Dem. Rep. Korea',
'PS': 'Palestine',
'PF': 'Fr. Polynesia',
'SS': 'S. Sudan',
'GS': 'S. Geo. and S. Sandw. Is.',
'SB': 'Solomon Is.',
'ST': 'São Tomé and Principe',
'TC': 'Turks and Caicos Is.',
'VC': 'St. Vin. and Gren.',
'VI': 'U.S. Virgin Is.',
'HK': 'Hongkong',
'MO': 'Macao',
'TW': 'Taiwan',
'MV': 'The Republic of Maldives'
}

var gWorldCodeReverse = {
'中国':'CN',
}

var gWorldCodeOrder = [
'中国',
]
