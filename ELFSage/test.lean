import ELFSage.Macros.Enum

-- maximum recursion depth has been reached (use `set_option maxRecDepth <num>` to increase limit)

/- ELF Machine Architectures -/
enum ELFHeader.e_machine.values (n : Nat)
  /-- RISC-V -/
  | em_riscv => 243
  /-- AMD GPU architecture -/
  | em_amdgpu => 224
  /-- Moxie processor family -/
  | em_moxie => 223
  /-- FTDI Chip FT32 high performance 32-bit RISC architecture -/
  | em_ft32 => 222
  /-- Controls and Data Services VISIUMcore processor -/
  | em_visium => 221
  /-- Zilog Z80 -/
  | em_z80 => 220
  /-- CSR Kalimba architecture family -/
  | em_kalimba => 219
  /-- Nanoradio optimised RISC -/
  | em_norc => 218
  /-- iCelero CoolEngine -/
  | em_cool => 217
  /-- Cognitive Smart Memory Processor -/
  | em_coge => 216
  /-- Paneve CDP architecture family -/
  | em_cdp => 215
  /-- KM211 KVARC processor -/
  | em_kvarc => 214
  /-- KM211 KMX8 8-bit processor -/
  | em_kmx8 => 213
  /-- KM211 KMX16 16-bit processor -/
  | em_kmx16 => 212
  /-- KM211 KMX32 32-bit processor -/
  | em_kmx32 => 211
  /-- KM211 KM32 32-bit processor -/
  | em_km32 => 210
  /-- Microchip 8-bit PIC(r) family -/
  | em_mchp_pic => 204
  /-- XMOS xCORE processor family -/
  | em_xcore => 203
  /-- Beyond BA2 CPU architecture -/
  | em_ba2 => 202
  /-- Beyond BA1 CPU architecture *-/
  | em_ba1 => 201
  /-- Freescale 56800EX Digital Signal Controller (DSC) -/
  | em_5600ex => 200
  /-- 199 Renesas 78KOR family -/
  | em_78kor => 199
  /-- Broadcom VideoCore V processor -/
  | em_videocore5 => 198
  /-- Renesas RL78 family -/
  | em_rl78 => 197
  /-- Open8 8-bit RISC soft processing core -/
  | em_open8 => 196
  /-- Synopsys ARCompact V2 -/
  | em_arc_compact2 => 195
  /-- KIPO_KAIST Core-A 2nd generation processor family -/
  | em_corea_2nd => 194
  /-- KIPO_KAIST Core-A 1st generation processor family -/
  | em_corea_1st => 193
  /-- CloudShield architecture family -/
  | em_cloudshield => 192
  /-- Infineon Technologies SLE9X core -/
  | em_sle9x => 179
  /-- Intel L10M -/
  | em_l10m => 180
  /-- Intel K10M -/
  | em_k10m => 181
  /-- ARM 64-bit architecture (AARCH64) -/
  | em_aarch64 => 183
  /-- Atmel Corporation 32-bit microprocessor family -/
  | em_avr32 => 185
  /-- STMicroelectronics STM8 8-bit microcontroller -/
  | em_stm8 => 186
  /-- Tilera TILE64 multicore architecture family -/
  | em_tile64 => 187
  /-- Tilera TILEPro multicore architecture family -/
  | em_tilepro => 188
  /-- Xilinix MicroBlaze 32-bit RISC soft processor core -/
  | em_microblaze => 189
  /-- NVIDIA CUDA architecture -/
  | em_cuda => 190
  /-- Tilera TILE-Gx multicore architecture family -/
  | em_tilegx => 191
  /-- Cypress M8C microprocessor -/
  | em_cypress => 161
  /-- Renesas R32C series microprocessors -/
  | em_r32c => 162
  /-- NXP Semiconductors TriMedia architecture family -/
  | em_trimedia => 163
  /-- QUALCOMM DSP6 processor -/
  | em_qdsp6 => 164
  /-- Intel 8051 and variants -/
  | em_8051 => 165
  /-- STMicroelectronics STxP7x family of configurable and extensible RISC processors -/
  | em_stxp7x => 166
  /-- Andes Technology compact code size embedded RISC processor family -/
  | em_nds32 => 167
  /-- Cyan Technology eCOG1X family -/
  | em_ecog1x => 168
  /-- Dallas Semiconductor MAXQ30 Core Micro-controllers -/
  | em_maxq30 => 169
  /-- New Japan Radio (NJR) 16-bit DSP Processor -/
  | em_ximo16 => 170
  /-- M2000 Reconfigurable RISC Microprocessor -/
  | em_manik => 171
  /-- Cray Inc. NV2 vector architecture -/
  | em_craynv2 => 172
  /-- Renesas RX family -/
  | em_rx => 173
  /-- Imagination Technologies META processor architecture -/
  | em_metag => 174
  /-- MCST Elbrus general purpose hardware architecture -/
  | em_mcst_elbrus => 175
  /-- Cyan Technology eCOG16 family -/
  | em_ecog16 => 176
  /-- National Semiconductor CompactRISC CR16 16-bit microprocessor -/
  | em_cr16 => 177
  /-- Freescale Extended Time Processing Unit -/
  | em_etpu => 178
  /-- Altium TSK3000 core -/
  | em_tsk3000 => 131
  /-- Freescale RS08 embedded processor -/
  | em_rs08 => 132
  /-- Analog Devices SHARC family of 32-bit DSP processors -/
  | em_sharc => 133
  /-- Cyan Technology eCOG2 microprocessor -/
  | em_ecog2 => 134
  /-- Sunplus S+core7 RISC processor -/
  | em_ccore7 => 135
  /-- New Japan Radio (NJR) 24-bit DSP Processor -/
  | em_dsp24 => 136
  /-- Broadcom VideoCore III processor -/
  | em_videocore3 => 137
  /-- RISC processor for Lattice FPGA architecture -/
  | em_latticemico32 => 138
  /-- Seiko Epson C17 family -/
  | em_c17 => 139
  /-- The Texas Instruments TMS320C6000 DSP family -/
  | em_c6000 => 140
  /-- The Texas Instruments TMS320C2000 DSP family -/
  | em_c2000 => 141
  /-- The Texas Instruments TMS320C55x DSP family -/
  | em_c5500 => 142
  /-- STMicroelectronics 64bit VLIW Data Signal Processor -/
  | em_mmdsp_plus => 160
  /-- LSI Logic 16-bit DSP Processor -/
  | em_zsp => 79
  /-- Donald Knuth's educational 64-bit processor -/
  | em_mmix => 80
  /-- Harvard University machine-independent object files -/
  | em_huany => 81
  /-- SiTera Prism -/
  | em_prism => 82
  /-- Atmel AVR 8-bit microcontroller -/
  | em_avr => 83
  /-- Fujitsu FR30 -/
  | em_fr30 => 84
  /-- Mitsubishi D10V -/
  | em_d10v => 85
  /-- Mitsubishi D30V -/
  | em_d30v => 86
  /-- NEC v850 -/
  | em_v850 => 87
  /-- Mitsubishi M32R -/
  | em_m32r => 88
  /-- Matsushita MN10300 -/
  | em_mn10300 => 89
  /-- Matsushita MN10200 -/
  | em_mn10200 => 90
  /-- picoJava -/
  | em_pj => 91
  /-- OpenRISC 32-bit embedded processor -/
  | em_openrisc => 92
  /-- ARC International ARCompact processor (old spelling/synonym: ELF_MA_ARC_A5) -/
  | em_arc_compact => 93
  /-- Tensilica Xtensa Architecture -/
  | em_xtensa => 94
  /-- Alphamosaic VideoCore processor -/
  | em_videocore => 95
  /-- Thompson Multimedia General Purpose Processor -/
  | em_tmm_gpp => 96
  /-- National Semiconductor 32000 series -/
  | em_ns32k => 97
  /-- Tenor Network TPC processor -/
  | em_tpc => 98
  /-- Trebia SNP 1000 processor -/
  | em_snp1k => 99
  /-- STMicroelectronics ST200 microcontroller -/
  | em_st200 => 100
  /-- Ubicom IP2xxx microcontroller family -/
  | em_ip2k => 101
  /-- MAX Processor -/
  | em_max => 102
  /-- National Semiconductor CompactRISC microprocessor -/
  | em_cr => 103
  /-- Fujitsu F2MC16 -/
  | em_f2mc16 => 104
  /-- Texas Instruments embedded microcontroller msp430 -/
  | em_msp430 => 105
  /-- Analog Devices Blackfin (DSP) processor -/
  | em_blackfin => 106
  /-- S1C33 Family of Seiko Epson processors -/
  | em_se_c33 => 107
  /-- Sharp embedded microprocessor -/
  | em_sep => 108
  /-- Arca RISC Microprocessor -/
  | em_arca => 109
  /-- Microprocessor series from PKU-Unity Ltd. and MPRC of Peking University -/
  | em_unicore => 110
  /-- eXcess: 16/32/64-bit configurable embedded CPU -/
  | em_excess => 111
  /-- Icera Semiconductor Inc. Deep Execution Processor -/
  | em_dxp => 112
  /-- Altera Nios II soft-core processor -/
  | em_altera_nios2 => 113
  /-- National Semiconductor CompactRISC CRX microprocessor -/
  | em_crx => 114
  /-- Motorola XGATE embedded processor -/
  | em_xgate => 115
  /-- Infineon C16x/XC16x processor -/
  | em_c166 => 116
  /-- Renesas M16C series microprocessors -/
  | em_m16c => 117
  /-- Microchip Technology dsPIC30F Digital Signal Controller -/
  | em_dspic30f => 118
  /-- Freescale Communication Engine RISC core -/
  | em_ce => 119
  /-- Renesas M32C series microprocessors -/
  | em_m32c => 120
  /-- No machine -/
  | em_none => 0
  /-- AT&T WE 32100 -/
  | em_m32 => 1
  /-- SPARC -/
  | em_sparc => 2
  /-- Intel 80386 -/
  | em_386 => 3
  /-- Motorola 68000 -/
  | em_68k => 4
  /-- Motorola 88000 -/
  | em_88k => 5
  /-- Intel 80860 -/
  | em_860 => 7
  /-- MIPS I Architecture -/
  | em_mips => 8
  /-
  /-- IBM System/370 Processor -/
  | em_s370 => 9
  /-- MIPS RS3000 Little-endian -/
  | em_mips_rs3_le => 10
  /-- Hewlett-Packard PA-RISC -/
  | em_parisc => 15
  /-- Fujitsu VPP500 -/
  | em_vpp500 => 17
  /-- Enhanced instruction set SPARC -/
  | em_sparc32plus => 18
  /-- Intel 80960 -/
  | em_960 => 19
  /-- PowerPC -/
  | em_ppc => 20
  /-- 64-bit PowerPC -/
  | em_ppc64 => 21
  /-- IBM System/390 Processor -/
  | em_s390 => 22
  /-- IBM SPU/SPC -/
  | em_spu => 23
  /-- NEC V800 -/
  | em_v800 => 36
  /-- Fujitsu FR20 -/
  | em_fr20 => 37
  /-- TRW RH-32 -/
  | em_rh32 => 38
  /-- Motorola RCE -/
  | em_rce => 39
  /-- ARM 32-bit architecture (AARCH32) -/
  | em_arm => 40
  /-- Digital Alpha -/
  | em_alpha => 41
  /-- Hitachi SH -/
  | em_sh => 42
  /-- SPARC Version 9 -/
  | em_sparcv9 => 43
  /-- Siemens TriCore embedded processor -/
  | em_tricore => 44
  /-- Argonaut RISC Core, Argonaut Technologies Inc. -/
  | em_arc => 45
  /-- Hitachi H8/300 -/
  | em_h8_300 => 46
  /-- Hitachi H8/300H -/
  | em_h8_300h => 47
  /-- Hitachi H8S -/
  | em_h8s => 48
  /-- Hitachi H8/500 -/
  | em_h8_500 => 49
  /-- Intel IA-64 processor architecture -/
  | em_ia_64 => 50
  /-- Stanford MIPS-X -/
  | em_mips_x => 51
  /-- Motorola ColdFire -/
  | em_coldfire => 52
  /-- Motorola M68HC12 -/
  | em_68hc12 => 53
  /-- Fujitsu MMA Multimedia Accelerator -/
  | em_mma => 54
  /-- Siemens PCP -/
  | em_pcp => 55
  /-- Sony nCPU embedded RISC processor -/
  | em_ncpu => 56
  /-- Denso NDR1 microprocessor -/
  | em_ndr1 => 57
  /-- Motorola Star*Core processor -/
  | em_starcore => 58
  /-- Toyota ME16 processor -/
  | em_me16 => 59
  /-- STMicroelectronics ST100 processor -/
  | em_st100 => 60
  /-- Advanced Logic Corp. TinyJ embedded processor family -/
  | em_tinyj => 61
  /-- AMD x86-64 architecture -/
  | em_x86_64 => 62
  /-- Sony DSP Processor -/
  | em_pdsp => 63
  /-- Digital Equipment Corp. PDP-10 -/
  | em_pdp10 => 64
  /-- Digital Equipment Corp. PDP-11 -/
  | em_pdp11 => 65
  /-- Siemens FX66 microcontroller -/
  | em_fx66 => 66
  /-- STMicroelectronics ST9+ 8/16 bit microcontroller -/
  | em_st9plus => 67
  /-- STMicroelectronics ST7 8-bit microcontroller -/
  | em_st7 => 68
  /-- Motorola MC68HC16 Microcontroller -/
  | em_68hc16 => 69
  /-- Motorola MC68HC11 Microcontroller -/
  | em_68hc11 => 70
  /-- Motorola MC68HC08 Microcontroller -/
  | em_68hc08 => 71
  /-- Motorola MC68HC05 Microcontroller -/
  | em_68hc05 => 72
  /-- Silicon Graphics SVx -/
  | em_svx => 73
  /-- STMicroelectronics ST19 8-bit microcontroller -/
  | em_st19 => 74
  /-- Digital VAX -/
  | em_vax => 75
  /-- Axis Communications 32-bit embedded processor -/
  | em_cris => 76
  /-- Infineon Technologies 32-bit embedded processor -/
  | em_javelin => 77
  /-- Element 14 64-bit DSP Processor -/
  | em_firepath => 78
  /-- Reserved by Intel -/
  | em_intel209 => 209
  /-- Reserved by Intel -/
  | em_intel208 => 208
  /-- Reserved by Intel -/
  | em_intel207 => 207
  /-- Reserved by Intel -/
  | em_intel206 => 206
  /-- Reserved by Intel -/
  | em_intel205 => 205
  /-- Reserved by Intel -/
  | em_intel182 => 182
  /-- Reserved by ARM -/
  | em_arm184 => 184
  /-- Reserved for future use -/
  | em_reserved6 => 6
  /-- Reserved for future use -/
  | em_reserved11 => 11
  /-- Reserved for future use -/
  | em_reserved12 => 12
  /-- Reserved for future use -/
  | em_reserved13 => 13
  /-- Reserved for future use -/
  | em_reserved14 => 14
  /-- Reserved for future use -/
  | em_reserved16 => 16
  /-- Reserved for future use -/
  | em_reserved24 => 24
  /-- Reserved for future use -/
  | em_reserved25 => 25
  /-- Reserved for future use -/
  | em_reserved26 => 26
  /-- Reserved for future use -/
  | em_reserved27 => 27
  /-- Reserved for future use -/
  | em_reserved28 => 28
  /-- Reserved for future use -/
  | em_reserved29 => 29
  /-- Reserved for future use -/
  | em_reserved30 => 30
  /-- Reserved for future use -/
  | em_reserved31 => 31
  /-- Reserved for future use -/
  | em_reserved32 => 32
  /-- Reserved for future use -/
  | em_reserved33 => 33
  /-- Reserved for future use -/
  | em_reserved34 => 34
  /-- Reserved for future use -/
  | em_reserved35 => 35
  /-- Reserved for future use -/
  | em_reserved121 => 121
  /-- Reserved for future use -/
  | em_reserved122 => 122
  /-- Reserved for future use -/
  | em_reserved123 => 123
  /-- Reserved for future use -/
  | em_reserved124 => 124
  /-- Reserved for future use -/
  | em_reserved125 => 125
  /-- Reserved for future use -/
  | em_reserved126 => 126
  /-- Reserved for future use -/
  | em_reserved127 => 127
  /-- Reserved for future use -/
  | em_reserved128 => 128
  /-- Reserved for future use -/
  | em_reserved129 => 129
  /-- Reserved for future use -/
  | em_reserved130 => 130
  /-- Reserved for future use -/
  | em_reserved143 => 143
  /-- Reserved for future use -/
  | em_reserved144 => 144
  /-- Reserved for future use -/
  | em_reserved145 => 145
  /-- Reserved for future use -/
  | em_reserved146 => 146
  /-- Reserved for future use -/
  | em_reserved147 => 147
  /-- Reserved for future use -/
  | em_reserved148 => 148
  /-- Reserved for future use -/
  | em_reserved149 => 149
  /-- Reserved for future use -/
  | em_reserved150 => 150
  /-- Reserved for future use -/
  | em_reserved151 => 151
  /-- Reserved for future use -/
  | em_reserved152 => 152
  /-- Reserved for future use -/
  | em_reserved153 => 153
  /-- Reserved for future use -/
  | em_reserved154 => 154
  /-- Reserved for future use -/
  | em_reserved155 => 155
  /-- Reserved for future use -/
  | em_reserved156 => 156
  /-- Reserved for future use -/
  | em_reserved157 => 157
  /-- Reserved for future use -/
  | em_reserved158 => 158
  /-- Reserved for future use -/
  | em_reserved159 => 159
  /-- Unknown machine type -/
  | em_other => n
  -/
