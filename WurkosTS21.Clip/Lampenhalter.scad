$fn=100;

DBlade=26;  // Blade diameter in mm
DWall=4;    // Wall thickness
Length=20;

difference() {
    union() {
        rotate([0,90,0]) cylinder(h=Length,d=DBlade+2*DWall,center=true);
        translate([0,0,-(DBlade/2+DWall)/2-2]) cube([Length,DBlade,DBlade/2+DWall], center=true);
    }
    rotate([0,90,0]) cylinder(h=2*Length,d=DBlade,center=true);                                     // The Blade
    translate([0,0,(DBlade/2+DWall)/2]) cube([2*Length,DBlade-DWall,DBlade/2+DWall], center=true);  // Opening
    cylinder(h=2*DBlade,d=6,center=true);                           // Screw hole
    translate([0,0,-3]) cylinder(h=DBlade,d=2*6,center=true);       // Screw head hole
}


