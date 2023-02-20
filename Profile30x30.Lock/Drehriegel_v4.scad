$fn=100;

BohrD=11.5; // M6 Schluesselweite
Nut=6;

difference() {
    union() {
        cylinder(h=Nut,d=40,center=true);       // Hauptkoerper
        
        // Verriegelungsnase
        intersection()
        {
            cylinder(h=Nut,d=60,center=true);
            translate([50,0,0]) scale([1,1,0.3]) rotate([0,90,0]) cylinder(h=100,d=25,center=true);
        }
    }
    cylinder(h=100,d=BohrD,center=true, $fn=6);    // Sechskant

    difference() { // Freibereich RiKuLa
        translate([0,0,7]) cylinder(h=10,d=30,center=true);
        cylinder(h=100,d=15,center=true);
    }
}
