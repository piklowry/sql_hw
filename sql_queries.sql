
-- //THE FIRST PART IS MY QUERIES AND BELOW IS MY INFORMATION. 

sqlite> SELECT professors.name, courses.class_id
   ...> FROM professors
   ...> INNER JOIN courses
   ...> ON professors.class_id=courses.class_id
   ...> ORDER BY professors.name;


sqlite> SELECT professors.name, courses.class_id
   ...> FROM professors
   ...> INNER JOIN courses
   ...> ON professors.class_id=courses.class_id
   ...> ORDER BY professors.department;

sqlite> SELECT subjects.name, courses.class_id
   ...> FROM subjects
   ...> INNER JOIN courses
   ...> ON subjects.class_id=courses.class_id
   ...> ORDER BY subjects.name;

     -- ////this will list them alphabetically
      SELECT courses.name
      FROM courses INNER JOIN subjects ON courses.id = subjects.id
      ORDER BY courses.name;  

       -- ////this will list by id but not in order

      SELECT courses.name
      FROM courses INNER JOIN subjects ON courses.id = subjects.id
      ORDER BY courses.id;

      -- -- ////this is selecting all names from the professors table
      -- and the subjects titles from the subjects table that they are likely to teach
      -- because of the foriegn key class_id

      SELECT professors.name,subjects.name
      FROM professors INNER JOIN subjects ON professors.class_id = subjects.class_id 
      ORDER BY professors.name;

      SELECT professors.name,subjects.name
      FROM professors INNER JOIN subjects ON professors.id = subjects.id
      ORDER BY professors.name;



   sqlite> SELECT courses.name
   ...> FROM courses INNER JOIN subjects ON courses.id = subjects.class_id
   ...> ORDER BY courses.name;

   sqlite> SELECT *
   ...> FROM professors INNER JOIN subjects ON professors.class_id = subjects.class_id;

   sqlite> SELECT courses.id
   ...> FROM courses INNER JOIN professors ON courses.id = professors.class_id;


   sqlite> SELECT courses.id
   ...> FROM courses INNER JOIN subjects ON courses.id = subjects.class_id;

   SELECT professors.department,subjects.name
   FROM professors INNER JOIN subjects ON professors.class_id = subjects.class_id 
   ORDER BY professors.name;
   
   SELECT * 
   FROM professors INNER JOIN subjects ON professors.class_id = subjects.class_id 
   ORDER BY professors.name;



select * from subjects where class_id < "9";select * from subjects where name
sqlite> select * from subjects where class_id > "19";
sqlite> select * from subjects where class_id > "9";
sqlite> select * from subjects where class_id < "9";
sqlite> select * from subjects where class_id < "12";
sqlite> select * from subjects where professor LIKE "%land";
sqlite> select * from subjects where professor LIKE "s%";
sqlite> select * from subjects where professor LIKE "A%";
sqlite> select * from subjects where name LIKE "S%";
sqlite> select * from subjects where name LIKE "%u%";
sqlite> select * from courses where name LIKE "%r%";
sqlite> select * from courses where name LIKE "%a%";
sqlite> select * from courses where name LIKE "%uis%";
sqlite> select * from courses where name LIKE "%ark%";
sqlite> select * from courses where class_id < "15";
sqlite> select * from courses where class_id < "15";
sqlite> select * from courses where class_id > "8";
sqlite> select * from courses where class_id > "15";
sqlite> select * from courses where class_id < "15";
sqlite> select * from courses where class_id < "10";
sqlite> select * from courses where department LIKE "Soc%";
sqlite> select * from courses where department LIKE "So%";
sqlite> select * from courses where department LIKE "B%";
sqlite> select * from courses where department LIKE "F%";
sqlite> select * from professors;
sqlite> select * from subjects;
sqlite> select * from professors where name = "Shawn%";
sqlite> select * from professors where name = "Angel Bahn";
sqlite> select * from professors;
sqlite> select * from professors where class_id="2"
sqlite> select * from professors where class_id="3";
sqlite> select * from professors where class_id="3";
sqlite> select * from professors where id = "3";
sqlite> sqlite> select * from professors where name = "%Tracy%";
sqlite> select * from professors where created at > "2014-03-10";
sqlite> select * from professors where created at <  "2014-03-10";
sqlite> select * from professors where created_at <  "2014-03-10";
sqlite> select * from professors where name  <  "2014-03-10";
sqlite> select * from professors where name  >  "2014-03-10";
sqlite> select * from professors where name  >  "2014-03-10";
sqlite> select * from professors where name = "solar system";
sqlite> select * from professors where name = "solar system";
sqlite> select * from professors where name = "Solar System";
sqlite> select * from professors where name LIKE "Trac%";
sqlite> select * from professors where name LIKE "Tra%%";
sqlite> select * from professors where name LIKE "Tr%%";
sqlite> select * from professors where name LIKE "T%";
sqlite> select * from professors where name LIKE "T%";SELECT * FROM subjects ORDER BY class_id;
sqlite> SELECT * FROM subjects ORDER BY class_id;
sqlite> SELECT COUNT(1) FROM professors;
SELECT COUNT(5) FROM courses;
sqlite> SELECT * FROM subjects ORDER BY class_id;













