
module spin_out() 			// outer top
{
	rotate_extrude($fn=100) 
	rotate([90,0,0]) polygon( points=[[40,20], [0,20],[0,0]] ); 
}

module hol_top()		    // creates hollowness
{
	difference()
	{
		spin_out();
		rotate_extrude($fn=100) 
		rotate([90,0,0]) polygon( points=[[22,18],[2,18],[2,4]] ); 

	}

}


module handle()
{
	union()
	{
		translate([0,0,19]) cylinder(r=6, h=28.5, $fn=30);
		translate([0,0,22])
		{
			linear_extrude(height = 10, center = false, convexity = 10, twist = 720, $fn = 100)
			translate([2, 0, 0])
			circle(r = 6.25);
		}
	}
}

module design()
{
		difference()
		{
			hol_top();
		for( i = [ 0:20:360 ] )
		{

			
			rotate([0,0,i])
			{
				translate([9,14,0,]) cube([5,8,20]);
				translate([4,13,0,]) cylinder(h=20, r=1.75);
			}
			
		}
				
		}
		
}

module top()
{
	union()
	{
		design();
		!handle();
	}
}

rotate([0,90,0]){ top(); }
