import ELFSage.Types.Sizes
import ELFSage.Util.ByteArray

class ProgramHeaderTableEntry (α : Type) where
  /-- Type of the segment -/
  p_type   : α → Nat
  /-- Segment flags -/
  p_flags  : α → Nat
  /-- Offset from beginning of file for segment -/
  p_offset : α → Nat
  /-- Virtual address for segment in memory -/
  p_vaddr  : α → Nat
  /-- Physical address for segment -/
  p_paddr  : α → Nat
  /-- Size of segment in file, in bytes -/
  p_filesz : α → Nat
  /-- Size of segment in memory image, in bytes -/
  p_memsz  : α → Nat
  /-- Segment alignment memory for memory and file -/
  p_align  : α → Nat

structure ELF64ProgramHeaderTableEntry where
  /-- Type of the segment -/
  p_type   : elf64_word
  /-- Segment flags -/
  p_flags  : elf64_word
  /-- Offset from beginning of file for segment -/
  p_offset : elf64_off
  /-- Virtual address for segment in memory -/
  p_vaddr  : elf64_addr
  /-- Physical address for segment -/
  p_paddr  : elf64_addr
  /-- Size of segment in file, in bytes -/
  p_filesz : elf64_xword
  /-- Size of segment in memory image, in bytes -/
  p_memsz  : elf64_xword
  /-- Segment alignment memory for memory and file -/
  p_align  : elf64_xword
  deriving Repr

instance : ProgramHeaderTableEntry ELF64ProgramHeaderTableEntry where
  p_type ph   := ph.p_type.toNat
  p_flags ph  := ph.p_flags.toNat
  p_offset ph := ph.p_offset.toNat
  p_vaddr ph  := ph.p_vaddr.toNat
  p_paddr ph  := ph.p_paddr.toNat
  p_filesz ph := ph.p_filesz.toNat
  p_memsz ph  := ph.p_memsz.toNat
  p_align ph  := ph.p_align.toNat

def mkELF64ProgramHeaderTableEntry 
  (isBigEndian : Bool)
  (bs : ByteArray)
  (offset : Nat)
  (h : bs.size - offset ≥ 0x38) :
  ELF64ProgramHeaderTableEntry := {
    p_type   := getUInt32from (offset + 0x00) (by omega), 
    p_flags  := getUInt32from (offset + 0x04) (by omega),
    p_offset := getUInt64from (offset + 0x08) (by omega),
    p_vaddr  := getUInt64from (offset + 0x10) (by omega),
    p_paddr  := getUInt64from (offset + 0x18) (by omega),
    p_filesz := getUInt64from (offset + 0x20) (by omega),
    p_memsz  := getUInt64from (offset + 0x28) (by omega),
    p_align  := getUInt64from (offset + 0x30) (by omega),
  } where
    getUInt16from := if isBigEndian then bs.getUInt16BEfrom else bs.getUInt16LEfrom
    getUInt32from := if isBigEndian then bs.getUInt32BEfrom else bs.getUInt32LEfrom
    getUInt64from := if isBigEndian then bs.getUInt64BEfrom else bs.getUInt64LEfrom

def mkELF64ProgramHeaderTableEntry?
  (isBigEndian : Bool)
  (bs : ByteArray)
  (offset : Nat) 
  : Except String ELF64ProgramHeaderTableEntry :=
  if h : bs.size - offset ≥ 0x38
  then .ok $ mkELF64ProgramHeaderTableEntry isBigEndian bs offset h
  else .error $ "Program header table entry offset {offset} doesn't leave enough space for the entry, " ++
                "which requires 0x20 bytes."

structure ELF32ProgramHeaderTableEntry where
  /-- Type of the segment -/
  p_type   : elf32_word
  /-- Offset from beginning of file for segment -/
  p_offset : elf32_off
  /-- Virtual address for segment in memory -/
  p_vaddr  : elf32_addr
  /-- Physical address for segment -/
  p_paddr  : elf32_addr
  /-- Size of segment in file, in bytes -/
  p_filesz : elf64_word
  /-- Size of segment in memory image, in bytes -/
  p_memsz  : elf64_word
  /-- Segment flags -/
  p_flags  : elf32_word
  /-- Segment alignment memory for memory and file -/
  p_align  : elf64_word
  deriving Repr

