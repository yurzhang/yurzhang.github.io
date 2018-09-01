function echartsDraw(jsonName, mapId){
  var provDate = new Array();
  var provDateSettings = new Array();

  var provSetTop10 = new Set();

  console.log(jsonName);
  $.get("../data/"+jsonName).done(function(data){ 
    console.log("get data 23333");
    $.each(data, function(infoIndex,info){ 
        provDate.push({
          roamAndMsi: info.roam+','+info.msi,
          value: Number(info.value)
        });
    });

    provDate.sort(function(a, b){return b.value - a.value});
    // console.log(provDate);

    var provchargedUnitsTop10 = provDate.slice(0, 10);

    provchargedUnitsTop10.forEach(function (item, i) {
      var roamAndMsi = item.roamAndMsi.split(',');
      provSetTop10.add(roamAndMsi[0]);
      provSetTop10.add(roamAndMsi[1]);
    });

    var convertData = function (data) {
      var res = [];
      for (var i = 0; i < data.length; i++) {
        var dataItem = data[i];
        var roamAndMsi = dataItem.roamAndMsi.split(',');
        var fromCoord = geoCoordMap[gProvCode[roamAndMsi[1]]];
        var toCoord = geoCoordMap[gProvCode[roamAndMsi[0]]];
        if (fromCoord && toCoord) {
          res.push({
            fromName: gProvCode[roamAndMsi[1]],
            toName: gProvCode[roamAndMsi[0]],
            coords: [fromCoord, toCoord],
            unitsValue: Math.ceil(parseInt(dataItem.value)),
            sortIdx: i+1,
            value: 0
         });
        }
      }
      return res;
    };

    var series = [];
      [['10', provchargedUnitsTop10]].forEach(function (item, i) {
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
    var provLegendData = new Array();
    provSetTop10.forEach(function(item, i) {
      // console.log(item+ " aaaa " +i);
      provLegendData[i] = {name: gProvCode[item], value: 1};
    })
    series.push(
      {
          name: 'mapContentX',
          type: 'map',
          geoIndex: 0,
          // tooltip: {show: false},
          data: provLegendData
      }
    );
    // console.log(".....................................................");
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
          text: '省际流量漫入漫出Top10',
          // subtext: '数据纯属虚构',
          left: 'center',
          textStyle : {
              color: '#233'
          }
      },
      tooltip : {
          trigger: 'item',
          confine: true,
          formatter: function (v) {
            // console.log(v);
            if (v.seriesName == 'mapContentX') {
              // return allProvUnits[v.name];
              return false;
            }
            // console.log(v.data.fromName+"  "+v.data.toName+"  "+v.data.unitsValue);
            return "Top"+v.data.sortIdx+": "+v.data.fromName+" -> "+v.data.toName+" : "+v.data.unitsValue+"MB";
          }
      },
      animation: false,
      legend: {
          orient: 'vertical',
          top: 'center',
          left: 'right',
          data:['Top10'],
          show: false,
          textStyle: {
              color: '#233'
          },
          // selectedMode: 'single'
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
      },
      
      geo: {
          map: 'china',
          zoom: 1.23,
          label: {
              normal:{//是图形在默认状态下的样式
                  show : false,
                  textStyle : {
                    fontSize: 6
                  }
              },
              emphasis: {
                  show: false
                  // show: true
              }
          },
          roam: false,
          itemStyle: {
            areaColor: '#fff',
          },
      },
      series: series
    };
    // console.log(series)
    bmapCharts.clear();
    bmapCharts.setOption(option);
  });
}