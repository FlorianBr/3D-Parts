$fn=100;

difference() {
    union() {
        cube([150,30,5],true);                                                                // Basisplatte
        translate([0,-12.5,12.5]) cube([150,5,20], center=true);                              // Front Unten
        translate([0,-12.5,32.5]) cube([120,5,20], center=true);                              // Front Oben
        translate([ 150/2-15,-12.5,22.5]) scale([1,1,40/30]) rotate([90,0,0]) cylinder(d=30,h=5, center=true);       // Rundung 1
        translate([-150/2+15,-12.5,22.5]) scale([1,1,40/30]) rotate([90,0,0]) cylinder(d=30,h=5, center=true);       // Rundung 2
        
        translate([ 45,0,-5]) cube([20,6,5],true);   // Verdrehsicherung
        translate([-45,0,-5]) cube([20,6,5],true);   // Verdrehsicherung
    }
    translate([-45,-12.5,22.5]) rotate([90,0,0]) cylinder(d=15,h=50, center=true);          // Schalterbohrung
    translate([  0,-12.5,22.5]) rotate([90,0,0]) cylinder(d=29,h=50, center=true);          // USB Lader
    translate([+45,-12.5,22.5]) rotate([90,0,0]) cylinder(d=29,h=50, center=true);          // 12V Dose
    
    translate([ 65,0,0]) cylinder(d=6,h=20,center=true);                                // Montage 1
    translate([-65,0,0]) cylinder(d=6,h=20,center=true);                                // Montage 2
    translate([  0,0,0]) cylinder(d=6,h=20,center=true);                                // Montage 3
}