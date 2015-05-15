$f=9;
union()
{
	translate([0,0,-45 ]) cylinder( 40 , 12.7 );// handle
	
	cylinder( 20 , r= 38 , center=true); //disc
	sphere( 14 ); //middle sphere
	
	
	minkowski()
	{
		sphere( 1 , $fn=3 );
		cylinder( 21 , 6 ); //spinner
	}
}

