drop table if exists categories;
create table categories(
  id integer primary key,
  title text
);

insert into categories (id, title) values (1, 'Programming');
insert into categories (id, title) values (2, 'Design');
insert into categories (id, title) values (3, 'Marketing');


drop table if exists courses;
create table courses(
  id integer primary key,
  title text,
  learning_time integer,
  category_id integer
);

insert into courses (id, title, learning_time, category_id) values (1, 'PHP Basic', 30, 1);
insert into courses (id, title, learning_time, category_id) values (2, 'PHP Database', 50, 1);
insert into courses (id, title, learning_time, category_id) values (3, 'Python Basic', 40,  1);
insert into courses (id, title, learning_time, category_id) values (4, 'Web Design', 50, 2);
insert into courses (id, title, learning_time, category_id) values (5, 'Japan''s History', 100, null);


/**/
select * from courses where learning_time=50;

/*論理演算子*/
select * from courses where learning_time = 50 and category_id = 1;

/*複数条件*/
select * from courses where learning_time >= 30 and learning_time <= 50;

/*文字列検索*/
select * from courses where title like 'PHP%';
/*文字列検索(頭から５文字を選択)*/
select * from courses where title like '_____D';

/*並び替え*/
select * from courses order by learning_time;

/**/