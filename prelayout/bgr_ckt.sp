******BGR Circuit by Madhuri Kadam*****
.lib "sky130_fd_pr/models/sky130.lib.spice tt"
.include "sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice"

.global vdd gnd
.temp 27

*****vcvs definition
e1 net2 gnd ra1 qp1  gain=1000
xmp1 q1 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt l=2 w=5 m=4
xmp2 q2 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt l=2 w=5 m=4
xmp3 q3 net2 vdd vdd sky130_fd_pr__pfet_01v8_lvt l=2 w=5 m=4


*****resistor definition
xra1 ra1 n1 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xra2 n1 n2 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xra3 n2 qp2 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xra4 n2 qp2 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8

xrb1 vref nb1 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb2 nb1 nb2 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb3 nb2 nb3 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb4 nb3 nb4 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb5 nb4 nb5 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb6 nb5 nb6 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb7 nb6 nb7 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb8 nb7 nb8 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb9 nb8 nb9 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb10 nb9 nb10 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb11 nb10 nb11 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb12 nb11 nb12 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb13 nb12 nb13 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb14 nb13 nb14 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb15 nb14 nb15 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb16 nb15 nb16 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb17 nb16 nb17 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb18 nb17 nb18 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb19 nb18 nb19 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb20 nb19 nb20 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb21 nb20 nb21 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb22 nb21 nb22 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb23 nb22 qp3 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8
xrb24 nb22 qp3 vdd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.8

*****bjt definition

xqp1 gnd gnd qp1 gnd sky130_fd_pr__pnp_05v5_W3p40L3p40 m=1
xqp2 gnd gnd qp2 gnd sky130_fd_pr__pnp_05v5_W3p40L3p40 m=8
xqp3 gnd gnd qp3 vdd sky130_fd_pr__pnp_05v5_W3p40L3p40 m=1

*****voltage sources for current measurement
vid1 q1 qp1 dc 0
vid2 q2 ra1 dc 0
vid3 q3 vref dc 0


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
