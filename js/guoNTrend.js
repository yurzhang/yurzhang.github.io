function echartsDraw(jsonName, mapId){
  var provDate = new Array();
  var provDateSettings = new Array();
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
    console.log(provDate);

    console.log(".....................................................");
    // echarts.registerMap('china', data);
    var bmapCharts = echarts.init(document.getElementById(mapId));
    // 初始化地图
    console.log(mapId);
    console.log("initail map ok");
  });
}