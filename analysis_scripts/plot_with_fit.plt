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



