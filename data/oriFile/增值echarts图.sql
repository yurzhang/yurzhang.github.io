-- Create table
create table t_settle_fee_mid_20180830
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
--������ʱ������
--delete from t_settle_fee_mid_20180830;
insert into t_settle_fee_mid_20180830(serv_name,sett_fee,provname)
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'���ɹ�' provname
  from settle.t_sp_settle_prm_result_10  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_11  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'�㶫' provname
  from settle.t_sp_settle_prm_result_51  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'ɽ��' provname
  from settle.t_sp_settle_prm_result_17  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'�ӱ�' provname
  from settle.t_sp_settle_prm_result_18  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_34  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_50  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'�ຣ' provname
  from settle.t_sp_settle_prm_result_70  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_75  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_76  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_79  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'�Ĵ�' provname
  from settle.t_sp_settle_prm_result_81  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_83  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'���' provname
  from settle.t_sp_settle_prm_result_13  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'ɽ��' provname
  from settle.t_sp_settle_prm_result_19  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_85  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_87  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'�½�' provname
  from settle.t_sp_settle_prm_result_89  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_38  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_74  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_84  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_86  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_88  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_91  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'������' provname
  from settle.t_sp_settle_prm_result_97  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_30  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'�Ϻ�' provname
  from settle.t_sp_settle_prm_result_31  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'�㽭' provname
  from settle.t_sp_settle_prm_result_36  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_59  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_71  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name
 union all
select b.name serv_name ,sum(a.acc_sett_fee)/10000 sett_fee ,'����' provname
  from settle.t_sp_settle_prm_result_90  a,t_service_type b
 where a.bill_cycle_id = 201807
 and a.srv_type_code=b.service_type
 group by b.name;
 --
 select t.provname,sum(t.sett_fee)  serv_name  from t_settle_fee_mid_20180830 t
 group by t.provname
 order by sum(t.sett_fee);
  select *  from prov_order_20180830;
 --ҵ����� 41�� ����3��ҵ����ȫ����û�н����
select distinct  serv_name  from t_settle_fee_mid_20180830 where serv_name not in ('SMS����ͨ���ţ�','IPTVҵ��','BREW','��ҵ��Ϣ����','��ý��','����IVR','IVRҵ��','���ݵ㲥','��ҵ����','����������ҵ��','SP����MMSҵ��','��������','����ϵ','�绰����','���Ա�ķ','��������','�ֶ�λҵ��','ͨ������','G��WAPҵ��PULL��','��������ƽ̨','���簲ȫ','VOICE����ͨ������','���ſ�ҵ��','USSD','CRBT�����壩','����ҵ��','С����','ͨ�Źܼ�','���Ķ�','����λҵ��','IVVRҵ��','��ý������','��ݮҵ��','EMP','�ֻ�����','��ͨ����10155','ý�����罻Ӧ��','��Ƶ���','��ҵWAP PUSH','������','ƽ���Ҿ�');
select distinct b.name  from t_service_type b;
 --����ʡ��˳���������ֵ���˷��������У�
 create table prov_order_20180830
(
  shunx  NUMBER(15),
  provname  VARCHAR2(10)
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
 select t.*,rowid from  prov_order_20180830 t;
-- ����ʡ��˳��ҵ���������ϸ
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
SUM(decode(cc.serv_name,'ƽ���Ҿ�',cc.fee, 0)) ƽ���Ҿ�
from (
select aa.fee,aa.serv_name,aa.provname,aa.shunx from (
select decode(h.fee,null,0,h.fee) fee ,b.provname provname , b.shunx shunx,decode(h.serv_name,null,'SMS����ͨ���ţ�','SMS����ͨ���ţ�') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='SMS����ͨ���ţ�') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'IPTVҵ��','IPTVҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='IPTVҵ��') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'BREW','BREW') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='BREW') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ҵ��Ϣ����','��ҵ��Ϣ����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��ҵ��Ϣ����') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ý��','��ý��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��ý��') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'����IVR','����IVR') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='����IVR') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'IVRҵ��','IVRҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='IVRҵ��') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'���ݵ㲥','���ݵ㲥') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='���ݵ㲥') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ҵ����','��ҵ����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��ҵ����') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'����������ҵ��','����������ҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='����������ҵ��') h right join prov_order_20180830 b
on h.provname=b.provname                                   
union all                                                  
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'SP����MMSҵ��','SP����MMSҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='SP����MMSҵ��') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��������','��������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��������') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'����ϵ','����ϵ') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='����ϵ') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'�绰����','�绰����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='�绰����') h right join prov_order_20180830 b
on h.provname=b.provname                                    
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'���Ա�ķ','���Ա�ķ') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='���Ա�ķ') h right join prov_order_20180830 b
on h.provname=b.provname  
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��������','��������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��������') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'�ֶ�λҵ��','�ֶ�λҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='�ֶ�λҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'ͨ������','ͨ������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='ͨ������') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'G��WAPҵ��PULL��','G��WAPҵ��PULL��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='G��WAPҵ��PULL��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��������ƽ̨','��������ƽ̨') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��������ƽ̨') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'���簲ȫ','���簲ȫ') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='���簲ȫ') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'VOICE����ͨ������','VOICE����ͨ������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='VOICE����ͨ������') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'���ſ�ҵ��','���ſ�ҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='���ſ�ҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'USSD','USSD') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='USSD') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'CRBT�����壩','CRBT�����壩') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='CRBT�����壩') h right join prov_order_20180830 b
on h.provname=b.provname        
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'����ҵ��','����ҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='����ҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'С����','С����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='С����') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'ͨ�Źܼ�','ͨ�Źܼ�') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='ͨ�Źܼ�') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'���Ķ�','���Ķ�') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='���Ķ�') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'����λҵ��','����λҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='����λҵ��') h right join prov_order_20180830 b
on h.provname=b.provname   
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'IVVRҵ��','IVVRҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='IVVRҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ý������','��ý������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��ý������') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ݮҵ��','��ݮҵ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��ݮҵ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'EMP','EMP') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='EMP') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'�ֻ�����','�ֻ�����') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='�ֻ�����') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ͨ����10155','��ͨ����10155') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��ͨ����10155') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'ý�����罻Ӧ��','ý�����罻Ӧ��') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='ý�����罻Ӧ��') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��Ƶ���','��Ƶ���') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��Ƶ���') h right join prov_order_20180830 b
on h.provname=b.provname
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'��ҵWAP PUSH','��ҵWAP PUSH') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='��ҵWAP PUSH') h right join prov_order_20180830 b
on h.provname=b.provname 
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'������','������') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='������') h right join prov_order_20180830 b
on h.provname=b.provname  
union all                                                   
select  decode(h.fee,null,0,h.fee) fee,b.provname  provname, b.shunx shunx,decode(h.serv_name,null,'ƽ���Ҿ�','ƽ���Ҿ�') serv_name from (select a.sett_fee fee,a.provname ,a.serv_name from t_settle_fee_mid_20180830 a  where a.serv_name='ƽ���Ҿ�') h right join prov_order_20180830 b
on h.provname=b.provname                            
)aa,prov_order_20180830 bb
where aa.provname=bb.provname
order by aa.serv_name,bb.shunx) cc
group by cc.provname ,cc.shunx
order by cc.shunx






