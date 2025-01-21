\c alcor
select version();
select srid from public.spatial_ref_sys order by srid desc limit 20;

\c exercises
select * from cd.bookings limit 20;

\c alcor
select * from dev.paquets;

prepare foo as
select date,shares,trades,dollars
from dev.factbook
where date >= $1::date
and date < $1::date + interval '1 month'
order by date;

execute foo('2010-02-01');
