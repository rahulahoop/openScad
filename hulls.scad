$fn = 30;
module disk()
{
hull(){
	for( i = [0:30:360])
	{	
		rotate([0,0,i])
		{
		translate([122,0,0]) sphere(5);
		translate([105,0,35]) sphere(3);
		translate([122,0, 17]) sphere(3);
		translate([107,0,30]) sphere(3);
		}
	}
	translate([0,0,34.25]) sphere(3);
}
}

difference()
{
	disk();
	cylinder(32.5,r=114,center=true);
	cylinder(45,r=112,center=true);

}