#check 1

#print ELFHeader.e_machine.values


inductive E
  | one
  | small (n : Nat) (h: (2 ≤ n ∧ n < 4) ∧ ¬(n = 1))
  | four
  | other (n : Nat) (h: ¬(n = 1) ∧ ¬(2 ≤ n ∧ n < 4) ∧ ¬ (n = 4))
  deriving BEq, Inhabited

instance : Repr E where
  reprPrec := fun e _ => match e with
    | .one => "one"
    | .small n _ => s!"small {n}"
    | .four => "four"
    | .other n _ => s!"other {n}"

def E.val : E → Nat
  | E.one => 1
  | E.small n _ => n
  | E.four => 4
  | E.other n _ => n

def E.ofVal : Nat → E := fun n =>
  if _ : n = 1 then .one else
  if _ : 2 ≤ n ∧ n < 4 then .small n (by omega) else
  if _ : n = 4 then .four else
  if _ : true then .other n (by omega) else
  unreachable!

theorem E.ofVal_val (e : E) : E.ofVal (E.val e) = e := by
  cases e <;> try rfl
  all_goals rename _ => h; simp only [E.val, E.ofVal, h, ↓reduceDite, and_self]

theorem E.val_ofVal (n : Nat) : E.val (E.ofVal n) = n := by
  unfold E.ofVal
  repeat split; simp only [*, E.val]
  simp only [*, E.val]
  contradiction
