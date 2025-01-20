\c alcor
select version();
select srid from public.spatial_ref_sys order by srid desc limit 20;
\c exercises
select * from cd.bookings limit 20;
\c alcor
select * from dev.paquets;
