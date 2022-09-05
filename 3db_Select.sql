-- название и год выхода альбомов, вышедших в 2018 году
SELECT title, 
       date_part('year', year_of_issue::date) "Year"
  FROM Albums
 WHERE year_of_issue >= '2018.01.01';
 
-- название и продолжительность самого длительного трека (вариант 1)
SELECT title, 
       duration
  FROM Tracks
 WHERE duration = (SELECT max(duration) FROM Tracks);
 
-- название и продолжительность самого длительного трека (вариант 2)
SELECT title, 
       duration
  FROM Tracks
 ORDER BY duration DESC LIMIT 1;

-- название треков, продолжительность которых не менее 3,5 минуты
SELECT title
  FROM Tracks
 WHERE duration >= 3.5 * 60;
 
-- названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT title
  FROM Сollection
 WHERE year_of_issue BETWEEN '2018.01.01' AND '2020.12.12';
 
-- исполнители, чье имя состоит из 1 слова
SELECT performer_name
  FROM Performers
 WHERE performer_name NOT LIKE '% %';
 
-- название треков, которые содержат слово "мой"/"my"
SELECT title
  FROM Tracks
 WHERE title LIKE '%my%';