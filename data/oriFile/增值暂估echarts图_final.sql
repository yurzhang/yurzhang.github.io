create table bail_settle_estimatefee_mid
(
sett_fee        NUMBER(15),
serv_name          VARCHAR2(64),
provname           VARCHAR2(10)
)
tablespace COMMDATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );
--select * from bail_settle_estimatefee_mid;
insert into bail_settle_estimatefee_mid(serv_name,sett_fee,provname)
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'内蒙古' provname
  from t_sp_settle_estimate_data_10  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'北京' provname
  from t_sp_settle_estimate_data_11  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
  union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'广东' provname
  from t_sp_settle_estimate_data_51  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
   union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'山东' provname
  from t_sp_settle_estimate_data_17  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
    union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'河北' provname
  from t_sp_settle_estimate_data_18  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
     union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'江苏' provname
  from t_sp_settle_estimate_data_34  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
      union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'海南' provname
  from t_sp_settle_estimate_data_50  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
       union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'青海' provname
  from t_sp_settle_estimate_data_70  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
       union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'江西' provname
  from t_sp_settle_estimate_data_75  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
        union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'河南' provname
  from t_sp_settle_estimate_data_76  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
         union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'西藏' provname
  from t_sp_settle_estimate_data_79 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
          union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'四川' provname
  from t_sp_settle_estimate_data_81 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
           union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'重庆' provname
  from t_sp_settle_estimate_data_83 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
            union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'天津' provname
  from t_sp_settle_estimate_data_13 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
             union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'山西' provname
  from t_sp_settle_estimate_data_19 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
              union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'贵州' provname
  from t_sp_settle_estimate_data_85 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
               union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'甘肃' provname
  from t_sp_settle_estimate_data_87 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
                union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'新疆' provname
  from t_sp_settle_estimate_data_89 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
                 union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'福建' provname
  from t_sp_settle_estimate_data_38 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
                  union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'湖南' provname
  from t_sp_settle_estimate_data_74 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
 union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '陕西' provname
  from t_sp_settle_estimate_data_84 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '云南' provname
  from t_sp_settle_estimate_data_86 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '宁夏' provname
  from t_sp_settle_estimate_data_88 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '辽宁' provname
  from t_sp_settle_estimate_data_91 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '黑龙江' provname
  from t_sp_settle_estimate_data_97 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '安徽' provname
  from t_sp_settle_estimate_data_30 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '上海' provname
  from t_sp_settle_estimate_data_31 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '浙江' provname
  from t_sp_settle_estimate_data_36 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '广西' provname
  from t_sp_settle_estimate_data_59 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '湖北' provname
  from t_sp_settle_estimate_data_71 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '吉林' provname
  from t_sp_settle_estimate_data_90 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name;
--省分出账金额排序
 select t.provname,sum(t.sett_fee)  serv_name  from bail_settle_estimatefee_mid t
 group by t.provname
 order by sum(t.sett_fee);
--创建省分排序
create table PROV_ORDER_20180830
(
  shunx    NUMBER(15),
  provname VARCHAR2(10)
)
tablespace COMMDATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    next 8
    minextents 1
    maxextents unlimited
  );
select a.*,rowid  from prov_order_20180830 a;
select distinct  serv_name from bail_settle_estimatefee_mid where serv_name not in ('SMS（联通在信）','IPTV业务','BREW','行业信息服务','流媒体','固网IVR','IVR业务','内容点播','行业短信','互联网电视业务','SP彩信MMS业务','固网短信','沃联系','电话会议','电脑保姆','固网悦铃','粗定位业务','通话秘书','G网WAP业务（PULL）','共享能力平台','网络安全','VOICE（联通丽音）','短信卡业务','USSD','CRBT（炫铃）','音乐业务','小秘书','通信管家','沃阅读','精定位业务','IVVR业务','多媒体炫铃','黑莓业务','EMP','手机邮箱','联通丽音10155','媒体类社交应用','视频监控','行业WAP PUSH','上网卡','平安家居');
--增值业务大类共56个
select distinct from  t_service_type b;


