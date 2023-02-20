$fn=50;
H=32;
H2=5;
SIDE=100;
D=2;
D2=2.5;

difference() {
    union() {
        translate([0,0,H/2]) cube([SIDE,SIDE,H], center=true ); // Box 100x100x40
        translate([0,0,-H2/2]) cube([SIDE-2*D2,SIDE-2*D2,H2],center=true);
    }
    translate([0,0, H]) cube([SIDE-D2,SIDE-D2,1.5*H],center=true);

    translate([  0,0,10]) rotate([90,0,0]) cylinder(d=26,h=80, center=true);
    translate([ 30,0,10]) rotate([90,0,0]) cylinder(d=26,h=80, center=true);
    translate([-30,0,10]) rotate([90,0,0]) cylinder(d=26,h=80, center=true);
   
//    translate([0,-100,0]) cube([300,200,300],center=true); // Tester
}
