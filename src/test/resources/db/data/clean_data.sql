BEGIN;

truncate table scheduled_flight cascade;
truncate table actual_flight cascade;
truncate table airport cascade;
truncate table airplane cascade;

commit;