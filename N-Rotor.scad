//Edit this file to change parameters!
include <settings.scad>

//Do not edit unless you know what you are doing!

module motor_mount(clearh, clearr, boltsize, size)	{
cylinder(r=clearr, h=clearh);
translate([size/2,size/2,0])	{
cylinder(r=boltsize/2, h=matdepth);
}
translate([-size/2,size/2,0])	{
cylinder(r=boltsize/2, h=matdepth);
}
translate([size/2,-size/2,0])	{
cylinder(r=boltsize/2, h=matdepth);
}
translate([-size/2,-size/2,0])	{
cylinder(r=boltsize/2, h=matdepth);
}
}

module round_end_arm(length, width, r=0)	{
if(r==0){ r = width/2; }
union()	{
translate([-width/2, 0, 0])	{
cube([width, length, matdepth], false);
}
translate([0,length,0])	{
cylinder(r=r, h=matdepth);
}
}
}


//main plate
cylinder(r=baseradius, h=matdepth);
//arms
rotate([0,0,modelrotation])	{
for(i = [0:numarms-1])	{
rotate([0,0,rotationangle*i])	{
translate([0,armshift,0])	{
difference()	{
round_end_arm(armlength,armwidth,armendradius);
translate([0,armlength,0])	{
motor_mount(matdepth,motorclearrad,boltsize,motormountw);
}
}
}
}
}
}