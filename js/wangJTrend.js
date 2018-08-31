function wangJEchartsDraw(jsonName, mapId){
  var provDate = new Array();
  var provDateSettings = new Array();

  var provSetTop10 = new Set();

  console.log(jsonName);
  $.get("../data/"+jsonName).done(function(data) { 
    console.log("get data wangj");
    $.each(data, function(infoIndex, info) { 
        provDate.push({
          provId: info.roam+','+info.msi,
          value: Number(info.value)
        });
    });

    var bmapCharts = echarts.init(document.getElementById(mapId));
    // 初始化地图
    console.log(mapId);
    console.log("initail map ok");

    var labelRight = {
        normal: {
            position: 'right'
        }
    };
    option = {                                                                                                                                                                                                                                  
        title: {                                                                                                                                                                                                                                
            text: '各省净收入情况单位（万元）',                                                                                                                                                                                                 
            left:'50%',                                                                                                                                                                                                                         
            top:'1%',                                                                                                                                                                                                                           
            textAlign:'center',                                                                                                                                                                                                                 
            // subtext: 'From ExcelHome',                                                                                                                                                                                                       
            sublink: 'http://e.weibo.com/1341556070/AjwF2AgQm'                                                                                                                                                                                  
        },                                                                                                                                                                                                                                      
        tooltip : {                                                                                                                                                                                                                             
            trigger: 'axis',                                                                                                                                                                                                                    
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
        animation: false,
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
            data: ['江西','云南','四川','广西','浙江','甘肃','福建','西藏','宁夏','海南','贵州','青海','江苏','安徽','陕西','黑龙江','上海','广东','吉林','重庆','内蒙古','新疆','天津','湖北','山西','湖南','辽宁','河北','北京','河南','山东']
        },                                                                                                                                                                                                                                      
        series: [                                                                                                                                                                                                                               
            {                                                                                                                                                                                                                                   
                name: '净收入',                                                                                                                                                                                                        
                type: 'bar',                                                                                                                                                                                                                    
                stack: '总量',                                                                                                                                                                                                                  
                label: {                                                                                                                                                                                                                        
                    normal: {                                                                                                                                                                                                                   
                        show: false,                                                                                                                                                                                                            
                        position: 'insideRight'                                                                                                                                                                                                 
                    }                                                                                                                                                                                                                           
                },                                                                                                                                                                                                                              
                data: [-181.97,-120.29,-71.51,-64.65,-49.45,-46.57,-36.1,-0.81,28.17,72.83,75.07,86.66,120.2,132.62,150.12,151.08,287.86,350.07,351.48,368.36,551.91,558.59,601.6,610.35,612.65,651.76,821.4,1008.48,1233.94,1592.25,2397.63]                                                  
            }   
                                                                                                                                                                                                                                                
        ]                                                                                                                                                                                                                                       
    };  
    bmapCharts.clear();
    bmapCharts.setOption(option);
  });
}



// function wangJEchartsDraw(mapId){

//     var bmapCharts = echarts.init(document.getElementById(mapId));
//     // 初始化地图
//     console.log(mapId);
//     console.log("initail map ok");

//     var labelRight = {
//         normal: {
//             position: 'right'
//         }
//     };
//     option = {
//         title: {
//             // text: '交错正负轴标签',
//             // subtext: 'From ExcelHome',
//             sublink: 'http://e.weibo.com/1341556070/AjwF2AgQm'
//         },
//         tooltip : {
//             trigger: 'axis',
//             axisPointer : {            // 坐标轴指示器，坐标轴触发有效
//                 type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
//             }
//         },
//         grid: {
//             top: 80,
//             bottom: 30
//         },
//         xAxis: {
//             type : 'value',
//             position: 'top',
//             splitLine: {lineStyle:{type:'dashed'}},
//         },
//         yAxis: {
//             type : 'category',
//             axisLine: {show: false},
//             axisLabel: {show: false},
//             axisTick: {show: false},
//             splitLine: {show: false},
//             data : ['江西','云南','四川','广西','浙江','甘肃','福建','西藏','宁夏','海南','贵州','青海','江苏','安徽','陕西','黑龙江','上海','广东','吉林','重庆','内蒙古','新疆','天津','湖北','山西','湖南','辽宁','河北','北京','河南','山东']
//         },
//         series : [
//             {
//                 name:'网间结算费：',
//                 type:'bar',
//                 stack: '总量',
//                 itemStyle: {  
//                     normal:{  
//                         color: function (params){
//                             return params.data.value>0?'red':'SteelBlue';
//                         }
//                     }
//                 },
//                 label: {
//                     normal: {
//                         show: true,
//                         formatter: '{b}'
//                     }
//                 },
//                 data:[                                             
//                     {value: -1819685.46, label: labelRight},       
//                     {value: -1202892.74, label: labelRight},             
//                     {value: -715061.3, label: labelRight},             
//                     {value: -646505.37, label: labelRight},             
//                     {value: -494464, label: labelRight},             
//                     {value: -465704.78, label: labelRight},             
//                     {value: -361011.48, label: labelRight},             
//                     {value: -8148.53, label: labelRight},             
//                     {value: 281724.93, label: labelRight},             
//                     {value: 728276.95, label: labelRight},             
//                     {value: 750702.2, label: labelRight},             
//                     {value: 866626.27, label: labelRight},             
//                     {value: 1202002.52, label: labelRight},             
//                     {value: 1326220.57, label: labelRight},             
//                     {value: 1501203.75, label: labelRight},             
//                     {value: 1510793.17, label: labelRight},             
//                     {value: 2878611.09, label: labelRight},             
//                     {value: 3500735.17, label: labelRight},             
//                     {value: 3514829.46, label: labelRight},             
//                     {value: 3683600.14, label: labelRight},             
//                     {value: 5519068.8, label: labelRight},             
//                     {value: 5585902.51, label: labelRight},             
//                     {value: 6015977.78, label: labelRight}, 
//                     {value: 6103545.18, label: labelRight}, 
//                     {value: 6126540.76, label: labelRight}, 
//                     {value: 6517605.83, label: labelRight},                                           
//                     {value: 8214006.8, label: labelRight}, 
//                     {value: 10084764.76, label: labelRight}, 
//                     {value: 12339383.51, label: labelRight}, 
//                     {value: 15922465.32, label: labelRight}, 
//                     {value: 23976294.75, label: labelRight}
//                 ]     
//             }
//         ]
//     };
//     bmapCharts.clear();
//     bmapCharts.setOption(option);
// }

