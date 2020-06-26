//Este codigo es un modelo 3D del acrilico que usa Corchea.


//input
//Medidas acrilico
eAc = 3; //espesor del acrilico
aAc = 100; //ancho del acrilico
lAc = 110; //largo del acrilico

//Medidas del cover
aC = 100; //ancho del cover
lC = 62; //largo del cover
aiC = 16; //ancho esquina interior cover
liC = 14; //largo esquina interior cover

//output
xCt = aC-aiC; //traslacion en x para las esquinas internas del cover
yCt = lC-liC; //traslacion en y para las esquinas internas del cover

//Cover
translate([0,yWt,30*eAc])
color("lightblue", alpha = 0.5)
difference(){
    translate([0,0,0]) 
cube([aC,lC,eAc]);
    translate([0,0,0]) 
cube([aiC,liC,eAc]);
    translate([xCt,0,0]) 
cube([aiC,liC,eAc]);  
    translate([0,yCt,0]) 
cube([aiC,liC,eAc]);    
    translate([xCt,yCt,0]) 
cube([aiC,liC,eAc]);    
}