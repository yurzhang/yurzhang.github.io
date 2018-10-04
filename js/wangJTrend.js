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
            data: ['江西','云南','四川','广西','福建','甘肃','西藏','宁夏','浙江','黑龙江','贵州','海南','青海','安徽','陕西','江苏','上海','吉林','重庆','内蒙古','新疆','天津','山西','湖南','广东','湖北','辽宁','河北','北京','河南','山东']
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
                data: [-165.61,-114.12,-58.63,-50.42,-30.79,-27.68,-7.8,22.89,34.15,37.95,75.78,79.05,83.32,156.2,168.17,212.39,319.75,332.6,362.4,528,584.77,600.98,616.52,627.3,629.45,643.79,812.84,1035.8,1307.03,1599.92,2355.9]
            }

        ]
    };
    bmapCharts.clear();
    bmapCharts.setOption(option);
  });
}
