set seleccio [atomselect top "carbon"]
$seleccio set beta 1
set seleccio [atomselect top "all"]
$seleccio writepdb system.pdb
puts "Done"
