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
SELECT c.group_name,count(g.id)
FROM goals g
WHERE g.player_id IS NULL;


/問題12
SELECT goal_time
FROM goals 
WHERE pairing_id = 103

//問題13(難しい)
select c.name,COUNT(g.goal_time)
FROM goals g
LEFT JOIN parings p ON p.id = g.pairing_id
LEFT JOIN countries c ON c.id =  p.pairing_id
WHERE p.id = 39 OR p.id =103
ORDER BY c.name


//問題14(難しい)
select par.kickoff,par.my_countries_id,par.enemy_country_id,p.ranking AS my_ranking, p.ranking AS enemy_ranking,COUNT(g.id) AS my_goals
FROM parings par
LEFT JOIN countries c1 ON c1.id = p1.my_countries_id
LEFT JOIN countries c2 ON c2.id = p1.enemy_country_id
LEFT JOIN goals g ON c.id =  p.pairing_id
WHERE p.id = 39 OR p.id =103
ORDER BY p.kickoff,c.ranking

//問題15(難しい)
https://tech.pjin.jp/blog/2016/07/21/sql%e7%b7%b4%e7%bf%92%e5%95%8f%e9%a1%8c-%e5%95%8f15/

//問題16（難しい）
//問題17(難しい)

//問題18
SELECT p.kickoff, ADDTIME(p.kickoff '-12:00:00') AS kickoff_jp
FROM parings p
WHERE p.id = 1 and p.id = 4

//問題19
SELECT TIMESTAMPDIFF(YEAR,birth,'2014-06-13') AS age,COUNT(id) AS player_count
FROM players 
ORDER BY age

//問題20
SELECT TRUNCATE(TIMESTAMPDIFF(YEAR, birth, '2014-06-13'), -1) AS age, COUNT(id) AS player_count
FROM players 
GROUP BY age

//問題21
SELECT FLOOR(TIMESTAMPDIFF(YEAR, birth, '2014-06-13') / 5) * 5   AS age, COUNT(id) AS player_count
FROM players 
GROUP BY age

//問題22
とばす。


//問題23
SELECT name,height,weight
FROM players
ORDER BY height DESC 
LIMIT 5

//問題24
SELECT name, height, weight
FROM players
ORDER BY height DESC
LIMIT 5, 
***********************************
//58
SELECT p.name,p.uniform_num
FROM players p
JOIN countries c ON c.country_id = p.country_id


//59
SELECT c.name,p.name,g.goal_time
FROM goal_time g
JOIN players p ON p.id = g.player_id
JOIN countries c ON c.id = p.counttry_id = c.id

//60
SELECT g.goal_time,p.uniform_num,p.position,p.name
FROM goal_time g
LEFT JOIN players p ON g.player_id = p.id

//61
SELECT g.goal_time, p.uniform_num, p.position, p.name
FROM players p 
RIGHT JOIN goals g ON g.player_id = p.id

//62(わからない)

//63
飛ばす


//64

//67(再度)
SELECT p.position,MAX(p.height) AS 最大身長,(SELECT c.name FROM countries c where c.id = p.id)
FROM players p
ORDER BY p.position


//68
SELECT uniform_num,position,name,height 
FROM players
WHERE (SELECT AVG(height) FROM players) > height


//69
SELECT group_name,MAX(ranking),MIN(ranking)
FROM countries
GROUP BY group_name
HAVING MAX(ranking) - MIN(ranking) => 50