#!/usr/bin/env python3
from os import system

print("----------")
print("N-Rotor Multicopter frame generator")
print("Please ensure that OpenSCAD is installed and in the system path...")
print("----------")
print("Begin configuration")
print("----------")
print("Material setup")
print("----------")
mdep = input("Material depth?  ")
print("----------")
print("Arm configuration")
print("----------")
arms = input("Number of arms?  ")
alen = input("Distance to prop center? (ex: 250)  ")
awid = input("Arm width?  ")
arad = input("Motor mount radius?  ")
hsiz = input("Hub radius?  ")
print("----------")
print("Motor configuration")
print("----------")
mclr = input("Motor bearing clearance radius?  ")
mwid = input("Motor mount separation? (ex: 32)  ")
bsiz = input("Bolt size for motors?  ")
print("----------")
print("Output setup")
print("----------")
mrot = input("Model rotation? (ex: 45)  ")
outp = input("Output filename? (no ext) ")
print("----------")
print("Running - please wait...")
print("----------")
system(" openscad -o " + outp + ".stl -Dmatdepth=" + mdep
 + " -Dmotormountw=" + mwid + " -Dmotorclearrad=" + mclr
 + " -Dboltsize=" + bsiz + " -Darmwidth=" + awid + " -Darmendradius=" + arad
 + " -Ddesiredboomlength=" + alen + " -Dbaseradius=" + hsiz
 + " -Dnumarms=" + arms + " -Dmodelrotation=" + mrot + " N-Rotor.scad")

print("----------")
print("Finished!")
print("----------")
