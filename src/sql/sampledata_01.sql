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
select group_name AS グループ, MIN(ランキング) AS ランキング最上位 from c where ranking 
FROM countries
GROUP BY group_name

select AVG(height) AS 平均身長, AVG(weight) from players
where position = 'GK'

/*最終的に出したいものをまずselectで書いてあげる。*/
select c.name,AVG(height) AS 平均身長
FROM countries c
JOIN players p ON p.country_id = c.id
GROUP By c.id
order by AVG(p.height) DESC

select kickoff,my_countries_id,enemy_coutryies_id
FROM parings
order by

/**/
select players.name AS 名前,players.position AS ポジション,players.club AS 所属クラブ
(select count(id) from goals g where  g.players_id = g.id) AS ゴール数
FROM players
order by

select players.name,players.position.players_club,goals.id AS ゴール数
FROM players
GROUP by players


select players.postion AS ポジション, count(g.id) AS ゴール数
from  players
LEFT JOIN goals g ON g.players_id = p.id
order by ゴール数 DESC




//問題1
select group_name AS グループ,MIN(ranking) AS ランキング最上位,MAX(ranking)
FROM countries
GROUP BY group_name


//問題2
select AVG(height) AS 均身長,AVG(weight) AS 平均体重
FROM players
WHERE position = "GK"


//問題3
select c.name,AVG(p.height) AS 平均身長
FROM countries c
JOIN players p ON p.country_id = c.id
GROUP BY c.id, c.name
ORDER BY AVG(p.height) DESC


//問題4
select (select c.name FROM countries c WHERE p.country_id = c.id) AS 国名 , AVG(p.height) AS 平均身長
FROM players p
GROUP BY c.country_id
ORDER BY AVG(p.height) DESC

//問題5
SELECT p.kickoff,my_countries_id,enemy_coutryies_id
FROM parings p
GROUP BY c.country_id


//問題6
SELECT p.name AS 名前,p.position AS ポジション ,p.club,(SELECT count(id) FROM goals g where g.player_id=p.id) AS ゴール数
FROM players p
ORDER BY ゴール数 DESC

//問題7
SELECT p.name AS 名前,p.position AS ポジション ,p.club,COUNT(g.id) AS ゴール数
FROM players p
JOIN goals g ON g.player_id = p.id
GROUP BY p.id,p.name,p.position,p,club
ORDER BY ゴール数 DESC

//問題8
SELECT p.position AS ポジション COUNT(g.id), AS ゴール数
FROM players p
JOIN goals g ON g.player_id = p.id
GROUP BY p.position
ORDER BY ゴール数 DESC

//問題9
SELECT birth, TIMESTAMPDIFF(YEAR, birth, '2014-06-13') AS age, name, position
FROM players
ORDER BY age DESC;

//問題10
SELECT COUNT(g.goal_time)
FROM goals g
WHERE g.player_id IS NULL;

//問題11
SELECT c.group_name
FROM countries c
WHERE g.player_id IS NULL;