select cc.provname,cc.shunx,
SUM(decode(cc.serv_name,'SMS（联通在信）',cc.fee, 0)) 联通在信,
SUM(decode(cc.serv_name,'IPTV业务',cc.fee, 0)) IPTV业务,
SUM(decode(cc.serv_name,'BREW',cc.fee, 0)) BREW,
SUM(decode(cc.serv_name,'行业信息服务',cc.fee, 0)) 行业信息服务,
SUM(decode(cc.serv_name,'流媒体',cc.fee, 0)) 流媒体,
SUM(decode(cc.serv_name,'固网IVR',cc.fee, 0)) 固网IVR,
SUM(decode(cc.serv_name,'IVR业务',cc.fee, 0)) IVR业务,
SUM(decode(cc.serv_name,'内容点播',cc.fee, 0)) 内容点播,
SUM(decode(cc.serv_name,'行业短信',cc.fee, 0)) 行业短信,
SUM(decode(cc.serv_name,'互联网电视业务',cc.fee, 0)) 互联网电视业务,
SUM(decode(cc.serv_name,'SP彩信MMS业务',cc.fee, 0)) SP彩信MMS业务,
SUM(decode(cc.serv_name,'固网短信',cc.fee, 0)) 固网短信,
SUM(decode(cc.serv_name,'沃联系',cc.fee, 0)) 沃联系,
SUM(decode(cc.serv_name,'电话会议',cc.fee, 0)) 电话会议,
SUM(decode(cc.serv_name,'电脑保姆',cc.fee, 0)) 电脑保姆,
SUM(decode(cc.serv_name,'固网悦铃',cc.fee, 0)) 固网悦铃,
SUM(decode(cc.serv_name,'粗定位业务',cc.fee, 0)) 粗定位业务,
SUM(decode(cc.serv_name,'通话秘书',cc.fee, 0)) 通话秘书,
SUM(decode(cc.serv_name,'G网WAP业务（PULL）',cc.fee, 0)) G网WAP业务,
SUM(decode(cc.serv_name,'共享能力平台',cc.fee, 0)) 共享能力平台,
SUM(decode(cc.serv_name,'网络安全',cc.fee, 0)) 网络安全,
SUM(decode(cc.serv_name,'VOICE（联通丽音）',cc.fee, 0)) 联通丽音,
SUM(decode(cc.serv_name,'短信卡业务',cc.fee, 0)) 短信卡业务,
SUM(decode(cc.serv_name,'USSD',cc.fee, 0)) USSD,
SUM(decode(cc.serv_name,'CRBT（炫铃）',cc.fee, 0)) 炫铃,
SUM(decode(cc.serv_name,'音乐业务',cc.fee, 0)) 音乐业务,
SUM(decode(cc.serv_name,'小秘书',cc.fee, 0)) 小秘书,
SUM(decode(cc.serv_name,'通信管家',cc.fee, 0)) 通信管家,
SUM(decode(cc.serv_name,'沃阅读',cc.fee, 0)) 沃阅读,
SUM(decode(cc.serv_name,'精定位业务',cc.fee, 0)) 精定位业务,
SUM(decode(cc.serv_name,'IVVR业务',cc.fee, 0)) IVVR业务,
SUM(decode(cc.serv_name,'多媒体炫铃',cc.fee, 0)) 多媒体炫铃,
SUM(decode(cc.serv_name,'黑莓业务',cc.fee, 0)) 黑莓业务,
SUM(decode(cc.serv_name,'EMP',cc.fee, 0)) EMP,
SUM(decode(cc.serv_name,'手机邮箱',cc.fee, 0)) 手机邮箱,
SUM(decode(cc.serv_name,'联通丽音10155',cc.fee, 0)) 联通丽音10155,
SUM(decode(cc.serv_name,'媒体类社交应用',cc.fee, 0)) 媒体类社交应用,
SUM(decode(cc.serv_name,'视频监控',cc.fee, 0)) 视频监控,
SUM(decode(cc.serv_name,'行业WAP PUSH',cc.fee, 0)) 行业WAP,
SUM(decode(cc.serv_name,'上网卡',cc.fee, 0)) 上网卡,
SUM(decode(cc.serv_name,'平安家居',cc.fee, 0)) 平安家居,
SUM(decode(cc.serv_name,'G网JAVA业务',cc.fee, 0)) G网JAVA业务,
SUM(decode(cc.serv_name,'GIS',cc.fee, 0)) GIS,
SUM(decode(cc.serv_name,'行业彩信',cc.fee, 0)) 行业彩信,
SUM(decode(cc.serv_name,'点对点彩信业务',cc.fee, 0)) 点对点彩信业务,
SUM(decode(cc.serv_name,'WAP PUSH',cc.fee, 0)) WAPPUSH 
from (
select aa.fee,aa.serv_name,aa.provname,aa.shunx from (
select decode(h.fee,null,0,h.fee) fee ,b.provname provname , b.shunx shunx,decode(h.serv_name,null,'SMS（联通在信）','SMS（联通在信）') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='SMS（联通在信）') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'IPTV业务','IPTV业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='IPTV业务') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'BREW','BREW') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='BREW') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'行业信息服务','行业信息服务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='行业信息服务') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'流媒体','流媒体') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='流媒体') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'固网IVR','固网IVR') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='固网IVR') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'IVR业务','IVR业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='IVR业务') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'内容点播','内容点播') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='内容点播') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'行业短信','行业短信') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='行业短信') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'互联网电视业务','互联网电视业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='互联网电视业务') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'SP彩信MMS业务','SP彩信MMS业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='SP彩信MMS业务') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'固网短信','固网短信') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='固网短信') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'沃联系','沃联系') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='沃联系') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'电话会议','电话会议') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='电话会议') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'电脑保姆','电脑保姆') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='电脑保姆') h right join prov_order_20180830 b
on h.provname=b.provname  
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'固网悦铃','固网悦铃') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='固网悦铃') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'粗定位业务','粗定位业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='粗定位业务') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'通话秘书','通话秘书') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='通话秘书') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'G网WAP业务（PULL）','G网WAP业务（PULL）') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='G网WAP业务（PULL）') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'共享能力平台','共享能力平台') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='共享能力平台') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'网络安全','网络安全') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='网络安全') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'VOICE（联通丽音）','VOICE（联通丽音）') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='VOICE（联通丽音）') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'短信卡业务','短信卡业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='短信卡业务') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'USSD','USSD') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='USSD') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'CRBT（炫铃）','CRBT（炫铃）') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='CRBT（炫铃）') h right join prov_order_20180830 b
on h.provname=b.provname        
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'音乐业务','音乐业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='音乐业务') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'小秘书','小秘书') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='小秘书') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'通信管家','通信管家') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='通信管家') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'沃阅读','沃阅读') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='沃阅读') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'精定位业务','精定位业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='精定位业务') h right join prov_order_20180830 b
on h.provname=b.provname   
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'IVVR业务','IVVR业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='IVVR业务') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'多媒体炫铃','多媒体炫铃') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='多媒体炫铃') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'黑莓业务','黑莓业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='黑莓业务') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'EMP','EMP') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='EMP') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'手机邮箱','手机邮箱') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='手机邮箱') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'联通丽音10155','联通丽音10155') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='联通丽音10155') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'媒体类社交应用','媒体类社交应用') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='媒体类社交应用') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'视频监控','视频监控') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='视频监控') h right join prov_order_20180830 b
on h.provname=b.provname
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'行业WAP PUSH','行业WAP PUSH') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='行业WAP PUSH') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'上网卡','上网卡') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='上网卡') h right join prov_order_20180830 b
on h.provname=b.provname  
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'平安家居','平安家居') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='平安家居') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'G网JAVA业务','G网JAVA业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='G网JAVA业务') h right join prov_order_20180830 b
on h.provname=b.provname  
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'GIS','GIS') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='GIS') h right join prov_order_20180830 b
on h.provname=b.provname   
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'行业彩信','行业彩信') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='行业彩信') h right join prov_order_20180830 b
on h.provname=b.provname   
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'点对点彩信业务','点对点彩信业务') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='点对点彩信业务') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'WAP PUSH','WAP PUSH') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='WAP PUSH') h right join prov_order_20180830 b
on h.provname=b.provname                       
)aa,prov_order_20180830 bb

where aa.provname=bb.provname
order by aa.serv_name,bb.shunx) cc
group by cc.provname ,cc.shunx
order by cc.shunx
