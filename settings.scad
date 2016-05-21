/* N-Copter: Micro multirotor baseplate generator
 *	STL is dimensionless, but the default parameters 
 * assume millimeters!
*/

//Normal parameters

//Material Depth
matdepth = 3.175;

//Separation between mounting holes on the motor
motormountw = 32;

//Clearance needed for motor bearing hole
motorclearrad = 10;

//Bolt size for motor mounts
boltsize = 3;

//How wide to make the booms
armwidth = 50;

//Radius of motor mount plate [(armwidth+25)/2]
armendradius = 37.5;

//Total length from center of hub to motor shaft
desiredboomlength = 200;

//The circular radius of the central hub
baseradius = 80;

//How many arms?
numarms = 4;

//Turn the model in the export by n degrees
modelrotation=0;



//Internal parameters - do not edit
offset = armwidth/5;
armlength = desiredboomlength - baseradius + offset;
armshift = desiredboomlength - armlength;
rotationangle = 360/numarms;
$fn=25;