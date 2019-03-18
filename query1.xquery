for $x in doc("movielist.xml")/movielist/movie
where $x/Movie_cost>30
order by $x/Movie_title
return <result>{data($x/Movie_title),data($x/Movie_cost),data($x/movie_indate)}</result>

