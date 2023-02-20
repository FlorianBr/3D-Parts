
H=35;               // Height of main box
H2=5;               // Height of bottom centering
SIDE=100;           // Side of box
D=2;                // Wall-thickness of box
D2=2.5;             // Setback of centering
HI=25;              // Inner Cut-Out

difference() {
    union() {
        translate([0,0,H/2]) cube([SIDE,SIDE,H], center=true );                                     // Main Box 100x100x40
        translate([0,0,-H2/2]) cube([SIDE-2*D2,SIDE-2*D2,H2],center=true);                          // Bottom
        translate([0,0,-2]) rotate([0,0,45]) cylinder(h=2,d1=1.35*(SIDE-D2),d2=1.41*SIDE,$fn=4);    // Chamfer
    }
    translate([0,0, 2*H-HI]) cube([SIDE-D,SIDE-D,2*H],center=true);                                  // Inner Cut-Out
    

    translate([ -20, 30,10]) cube([32,23,20], center=true); // Rect-Tokens: Door
    translate([ -20,  0,10]) cube([32,16,20], center=true); // Rect-Tokens: Picture on the Wall
    translate([ -20,-30,10]) cube([32,20,20], center=true); // Rect-Tokens: Overgrown (Serpent)
    translate([  20, 30,12]) cube([26,20,26], center=true); // Square-Tokens
    translate([  20,  0,10]) cube([32,20,20], center=true); // Rect-Tokens: Wooden Door (Serpent)
    translate([  20,-30,10]) cube([32,17,20], center=true); // Rect-Tokens: Chest

//    translate([0,-70,0]) cube([300,200,300],center=true); // Tester
   
}
