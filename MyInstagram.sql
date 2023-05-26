create database MyInstagram;
use MyInstagram;
create table user(
	user_id int not null auto_increment,
    user_nick char(30) not null,
    user_name char(30) not null,
	user_phone char(15) unique not null,
    primary key(user_id)
);
create table follows(
	follow_id int not null auto_increment,
    follow_list JSON default '{ }',
    user_id int, 
    primary key(follow_id),
    foreign key(user_id) references user(user_id)
);
create table followers(
	followers_id int auto_increment not null,
    follorwes_list JSON default '{ }',
    user_id int,
    primary key(followers_id),
    foreign key(user_id) references user(user_id)
);
create table photos(
	photos_id int not null auto_increment,
    photos_cant int,
    photos_description char(50) default ' ',
    user_id int,
    primary key (photos_id),
    foreign key (user_id) references user(user_id)
);
insert into user (user_nick,user_name, user_phone) 
values  ('Taylorswift','Taylor Swift','5526487953'),
		('Jin','Jin of BTS','5548731648'),
		('cristiano','Cristiano Ronaldo','5545879996'),
		('robertpattinsonv','Robert Pattinson','5578963452');
insert into follows (follow_list) 
values	 