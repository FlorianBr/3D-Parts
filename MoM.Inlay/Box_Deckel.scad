$fn=50;
H=2;
H2=5;
SIDE=100;
D=2;
D2=2.5;

difference() {
    union() {
        translate([0,0,H/2]) cube([SIDE,SIDE,H], center=true ); // Box 100x100x40
        translate([0,0,-H2/2]) cube([SIDE-2*D2,SIDE-2*D2,H2],center=true);
    }
    translate([0,0,4]) linear_extrude(height=5,center=true) text("Token", halign="center", valign="center", size=20);
//    translate([0,0,4]) linear_extrude(height=5,center=true) text("Marker", halign="center", valign="center", size=20);
}
