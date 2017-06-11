set terminal png font 'Helvetica,15'
set output 'simmetria_x.png'

#variables
T = 5

set sample 10000

set xzeroaxis
set xrange [-10:10]
set xtics axis

set yzeroaxis
set yrange [-50:50]
set ytics axis

set border 0

plot 4*(x)**2 lw 2 title 'f(t)',\
	-4*(x)**2 lw 2 title '-f(t)'