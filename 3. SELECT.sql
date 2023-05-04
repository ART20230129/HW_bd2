--Название и год выхода альбомов, вышедших в 2018 году
SELECT name_album, year_publiction FROM album_list
 WHERE year_publiction = 2018;

--Название и продолжительность самого длительного трека
SELECT name, track_duration FROM track_list
 ORDER BY track_duration DESC 
 LIMIT 1;

--Название треков, продолжительность которых не менее 3,5 минут
SELECT name, track_duration FROM track_list
 WHERE track_duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name, year_publiction FROM collection
 WHERE year_publiction BETWEEN 2018 AND 2020; 

--Исполнители, чьё имя состоит из одного слова
SELECT name_executor FROM music_executor 
 WHERE name_executor NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my»
SELECT name FROM track_list 
 WHERE name LIKE '%my%';