-- THE FIRST PART IS MY INFORMATION. 

patricks-MacBook-Pro:sql_hw piklowry$ sqlsqlite3 sql_hw.db
-bash: sqlsqlite3: command not found
patricks-MacBook-Pro:sql_hw piklowry$ sqlite3 sql_hw.db
SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> select * from professors where name = "Shawn%";
sqlite> select * from professors where name = "Angel Bahn";
sqlite> select * from professors;
1|1|Shawn Wyckoff|Sociology|Social Science
2|2|Haley Bustos|Criminal Justice|Social Science
3|3|Tracey Palios|Journalism|English
4|4|Porter Swartz|Astrology|Science
5|5|Angel Banh|Into to Film|Fine Arts
sqlite> select * from professors where class_id="2"
   ...> ;
2|2|Haley Bustos|Criminal Justice|Social Science
sqlite> select * from professors where class_id="3";
3|3|Tracey Palios|Journalism|English
sqlite> select * from professors where class_id="3";
3|3|Tracey Palios|Journalism|English
sqlite> select * from professors where id = "3";
3|3|Tracey Palios|Journalism|English
sqlite> select * from professors where name = "Tracy%";
sqlite> select * from professors where name = "%Tracy%;
   ...> ;
   ...> 
   ...> ;'
   ...> "
   ...> ""
   ...> select * from professors where name = "Tracy%";
