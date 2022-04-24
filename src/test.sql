insert,select,update,delete

/*レコードの作成*/
insert into categories(id,title)values(1,'Programming');

/*レコードの作成*/
create table categories(
    id integer primary key,
    title text
);


/*レコードの取得*/
select * from categories;

/*レコードの更新*/
update categories set title = 'PG' where id = 1;

/*レコードの削除*/
delete from categories where id = 1;


/*数列扱う列＝integer*/

/*テーブルを削除*/
drop table categories;


/*演習問題1*/
create table courses(
    id integer primary key,
    title text,
    learning_time integer,
    category_id integer
);

/*演習問題2*/
insert into courses(id,title,learning_time,category_id)values(1,"PHP Basic",30,1)
insert into courses(id,title,learning_time,category_id)values(2,"PHP Database",20,1)
insert into courses(id,title,learning_time,category_id)values(1,"PHP Basic",30,1)
insert into courses(id,title,learning_time,category_id)values(1,"PHP Design",100,2)

/*演習問題2*/
select * from courses where category_id= 4;

/*演習問題3*/
