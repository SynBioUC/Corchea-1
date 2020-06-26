//Este codigo es un modelo 3D del acrilico que usa Corchea: Bot.

//input
//Medidas acrilico
eAc = 3; //espesor del acrilico
aAc = 100; //ancho del acrilico
lAc = 110; //largo del acrilico

//Medidas del gap de insercion
agAc = 50; //ancho del gap de insercion
lgAc = 15; //largo del gap de insercion

//output
insAc = (aAc-agAc)/2; //insercion del acrilico en Lid

//Bot
translate([0,0,0]) 
color("lightblue", alpha = 0.5)
difference(){
    translate([0,0,0]) 
cube([aAc,lAc,eAc]);
    translate([insAc,0,0]) 
cube([agAc,lgAc, eAc]); 
}    
