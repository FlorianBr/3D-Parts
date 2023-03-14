$fn=100;


difference() {
    
    union () {
        linear_extrude(height = 5, center = true, convexity = 10, twist = 0) 
            polygon([[-50,0],[130+175,0],[130+175,35],[130,55],[-50,55]]);
         
        translate([-20,5/2,-10-2]) 
        difference() {
            cube([20,5,20], center=true);
            rotate([90,0,0]) cylinder(d=5, h=20, center=true);
        }

        translate([10+200,5/2,-10-2]) 
        difference() {
            cube([20,5,20], center=true);
            rotate([90,0,0]) cylinder(d=5, h=20, center=true);
        }
    }

    // Schalterausbrüche
    translate([55+0*60,50/2,0]) cube([38,22,50], center=true);
    translate([55+1*60,50/2,0]) cube([38,22,50], center=true);
    translate([55+2*60,50/2,0]) cube([38,22,50], center=true);
    translate([55+3*60,50/2,0]) cube([38,22,50], center=true);

    // Poti
    translate([-20,50/2,0]) cylinder(d=7, h=50, center=true);
    translate([-20,50/2,+22.5-3]) cylinder(d=15, h=40, center=true);
    

    // Verbindungsbohrungen
    translate([45+100,7,0]) rotate([0,90,0]) cylinder(d=3,h=40,center=true);
    translate([45+100,45,0]) rotate([0,90,0]) cylinder(d=3,h=40,center=true);

    // PCB Bohrungen
    translate([0,10,0]) union() {
        cylinder(d=3, h=50,center=true);
        translate([0,0,2])  cylinder(d1=0, d2=10, h=5,center=true);

        translate([0,25.5,0]) cylinder(d=3, h=50,center=true);
        translate([0,25.5,2])  cylinder(d1=0, d2=10, h=5,center=true);

        translate([25.5,25.5,0]) cylinder(d=3, h=50,center=true);
        translate([25.5,25.5,2])  cylinder(d1=0, d2=10, h=5,center=true);

        translate([25.5,0,0]) cylinder(d=3, h=50,center=true);
        translate([25.5,0,2])  cylinder(d1=0, d2=10, h=5,center=true);
    }
    
    
translate([45,50,0]) cube([200,200,50], center=true); // Haelfe 1
//translate([45+200,50,0]) cube([200,200,50], center=true); // Haelfe 2

}

