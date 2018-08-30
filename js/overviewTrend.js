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
            text: '各业务话单量占比',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['网间业务','增值业务','国内漫游业务','国际漫游业务','其它总部业务']
        },
        series : [
            {
                name: '话单量及占比',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:[
                    {value:32788038370, name:'网间业务'},
                    {value:3183864451, name:'增值业务'},
                    {value:89890991021, name:'国内漫游业务'},
                    {value:723636143, name:'国际漫游业务'},
                    {value:9518070513, name:'其它总部业务'}
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
  }
}
