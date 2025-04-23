;****************************************************************************************************************************
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
;  Name: cvtt2n.asm
;  Language: x86 with Intel syntax.
;  Max page width: 130 columns
;  Assemble: nasm -f elf64 -l cvtt2n.lis -o cvtt2n.o cvtt2n.asm
;
;================================================================================================================================


;Declarations
global    cvtt2n



segment    .data
;Declare arrays initialized




segment    .bss
;Declare arrays with no data initially




segment    .text
cvtt2n:
  ;Back-up GPRs
  push    rbp
  mov    rbp, rsp
  push    rbx
  push    rcx
  push    rdx
  push    rsi
  push    rdi
  push    r8
  push    r9
  push    r10
  push    r11
  push    r12
  push    r13
  push    r14
  push    r15
  pushf

  ;Restore GPRs
  popf
  pop    r15
  pop    r14
  pop    r13
  pop    r12
  pop    r11
  pop    r10
  pop    r9
  pop    r8
  pop    rsi
  pop    rdi
  pop    rdx
  pop    rcx
  pop    rbx
  pop    rbp