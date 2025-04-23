#/bin/bash

#Program: "Execution Speed"
#Kayla Ngo
#kngo29@csu.fullerton.edu
#CWID# 886374479
#CPSC 240-09
#This file is the script file for the program.

#Delete some unnecessary files
rm *.o
rm *.out

echo "Assemble the source file manager.asm"
nasm -f elf64 -l manager.lis -o manager.o manager.asm

echo "Assemble the source file read_clock.asm"
nasm -f elf64 -l read_clock.lis -o read_clock.o read_clock.asm

echo "Assemble the source file cvtt2n.asm"
nasm -f elf64 -l cvtt2n.lis -o cvtt2n.o cvtt2n.asm

echo "Compile the source file clock.cpp"
g++ -c -m64 -Wall -o clock.o clock.cpp -fno-pie -no-pie -std=c++17

echo "Link the object modules to create an executable file"
g++ -m64 -o main.out clock.o manager.o read_clock.o cvtt2n.o -lm -fno-pie -no-pie -std=c++17 -z noexecstack

echo "Execute the program"
chmod +x main.out
./main.out