Error: near """": syntax error
sqlite> 
sqlite> select * from professors where name = "Tracy%";
sqlite> select * from professors where name ="Tracy%";
sqlite> select * from professors where name="Tracy%";
sqlite> select * from professors where name="Tclearracy%";
sqlite> clear
   ...> select * from professors where name="Tclearracy%";
Error: near "clear": syntax error
sqlite> select * from professors where name LIKE "Tracy%";
sqlite> select * from professors where name LIKE "Tracy%";
sqlite> select * from professors where name LIKE "%Tracy%";
sqlite> select * from ORDER by created_at DESC;
Error: near "ORDER": syntax error
sqlite> select * from NAME  by created_at DESC;
Error: near "created_at": syntax error
sqlite> select * from NAME by created_at DESC;
Error: near "created_at": syntax error
sqlite> sqlite> select * from professors;
Error: near "sqlite": syntax error
sqlite> 1|1|Shawn Wyckoff|Sociology|Social Science
   ...> 2|2|Haley Bustos|Criminal Justice|Social Science
   ...> 3|3|Tracey Palios|Journalism|English
   ...> 4|4|Porter Swartz|Astrology|Science
   ...> 5|5|Angel Banh|Into to Film|Fine Arts
   ...> sqlite> select * from professors where class_id="2"
   ...>    ...> ;
Error: near "1": syntax error
sqlite> 2|2|Haley Bustos|Criminal Justice|Social Science
   ...> sqlite> select * from professors where class_id="3";
Error: near "2": syntax error
sqlite> 3|3|Tracey Palios|Journalism|English
   ...> sqlite> select * from professors where class_id="3";
Error: near "3": syntax error
sqlite> 3|3|Tracey Palios|Journalism|English
   ...> sqlite> select * from professors where id = "3";
Error: near "3": syntax error
sqlite> 3|3|Tracey Palios|Journalism|English
   ...> sqlite> select * from professors where name = "Tracy%";
Error: near "3": syntax error
sqlite> sqlite> select * from professors where name = "%Tracy%;
   ...> 
   ...> sqlite> select * from professors where name = "%Tracy%;
Error: near "sqlite": syntax error
sqlite> select * from professors where created at > "2014-03-10";
Error: near "at": syntax error
sqlite> select * from professors where created at <  "2014-03-10";
Error: near "at": syntax error
sqlite> select * from professors where created_at <  "2014-03-10";
Error: no such column: created_at
sqlite> select * from professors where name  <  "2014-03-10";
sqlite> select * from professors where name  >  "2014-03-10";
1|1|Shawn Wyckoff|Sociology|Social Science
2|2|Haley Bustos|Criminal Justice|Social Science
3|3|Tracey Palios|Journalism|English
4|4|Porter Swartz|Astrology|Science
5|5|Angel Banh|Into to Film|Fine Arts
sqlite> select * from professors where name  >  "2014-03-10";
1|1|Shawn Wyckoff|Sociology|Social Science
2|2|Haley Bustos|Criminal Justice|Social Science
3|3|Tracey Palios|Journalism|English
4|4|Porter Swartz|Astrology|Science
5|5|Angel Banh|Into to Film|Fine Arts
sqlite> select * from professors where name = solar system;
Error: near "system": syntax error
sqlite> select * from professors where name = "solar system";
sqlite> select * from professors where name = "Solar System";
sqlite> select * from professors where name LIKE "Trac%";
3|3|Tracey Palios|Journalism|English
sqlite> select * from professors where name LIKE "Tra%%";
3|3|Tracey Palios|Journalism|English
sqlite> select * from professors where name LIKE "Tr%%";
3|3|Tracey Palios|Journalism|English
sqlite> select * from professors where name LIKE "T%";
3|3|Tracey Palios|Journalism|English
sqlite> select * from professors where name LIKE "T%";SELECT * FROM subjects ORDER BY class_id;
3|3|Tracey Palios|Journalism|English
4|1|Social Change|Shawn Wykoff
3|2|Fighting Crime|Haley Bustos
5|3|Intro to Film|Fine Arts
2|4|Solar System|Porter Swartz
1|5|Cinematography|Angel Bahn
sqlite> SELECT * FROM subjects ORDER BY class_id;
4|1|Social Change|Shawn Wykoff
3|2|Fighting Crime|Haley Bustos
5|3|Intro to Film|Fine Arts
2|4|Solar System|Porter Swartz
1|5|Cinematography|Angel Bahn
sqlite> SELECT COUNT(1) FROM professors;
5
sqlite> SELECT * FROM subjects ORDER BY class_id;
4|1|Social Change|Shawn Wykoff
3|2|Fighting Crime|Haley Bustos
5|3|Intro to Film|Fine Arts
2|4|Solar System|Porter Swartz
1|5|Cinematography|Angel Bahn
sqlite> select * from professors where department LIKE "Soc$";
sqlite> select * from professors where department LIKE "Soc%";
1|1|Shawn Wyckoff|Sociology|Social Science
2|2|Haley Bustos|Criminal Justice|Social Science
sqlite> select * from professors where department LIKE "Soc%";
1|1|Shawn Wyckoff|Sociology|Social Science
2|2|Haley Bustos|Criminal Justice|Social Science
sqlite> select * from professors where class_id > "3";
4|4|Porter Swartz|Astrology|Science
5|5|Angel Banh|Into to Film|Fine Arts
sqlite> select * from professors where class_id < "3";
1|1|Shawn Wyckoff|Sociology|Social Science
2|2|Haley Bustos|Criminal Justice|Social Science
sqlite> select * from professors where class_id > "3";
4|4|Porter Swartz|Astrology|Science
5|5|Angel Banh|Into to Film|Fine Arts
sqlite> select * from professors
   ...> inner join courses on professors.class_id = courses_id
   ...> where name LIKE "Tra%";
Error: ambiguous column name: name
sqlite> select * from professors
   ...> inner join name  on professors.class_id = courses_id
   ...> where name LIKE "Tra%";
Error: no such table: name
sqlite> select * from professors
   ...> inner join courses on professors.class_id = courses.name
   ...> where name LIKE "Tra%";
Error: ambiguous column name: name
sqlite> where name LIKE "Tra%";

Error: near "where": syntax error
sqlite> select * from PROFESSORS by class_id DESC;
Error: near "class_id": syntax error
sqlite> select * from professors by class_id DESC;
Error: near "class_id": syntax error
sqlite> SELECT professors.name, 
   ...> courses.class_id, 
   ...> professors.id
   ...> FROM courses, professors
   ...> SELECT professors.name, 
   ...> ;
Error: near "SELECT": syntax error
sqlite> SELECT courses.id, 
   ...> subjects.name
   ...> FROM courses, professors, subjects
   ...> SELECT courses.id, 
   ...> subjects.name
   ...> FROM courses, professors, subjects;
Error: near "SELECT": syntax error
sqlite> SELECT courses.id, 
   ...> professors.name
   ...> FROM courses INNER JOIN professors ON courses.id = professors.name
   ...> 
   ...> 
   ...> exit
   ...> ;
Error: near "exit": syntax error
sqlite> SELECT courses.id,
   ...> professors.name
   ...> FROM courses INNER JOIN professors ON courses.id = professors.name;
sqlite> SELECT courses.id
   ...> FROM courses INNER JOIN professors ON courses.id = professors.class_id;
1
2
3
4
5
sqlite> SELECT courses.id
   ...> FROM courses INNER JOIN subjects ON courses.id = subjects.class_id;
5
4
2
1
3
sqlite> SELECT FROM subjects INNER JOIN professors ON subjects.id = professors.class_id;
Error: near "FROM": syntax error
sqlite> SELECT
   ...>  FROM subjects INNER JOIN professors ON subjects.id = professors.class_id;
Error: near "FROM": syntax error
sqlite> SELECT 
   ...> FROM professors INNER JOIN subjects ON professors.class_id = subjects.name;
Error: near "FROM": syntax error
sqlite> SELECT * FROM courses INNER JOIN professors ON courses.department = professors.class_id, 
   ...> subjects;
sqlite> select * from courses;
1|3|Journalism|English
2|1|Sociology|Social Science
3|1|Criminal Justice|Social Science
4|4|Astrology|Science
5|5|Into to Film|Fine Arts
6|6|Accounting|Business
7|6|Management|Business
8|6|Marketing|Business
9|7|Early Childhood Education|Education
10|4|Biology|Science
11|4|Chemistry|Science
12|8|Mathematics|Mathematics
13|8|Statistics|Mathematics
14|5|Music|Fine Arts
15|5|Art|Fine Arts
16|3|Library|English
17|5|French|Fine Arts
18|3|Integrative Studies|English
19|9|Iron Yard|Computer Technology
20|5|Film Studies|Fine Arts
sqlite> select * from subjects;
1|5|Cinematography|Angel Bahn
2|4|Solar System|Porter Swartz
3|2|Fighting Crime|Haley Bustos
4|1|Social Change|Shawn Wykoff
5|3|Intro to Film|Anthony Herrick
6|5|Oldies Music|Meridith Weinberg
7|6|Companies|Chasity Housley
8|5|Good Movies|Mariana Janousek
9|6|Pepsi Co|Madie Gallien
10|5|Languages|Jesenia Gadbois
11|7|Growing up|Vera Biddle
12|6|Building a Company|Gilma Witty
13|5|Ballet|Carlene Roche
14|1|Growing up|Dia Miramontes
15|6|Managing Employees|isiah Greenland
16|2|Languages|Mollie Ledet
17|6|Start Ups|Kinda Putz
18|8|Numbers|Renna Mccollough
19|8|Algebra|Lucila Haddad
20|9|Computers|Isela Woolley
sqlite> select * from professors;
1|1|Shawn Wyckoff|Sociology|Social Science
2|2|Haley Bustos|Criminal Justice|Social Science
3|3|Tracey Palios|Journalism|English
4|4|Porter Swartz|Astrology|Science
5|5|Angel Banh|Into to Film|Fine Arts
6|6|Gary Collens|Sociology|Social Science
7|7|Vera Biddle|Early Childhood Education|Education
8|7|Vera Biddle|Early  Education|Education
9|4|Porter Swartz|Astrology|Science
10|8|Renna Mccollough|Algebra 2|Mathematics
11|8|Renna Mccollough|Statistics|Mathematics
12|5|Carlene Roche|Early Film|Fine Arts
13|5|Mariana Janousek|Into to Film|Fine Arts
14|6|Gilma Witty|Management|Business
15|1|Dia Miramontes|Human Studies|Social Science
16|1|Dia Miramontes|Sociology|Social Science
17|4|Porter Swartz|Biology|Science
18|3|Anthony Herrick|Creative Writting|English
19|9|Isela Woolley|SQL|Computer Technology
20|6|Gilma Witty|Economics|Business
sqlite> SELECT *
   ...> FROM professors INNER JOIN subjects ON professors.class_id = subjects.class_id;

1|1|Shawn Wyckoff|Sociology|Social Science|14|1|Growing up|Dia Miramontes
1|1|Shawn Wyckoff|Sociology|Social Science|4|1|Social Change|Shawn Wykoff
2|2|Haley Bustos|Criminal Justice|Social Science|3|2|Fighting Crime|Haley Bustos
2|2|Haley Bustos|Criminal Justice|Social Science|16|2|Languages|Mollie Ledet
3|3|Tracey Palios|Journalism|English|5|3|Intro to Film|Anthony Herrick
4|4|Porter Swartz|Astrology|Science|2|4|Solar System|Porter Swartz
5|5|Angel Banh|Into to Film|Fine Arts|13|5|Ballet|Carlene Roche
5|5|Angel Banh|Into to Film|Fine Arts|1|5|Cinematography|Angel Bahn
5|5|Angel Banh|Into to Film|Fine Arts|8|5|Good Movies|Mariana Janousek
5|5|Angel Banh|Into to Film|Fine Arts|10|5|Languages|Jesenia Gadbois
5|5|Angel Banh|Into to Film|Fine Arts|6|5|Oldies Music|Meridith Weinberg
6|6|Gary Collens|Sociology|Social Science|12|6|Building a Company|Gilma Witty
6|6|Gary Collens|Sociology|Social Science|7|6|Companies|Chasity Housley
6|6|Gary Collens|Sociology|Social Science|15|6|Managing Employees|isiah Greenland
6|6|Gary Collens|Sociology|Social Science|9|6|Pepsi Co|Madie Gallien
6|6|Gary Collens|Sociology|Social Science|17|6|Start Ups|Kinda Putz
7|7|Vera Biddle|Early Childhood Education|Education|11|7|Growing up|Vera Biddle
8|7|Vera Biddle|Early  Education|Education|11|7|Growing up|Vera Biddle
9|4|Porter Swartz|Astrology|Science|2|4|Solar System|Porter Swartz
10|8|Renna Mccollough|Algebra 2|Mathematics|19|8|Algebra|Lucila Haddad
10|8|Renna Mccollough|Algebra 2|Mathematics|18|8|Numbers|Renna Mccollough
11|8|Renna Mccollough|Statistics|Mathematics|19|8|Algebra|Lucila Haddad
11|8|Renna Mccollough|Statistics|Mathematics|18|8|Numbers|Renna Mccollough
12|5|Carlene Roche|Early Film|Fine Arts|13|5|Ballet|Carlene Roche
12|5|Carlene Roche|Early Film|Fine Arts|1|5|Cinematography|Angel Bahn
12|5|Carlene Roche|Early Film|Fine Arts|8|5|Good Movies|Mariana Janousek
12|5|Carlene Roche|Early Film|Fine Arts|10|5|Languages|Jesenia Gadbois
12|5|Carlene Roche|Early Film|Fine Arts|6|5|Oldies Music|Meridith Weinberg
13|5|Mariana Janousek|Into to Film|Fine Arts|13|5|Ballet|Carlene Roche
13|5|Mariana Janousek|Into to Film|Fine Arts|1|5|Cinematography|Angel Bahn
13|5|Mariana Janousek|Into to Film|Fine Arts|8|5|Good Movies|Mariana Janousek
13|5|Mariana Janousek|Into to Film|Fine Arts|10|5|Languages|Jesenia Gadbois
13|5|Mariana Janousek|Into to Film|Fine Arts|6|5|Oldies Music|Meridith Weinberg
14|6|Gilma Witty|Management|Business|12|6|Building a Company|Gilma Witty
14|6|Gilma Witty|Management|Business|7|6|Companies|Chasity Housley
14|6|Gilma Witty|Management|Business|15|6|Managing Employees|isiah Greenland
14|6|Gilma Witty|Management|Business|9|6|Pepsi Co|Madie Gallien
14|6|Gilma Witty|Management|Business|17|6|Start Ups|Kinda Putz
15|1|Dia Miramontes|Human Studies|Social Science|14|1|Growing up|Dia Miramontes
15|1|Dia Miramontes|Human Studies|Social Science|4|1|Social Change|Shawn Wykoff
16|1|Dia Miramontes|Sociology|Social Science|14|1|Growing up|Dia Miramontes
16|1|Dia Miramontes|Sociology|Social Science|4|1|Social Change|Shawn Wykoff
17|4|Porter Swartz|Biology|Science|2|4|Solar System|Porter Swartz
18|3|Anthony Herrick|Creative Writting|English|5|3|Intro to Film|Anthony Herrick
19|9|Isela Woolley|SQL|Computer Technology|20|9|Computers|Isela Woolley
20|6|Gilma Witty|Economics|Business|12|6|Building a Company|Gilma Witty
20|6|Gilma Witty|Economics|Business|7|6|Companies|Chasity Housley
20|6|Gilma Witty|Economics|Business|15|6|Managing Employees|isiah Greenland
20|6|Gilma Witty|Economics|Business|9|6|Pepsi Co|Madie Gallien
20|6|Gilma Witty|Economics|Business|17|6|Start Ups|Kinda Putz
SELECT name
FROM professors INNER JOIN courses ON professors.class_id = courses.class_id;
sqlite> select * from courses where name LIKE "Trac%";
sqlite> select * from courses where department LIKE "Soc%";
2|1|Sociology|Social Science
3|1|Criminal Justice|Social Science
sqlite> select * from courses where department LIKE "So%";
2|1|Sociology|Social Science
3|1|Criminal Justice|Social Science
sqlite> select * from courses where department LIKE "B%";
6|6|Accounting|Business
7|6|Management|Business
8|6|Marketing|Business
sqlite> select * from courses where department LIKE "F%";
5|5|Into to Film|Fine Arts
14|5|Music|Fine Arts
15|5|Art|Fine Arts
17|5|French|Fine Arts
20|5|Film Studies|Fine Arts
sqlite> select * from courses where class_id < "10";
1|3|Journalism|English
2|1|Sociology|Social Science
3|1|Criminal Justice|Social Science
4|4|Astrology|Science
5|5|Into to Film|Fine Arts
6|6|Accounting|Business
7|6|Management|Business
8|6|Marketing|Business
9|7|Early Childhood Education|Education
10|4|Biology|Science
11|4|Chemistry|Science
12|8|Mathematics|Mathematics
13|8|Statistics|Mathematics
14|5|Music|Fine Arts
15|5|Art|Fine Arts
16|3|Library|English
17|5|French|Fine Arts
18|3|Integrative Studies|English
19|9|Iron Yard|Computer Technology
20|5|Film Studies|Fine Arts
sqlite> select * from courses where class_id > "8";
19|9|Iron Yard|Computer Technology
sqlite> select * from courses where class_id > "15";
sqlite> select * from courses where class_id < "15";
1|3|Journalism|English
2|1|Sociology|Social Science
3|1|Criminal Justice|Social Science
4|4|Astrology|Science
5|5|Into to Film|Fine Arts
6|6|Accounting|Business
7|6|Management|Business
8|6|Marketing|Business
9|7|Early Childhood Education|Education
10|4|Biology|Science
11|4|Chemistry|Science
12|8|Mathematics|Mathematics
13|8|Statistics|Mathematics
14|5|Music|Fine Arts
15|5|Art|Fine Arts
16|3|Library|English
17|5|French|Fine Arts
18|3|Integrative Studies|English
19|9|Iron Yard|Computer Technology
20|5|Film Studies|Fine Arts
sqlite> select * from courses where class_id < "15";
1|3|Journalism|English
2|1|Sociology|Social Science
3|1|Criminal Justice|Social Science
4|4|Astrology|Science
5|5|Into to Film|Fine Arts
6|6|Accounting|Business
7|6|Management|Business
8|6|Marketing|Business
9|7|Early Childhood Education|Education
10|4|Biology|Science
11|4|Chemistry|Science
12|8|Mathematics|Mathematics
13|8|Statistics|Mathematics
14|5|Music|Fine Arts
15|5|Art|Fine Arts
16|3|Library|English
17|5|French|Fine Arts
18|3|Integrative Studies|English
19|9|Iron Yard|Computer Technology
20|5|Film Studies|Fine Arts
sqlite> select * from courses where class_id < "15";
1|3|Journalism|English
2|1|Sociology|Social Science
3|1|Criminal Justice|Social Science
4|4|Astrology|Science
5|5|Into to Film|Fine Arts
6|6|Accounting|Business
7|6|Management|Business
8|6|Marketing|Business
9|7|Early Childhood Education|Education
10|4|Biology|Science
11|4|Chemistry|Science
12|8|Mathematics|Mathematics
13|8|Statistics|Mathematics
14|5|Music|Fine Arts
15|5|Art|Fine Arts
16|3|Library|English
17|5|French|Fine Arts
18|3|Integrative Studies|English
19|9|Iron Yard|Computer Technology
20|5|Film Studies|Fine Arts
sqlite> select * from courses where name LIKE "%uis%";
sqlite> select * from courses where name LIKE "%ark%";
8|6|Marketing|Business
sqlite> select * from courses where name LIKE "%a%";
1|3|Journalism|English
3|1|Criminal Justice|Social Science
4|4|Astrology|Science
6|6|Accounting|Business
7|6|Management|Business
8|6|Marketing|Business
9|7|Early Childhood Education|Education
12|8|Mathematics|Mathematics
13|8|Statistics|Mathematics
15|5|Art|Fine Arts
16|3|Library|English
18|3|Integrative Studies|English
19|9|Iron Yard|Computer Technology
sqlite> select * from courses where name LIKE "%r%";
1|3|Journalism|English
3|1|Criminal Justice|Social Science
4|4|Astrology|Science
8|6|Marketing|Business
9|7|Early Childhood Education|Education
11|4|Chemistry|Science
15|5|Art|Fine Arts
16|3|Library|English
17|5|French|Fine Arts
18|3|Integrative Studies|English
19|9|Iron Yard|Computer Technology
sqlite> select * from COURSES by class_id DESC;
Error: near "class_id": syntax error
sqlite> select * from COURSES by class_id AESC;
Error: near "class_id": syntax error
sqlite> select * from COURSES by class_id ASC;
Error: near "class_id": syntax error
sqlite> select * from COURSES by class_id ASCE;
Error: near "class_id": syntax error
sqlite> select * from subjects where name LIKE "%u%";
6|5|Oldies Music|Meridith Weinberg
10|5|Languages|Jesenia Gadbois
11|7|Growing up|Vera Biddle
12|6|Building a Company|Gilma Witty
14|1|Growing up|Dia Miramontes
16|2|Languages|Mollie Ledet
17|6|Start Ups|Isiah Greenland
18|8|Numbers|Renna Mccollough
20|9|Computers|Isela Woolley
sqlite> select * from subjects where name LIKE "S%";
2|4|Solar System|Porter Swartz
4|1|Social Change|Shawn Wykoff
17|6|Start Ups|Isiah Greenland
sqlite> select * from subjects where professor LIKE "A%";
1|5|Cinematography|Angel Bahn
5|3|Intro to Film|Anthony Herrick
sqlite> select * from subjects where professor LIKE "s%";
4|1|Social Change|Shawn Wykoff
sqlite> select * from subjects where professor LIKE "%land";
15|6|Managing Employees|isiah Greenland
17|6|Start Ups|Isiah Greenland
sqlite> select * from subjects where department LIKE "S%";
Error: no such column: department
sqlite> select * from subjects where class_id < "12";
1|5|Cinematography|Angel Bahn
2|4|Solar System|Porter Swartz
3|2|Fighting Crime|Haley Bustos
4|1|Social Change|Shawn Wykoff
5|3|Intro to Film|Anthony Herrick
6|5|Oldies Music|Meridith Weinberg
7|6|Companies|Chasity Housley
8|5|Good Movies|Mariana Janousek
9|6|Pepsi Co|Madie Gallien
10|5|Languages|Jesenia Gadbois
11|7|Growing up|Vera Biddle
12|6|Building a Company|Gilma Witty
13|5|Ballet|Carlene Roche
14|1|Growing up|Dia Miramontes
15|6|Managing Employees|isiah Greenland
16|2|Languages|Mollie Ledet
17|6|Start Ups|Isiah Greenland
18|8|Numbers|Renna Mccollough
19|8|Algebra|Lucila Haddad
20|9|Computers|Isela Woolley
sqlite> select * from subjects where class_id > "19";
sqlite> select * from subjects where class_id > "9";
sqlite> select * from subjects where class_id < "9";
1|5|Cinematography|Angel Bahn
2|4|Solar System|Porter Swartz
3|2|Fighting Crime|Haley Bustos
4|1|Social Change|Shawn Wykoff
5|3|Intro to Film|Anthony Herrick
6|5|Oldies Music|Meridith Weinberg
7|6|Companies|Chasity Housley
8|5|Good Movies|Mariana Janousek
9|6|Pepsi Co|Madie Gallien
10|5|Languages|Jesenia Gadbois
11|7|Growing up|Vera Biddle
12|6|Building a Company|Gilma Witty
13|5|Ballet|Carlene Roche
14|1|Growing up|Dia Miramontes
15|6|Managing Employees|isiah Greenland
16|2|Languages|Mollie Ledet
17|6|Start Ups|Isiah Greenland
18|8|Numbers|Renna Mccollough
19|8|Algebra|Lucila Haddad
sqlite> select * from subjects where class_id < "9";select * from subjects where name LIKE "%up";
1|5|Cinematography|Angel Bahn
2|4|Solar System|Porter Swartz
3|2|Fighting Crime|Haley Bustos
4|1|Social Change|Shawn Wykoff
5|3|Intro to Film|Anthony Herrick
6|5|Oldies Music|Meridith Weinberg
7|6|Companies|Chasity Housley
8|5|Good Movies|Mariana Janousek
9|6|Pepsi Co|Madie Gallien
10|5|Languages|Jesenia Gadbois
11|7|Growing up|Vera Biddle
12|6|Building a Company|Gilma Witty
13|5|Ballet|Carlene Roche
14|1|Growing up|Dia Miramontes
15|6|Managing Employees|isiah Greenland
16|2|Languages|Mollie Ledet
17|6|Start Ups|Isiah Greenland
18|8|Numbers|Renna Mccollough
19|8|Algebra|Lucila Haddad
11|7|Growing up|Vera Biddle
14|1|Growing up|Dia Miramontes
sqlite> select * from subjects where name LIKE "%up";
11|7|Growing up|Vera Biddle
14|1|Growing up|Dia Miramontes
sqlite> select * from subjects where name LIKE "%row4%";
sqlite> select * from SUBJECTS by class_id DESC;
Error: near "class_id": syntax error
sqlite> selects * from SUBJECTS by name DESC;
Error: near "selects": syntax error
sqlite> select * from SUBJECTS by name DESC;
Error: near "name": syntax error


sqlite> SELECT professors.name, courses.class_id
   ...> FROM professors
   ...> INNER JOIN courses
   ...> ON professors.class_id=courses.class_id
   ...> ORDER BY professors.name;
Angel Banh|5
Angel Banh|5
Angel Banh|5
Angel Banh|5
Angel Banh|5
Anthony Herrick|3
Anthony Herrick|3
Anthony Herrick|3
Carlene Roche|5
Carlene Roche|5
Carlene Roche|5
Carlene Roche|5
Carlene Roche|5
Dia Miramontes|1
Dia Miramontes|1
Dia Miramontes|1
Dia Miramontes|1
Gary Collens|6
Gary Collens|6
Gary Collens|6
Gilma Witty|6
Gilma Witty|6
Gilma Witty|6
Gilma Witty|6
Gilma Witty|6
Gilma Witty|6
Isela Woolley|9
Mariana Janousek|5
Mariana Janousek|5
Mariana Janousek|5
Mariana Janousek|5
Mariana Janousek|5
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Renna Mccollough|8
Renna Mccollough|8
Renna Mccollough|8
Renna Mccollough|8
Shawn Wyckoff|1
Shawn Wyckoff|1
Tracey Palios|3
Tracey Palios|3
Tracey Palios|3
Vera Biddle|7
Vera Biddle|7
sqlite> SELECT professors.name, courses.class_id
   ...> FROM professors
   ...> INNER JOIN courses
   ...> ON professors.class_id=courses.class_id
   ...> ORDER BY professors.department;
Gilma Witty|6
Gilma Witty|6
Gilma Witty|6
Gilma Witty|6
Gilma Witty|6
Gilma Witty|6
Isela Woolley|9
Vera Biddle|7
Vera Biddle|7
Tracey Palios|3
Tracey Palios|3
Tracey Palios|3
Anthony Herrick|3
Anthony Herrick|3
Anthony Herrick|3
Angel Banh|5
Angel Banh|5
Angel Banh|5
Angel Banh|5
Angel Banh|5
Carlene Roche|5
Carlene Roche|5
Carlene Roche|5
Carlene Roche|5
Carlene Roche|5
Mariana Janousek|5
Mariana Janousek|5
Mariana Janousek|5
Mariana Janousek|5
Mariana Janousek|5
Renna Mccollough|8
Renna Mccollough|8
Renna Mccollough|8
Renna Mccollough|8
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Porter Swartz|4
Shawn Wyckoff|1
Shawn Wyckoff|1
Gary Collens|6
Gary Collens|6
Gary Collens|6
Dia Miramontes|1
Dia Miramontes|1
Dia Miramontes|1
Dia Miramontes|1
sqlite> SELECT courses.name
   ...> FROM courses INNER JOIN subjects ON courses.id = subjects.class_id
   ...> ORDER BY courses.name;
Accounting
Accounting
Accounting
Accounting
Accounting
Astrology
Criminal Justice
Early Childhood Education
Into to Film
Into to Film
Into to Film
Into to Film
Into to Film
Journalism
Journalism
Management
Marketing
Marketing
Sociology
Sociology
sqlite> 

