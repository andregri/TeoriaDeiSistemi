set terminal png font 'Helvetica,15'
set output 'traslazione.png'

#variables
T = 5

set sample 10000

set xzeroaxis
set xrange [-10:10]
set xtics axis ('0' 0, 'T' T, '-T' -T)

set yzeroaxis
set yrange [0:100]
set ytics axis

set border 0

plot 4*(x-T)**2 lw 2 title 'f(t-T)',\
	4*(x+T)**2 lw 2 title 'f(t+T)',\
	4*x**2 lw 2 lt 0 title 'f(t)'