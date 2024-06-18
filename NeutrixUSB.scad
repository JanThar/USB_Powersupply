//usbMale(0);
//mirror([0,0,1]) usbBack(0);

vent(0);


module usbBack(holes) {
    difference() {
        union() {
            hull() for(i=[-1,1]) for(j=[-1,1]) 
                translate([(31-5)/2*i,(26-5)/2*j,0])
                cylinder(d=5,h=7,$fn=18);
        }
        for(i=[-1,1])
            translate([24/2*i,19/2*i,0]) 
            cylinder(d=4,h=30,$fn=36,center=true);
        cube([100,13.5,10],true);
    }
    if (holes==1)
        for(i=[-1,1])
        translate([24/2*i,19/2*i,0]) 
        cylinder(d=3.4,h=30,$fn=36,center=true);
}

module usbMale(holes) {
    difference() {
        union() {
            hull() for(i=[-1,1]) for(j=[-1,1]) 
                translate([(31-5)/2*i,(26-5)/2*j,0])
                cylinder(d=5,h=5,$fn=18);
            //translate([0,0,-10])cylinder(d=23.5,h=10);
            translate([0,0,5])cylinder(d=23.5,h=4);//h 2.5
        }
        for(i=[-1,1])
            translate([24/2*i,19/2*i,0]) 
            cylinder(d=4,h=30,$fn=36,center=true);
//        for(i=[-1,1])
//            translate([0,i*5,-12]) cube([14.5,6.5,100],true);
        for(i=[-1,1])
            translate([i*5,0,0]) 
            hull() {
                translate([0,0,0]) cube([6.8,14.4,30],true);
                
                //translate([0,0,-10]) cube([7,14.5,20],true);
            }
    }
    if (holes==1)
        for(i=[-1,1])
        translate([24/2*i,19/2*i,0]) 
        cylinder(d=3.4,h=30,$fn=36,center=true);
}

module vent(holes) {
    difference() {
        union() {
            hull() for(i=[-1,1]) for(j=[-1,1]) 
                translate([(31-5)/2*i,(26-5)/2*j,0])
                cylinder(d=5,h=2.5,$fn=18);
            //translate([0,0,-10])cylinder(d=23.5,h=10);
            translate([0,0,2.5])cylinder(d=23.5,h=4,$fn=36);//h 2.5

        }
        translate([0,0,2.5])cylinder(d=23.5-4,h=100,$fn=36,center=true);//h 2.5
        for(i=[-1,1])
            translate([24/2*i,19/2*i,0]) 
            cylinder(d=4,h=30,$fn=36,center=true);
//        for(i=[-1,1])
//            translate([0,i*5,-12]) cube([14.5,6.5,100],true);
//        for(i=[-1,1])
//            translate([i*5,0,0]) 
//            hull() {
//                translate([0,0,0]) cube([6.8,14.4,30],true);
//                
//                //translate([0,0,-10]) cube([7,14.5,20],true);
//            }
    }
    if (holes==1)
        for(i=[-1,1])
        translate([24/2*i,19/2*i,0]) 
        cylinder(d=3.4,h=30,$fn=36,center=true);
    intersection() {
        translate([0,0,0])cylinder(d=23.5,h=5,$fn=36);
        for(i=[-10:10])
            translate([0,i*2,0]) rotate([45/2,0,0]) cube([100,0.5,20],center=true);
    }
}