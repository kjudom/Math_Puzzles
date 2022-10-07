# The three triangles puzzle
 Put numbers 1-7 in A,B,...,G so that the sum is maximized and equal in each big triangle.

![alt text](https://github.com/kjudom/Math_Puzzles/blob/main/Three_Triangles/3tri.png)


## Mathematical model
$$\mbox{Maximize  } y$$
Subject to
$$x_1 + x_3 + x_4 + x_7 = y$$


$$ y >= 0$$

x_i{1..7} integer >= 1, <= 7;
$$d{i,j} = binary \forall i,j \in 1..7$$


subject to A1: x[1] + x[3] + x[4] + x[7] = y;
subject to A2: x[1] + x[2] + x[4] + x[5] = y;
subject to A3: x[2] + x[3] + x[4] + x[6] = y;
subject to A4: x[1] + x[2] + x[3] + x[4] + x[5] + x[6] + x[7] = 28;
subject to A8 {i in 1..7}: sum{j in 1..7} d[i,j] * j = x[i]; 
subject to A9 {j in 1..7}: sum{i in 1..7} d[i,j] = 1; 