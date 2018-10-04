select cc.pro_name,round((aa.Ifee-bb.Ofee)/10000,2) Jfee from
(select province_id,direction,sum(charge) Ifee from stl_ty.T_SETTLE_ESTIMATE_201807 where direction='I' group by province_id,direction)aa,
(select province_id,direction,sum(charge) Ofee from stl_ty.T_SETTLE_ESTIMATE_201807 where direction='O' group by province_id,direction)bb,
t_province cc
where aa.province_id=bb.province_id
and aa.province_id=cc.pro_code
order by Jfee
