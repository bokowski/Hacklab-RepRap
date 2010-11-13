// PRUSA Mendel  
// X-end with NEMA 17 motor mount
// GNU GPL v2
// Josef Průša
// josefprusa@me.com
// prusadjs.cz
// http://www.reprap.org/wiki/Prusa_Mendel
// http://github.com/prusajr/PrusaMendel

include <configuration.scad>

difference(){
translate(v = [0,17,24.5]) union(){
difference(){
union(){
//translate(v = [0, -25, 0]) cube(size = [70,70,5], center = true);
translate(v = [0, -25, 0])translate(v = [-25, 0, -16.6])cube(size = [20,70,15.8], center = true);
translate(v = [0, -25, 0])translate(v = [25, 0, -16.6])cube(size = [20,70,15.8], center = true);
}
translate(v = [0, 0, -15])cube(size = [80,40,50], center = true);

//nut traps

translate(v = [-25, -29, -19.7]) cylinder(h = 7, r=m3_nut_diameter/2, $fn=6, center=true);
translate(v = [-25, -29, -20]) cylinder(h = 10, r=m3_diameter/2, $fn=9, center=true);
translate(v = [25, -29, -19.7]) cylinder(h = 7, r=m3_nut_diameter/2, $fn=6, center=true);
translate(v = [25, -29, -20]) cylinder(h = 10, r=m3_diameter/2, $fn=9, center=true);

translate(v = [-25, -50, -19.7]) cylinder(h = 7, r=m3_nut_diameter/2, $fn=6, center=true);
translate(v = [-25, -50, -20]) cylinder(h = 10, r=m3_diameter/2, $fn=9, center=true);
translate(v = [25, -50, -19.7]) cylinder(h = 7, r=m3_nut_diameter/2, $fn=6, center=true);
translate(v = [25, -50, -20]) cylinder(h = 10, r=m3_diameter/2, $fn=9, center=true);

//holes for axis
translate(v = [-25, -18, -16.7]) rotate(a=[90,0,0]) {
	cylinder(h = 120, r=4.5, $fn=20, center=true);
	translate(v = [0, 2.60, 0]) rotate(a=[0,0,0]) cylinder(h = 120, r=3.65, $fn=6, center=true);
}
translate(v = [25, -18, -16.7]) rotate(a=[90,0,0]) {
	cylinder(h = 120, r=4.5, $fn=20, center=true);
	translate(v = [0, 2.60, 0]) rotate(a=[0,0,0]) cylinder(h = 120, r=3.65, $fn=6, center=true);
}
//slider cutouts
translate(v = [0, -25, 15]) 
	difference(){
	translate(v = [0, -0, -14.5])cube(size = [23,23,50], center = true);
	}
//nut trap
translate(v = [0, -55, 15]) {
	difference(){
	translate(v = [0, -0, -15])cylinder(h = 50, r=12, $fn=6, center=true);
	}
}
}

//slider
translate(v = [0, -25, 15]) 
	difference(){
union(){
	translate(v = [0, -3.5, -7])cube(size = [24,17,65], center = true);

	translate(v = [0, -3.5, -31.65]) cube(size = [35,17,15.8], center = true);}
	translate(v = [0, -0, -7])cube(size = [17,17,70], center = true);}

//nut trap
translate(v = [0, -55, 15]) {
difference(){
	union(){difference(){
union(){
	translate(v = [0, -0, -19.5])cylinder(h = 40, r=12, $fn=6, center=true);
	translate(v = [0, 0, -31.65]) cube(size = [35,10,15.8], center = true);}
	cylinder(h = 90, r=m8_nut_diameter/2, $fn=6, center=true);
	}
	translate(v = [0, 0, -31]) cylinder(h = 4, r=11, $fn=6, center=true);}
	translate(v = [0, 0, 12.5]) cylinder(h = 90, r=m8_diameter/2, $fn=9, center=true);
}
}


//nema17 connector
translate(v = [0, 0, -12]) difference(){
union(){
translate(v = [21, -22.5, 36.5]) cube(size = [24,5,6], center = true);
translate(v = [32.5, 2, 13.5]) cube(size = [5,54,52], center = true);
translate(v = [22.5, 2, -11]) cube(size = [20,54,3], center = true);}

translate(v = [0, 0, -4.7]){
	translate(v = [32.5, 7, 23.5]) rotate(a=[0,90,0]) rotate(a=[0,0,30]) cylinder(h = 80, r=12, $fn=20, center=true);

	translate(v = [32.5, 7+15.5, 23.5+15.5-3]) cube(size = [20,3.5,8], center = true);
	translate(v = [32.5, 7-15.5, 23.5+15.5-3]) cube(size = [20,3.5,8], center = true);
	translate(v = [32.5, 7+15.5, 23.5-15.5+3]) cube(size = [20,3.5,8], center = true);
	translate(v = [32.5, 7-15.5, 23.5-15.5+3]) cube(size = [20,3.5,8], center = true);
}
}}
for ( n = [-15:15]) translate([0,3*n,1]) rotate ([45,0,0]) cube([120,1,1], center = true);
for ( n = [-14:14]) translate([0,3*(n+0.5),0]) rotate ([45,0,0]) cube([120,1,1], center = true);
}

