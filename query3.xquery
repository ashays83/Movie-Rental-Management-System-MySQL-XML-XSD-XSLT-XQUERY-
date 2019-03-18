declare function local:movierents($p as xs:decimal?)
as xs:decimal?
{
let $disc := $p
return sum($disc)
};

for $x in doc("movielist.xml")/movielist/movie
for $y in doc("rent.xml")/rentlist/rent
where $x/MovieID=$y/MovieID

return <rentvalue> {local:movierents($x/Movie_cost)}</rentvalue>
