# The three triangles puzzle
 Put numbers 1-7 in A,B,...,G so that the sum is maximized and equal in each big triangle.

![alt text](https://github.com/kjudom/Math_Puzzles/blob/main/Three_Triangles/3tri.png)



## Mathematical model
$$\mbox{Maximize  } y$$
Subject to

<img src="https://render.githubusercontent.com/render/math?math=x_1 + x_3 + x_4 + x_7 = y\\x_1 + x_3 + x_4 + x_7 = y">


$$x_1 + x_3 + x_4 + x_7 = y$$
$$x_1 + x_2 + x_4 + x_5 = y$$
$$x_2 + x_3 + x_4 + x_6 = y$$
$$x_1 + x_2 + x_3 + x_4 + x_5 + x_6 + x_7 = 28$$


$$ y >= 0$$

$$1 \le x_i \le 7 \in Z \ \ \forall i \in 1..7$$
$$d_{i,j} = (0,1) \ \ \forall i,j \in 1..7$$
