```bash

time lar -n 1 -c wirecell_sp_data_sbnd-dnnroi.fcl -s data.root -o tmp.root

lar -n 1 -c wirecell_sp_data_sbnd-dnnroi.fcl -s data.root -o tmp.root

kinit "${USER}"
kx509
voms-proxy-init -noregen -rfc -voms 'fermilab:/fermilab/sbnd/Role=Analysis'



```