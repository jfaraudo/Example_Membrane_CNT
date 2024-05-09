import MDAnalysis as mda

#List of dcd files
#dcd_files = ['../equilibration/MDequil.dcd']
dcd_files = ['../equilibration/MDequil.dcd','MD.dcd']

#load simulaiton files
simulacio = mda.Universe('../input/system.psf',dcd_files)

#select 
seleccioW = simulacio.select_atoms("type OT and prop z <= 6.754", updating=True)

#Output file
fitxer= open('Nwinside.dat', 'w') 
fitxer.write("# time(ps) Nwater \n")

#Loop: calculate
for ts in simulacio.trajectory:
    temps_actual = round(ts.time)
    frame_actual = ts.frame
    numW = seleccioW.n_atoms
    
    #print data
    print(f"Frame: {frame_actual:4d},Time {temps_actual:4.0f} ps, N= {numW:4.0f}")
    #save data
    fitxer.write(f'{temps_actual} {numW}\n') #save number of monomers

