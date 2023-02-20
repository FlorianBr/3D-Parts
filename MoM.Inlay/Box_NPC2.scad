$fn=50;
H=25;
H2=5;
SIDE=100;
D=2;
D2=2.5;

difference() {
    union() {
        translate([0,0,H/2]) cube([SIDE,SIDE,H], center=true ); // Box 100x100x40
        translate([0,0,-H2/2]) cube([SIDE-2*D2,SIDE-2*D2,H2],center=true);
        translate([0,0,-2]) rotate([0,0,45]) cylinder(h=2,d1=1.35*(SIDE-D2),d2=1.41*SIDE,$fn=4);    // Chamfer
    }
    translate([0,0, H]) cube([SIDE-D2,SIDE-D2,1.5*H],center=true);

    translate([  0,0, 8]) rotate([90,0,0]) cylinder(d=21,h=80, center=true);
    translate([ 30,0, 8]) rotate([90,0,0]) cylinder(d=21,h=80, center=true);
    translate([-30,0, 8]) rotate([90,0,0]) cylinder(d=21,h=80, center=true);
   
//    translate([0,-100,0]) cube([300,200,300],center=true); // Tester
}
