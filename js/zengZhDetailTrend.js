function zengZhDetailTrendDraw(jsonMame, mapId){

    var bmapCharts = echarts.init(document.getElementById(mapId));
    // 初始化地图
    console.log(mapId);
    console.log("initail map ok");
    // app.title = '堆叠条形图';
    option = {
        title: {
            text: '各省增值支出情况单位（元）',
            left:'50%',
            top:'1%',
            textAlign:'center',
            // subtext: 'From ExcelHome',
            sublink: 'http://e.weibo.com/1341556070/AjwF2AgQm'
        },
        tooltip : {
            trigger: 'axis',
            confine: true,
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            },
            formatter: function(params) {
                console.log(params);
                console.log(params[0].data);
                var showTips = params[0].name;
                function formatNumber(num) {
                    return ("" + num).replace(/(\d{1,3})(?=(\d{3})+(?:$|\.))/g, "$1,"); 
                }
                for(var i = 0; i <params.length; i ++){
                    if(params[i].value != 0) {
                        var html = "<div>"+params[i].marker+params[i].seriesName+"：" + formatNumber(params[i].value) + "</div>";
                        showTips += html;
                    }
                    
                }
                return showTips;
            }
        },
        legend: {
            data: ['']},
        grid: {
            left: '3%',
            right: '4%',
            bottom: '1%',
            containLabel: true
        },
        xAxis:  {
            type: 'value'
        },
        yAxis: {
            type: 'category',
            data: ['吉林','西藏','北京','陕西','青海','宁夏','甘肃','贵州','新疆','山西','安徽','内蒙古','福建','江西','云南','上海','海南','江苏','重庆','广西','辽宁','河南','湖北','浙江','湖南','山东','四川','黑龙江','天津','广东','河北']
        },
        series: [
            {
                name: 'SMS（联通在信）',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [-1470494,232,32843,361449,221052,443544,631411,390548,765832,357693,1357707,149584,1356877,1500703,270894,448515,264476,1662327,362733,4376900,4103036,2166842,1845877,1168314,2831731,1427153,1247461,185495,877591,1538074,3159236]
            },
            {
                name: 'IPTV业务',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,227376,0,0,340128,0,0,0,0,0,0,213943,39846,0,0,2741481,0,0,134974,3524400,1066560,0,1786106,10130,6749086,11538413,0,2184101]
            },
            {
                name: 'BREW',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,17516639]
            },
            {
                name: '行业信息服务',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [42588,0,0,0,0,0,0,0,0,4844,0,1273499,0,167054,0,883809,0,0,0,227315,0,0,0,621559,0,253001,115750,960081,30616,10078059,69910]
            },
            {
                name: '流媒体',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,7894,0,0,3784,0,500374,846598,0,29464,0,0,133548,5312,27256,2745398,0,7842,24616,0,3038006,0,49156,129478,-108,11425816,0,10,17006,0]
            },
            {
                name: '固网IVR',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,610072,0,30816,0,0,0,179555,0,0,0,0,431191,1325392,0,0,0,523782,24219,131612,380,0,3179893]
            },
            {
                name: 'IVR业务',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [-113657,12680,74097,24583,0,0,183529,0,43534,6395,60861,106234,291586,8256,0,2311,15923,134893,322832,137443,342043,606531,144852,26970,121348,72217,0,178822,213,954487,1447015]
            },
                    {
                name: '内容点播',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,0,0,0,26763,0,0,32760,785319,0,0,0,375032,0,0,0,0,13704,0,265010,34734,1996694,998392]
            },
                    {
                name: '行业短信',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,63479,0,0,0,0,3038,0,0,0,0,0,6,0,9,2725762,0,0,808510,345214,0,0,0]
            },
                    {
                name: '互联网电视业务',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6406,0,2708274,0,0,0,0,91145,0]
            },
                    {
                name: 'SP彩信MMS业务',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [12358,0,0,0,111659,367658,5716,29914,112223,0,158747,60448,3744,33927,101455,13166,51147,12584,320532,22105,0,0,22835,23545,179563,137111,100218,0,0,0,146497]
            },
                    {
                name: '固网短信',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,212509,0,0,0,0,251842,0,0,592,0,1335238,0,0,0,0,0]
            },
                    {
                name: '沃联系',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1289663,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
            },
                    {
                name: '电话会议',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,402164,0,0,650445,0,0]
            },
                    {
                name: '电脑保姆',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,846826,0,0,0,0,0,0,0,0,0,0,0,0,0]
            },
                            {
                name: '固网悦铃',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64672,0,16023,0,0,40051,6733,0,810,0,354610]
            },
                            {
                name: '粗定位业务',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,17774,0,0,0,0,24,208,0,2174,0,0,0,0,22965,0,0,7338,383674,32725,6894,0,0,0,0]
            },
                            {
                name: '通话秘书',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,161438,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,111642,0,0,148424,0,0]
            },
                            {
                name: '共享能力平台',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,346816,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,17261,0,0,0,0,0]
            },
                            {
                name: '网络安全',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: 'insideRight'
                    }
                },
                data: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,336826,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14572]
            },
    
        ]
    };
    bmapCharts.clear();
    bmapCharts.setOption(option);
}


