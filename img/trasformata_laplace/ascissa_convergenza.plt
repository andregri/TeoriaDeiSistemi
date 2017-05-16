set terminal png
set output 'ascissa_convergenza.png'
set encoding utf8

xMax = 5
xMin = -1
yMax = 1
yMin = -1

set xzeroaxis
#set xlabel 'Re' offset first 3,1
set xlabel 'Re' offset character 29,12
unset xtics
set xrange [xMin:xMax]
set arrow 1 from xMin,0 to xMax,0

set yzeroaxis
set ylabel 'Im' offset character 14,12 rotate by 0
unset ytics
set yrange [yMin:yMax]
set arrow 2 from 0,yMin to 0,yMax

set border 0

set arrow from 1,yMin to 1,yMax nohead lw 3
set object rectangle from -1,-1 to 1,1 fc rgb '#D7DBDD' fs noborder
set label '~{&{a}}{1.1\_}{/Symbol s}' at 1.08,0.05

set object circle at 2,0.5 radius 0.04 fs solid fc rgb 'black'
set arrow from 2,0 to 2,0.5 nohead
set label 'Re\{s_{1}\}' at 1.8,-0.06
set label 's_{1}' at 1.9,0.6

set object circle at 3.5,-0.6 radius 0.04 fs solid fc rgb 'black'
set arrow from 3.5,0 to 3.5,-0.6 nohead
set label 'Re\{s_{2}\}' at 3.3,0.06
set label 's_{2}' at 3.4,-0.7

plot 3 notitle