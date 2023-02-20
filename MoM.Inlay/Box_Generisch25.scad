
H=25;               // Height of main box
H2=5;               // Height of bottom centering
SIDE=100;           // Side of box
D=2;                // Wall-thickness of box
D2=2.5;             // Setback of centering
HI=23;              // Inner Cut-Out

difference() {
    union() {
        translate([0,0,H/2]) cube([SIDE,SIDE,H], center=true );                                     // Main Box 100x100x40
        translate([0,0,-H2/2]) cube([SIDE-2*D2,SIDE-2*D2,H2],center=true);                          // Bottom
        translate([0,0,-2]) rotate([0,0,45]) cylinder(h=2,d1=1.35*(SIDE-D2),d2=1.41*SIDE,$fn=4);    // Chamfer
    }
    translate([0,0, 2*H-HI]) cube([SIDE-D,SIDE-D,2*H],center=true);                                  // Inner Cut-Out
    
//    translate([0,-100,0]) cube([300,200,300],center=true); // Tester
   
}
