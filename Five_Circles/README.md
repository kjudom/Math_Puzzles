# The five circles puzzle
 Put numbers 1-9 in each area so that the sum's are equal in each circle.

![alt text](https://github.com/kjudom/Math_Puzzles/blob/main/Five_Circles/5circles.png)



## Mathematical model

![alt text](https://github.com/kjudom/Math_Puzzles/blob/main/Five_Circles/5circles2.png)

$$\mbox{Maximize/Minimize  } 0$$
Subject to

$$x_1 + x_2 = v$$

$$x_2 + x_3 + x_4 = v$$

$$x_4 + x_5 + x_6 = v$$

$$x_6 + x_7 + x_8 = v$$

$$x_8 + x_9 = v$$

$$\sum_{i=1}^9 x_i = \sum_{i=1}^9 i$$

$$\sum_{j=1}^9 d_{i,j} \times j = x_i \ \ \ \forall i \in 1..9$$

$$\sum_{i=1}^9 d_{i,j} = 1 \ \ \ \forall j \in 1..9$$

$$1 \le x_i \le 9  \ \ \forall i \in 1..9$$

Decision variables

$$ v >= 0$$

$$x_i \in Z \ \ \forall i \in 1..9$$

$$d_{i,j} \in (0,1) \ \ \forall i,j \in 1..9$$


## AMPL model
```math
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
```