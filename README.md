This is an implementation of a simple RISC-V processor without any speculative elements. On this processor you can run some C-Programs without dynamic memory allocation. To do this
you need the RISC-V toolchain from https://github.com/riscv-collab/riscv-gnu-toolchain.

Until now the following things have been implemented:

1. RISC-V Integer 32 bit and 16 bit instructions (keep this in regard when you compile C programs)
2. Using the 16 bit S-Ram on the Cyclone 5 Board to save data (Harvard architecture). This will take more than 2 cycles to load and save data due to the 32 bit data have to spit in 2 pieces.
3. Using the Hex Display on the Cyclone 5 developer board. To use this a new instruction was introduced. (Using the cssrw intruction for Control and Status Register Instructions from )

Further ideas:

1. Implement floating point instructions, multiplication and division
2. Implement 64 bit and 128 bit instructions
3. Make it multicore
4. Simulate a real processor and load instructions from sdcard (cyclone 5 have a sdcard slot) file to sram
   
