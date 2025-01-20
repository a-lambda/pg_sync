\c alcor
select version();
select srid from spatial_ref_sys order by srid desc limit 20;
\c exercises
select * from cd.bookings;
\c alcor
select * from dev.paquets;
