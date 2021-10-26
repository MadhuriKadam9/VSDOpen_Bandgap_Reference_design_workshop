******PTAT Circuit*****
.lib "sky130_fd_pr/models/sky130.lib.spice tt"
.include "sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice"



.global vdd gnd
.temp 27

*****vcvs definition
e1 net2 gnd ra1 qp1  gain=1000

** mosfet definition
xmp1 q1 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt l=2 w=5 m=4
xmp2 q2 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt l=2 w=5 m=4

**resistor definition
xra1 ra1 n1 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xra2 n1 n2 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xra3 n2 qp2 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xra4 n2 qp2 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8

*****bjt definition

xqp1 gnd gnd qp1 gnd sky130_fd_pr__pnp_05v5_W3p40L3p40 m=1
xqp2 gnd gnd qp2 gnd sky130_fd_pr__pnp_05v5_W3p40L3p40 m=8


*****voltage sources for current measurement
vid1 q1 qp1 dc 0
vid2 q2 ra1 dc 0

*****supply voltage
vsup vdd gnd dc 2
.dc temp -40 125 1

**** control statements
.control
run
plot v(qp1) v(ra1) v(qp2) v(net2)
plot vid1#branch vid2#branch

.endc
.end
