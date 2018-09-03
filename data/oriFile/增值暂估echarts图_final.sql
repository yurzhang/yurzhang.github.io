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
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'���ɹ�' provname
  from t_sp_settle_estimate_data_10  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_11  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
  union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'�㶫' provname
  from t_sp_settle_estimate_data_51  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
   union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'ɽ��' provname
  from t_sp_settle_estimate_data_17  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
    union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'�ӱ�' provname
  from t_sp_settle_estimate_data_18  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
     union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_34  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
      union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_50  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
       union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'�ຣ' provname
  from t_sp_settle_estimate_data_70  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
       union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_75  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
        union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_76  a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
         union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_79 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
          union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'�Ĵ�' provname
  from t_sp_settle_estimate_data_81 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
           union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_83 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
            union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'���' provname
  from t_sp_settle_estimate_data_13 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
             union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'ɽ��' provname
  from t_sp_settle_estimate_data_19 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
              union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_85 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
               union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_87 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
                union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'�½�' provname
  from t_sp_settle_estimate_data_89 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
                 union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_38 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
                  union all
select b.name serv_name ,sum(a.settlefee)/100 sett_fee ,'����' provname
  from t_sp_settle_estimate_data_74 a,t_service_type b
 where a.billcycle = 201807
 and a.srvtypecode=b.service_type
 group by b.name
 union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '����' provname
  from t_sp_settle_estimate_data_84 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '����' provname
  from t_sp_settle_estimate_data_86 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '����' provname
  from t_sp_settle_estimate_data_88 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '����' provname
  from t_sp_settle_estimate_data_91 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '������' provname
  from t_sp_settle_estimate_data_97 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '����' provname
  from t_sp_settle_estimate_data_30 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '�Ϻ�' provname
  from t_sp_settle_estimate_data_31 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '�㽭' provname
  from t_sp_settle_estimate_data_36 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '����' provname
  from t_sp_settle_estimate_data_59 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '����' provname
  from t_sp_settle_estimate_data_71 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name
union all
select b.name serv_name, sum(a.settlefee) / 100 sett_fee, '����' provname
  from t_sp_settle_estimate_data_90 a, t_service_type b
 where a.billcycle = 201807
   and a.srvtypecode = b.service_type
 group by b.name;
--ʡ�ֳ��˽������
 select t.provname,sum(t.sett_fee)  serv_name  from bail_settle_estimatefee_mid t
 group by t.provname
 order by sum(t.sett_fee);
--����ʡ������
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
select distinct  serv_name from bail_settle_estimatefee_mid where serv_name not in ('SMS����ͨ���ţ�','IPTVҵ��','BREW','��ҵ��Ϣ����','��ý��','����IVR','IVRҵ��','���ݵ㲥','��ҵ����','����������ҵ��','SP����MMSҵ��','��������','����ϵ','�绰����','���Ա�ķ','��������','�ֶ�λҵ��','ͨ������','G��WAPҵ��PULL��','��������ƽ̨','���簲ȫ','VOICE����ͨ������','���ſ�ҵ��','USSD','CRBT�����壩','����ҵ��','С����','ͨ�Źܼ�','���Ķ�','����λҵ��','IVVRҵ��','��ý������','��ݮҵ��','EMP','�ֻ�����','��ͨ����10155','ý�����罻Ӧ��','��Ƶ���','��ҵWAP PUSH','������','ƽ���Ҿ�');
--��ֵҵ����๲56��
select distinct from  t_service_type b;


