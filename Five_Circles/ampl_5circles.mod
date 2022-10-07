var v >= 0;
var x{1..9} >= 1, <= 9;
var d{1..9,1..9} binary;

minimize Z: 0;
subject to A1: x[1]+x[2]=v;
subject to A2: x[2]+x[3]+x[4]=v;
subject to A3: x[4]+x[5]+x[6]=v;
subject to A4: x[6]+x[7]+x[8]=v;
subject to A5: x[8]+x[9]=v;
subject to A6: sum{i in 1..9} x[i] = 45;
subject to A7 {i in 1..9}: sum{j in 1..9} d[i,j] * j = x[i]; 
subject to A8 {j in 1..9}: sum{i in 1..9} d[i,j] = 1; 

