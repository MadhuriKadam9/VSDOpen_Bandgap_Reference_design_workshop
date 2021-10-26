:lib:`sky130_fd_pr` - SKY130 Primitive Models and Cells

=======================================================



This is the folder containing the sky130nm library files

which you will be using for eSim Circuit Design and

Simulation Marathon in June 2021.



Q:
How to use this for simulating a circuit in eSim?

A:
Firstly, you will need to place this folder( sky130_fd_pr )
inside the directory(folder) where your cir.out and .sub files
are present.


for eg: The eSim project 2bitDAC's(name will be different for you),
cir.out and .sub files are at following location:

For Linux:
	/home/eSim-Workspace/2bitDAC/ 

For Windows:
	C:/Users/admin/eSim-Workspace/2bitDAC/



Then you need to copy and paste the entire sky130_fd_pr folder inside this said project,

make changes to your cir.out and .sub files as shown in the Udemy course videos

and simulate the circuit in eSim.

Q: How do I know which libraries to add in my subcircuit and cir.out for diodes,mosfets etc.?
A: In sky130_fd_pr/cells/ folder you will see a lot of subfolders which hold the libraries for diodes, capacitors etc.
You will need to specify these paths in your .sub and/or .cir.out files, depending where it is to be used.