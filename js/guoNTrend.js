 function wangJEchartsDraw(mapId){

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
            }
        },
        grid: {
            top: 80,
            bottom: 30
        },
        xAxis: {
            type : 'value',
            position: 'top',
            // min:-5000000,
            // max:25000000,
            axisLabel: {
                interval: 2
            },
            splitLine: {lineStyle:{type:'dashed'}},
        },
        yAxis: {
            type : 'category',
            axisLine: {show: false},
            axisLabel: {show: false},
            axisTick: {show: false},
            splitLine: {show: false},
            data : ['江西','云南','四川','广西','浙江','甘肃','福建','西藏','宁夏','海南','贵州','青海','江苏','安徽','陕西','黑龙江','上海','广东','吉林','重庆','内蒙古','新疆','天津','湖北','山西','湖南','辽宁','河北','北京','河南','山东']
        },
        series : [
            {
                name:'网间结算费：',
                type:'bar',
                stack: '总量',
                itemStyle: {  
                    normal:{  
                        color: function (params){
                            return params.data.value>0?'red':'SteelBlue';
                        }
                    }
                },
                label: {
                    normal: {
                        show: true,
                        formatter: '{b}'
                    }
                },
                data:[                                             
                    {value: -181.968546 , label: labelRight}, 
                    {value: -120.289274 , label: labelRight}, 
                    {value: -71.50613   , label: labelRight}, 
                    {value: -64.650537  , label: labelRight}, 
                    {value: -49.4464    , label: labelRight}, 
                    {value: -46.570478  , label: labelRight}, 
                    {value: -36.101148  , label: labelRight}, 
                    {value: -0.814853   , label: labelRight}, 
                    {value: 28.172493   , label: labelRight}, 
                    {value: 72.827695   , label: labelRight}, 
                    {value: 75.07022    , label: labelRight}, 
                    {value: 86.662627   , label: labelRight}, 
                    {value: 120.200252  , label: labelRight}, 
                    {value: 132.622057  , label: labelRight}, 
                    {value: 150.120375  , label: labelRight}, 
                    {value: 151.079317  , label: labelRight}, 
                    {value: 287.861109  , label: labelRight}, 
                    {value: 350.073517  , label: labelRight}, 
                    {value: 351.482946  , label: labelRight}, 
                    {value: 368.360014  , label: labelRight}, 
                    {value: 551.90688   , label: labelRight}, 
                    {value: 558.590251  , label: labelRight}, 
                    {value: 601.597778  , label: labelRight}, 
                    {value: 610.354518  , label: labelRight}, 
                    {value: 612.654076  , label: labelRight}, 
                    {value: 651.760583  , label: labelRight}, 
                    {value: 821.40068   , label: labelRight}, 
                    {value: 1008.476476 , label: labelRight}, 
                    {value: 1233.938351 , label: labelRight}, 
                    {value: 1592.246532 , label: labelRight}, 
                    {value: 2397.629475 , label: labelRight}  
                ]     
            }
        ]
    };
    bmapCharts.clear();
    bmapCharts.setOption(option);
}





// function echartsDraw(jsonName, mapId){
//   var provDate = new Array();
//   var provDateSettings = new Array();

//   var provSetTop10 = new Set();

//   console.log(jsonName);
//   $.get("../data/"+jsonName).done(function(data){ 
//     console.log("get data 23333");
//     $.each(data, function(infoIndex,info){ 
//         provDate.push({
//           roamAndMsi: info.roam+','+info.msi,
//           value: Number(info.value)
//         });
//     });

//     provDate.sort(function(a, b){return b.value - a.value});
//     console.log(provDate);

//     var provchargedUnitsTop10 = provDate.slice(0, 10);

//     provchargedUnitsTop10.forEach(function (item, i) {
//       var roamAndMsi = item.roamAndMsi.split(',');
//       provSetTop10.add(roamAndMsi[0]);
//       provSetTop10.add(roamAndMsi[1]);
//     });

//     var convertData = function (data) {
//       var res = [];
//       for (var i = 0; i < data.length; i++) {
//         var dataItem = data[i];
//         var roamAndMsi = dataItem.roamAndMsi.split(',');
//         var fromCoord = geoCoordMap[gProvCode[roamAndMsi[1]]];
//         var toCoord = geoCoordMap[gProvCode[roamAndMsi[0]]];
//         if (fromCoord && toCoord) {
//           res.push({
//             fromName: gProvCode[roamAndMsi[1]],
//             toName: gProvCode[roamAndMsi[0]],
//             coords: [fromCoord, toCoord],
//             unitsValue: Math.ceil(parseInt(dataItem.value)/1024/1024),
//             sortIdx: i+1,
//             value: 0
//          });
//         }
//       }
//       return res;
//     };

