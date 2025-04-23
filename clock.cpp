/*;****************************************************************************************************************************
;Program Name: "Execution Speed".                                                                                           *
;This program will utilize the x86-64 microprocessor clock to measure the average time required to perform one              *
;floating point addition.                                                                                                   *
;Copyright (C) 2025 Kayla Ngo                                                                                               *
;                                                                                                                           *
;This file is part of the software program "Execution Speed".                                                               *
;"Execution Speed" is free software: you can redistribute it and/or modify it under the terms of the GNU General Public     *
;License version 3 as published by the Free Software Foundation.                                                            *
;"Execution Speed" is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even                *
;the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more  *
;details.  A copy of the GNU General Public License v3 is available here:  <https://www.gnu.org/licenses/>.                 *
;****************************************************************************************************************************

;================================================================================================================================
;
;Author Information
;  Name: Kayla Ngo
;  Email: kngo29@csu.fullerton.edu
;  CWID: 885083436
;  Course: CPSC 240-09
;
;Program Information
;  Name: Execution Speed
;  Programming Languages:: x86-64
;  Effective Date: April 23, 2025
;  Latest Update: April 23, 2025
;  Date open source license added: April 23, 2025
;  Files: manager.asm, read_clock.asm, cvtt2n.asm, clock.cpp, r.sh
;  Status:
;  References Consulted: Ed Jorgensen, "x86-64 Assembly Language Programming with Ubuntu"
;  Future Upgrades:
;
;Purpose
;  This program will utilize the x86-64 microprocessor clock to measure the average time required to perform one
;  floating point addition. The unit of time for the clock of the CPU is "tic", and the speed of the processor
;  is measured by the number of tics produced per second.
;
;Development Information
;  OS: Ubuntu 24.04.2 LTS
;  Text Editor: Visual Studio Code
;  Tools: NASM
;
;Current File Information
;  Name: clock.cpp
;  Language: x86 with Intel syntax.
;  Max page width: 130 columns
;  Compile: g++ -c -m64 -Wall -o clock.o clock.cpp -fno-pie -no-pie -std=c++17
;
;==============================================================================================================================*/


#include <stdio.h>
#include <iostream>

extern "C" double manager();

int main() {
  printf("Welcome to Time Measure programmed by Kayla Ngo.\n");

  double mgr = manager();

  //printf("\nThe main function received %.1lf and will keep it.", mgr);
  printf("\n");
  printf("Have a nice summer in 2025.\n");

  return 0;
}