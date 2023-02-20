
H=70;               // Height of main box
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
    translate([0,0, 2*H-HI]) cube([SIDE1-D,SIDE2-D,2*H],center=true);                                  // Inner Cut-Out
    
    translate([ 24, 18, 30]) cube([42,22,64], center=true); // Rect-Tokens: Mind
    translate([ 24,-18, 30]) cube([42,22,64], center=true); // Rect-Tokens: Health

    translate([-24, 16.5, 30]) cube([42,25,64], center=true); // Rect-Tokens: Elixiers & States
    translate([-24,-18, 30]) cube([42,10,64], center=true); // Rect-Tokens: Madness

//    translate([0,-90,0]) cube([300,200,300],center=true); // Tester
   
}
