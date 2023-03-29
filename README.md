
# LED-rotator

![Basys3-Xilinx-1000x755](https://user-images.githubusercontent.com/129145316/228516981-75a3aeb6-c575-41c4-ab3c-cec2ac6c0ca9.jpg)

using Shift-left and Shift-right register
To create a LED-Rotation using verilog
## step 1. 
```bash
created a module(LFSR.v) that can rotate data in bothe left and right direction based on control input.
```
## Step2. 
```bash
Out of 18-bit of this module. I used only middle 16-bit and discarded MSB and LSB.
```
## step3.
```bash
Slow down the clock frequency using qsec_clks.v , because this BASYS3 borad having very high frequency.   
and at that speed , a human eye can not capture the rotation.
```
## Step4.
```bash
Create a top block and use appropriate pin ogf the BASYS3 borad. and instantiate all nessasry module.
```
## step 5.
```bash
create a testbench module (LFSR_tb.v) to check the  validate all signal using simulation.
```
## step 6. 
```bash 
create a constrain file Basys3_![Uploading Basys3-Xilinx-1000x755.jpg…]()
Master.xdc (we carefull with pin number).
```
  # Generate bit stream and enjoy!
https://user-images.githubusercontent.com/129145316/228508671-679bc94f-0eec-4871-87b2-15bdb5e423a8.mp4    




