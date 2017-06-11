set terminal png font 'Helvetica,20'
set output 'rettangolo.png'
set encoding utf8

xMax = 5
xMin = -1
yMax = 5
yMin = -5

set tics front

set xzeroaxis
set label 't' at 5,-0.3
set xtics axis ('t_1' 1, 't_2' 3)
set xrange [xMin:xMax]
set arrow 1 from xMin,0 to xMax,0

set yzeroaxis
set label 'R_{t_1,t_2}(t)' at 0.15,4.9 rotate by 0
set ytics axis ('1' 3, '-1' -3)
set yrange [yMin:yMax]
set arrow 2 from 0,yMin to 0,yMax

set border 0

set arrow from 1,0 to 1,3 nohead lw 2 fc 'blue'
set arrow from 3,0 to 3,-3 nohead lw 2 fc 'red'

plot x <= 3				? 0 : 1/0 lc 'red' lw 2 title '-1(t-t_2)',\
	x >= 3 && x < 4.8	? -3 : 1/0 lc 'red' lw 2 notitle,\
	x <= 1				? 0 : 1/0 lc 'blue' lw 2 title '1(t-t_1)',\
	x >= 1 && x < 4.8	? 3 : 1/0 lc 'blue' lw 2 notitle,\