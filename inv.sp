*CMOS inverter

.title INV

* model  -------------------------

.include '180nm_bulk.txt'

* netlist  -------------------------

vdd vdd 0 2.5
vin gate 0 pulse 0 2.5 1ns 1ns 1ns 3ns 8ns

M1 out gate 0 0 nmos L=.18u W=.36u 
M2 out gate vdd vdd pmos L=.18u W=.72u 

* analysis  -------------------------

.options post=2 nomod
.op
.tran .1ns 8ns
.dc vin 0 2.5 0.1

.END
