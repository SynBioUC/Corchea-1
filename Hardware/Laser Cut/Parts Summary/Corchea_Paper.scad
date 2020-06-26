//Este codigo es un modelo 3D del acrilico que usa Corchea: Paper.

//input
//Medidas del papel
eP = 1; //espesor del papel
aP = 100; //ancho del papl
lP = 150; //largo del papel
oP = 60; //area de observacion del papel
insP = 20; //insercion de papel, ancho de la coneccion de papel que va en Clip

//output
gaP = aP-(2*insP); //ancho del gap entre los extremos del Paper
glP = lP-oP; //largo del gap entre los extremos del Paper

//Paper
difference(){
    translate([0,0,0]) 
cube([aP,lP,eP]);
    translate([insP,0,0]) 
cube([gaP,glP, eP]); 
}   
