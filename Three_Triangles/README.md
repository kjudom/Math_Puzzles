# The three triangles puzzle
 Put numbers 1-7 in A,B,...,G so that the sum is maximized and equal in each big triangle.

![alt text](https://github.com/kjudom/Math_Puzzles/blob/main/Three_Triangles/3tri.png)



## Mathematical model
The mathematical model is not displayed correctly!

$$\mbox{Maximize  } y$$
Subject to

$$x_1 + x_3 + x_4 + x_7 = y$$

$$x_1 + x_2 + x_4 + x_5 = y$$

$$x_2 + x_3 + x_4 + x_6 = y$$

[//]: # ($$x_1 + x_2 + x_3 + x_4 + x_5 + x_6 + x_7 = 28$$)

$$\sum_{i=1}^7 x_i = \sum_{i=1}^7 i$$

$$\sum_{j=1}^7 d_{i,j} * j = x_i \ \ \ \forall i \in 1..7$$

$$\sum_{i=1}^7 d_{i,j} = 1 \ \ \ \forall j \in 1..7$$

$$1 \le x_i \le 7  \ \ \forall i \in 1..7$$

$$ y >= 0$$

$$x_i \in Z \ \ \forall i \in 1..7$$

$$d_{i,j} \in (0,1) \ \ \forall i,j \in 1..7$$


## AMPL model
```math
var y >= 0;
var x{1..7} integer >= 1, <= 7;
var d{1..7,1..7} binary;

maximize Z: y;
subject to A1: x[1] + x[3] + x[4] + x[7] = y;
subject to A2: x[1] + x[2] + x[4] + x[5] = y;
subject to A3: x[2] + x[3] + x[4] + x[6] = y;
subject to A4: x[1] + x[2] + x[3] + x[4] + x[5] + x[6] + x[7] = 28;
subject to A5 {i in 1..7}: sum{j in 1..7} d[i,j] * j = x[i]; 
subject to A6 {j in 1..7}: sum{i in 1..7} d[i,j] = 1; 
```