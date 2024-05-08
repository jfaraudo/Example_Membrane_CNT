# Funcio a ajustar
l(x) = x0 + m*x

# fit
set xrange[20:200]
fit l(x) 'permeation.dat' u 1:3 via x0,m

#plot colors
set style line 1 linetype 1 linecolor rgb "blue" lw 2
set style line 2 linetype 1 linecolor rgb "black" lw 1

set xlabel "Time (ns)"
set ylabel "water molecules"

set xrange[0:200]
plot 'permeation.dat' u 1:3 t 'MD sims',l(x) w l ls 2 t 'fit'




