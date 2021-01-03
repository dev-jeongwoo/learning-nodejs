create table users(
id int not null auto_increment,
name varchar(20) not null,
age int unsigned not null,
married tinyint not null,
comment text null,
created_at datetime not null default now(),
primary key(id),
unique index name_UNIQUE (name ASC));

create table comments(
id int not null auto_increment,
commenter int not null,
comment varchar(100) not null,
created_at datetime not null default now(),
primary key(id),
index commenter_idx (commenter asc),
constraint commenter foreign key (commenter) references users(id) on delete cascade on update cascade);

insert into users (name, age, married, comment) values('zero', 24, 0, '자기소개1');
insert into users (name, age, married, comment) values('nero', 32, 1, '자기소개2');
insert into comments (commenter, comment) values(1, '안녕하세요. zero의 댓글입니다.');