//     var series = [];
//       [['10', provchargedUnitsTop10]].forEach(function (item, i) {
//       series.push({
//         name: 'Top'+item[0],
//         type: 'lines',
//         zlevel: 1,
//         effect: {
//             show: true,
//             period: 6,
//             trailLength: 0.7,
//             color: '#fff',
//             symbolSize: 3
//         },
//         lineStyle: {
//             normal: {
//                 type: 'solid',
//                 color: gStateColor[0],
//                 // width: Math.ceil((10-parseInt(item[0])+1)/3),
//                 width: 2,
//                 curveness: 0.2
//             }
//         },
//         data: convertData(item[1])
//       },
//       {
//         name: 'Top'+item[0],
//         type: 'lines',
//         zlevel: 2,
//         symbol: ['none', 'arrow'],
//         // symbol: ['none', 'circle'],
//         symbolSize: 10,
//         effect: {
//             show: true,
//             period: 6,
//             trailLength: 0,
//             symbol: planePath,
//             symbolSize: 10
//         },
//         lineStyle: {
//             type: 'solid',
//             normal: {
//                 color: gStateColor[0],
//                 width: 1,
//                 opacity: 0.6,
//                 curveness: 0.2
//             }
//         },
//         data: convertData(item[1])
//       },
//       {
//         name: 'Top'+item[0],
//         type: 'effectScatter',
//         coordinateSystem: 'geo',
//         zlevel: 2,
//         rippleEffect: {
//             brushType: 'stroke'
//         },
//         label: {
//             normal: {
//                 show: true,
//                 position: 'right',
//                 formatter: '{b}'
//             }
//         },
//         symbolSize: function (val) {
//             return val[2] / 8;
//         },
//         itemStyle: {
//             normal: {
//                 color: gStateColor[0]
//             }
//         },
//         data: {}
//       });
//     });

//     // 地图省分着色
//     var provLegendData = new Array();
//     provSetTop10.forEach(function(item, i) {
//       console.log(item+ " aaaa " +i);
//       provLegendData[i] = {name: gProvCode[item], value: 1};
//     })
//     series.push(
//       {
//           name: 'mapContentX',
//           type: 'map',
//           geoIndex: 0,
//           // tooltip: {show: false},
//           data: provLegendData
//       }
//     );
//     console.log(".....................................................");
//     // echarts.registerMap('china', data);
//     var bmapCharts = echarts.init(document.getElementById(mapId));
//     // 初始化地图
//     console.log(mapId);
//     console.log("initail map ok");

//     var nowSplitList = [
//       {start: 0, end: 0, label: 'Top10', color: gStateColor[0]},
//       {start: 1, end: 1, label: 'Top10', color: gStateColor[1]}
//     ];
//     let option = {
//       backgroundColor: '#fff',
//       title : {
//           text: '省际流量漫入漫出Top10',
//           // subtext: '数据纯属虚构',
//           left: 'center',
//           textStyle : {
//               color: '#233'
//           }
//       },
//       tooltip : {
//           trigger: 'item',
//           formatter: function (v) {
//             // console.log(v);
//             if (v.seriesName == 'mapContentX') {
//               return allProvUnits[v.name];
//             }
//             // console.log(v.data.fromName+"  "+v.data.toName+"  "+v.data.unitsValue);
//             return "Top"+v.data.sortIdx+": "+v.data.fromName+" -> "+v.data.toName+" : "+v.data.unitsValue+"MB";
//           }
//       },
//       legend: {
//           orient: 'vertical',
//           top: 'center',
//           left: 'right',
//           data:['Top10'],
//           show: false,
//           textStyle: {
//               color: '#233'
//           },
//           selectedMode: 'single'
//       },
//       visualMap: {//颜色的设置  dataRange
//           x: 'left',
//           y: 'bottom',
//           show: false,
//           // show: true,
//           splitList : nowSplitList,
//           hoverLink : false,
//           textStyle :{
//             fontSize: 26,
//             color: '#333'
//           },
//       },
      
//       geo: {
//           map: 'china',
//           zoom: 1.23,
//           label: {
//               normal:{//是图形在默认状态下的样式
//                   show : true,
//                   textStyle : {
//                     fontSize: 6
//                   }
//               },
//               emphasis: {
//                   show: false
//                   // show: true
//               }
//           },
//           roam: false,
//           itemStyle: {
//             areaColor: '#fff',
//           },
//       },
//       series: series
//     };
//     // console.log(series)
//     bmapCharts.clear();
//     bmapCharts.setOption(option);
//   });
// }