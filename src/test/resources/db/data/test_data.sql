BEGIN;

insert into airplane (sid_i, reg_num_c, type_c) values (1, 'B747', 'Boeing 747-400');
insert into airplane (sid_i, reg_num_c, type_c) values (2, 'A380', 'Airbus A380-800');

insert into airport (iata_code_c, name_c, city_name_c) VALUES ('SVO', 'Sheremetyevo', 'Moscow');
insert into airport (iata_code_c, name_c, city_name_c) VALUES ('VKO', 'Vnukovo', 'Moscow');
insert into airport (iata_code_c, name_c, city_name_c) VALUES ('DME', 'Domodedovo', 'Moscow');
insert into airport (iata_code_c, name_c, city_name_c) VALUES ('LED', 'Pulkovo', 'Saint-Petersburg');
insert into airport (iata_code_c, name_c, city_name_c) VALUES ('SIP', 'Simferopol', 'Simferopol');

insert into scheduled_flight (sid_i, name_c, departure_cron_expression_c, arrival_cron_expression_c, departure_airport_id_c, arrival_airport_id_c, default_plane_sid_i)
VALUES (1, 'M11', '', '', 'SVO', 'LED', 1);
insert into scheduled_flight (sid_i, name_c, departure_cron_expression_c, arrival_cron_expression_c, departure_airport_id_c, arrival_airport_id_c, default_plane_sid_i)
VALUES (2, 'M12', '', '', 'LED', 'SVO', 1);
insert into scheduled_flight (sid_i, name_c, departure_cron_expression_c, arrival_cron_expression_c, departure_airport_id_c, arrival_airport_id_c, default_plane_sid_i)
VALUES (3, 'M21', '', '', 'VKO', 'SIP', 1);
insert into scheduled_flight (sid_i, name_c, departure_cron_expression_c, arrival_cron_expression_c, departure_airport_id_c, arrival_airport_id_c, default_plane_sid_i)
VALUES (4, 'M22', '', '', 'SIP', 'VKO', 1);
insert into scheduled_flight (sid_i, name_c, departure_cron_expression_c, arrival_cron_expression_c, departure_airport_id_c, arrival_airport_id_c, default_plane_sid_i)
VALUES (5, 'M311', '', '', 'LED', 'DME', 2);
insert into scheduled_flight (sid_i, name_c, departure_cron_expression_c, arrival_cron_expression_c, departure_airport_id_c, arrival_airport_id_c, default_plane_sid_i)
VALUES (6, 'M312', '', '', 'DME', 'SIP', 2);
insert into scheduled_flight (sid_i, name_c, departure_cron_expression_c, arrival_cron_expression_c, departure_airport_id_c, arrival_airport_id_c, default_plane_sid_i)
VALUES (7, 'M321', '', '', 'SIP', 'DME', 2);
insert into scheduled_flight (sid_i, name_c, departure_cron_expression_c, arrival_cron_expression_c, departure_airport_id_c, arrival_airport_id_c, default_plane_sid_i)
VALUES (8, 'M322', '', '', 'DME', 'LED', 2);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (1, to_timestamp('21/05/2018 03:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('21/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (2, to_timestamp('21/05/2018 04:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('21/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (3, to_timestamp('21/05/2018 20:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('21/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (4, to_timestamp('21/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('21/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)

VALUES (5, to_timestamp('22/05/2018 03:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('22/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (6, to_timestamp('22/05/2018 04:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('22/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (7, to_timestamp('22/05/2018 20:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('22/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (8, to_timestamp('22/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),

        to_timestamp('22/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (9, to_timestamp('23/05/2018 03:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('23/05/2018 03:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (10, to_timestamp('23/05/2018 04:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('23/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (11, to_timestamp('23/05/2018 20:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('23/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (12, to_timestamp('23/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('23/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (13, to_timestamp('24/05/2018 03:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('24/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (14, to_timestamp('24/05/2018 04:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('24/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (15, to_timestamp('24/05/2018 20:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('24/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (16, to_timestamp('24/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('24/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (17, to_timestamp('25/05/2018 03:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('25/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (18, to_timestamp('25/05/2018 04:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('25/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (19, to_timestamp('25/05/2018 20:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('25/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (20, to_timestamp('25/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('25/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (21, to_timestamp('26/05/2018 03:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('26/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (22, to_timestamp('26/05/2018 04:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('26/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (23, to_timestamp('26/05/2018 20:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('26/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (24, to_timestamp('26/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('26/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (25, to_timestamp('27/05/2018 03:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('27/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (26, to_timestamp('27/05/2018 04:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('27/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (27, to_timestamp('27/05/2018 20:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('27/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SVO', 'LED', 1);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (28, to_timestamp('27/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('27/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'SVO', 1);


insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (29, to_timestamp('21/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('21/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'VKO', 'SIP', 2);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (30, to_timestamp('21/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('21/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SIP', 'VKO', 2);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (31, to_timestamp('22/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('22/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'VKO', 'SIP', 2);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (32, to_timestamp('22/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('22/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SIP', 'VKO', 2);


insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (33, to_timestamp('23/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('23/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'VKO', 'SIP', 2);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (34, to_timestamp('23/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('23/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SIP', 'VKO', 2);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (35, to_timestamp('24/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('24/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'VKO', 'SIP', 2);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (36, to_timestamp('24/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('24/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SIP', 'VKO', 2);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (37, to_timestamp('25/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('25/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'VKO', 'SIP', 2);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (38, to_timestamp('25/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('25/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SIP', 'VKO', 2);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (39, to_timestamp('26/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('26/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'VKO', 'SIP', 2);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (40, to_timestamp('26/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('26/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SIP', 'VKO', 2);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (41, to_timestamp('27/05/2018 21:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('27/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'VKO', 'SIP', 2);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (42, to_timestamp('27/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('27/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SIP', 'VKO', 2);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (43, to_timestamp('26/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('26/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'LED', 'DME', 2);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (44, to_timestamp('26/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('26/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'DME', 'SIP', 2);

insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (45, to_timestamp('27/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('27/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'SIP', 'DME', 2);
insert into actual_flight (sid_i, departure_ts, arrival_ts, departure_airport_id_c, arrival_airport_id_c, plane_sid_i)
VALUES (46, to_timestamp('27/05/2018 22:23:23', 'DD/MM/YYYY HH24:MI:SS'),
        to_timestamp('27/05/2018 23:23:23', 'DD/MM/YYYY HH24:MI:SS'), 'DME', 'LED', 2);

commit;