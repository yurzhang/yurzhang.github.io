function zengZhTrendDraw(jsonName, mapId){

    var bmapCharts = echarts.init(document.getElementById(mapId));
    // 初始化地图
    console.log(mapId);
    console.log("initail map ok");
    // app.title = '堆叠条形图';
    var labelRight = {
        normal: {
            position: 'right'
        }
    };
    option = {
        title: {
            text: '各省净收入情况单位（元）',
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
            splitLine: {lineStyle:{type:'dashed'}},
        },
        yAxis: {
            type : 'category',
            axisLine: {show: false},
            axisLabel: {show: false},
            axisTick: {show: false},
            splitLine: {show: false},
            data : ['吉林','西藏','北京','陕西','青海','宁夏','甘肃','贵州','新疆','山西','安徽','内蒙古','福建','江西','云南','上海','海南','江苏','重庆','广西','辽宁','河南','湖北','浙江','湖南','山东','四川','黑龙江','天津','广东','河北']
        },
        series : [
            {
                name:'净收入',
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
                   {value: -1512919, label: labelRight},   
                    {value: 13533   , label: labelRight},   
                    {value: 110887  , label: labelRight},   
                    {value: 386032  , label: labelRight},   
                    {value: 561132  , label: labelRight},   
                    {value: 813094  , label: labelRight},   
                    {value: 820656  , label: labelRight},   
                    {value: 1029628 , label: labelRight},   
                    {value: 1436533 , label: labelRight},   
                    {value: 1563264 , label: labelRight},   
                    {value: 1592047 , label: labelRight},   
                    {value: 1620581 , label: labelRight},   
                    {value: 1685172 , label: labelRight},   
                    {value: 1900859 , label: labelRight},   
                    {value: 2061137 , label: labelRight},   
                    {value: 2165099 , label: labelRight},   
                    {value: 2496195 , label: labelRight},   
                    {value: 2656630 , label: labelRight},   
                    {value: 3795109 , label: labelRight},   
                    {value: 4903833 , label: labelRight},   
                    {value: 5700462 , label: labelRight},   
                    {value: 5752742 , label: labelRight},   
                    {value: 5763815 , label: labelRight},   
                    {value: 5870624 , label: labelRight},   
                    {value: 6356500 , label: labelRight},   
                    {value: 6363553 , label: labelRight},   
                    {value: 8048492 , label: labelRight},   
                    {value: 8819659 , label: labelRight},   
                    {value: 13298689, label: labelRight},   
                    {value: 14768278, label: labelRight},   
                    {value: 29070865, label: labelRight}    
                ]     
            }
        ]
    };
    bmapCharts.clear();
    bmapCharts.setOption(option);
}


