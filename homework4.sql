-- alter table users change birtday birthday date null;
insert into users (firstname, lastname, email, phone, birthday, hometown, gender, photo_id, pass) 
values
('Иван', 'Иванов', 'ivanov@mail.ru', '81234567890', '2000-07-24', 'Иркутск', 'М', null, 'dsadasdsa22fdfsdfsd');

insert into communities
set name = 'Игры';

insert into posts (user_id, post, attachments, metadata) values
	(2, 'Раз два три четыре пять', null, null), 
	(5, 'One, two, three, four, five', null, null),
	(54, 'У лукоморья дуб зеленый', null, null);

select * from users;
select * from users limit 20 offset 30;
select * from users limit 10, 8;
select user_id, post_id from comments;
select post_id, user_id from comments order by post_id desc;
select * from users order by firstname, lastname desc;
select sin(radians(30));
select concat(firstname, ' ', email) from users;
select id, message from messages where is_read != 1;
select id, name from communities c where name like '_';
select * from friend_requests where status = 'declined';
select * from friend_requests where status = 'declined' and requested_at > '2010-01-25';
select * from friend_requests where requested_at between '2000-01-25' and '2010-02-15';
select * from friend_requests where status = 'declined' or status = 'approved';
select * from users where hometown like 're%';
select * from users where hometown like '%a';
select * from users where hometown rlike '[а-яё]'; -- Единственное русское значение, добавленное в начале.
select * from users where firstname rlike 'ан$';
select * from users where firstname rlike '[а-яё]{4}';
select count(*) from posts;
select count(*) from posts where created_at > '2000-01-15';
select count(*), substring(created_at, 1, 3) as decade  from posts group by decade;

update friend_requests 
	set status = 'approved' where status = 'requested';
select * from friend_requests group by status;

insert into posts (user_id, post, attachments, metadata) values
	(2, 'Раз два три четыре пsfddsfdsfsdfsdfsdять', null, null), 
	(4, 'One, two, three, fsfsdfdsffour, five', null, null),
	(3, 'У лукоfdsdsfdsfsfdморья дуб зеленый', null, null);
delete from posts where id >= 104;