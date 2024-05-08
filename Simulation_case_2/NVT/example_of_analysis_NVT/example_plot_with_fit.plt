set encoding iso_8859_1
# Output of plot
# #set terminal postscript eps enhanced color font "Arial, 16"
set terminal postscript eps enhanced color "Helvetica"
# set terminal png linewidth 2.0 font "Helvetica" size 2000,1000
set output "permeation.eps"

#Title
set title "Water crossing across CNT" offset -34 font "Times-Roman, 24"
##
#set title "(a)"
show title

# Funcio a ajustar
l(x) = x0 + m*x

# fit
fit l(x) 'permeation.dat' u ($1/100):2 via x0,m

#plot colors
set style line 1 linetype 1 linecolor rgb "blue" lw 2
set style line 2 linetype 1 linecolor rgb "black" lw 1

set xlabel "Time (ns)"
set ylabel "water molecules"

plot 'permeation.dat' u ($1/100):2 t 'MD sims',l(x) w l ls 2 t 'fit'

set terminal x11
replot


