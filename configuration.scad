// PRUSA Mendel  
// Configuration file
// GNU GPL v2
// Josef Průša
// josefprusa@me.com
// prusadjs.cz
// http://www.reprap.org/wiki/Prusa_Mendel
// http://github.com/prusajr/PrusaMendel

include <lib/mcad/motors.scad>

// M8 rod diameter
m8_diameter = 8.4;

// M8 nut diameter diameter
// Used for $fn nut trick -> cylinder(h = 5, r=4.5, $fn=6, center=true);
m8_nut_diameter = 16.4;

// M4 rod/screw diameter
m4_diameter = 5;

// M4 nut diameter diameter
// Used for $fn nut trick -> cylinder(h = 5, r=4.5, $fn=6, center=true);
m4_nut_diameter = 9;

// M3 rod/screw diameter
m3_diameter = 4.4;

// M3 nut diameter diameter
// Used for $fn nut trick -> cylinder(h = 5, r=4.5, $fn=6, center=true);
m3_nut_diameter = 7;

// Bushing holders diameter
bushing_diameter = 11;

linear_extrude(height = 5, center = true)
{
	difference()
	{
		square([100,100], center = true);
		square([10,10], center = true);
//		stepper_motor_mount(17,mochup=true);
	}
}