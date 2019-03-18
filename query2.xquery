for $x in doc("employee.xml")/emplist/emp
for $y in doc("emp_partwork.xml")/partworklist/partwork
where $x/EmpID=$y/EmpID
return <partime>{$x}</partime>
