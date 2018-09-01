function zengZhDetailTrendDraw(jsonName, mapId){
  zengZhList = new Array();
  // alert("aaaa");
  $.get("../data/"+jsonName).done(function(data){ 
    console.log("get data zengZhTrend");
    $.each(data, function(infoIndex, info){ 
      for(var key in info) {
        if (key === "PROVNAME") {
          zengZhList["provListOrder"] = info.PROVNAME.split(',');
        }
        else if (key === "typeList") {
          zengZhList["typeList"] = info.typeList.split(',');
        }
        else {
          zengZhList[key] = info[key].split(',').map(function(item) {
            return Number(item);
            // return Number(item) / 100;
          });
        }
      }
    });

    // console.log(zengZhList);
    // console.log(zengZhList["typeList"]);
    // console.log(zengZhList.typeList);
    var series = new Array();
    zengZhList["typeList"].forEach(function (item, i) {
      series.push({                                                                                                                                                                                                                          
        name: item,                                                                                                                                                                                                        
        type: 'bar',                                                                                                                                                                                                                    
        stack: '总量',                                                                                                                                                                                                                  
        label: {                                                                                                                                                                                                                        
            normal: {                                                                                                                                                                                                                   
                show: false,                                                                                                                                                                                                            
                position: 'insideRight'                                                                                                                                                                                                 
            }                                                                                                                                                                                                                           
        },                                                                                                                                                                                                                              
        data: zengZhList[item]
      });
    });
    // console.log(series);

    var bmapCharts = echarts.init(document.getElementById(mapId));
    // 初始化地图
    console.log(mapId);
    console.log("initail map ok");
    // app.title = '堆叠条形图';
    option = {                                                                                                                                                                                                                                  
        title: {                                                                                                                                                                                                                                
            text: '各省增值支出情况单位（百元）',                                                                                                                                                                                                 
            left:'50%',                                                                                                                                                                                                                         
            top:'1%',                                                                                                                                                                                                                           
            textAlign:'center',                                                                                                                                                                                                                 
            // subtext: 'From ExcelHome',                                                                                                                                                                                                       
            // sublink: 'http://e.weibo.com/1341556070/AjwF2AgQm'                                                                                                                                                                                  
        },                                                                                                                                                                                                                                      
        animation: false,
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
        legend: {                                                                                                                                                                                                                               
            data: ['']},                                                                                                                                                                                                                        
        // itemStyle: {                                                                                                                                                                                                                         
        //     normal: {                                                                                                                                                                                                                        
        //         // 随机显示                                                                                                                                                                                                                  
        //         //color:function(d){return "#"+Math.floor(Math.random()*(256*256*256-1)).toString(16);}                                                                                                                                      
                                                                                                                                                                                                                                                
        //         color: function(params) {                                                                                                                                                                                                    
        //             var showTips = params[0].color;                                                                                                                                                                                          
        //             var colorList = ['#C33531','#EFE42A','#64BD3D','#EE9201','#29AAE3', '#B74AE5','#0AAF9F','#E89589','#16A085','#4A235A','#C39BD3 ','#F9E79F','#BA4A00','#ECF0F1','#616A6B','#EAF2F8','#4A235A','#3498DB','#8A2BE2' ];      
        //             function formatNumber(num) {                                                                                                                                                                                             
        //             return ("" + num).replace(/(\d{1,3})(?=(\d{3})+(?:$|\.))/g, "$1,");                                                                                                                                                      
        //         }                                                                                                                                                                                                                            
        //         for(var i = 0; i <params.length; i ++){                                                                                                                                                                                      
        //             params[i].color = colorList[i];                                                                                                                                                                                          
        //         }                                                                                                                                                                                                                            
        //         return showTips;                                                                                                                                                                                                             
        //         // 定制显示（按顺序）                                                                                                                                                                                                        
                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                
        //         }                                                                                                                                                                                                                            
        //     },                                                                                                                                                                                                                               
        // },                                                                                                                                                                                                                                   
        grid: {                                                                                                                                                                                                                                 
            left: '3%',                                                                                                                                                                                                                         
            right: '4%',                                                                                                                                                                                                                        
            bottom: '1%',                                                                                                                                                                                                                       
            containLabel: true                                                                                                                                                                                                                  
        },                                                                                                                                                                                                                                      
        xAxis:  {                                                                                                                                                                                                                               
            type: 'value' ,
            axisLabel: {
                formatter: function(params) {
                    return params/10000 + "万"
                }
            }
            // data: [-500, 0, 1000,1500, 2000,2500,3000]
        },                                                                                                                                                                                                                                   
        yAxis: {                                                                                                                                                                                                                                
            type: 'category',
            data: zengZhList["provListOrder"]                                                                                                                                                                                                                   
            // data: ['吉林','西藏','北京','陕西','青海','宁夏','甘肃','贵州','新疆','山西','安徽','内蒙古','福建','江西','云南','上海','海南','江苏','重庆','广西','辽宁','河南','湖北','浙江','湖南','山东','四川','黑龙江','天津','广东','河北']
        },                                                                                                                                                                                                                                      
        series: series                                                                                                                                                                                                      
    };                                                                                                                                                                                                                                          
    bmapCharts.clear();                                                                                                                                                                                                                         
    bmapCharts.setOption(option);
  });
}