instance : ProgramHeaderTableEntry ELF64ProgramHeaderTableEntry where
  p_type ph   := ph.p_type.toNat
  p_flags ph  := ph.p_flags.toNat
  p_offset ph := ph.p_offset.toNat
  p_vaddr ph  := ph.p_vaddr.toNat
  p_paddr ph  := ph.p_paddr.toNat
  p_filesz ph := ph.p_filesz.toNat
  p_memsz ph  := ph.p_memsz.toNat
  p_align ph  := ph.p_align.toNat

def mkELF32ProgramHeaderTableEntry 
  (isBigEndian : Bool)
  (bs : ByteArray)
  (offset : Nat)
  (h : bs.size - offset ≥ 0x20) :
  ELF32ProgramHeaderTableEntry := {
    p_type   := getUInt32from (offset + 0x00) (by omega), 
    p_offset := getUInt32from (offset + 0x04) (by omega),
    p_vaddr  := getUInt32from (offset + 0x08) (by omega),
    p_paddr  := getUInt32from (offset + 0x0C) (by omega),
    p_filesz := getUInt32from (offset + 0x10) (by omega),
    p_memsz  := getUInt32from (offset + 0x14) (by omega),
    p_flags  := getUInt32from (offset + 0x18) (by omega),
    p_align  := getUInt32from (offset + 0x1C) (by omega),
  } where
    getUInt16from := if isBigEndian then bs.getUInt16BEfrom else bs.getUInt16LEfrom
    getUInt32from := if isBigEndian then bs.getUInt32BEfrom else bs.getUInt32LEfrom

def mkELF32ProgramHeaderTableEntry?
  (isBigEndian : Bool)
  (bs : ByteArray)
  (offset : Nat) 
  : Except String ELF32ProgramHeaderTableEntry :=
  if h : bs.size - offset ≥ 0x20 
  then .ok $ mkELF32ProgramHeaderTableEntry isBigEndian bs offset h
  else .error $ "Program header table entry offset {offset} doesn't leave enough space for the entry, " ++
                "which requires 0x20 bytes."

inductive RawProgramHeaderTableEntry where
  | elf32 : ELF32ProgramHeaderTableEntry → RawProgramHeaderTableEntry
  | elf64 : ELF64ProgramHeaderTableEntry → RawProgramHeaderTableEntry
  deriving Repr

instance : ProgramHeaderTableEntry RawProgramHeaderTableEntry where
  p_type ph   := match ph with | .elf32 ph => ph.p_type.toNat   | .elf64 ph => ph.p_type.toNat   
  p_flags ph  := match ph with | .elf32 ph => ph.p_flags.toNat  | .elf64 ph => ph.p_flags.toNat  
  p_offset ph := match ph with | .elf32 ph => ph.p_offset.toNat | .elf64 ph => ph.p_offset.toNat 
  p_vaddr ph  := match ph with | .elf32 ph => ph.p_vaddr.toNat  | .elf64 ph => ph.p_vaddr.toNat  
  p_paddr ph  := match ph with | .elf32 ph => ph.p_paddr.toNat  | .elf64 ph => ph.p_paddr.toNat  
  p_filesz ph := match ph with | .elf32 ph => ph.p_filesz.toNat | .elf64 ph => ph.p_filesz.toNat 
  p_memsz ph  := match ph with | .elf32 ph => ph.p_memsz.toNat  | .elf64 ph => ph.p_memsz.toNat  
  p_align ph  := match ph with | .elf32 ph => ph.p_align.toNat  | .elf64 ph => ph.p_align.toNat  

def mkRawProgramHeaderTableEntry?
  (bs : ByteArray)
  (is64Bit : Bool)
  (isBigendian : Bool)
  (offset : Nat)
  : Except String RawProgramHeaderTableEntry := 
  match is64Bit with
  | true  => .elf64 <$> mkELF64ProgramHeaderTableEntry? isBigendian bs offset
  | false => .elf32 <$> mkELF32ProgramHeaderTableEntry? isBigendian bs offset
