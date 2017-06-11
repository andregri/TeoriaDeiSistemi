set terminal png font 'Helvetica,15'
set output 'scalamento.png'
set encoding utf8

#variables
a = 2

set sample 10000

set xzeroaxis
set xrange [-10:10]
set xtics axis

set yzeroaxis
set yrange [0:100]
set ytics axis

set border 0
set key opaque

plot (x*a)**2 lw 2 title 'a > 1',\
	(x/a)**2 lw 2 title '0 < a < 1',\
	x**2 lw 2 lt 0 title 'a = 1'