function guoJEchartsDraw(jsonName, mapId){
  var nationDate = new Array();
  var nationDateSettings = new Array();

  var nationSetTop10 = new Set();

  console.log(jsonName);
  $.get("../data/"+jsonName).done(function(data){ 
    console.log("get data guoj");
    $.each(data, function(infoIndex,info){ 
        nationDate.push({
          roamAndMsi: info.roam+','+info.msi,
          value: Number(info.value)
        });
    });

    nationDate.sort(function(a, b){return b.value - a.value});
    console.log(nationDate);

    var nationchargedUnitsTop10 = nationDate.slice(0, 10);

    nationchargedUnitsTop10.forEach(function (item, i) {
      var roamAndMsi = item.roamAndMsi.split(',');
      nationSetTop10.add(roamAndMsi[0]);
      nationSetTop10.add(roamAndMsi[1]);
    });

    var convertData = function (data) {
      var res = [];
      for (var i = 0; i < data.length; i++) {
        var dataItem = data[i];
        var roamAndMsi = dataItem.roamAndMsi.split(',');
        var fromCoord = gWorldLatlong[gWorldCode[roamAndMsi[1]]];
        var toCoord = gWorldLatlong[gWorldCode[roamAndMsi[0]]];
        if (fromCoord && toCoord) {
          res.push({
            fromName: gWorldCode[roamAndMsi[1]],
            toName: gWorldCode[roamAndMsi[0]],
            coords: [fromCoord, toCoord],
            unitsValue: Math.ceil(parseInt(dataItem.value)),
            sortIdx: i+1,
            value: 0
         });
        }
      }
      return res;
    };

    var worldNameShowData = new Array();
    // 处理点显示
    nationSetTop10.forEach(function(item, i) {
      console.log(item);
      console.log(gWorldName[item]);
      console.log("..........");
      worldNameShowData.push({        // 选中的区域
        name: gWorldName[item],
        // selected: true,
        itemStyle: {   // 高亮时候的样式
          normal: {
            areaColor: gStateColor[1]
          }
        }
        label: {
              normal:{//是图形在默认状态下的样式
                  show : true
              },
              emphasis: {
                  show: false
                  // show: true
              }
          },
        // label: {
        //     emphasis: {
        //        // show: false
        //    }
        // }
      });
    });
    // var worldNameShowData = [{        // 选中的区域
    //           name: 'China',
    //           selected: true,
    //           itemStyle: {   // 高亮时候的样式
    //             emphasis: {
    //                 areaColor: '#7d7d7d'
    //             }
    //           },
    //          label: {
    //               emphasis: {
    //                  // show: false
    //                   show: true
    //              }
    //           }
    //         },
    //         {        // 选中的区域
    //           name: 'United States',
    //           selected: true,
    //           itemStyle: {   // 高亮时候的样式
    //             emphasis: {
    //                 areaColor: '#7d7d7d'
    //             }
    //           },
    //          label: {
    //               emphasis: {
    //                  // show: false
    //                   show: true
    //              }
    //           }
    //         },
    //         ];

    var series = [];
      [['10', nationchargedUnitsTop10]].forEach(function (item, i) {
      series.push({
        name: 'Top'+item[0],
        type: 'lines',
        zlevel: 1,
        effect: {
            show: true,
            period: 6,
            trailLength: 0.7,
            color: '#fff',
            symbolSize: 3
        },
        lineStyle: {
            normal: {
                type: 'solid',
                color: gStateColor[0],
                // width: Math.ceil((10-parseInt(item[0])+1)/3),
                width: 2,
                curveness: 0.2
            }
        },
        data: convertData(item[1])
      },
      {
        name: 'Top'+item[0],
        type: 'lines',
        zlevel: 2,
        symbol: ['none', 'arrow'],
        // symbol: ['none', 'circle'],
        symbolSize: 10,
        effect: {
            show: true,
            period: 6,
            trailLength: 0,
            symbol: planePath,
            symbolSize: 10
        },
        lineStyle: {
            type: 'solid',
            normal: {
                color: gStateColor[0],
                width: 1,
                opacity: 0.6,
                curveness: 0.2
            }
        },
        data: convertData(item[1])
      },
      {
        name: 'Top'+item[0],
        type: 'effectScatter',
        coordinateSystem: 'geo',
        zlevel: 2,
        rippleEffect: {
            brushType: 'stroke'
        },
        label: {
            normal: {
                show: true,
                position: 'right',
                formatter: '{b}'
            }
        },
        symbolSize: function (val) {
            return val[2] / 8;
        },
        itemStyle: {
            normal: {
                color: gStateColor[0]
            }
        },
        data: {}
      });
    });

    // 地图省分着色
    var worldLegendData = new Array();
    nationSetTop10.forEach(function(item, i) {
      console.log(item+ " aaaa " +i);
      worldLegendData[i] = {name: gWorldCode[item], value: 1};
    })
    series.push(
      {
          name: 'mapContentX',
          type: 'map',
          geoIndex: 0,
          // tooltip: {show: false},
          data: worldLegendData
      }
    );
    console.log(".....................................................");
    // echarts.registerMap('china', data);
    var bmapCharts = echarts.init(document.getElementById(mapId));
    // 初始化地图
    console.log(mapId);
    console.log("initail map ok");

    var nowSplitList = [
      {start: 0, end: 0, label: 'Top10', color: gStateColor[0]},
      {start: 1, end: 1, label: 'Top10', color: gStateColor[1]}
    ];
    let option = {
      backgroundColor: '#fff',
      title : {
          text: '国际漫入漫出Top10',
          // subtext: '数据纯属虚构',
          left: 'center',
          textStyle : {
              color: '#233'
          }
      },
      tooltip : {
          trigger: 'item',
          formatter: function (v) {
            // console.log(v);
            if (v.seriesName == 'mapContentX') {
              return allnationUnits[v.name];
            }
            // console.log(v.data.fromName+"  "+v.data.toName+"  "+v.data.unitsValue);
            return "Top"+v.data.sortIdx+": "+v.data.fromName+" -> "+v.data.toName+" : "+v.data.unitsValue+"SDR";
          }
      },
      legend: {
          orient: 'vertical',
          top: 'center',
          left: 'right',
          data:['Top10'],
          show: false,
          textStyle: {
              color: '#233'
          },
          selectedMode: 'single'
      },
      visualMap: {//颜色的设置  dataRange
          x: 'left',
          y: 'bottom',
          show: false,
          // show: true,
          splitList : nowSplitList,
          hoverLink : false,
          textStyle :{
            fontSize: 26,
            color: '#333'
          },
          // splitList: [
          //     {start: 0, end: 0, label: '未出账', color: gStateColor[0]},
          //     {start: 1, end: 1, label: '出账中', color: gStateColor[1]},
          //     {start: 10, end: 10, label: '出账完成，数据上报PRM', color: gStateColor[10]}
          // ]
          // text:['高','低'],// 文本，默认为数值文本
      },
      
      geo: {
          map: 'world',
          zoom: 1.23,
          label: {
              normal:{//是图形在默认状态下的样式
                  show : false
              },
              emphasis: {
                  show: false
                  // show: true
              }
          },
          roam: false,

          regions: worldNameShowData,

          itemStyle: {
            areaColor: '#fff',
          }
      },
      series: series
    };
    // console.log(series)
    bmapCharts.clear();
    bmapCharts.setOption(option);
  });
}