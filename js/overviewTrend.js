function overviewEchartsDraw(jsonName, mapId){
  var provDate = new Array();
  var provDateSettings = new Array();

  var provSetTop10 = new Set();

  console.log(jsonName);
  $.get("../data/"+jsonName).done(function(data) { 
    console.log("get data overview");
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
        title : {
            text: '本月各业务话单量占比',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            confine: true,
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            // orient: 'vertical',
            // left: 'left',
            bottom: 10,
            left: 'center',
            data: ['网间','增值','国内漫游','国际漫游','其它']
        },
        animation: false,
        series : [
            // {
            //     name: '话单量及占比',
            //     type: 'pie',
            //     radius : '55%',
            //     center: ['50%', '50%'],
            //     label: {
            //         normal: {
            //             position: 'inner',
            //             formatter: '{d}%',
            //         }
            //     },
            //     data:[
            //         {value:32788038370, name:'网间'},
            //         {value:3183864451, name:'增值'},
            //         {value:89890991021, name:'国内漫游'},
            //         {value:723636143, name:'国际漫游'},
            //         {value:9518070513, name:'其它'}
            //     ],
            //     itemStyle: {
            //         emphasis: {
            //             shadowBlur: 10,
            //             shadowOffsetX: 0,
            //             shadowColor: 'rgba(0, 0, 0, 0.5)'
            //         }
            //     }
            // },
            {
                name: '话单量及占比',
                type: 'pie',
                radius : '55%',
                center: ['50%', '50%'],
                label: {
                    normal: {
                        formatter: '{b} {d}%  ',
                    }
                },
                data:[
                    {value:32788038370, name:'网间'},
                    {value:3183864451, name:'增值'},
                    {value:89890991021, name:'国内漫游'},
                    {value:723636143, name:'国际漫游'},
                    {value:9518070513, name:'其它'}
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };

    bmapCharts.clear();
    bmapCharts.setOption(option);
  });
}

function overviewTrendEchartsDraw(jsonName, mapId){
  var provDate = new Array();
  var provDateSettings = new Array();

  var provSetTop10 = new Set();

  console.log(jsonName);
  $.get("../data/"+jsonName).done(function(data) { 
    console.log("get data overview");
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

    option = {
        title: {
            text: '近六个月各业务话单量趋势',
            x:'center'
        },
        tooltip: {
            trigger: 'axis',
            confine: true,
            axisPointer: {
                type: 'none',
            }
        },
        animation: false,
        legend: {
            x: 'center',
            y: 38,
            // orient : 'vertical',
            textStyle: {
              fontSize: 12,
              // fontWeight: 'bolder',
            },
            data: ['网间','增值','国内漫游','国际漫游','其它'],
            selectedMode: 'single',
        },
        grid: {
            top: '35%',
            // left: 0,
            containLabel: false
        },
        toolbox: {
            show: false
            // feature: {
            //     saveAsImage: {}
            // }
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: ['二月','三月','四月','五月','六月','七月']
        },
        yAxis: {
            type: 'value',
            show: false,
            boundaryGap : false,
        },
        series: [
            {
                name:'网间',
                type:'line',
                data:[26636824701, 32723875567, 32111190698, 32815388288, 31786529384, 32788038370]
            },
            {
                name:'增值',
                type:'line',
                data:[3414460581, 2727134216, 2815955134, 2354935076, 3304982359, 3183864451]
            },
            {
                name:'国内漫游',
                type:'line',
                data:[78994334880, 73669733921, 74254733988, 78637955496, 79321450833, 89890991021]
            },
            {
                name:'国际漫游',
                type:'line',
                data:[525539649, 611852069, 634158651, 634616409, 654902576, 723636143]
            },
            {
                name:'其它',
                type:'line',
                // stack: '总量',
                data:[6569830025, 8483216783, 9412479717, 9609853507, 9609368654, 9518070513]
            }
        ]
    };


    bmapCharts.clear();
    bmapCharts.setOption(option);
  });
}
