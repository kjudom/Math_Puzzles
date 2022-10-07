var y >= 0;
var x{1..7} integer >= 1, <= 7;
var d{1..7,1..7} binary;

maximize Z: y;
subject to A1: x[1] + x[3] + x[4] + x[7] = y;
subject to A2: x[1] + x[2] + x[4] + x[5] = y;
subject to A3: x[2] + x[3] + x[4] + x[6] = y;
subject to A4: x[1] + x[2] + x[3] + x[4] + x[5] + x[6] + x[7] = 28;
subject to A8 {i in 1..7}: sum{j in 1..7} d[i,j] * j = x[i]; 
subject to A9 {j in 1..7}: sum{i in 1..7} d[i,j] = 1; 
