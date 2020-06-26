//Este codigo es un modelo 3D del acrilico que usa Corchea: Top.


//input
//Medidas acrilico
eAc = 3; //espesor del acrilico
aAc = 100; //ancho del acrilico
lAc = 110; //largo del acrilico

//Medidas del gap de insercion
agAc = 50; //ancho del gap de insercion
lgAc = 15; //largo del gap de insercion

//Medidas de la ventana de top
aW = 55; //ancho de la ventana de top
lW = 60; //largo de la ventana de top

//output
insAc = (aAc-agAc)/2; //insercion del acrilico en Lid
yWm = (lAc-lgAc-lW)/2; //margenes de la ventana de top en y
yWt = yWm + lgAc; //traslacion de la ventana de top en y
xWm = (aAc-aW)/2; //margenes de la ventana de top en x

//Top
translate([0,0,0]) 
color("lightblue", alpha = 0.5)
difference(){
    translate([0,0,0]) 
cube([aAc,lAc,eAc]);
    translate([insAc,0,0]) 
cube([agAc,lgAc, eAc]); 
    translate([xWm,yWt,0])
cube([aW,lW,eAc]);
}  