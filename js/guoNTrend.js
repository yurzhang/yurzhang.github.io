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

    console.log(provDate);
    function sortByValue(a, b){
      console.log(a);
      console.log(b);
      console.log(a.value+"  "+b.value);
      return b.value - a.value;
    }
    // var provDateOrderd = Object.keys(provDate).sort(function(a, b){return provDate[a] - provDate[b]});
    var provDateOrderd = provDate.sort(sortByValue);

    // for(ki in provDateOrderd){                     
    //   document.writeln(provDateOrderd[ki]+":"+provDate[provDateOrderd[ki]]+",");
    // }
    console.log(provDate);
    console.log(provDateOrderd);

    console.log(".....................................................");
    // echarts.registerMap('china', data);
    var bmapCharts = echarts.init(document.getElementById(mapId));
    // 初始化地图
    console.log(mapId);
    console.log("initail map ok");
  });
}