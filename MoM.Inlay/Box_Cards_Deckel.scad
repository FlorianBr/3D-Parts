
H=2;               // Height of main box
H2=5;               // Height of bottom centering
SIDE1=100;          // Side of box
SIDE2=70;           // Side of box
D=2;                // Wall-thickness of box
D2=2.5;             // Setback of centering
HI=40;              // Inner Cut-Out

difference() {
    union() {
        translate([0,0,H/2]) cube([SIDE1,SIDE2,H], center=true );                                     // Main Box 100x100x40
        translate([0,0,-H2/2]) cube([SIDE1-2*D2,SIDE2-2*D2,H2],center=true);                          // Bottom
        scale([1,0.7,1]) translate([0,0,-2]) rotate([0,0,45]) cylinder(h=2,d1=1.95*(SIDE2-D2),d2=1.41*SIDE1,$fn=4);    // Chamfer
    }
    translate([0,0,4.4]) linear_extrude(height=5,center=true) text("Karten", halign="center", valign="center", size=20);
}