select cc.provname,cc.shunx,
SUM(decode(cc.serv_name,'SMS����ͨ���ţ�',cc.fee, 0)) ��ͨ����,
SUM(decode(cc.serv_name,'IPTVҵ��',cc.fee, 0)) IPTVҵ��,
SUM(decode(cc.serv_name,'BREW',cc.fee, 0)) BREW,
SUM(decode(cc.serv_name,'��ҵ��Ϣ����',cc.fee, 0)) ��ҵ��Ϣ����,
SUM(decode(cc.serv_name,'��ý��',cc.fee, 0)) ��ý��,
SUM(decode(cc.serv_name,'����IVR',cc.fee, 0)) ����IVR,
SUM(decode(cc.serv_name,'IVRҵ��',cc.fee, 0)) IVRҵ��,
SUM(decode(cc.serv_name,'���ݵ㲥',cc.fee, 0)) ���ݵ㲥,
SUM(decode(cc.serv_name,'��ҵ����',cc.fee, 0)) ��ҵ����,
SUM(decode(cc.serv_name,'����������ҵ��',cc.fee, 0)) ����������ҵ��,
SUM(decode(cc.serv_name,'SP����MMSҵ��',cc.fee, 0)) SP����MMSҵ��,
SUM(decode(cc.serv_name,'��������',cc.fee, 0)) ��������,
SUM(decode(cc.serv_name,'����ϵ',cc.fee, 0)) ����ϵ,
SUM(decode(cc.serv_name,'�绰����',cc.fee, 0)) �绰����,
SUM(decode(cc.serv_name,'���Ա�ķ',cc.fee, 0)) ���Ա�ķ,
SUM(decode(cc.serv_name,'��������',cc.fee, 0)) ��������,
SUM(decode(cc.serv_name,'�ֶ�λҵ��',cc.fee, 0)) �ֶ�λҵ��,
SUM(decode(cc.serv_name,'ͨ������',cc.fee, 0)) ͨ������,
SUM(decode(cc.serv_name,'G��WAPҵ��PULL��',cc.fee, 0)) G��WAPҵ��,
SUM(decode(cc.serv_name,'��������ƽ̨',cc.fee, 0)) ��������ƽ̨,
SUM(decode(cc.serv_name,'���簲ȫ',cc.fee, 0)) ���簲ȫ,
SUM(decode(cc.serv_name,'VOICE����ͨ������',cc.fee, 0)) ��ͨ����,
SUM(decode(cc.serv_name,'���ſ�ҵ��',cc.fee, 0)) ���ſ�ҵ��,
SUM(decode(cc.serv_name,'USSD',cc.fee, 0)) USSD,
SUM(decode(cc.serv_name,'CRBT�����壩',cc.fee, 0)) ����,
SUM(decode(cc.serv_name,'����ҵ��',cc.fee, 0)) ����ҵ��,
SUM(decode(cc.serv_name,'С����',cc.fee, 0)) С����,
SUM(decode(cc.serv_name,'ͨ�Źܼ�',cc.fee, 0)) ͨ�Źܼ�,
SUM(decode(cc.serv_name,'���Ķ�',cc.fee, 0)) ���Ķ�,
SUM(decode(cc.serv_name,'����λҵ��',cc.fee, 0)) ����λҵ��,
SUM(decode(cc.serv_name,'IVVRҵ��',cc.fee, 0)) IVVRҵ��,
SUM(decode(cc.serv_name,'��ý������',cc.fee, 0)) ��ý������,
SUM(decode(cc.serv_name,'��ݮҵ��',cc.fee, 0)) ��ݮҵ��,
SUM(decode(cc.serv_name,'EMP',cc.fee, 0)) EMP,
SUM(decode(cc.serv_name,'�ֻ�����',cc.fee, 0)) �ֻ�����,
SUM(decode(cc.serv_name,'��ͨ����10155',cc.fee, 0)) ��ͨ����10155,
SUM(decode(cc.serv_name,'ý�����罻Ӧ��',cc.fee, 0)) ý�����罻Ӧ��,
SUM(decode(cc.serv_name,'��Ƶ���',cc.fee, 0)) ��Ƶ���,
SUM(decode(cc.serv_name,'��ҵWAP PUSH',cc.fee, 0)) ��ҵWAP,
SUM(decode(cc.serv_name,'������',cc.fee, 0)) ������,
SUM(decode(cc.serv_name,'ƽ���Ҿ�',cc.fee, 0)) ƽ���Ҿ�,
SUM(decode(cc.serv_name,'G��JAVAҵ��',cc.fee, 0)) G��JAVAҵ��,
SUM(decode(cc.serv_name,'GIS',cc.fee, 0)) GIS,
SUM(decode(cc.serv_name,'��ҵ����',cc.fee, 0)) ��ҵ����,
SUM(decode(cc.serv_name,'��Ե����ҵ��',cc.fee, 0)) ��Ե����ҵ��,
SUM(decode(cc.serv_name,'WAP PUSH',cc.fee, 0)) WAPPUSH 
from (
select aa.fee,aa.serv_name,aa.provname,aa.shunx from (
select decode(h.fee,null,0,h.fee) fee ,b.provname provname , b.shunx shunx,decode(h.serv_name,null,'SMS����ͨ���ţ�','SMS����ͨ���ţ�') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='SMS����ͨ���ţ�') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'IPTVҵ��','IPTVҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='IPTVҵ��') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'BREW','BREW') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='BREW') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ҵ��Ϣ����','��ҵ��Ϣ����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��ҵ��Ϣ����') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ý��','��ý��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��ý��') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'����IVR','����IVR') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='����IVR') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'IVRҵ��','IVRҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='IVRҵ��') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'���ݵ㲥','���ݵ㲥') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='���ݵ㲥') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ҵ����','��ҵ����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��ҵ����') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'����������ҵ��','����������ҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='����������ҵ��') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'SP����MMSҵ��','SP����MMSҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='SP����MMSҵ��') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��������','��������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��������') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'����ϵ','����ϵ') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='����ϵ') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'�绰����','�绰����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='�绰����') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'���Ա�ķ','���Ա�ķ') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='���Ա�ķ') h right join prov_order_20180830 b
on h.provname=b.provname  
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��������','��������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��������') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'�ֶ�λҵ��','�ֶ�λҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='�ֶ�λҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'ͨ������','ͨ������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='ͨ������') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'G��WAPҵ��PULL��','G��WAPҵ��PULL��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='G��WAPҵ��PULL��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��������ƽ̨','��������ƽ̨') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��������ƽ̨') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'���簲ȫ','���簲ȫ') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='���簲ȫ') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'VOICE����ͨ������','VOICE����ͨ������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='VOICE����ͨ������') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'���ſ�ҵ��','���ſ�ҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='���ſ�ҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'USSD','USSD') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='USSD') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'CRBT�����壩','CRBT�����壩') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='CRBT�����壩') h right join prov_order_20180830 b
on h.provname=b.provname        
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'����ҵ��','����ҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='����ҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'С����','С����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='С����') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'ͨ�Źܼ�','ͨ�Źܼ�') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='ͨ�Źܼ�') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'���Ķ�','���Ķ�') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='���Ķ�') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'����λҵ��','����λҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='����λҵ��') h right join prov_order_20180830 b
on h.provname=b.provname   
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'IVVRҵ��','IVVRҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='IVVRҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ý������','��ý������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��ý������') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ݮҵ��','��ݮҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��ݮҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'EMP','EMP') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='EMP') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'�ֻ�����','�ֻ�����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='�ֻ�����') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ͨ����10155','��ͨ����10155') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��ͨ����10155') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'ý�����罻Ӧ��','ý�����罻Ӧ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='ý�����罻Ӧ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��Ƶ���','��Ƶ���') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��Ƶ���') h right join prov_order_20180830 b
on h.provname=b.provname
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ҵWAP PUSH','��ҵWAP PUSH') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��ҵWAP PUSH') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'������','������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='������') h right join prov_order_20180830 b
on h.provname=b.provname  
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'ƽ���Ҿ�','ƽ���Ҿ�') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='ƽ���Ҿ�') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'G��JAVAҵ��','G��JAVAҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='G��JAVAҵ��') h right join prov_order_20180830 b
on h.provname=b.provname  
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'GIS','GIS') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='GIS') h right join prov_order_20180830 b
on h.provname=b.provname   
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ҵ����','��ҵ����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��ҵ����') h right join prov_order_20180830 b
on h.provname=b.provname   
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��Ե����ҵ��','��Ե����ҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='��Ե����ҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'WAP PUSH','WAP PUSH') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from bail_settle_estimatefee_mid a  where a.serv_name='WAP PUSH') h right join prov_order_20180830 b
on h.provname=b.provname                       
)aa,prov_order_20180830 bb

where aa.provname=bb.provname
order by aa.serv_name,bb.shunx) cc
group by cc.provname ,cc.shunx
order by cc.shunx
