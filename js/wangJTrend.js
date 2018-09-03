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
            text: '各省净收入情况（单位：万元）',
            left:'50%',
            top:'1%',
            textAlign:'center',
            // subtext: 'From ExcelHome',
            // sublink: 'http://e.weibo.com/1341556070/AjwF2AgQm'
        },
        tooltip : {
            trigger: 'axis',
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            },
            formatter: function(params) {
                // console.log(params);
                // console.log(params[0].data);
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
            data: ['江西','云南','四川','广西','福建','甘肃','浙江','西藏','宁夏','海南','贵州','青海','江苏','黑龙江','安徽','陕西','上海','重庆','广东','吉林','内蒙古','新疆','天津','湖北','山西','湖南','辽宁','河北','北京','河南','山东']
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
                data: [-167.47,-105.12,-67.97,-59.81,-42.48,-30.09,-14.53,-7.48,26.74,77.72,83.28,85.52,129.47,141.72,145.4,194.14,282.74,362.76,376.67,403.39,541.62,582.25,600.4,621.38,624.85,632.2,828.35,1032.26,1205.54,1591.1,2400.85,]
            }

        ]
    };
    bmapCharts.clear();
    bmapCharts.setOption(option);
  });
}
