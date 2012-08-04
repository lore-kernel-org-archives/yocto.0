Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 408B9E00718
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 08:13:00 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3571572pbb.35
	for <yocto@yoctoproject.org>; Sat, 04 Aug 2012 08:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=C7XlHAPciplXYUjNuvhzFpxcDA7VnM7U66OjtKptqAQ=;
	b=Od8ELm472FTLRJAPvg+gulHF0hiUUtzH26BAzojdJxLTwsGqN91hQyzQ3IS5zpCpr6
	GgE8JabHUYiKt+qUYcYwRBuv+FI8qqP/xWYlXPmB8d9+NBI1ZNKydLT4WdEkAF8YxSZT
	cYm2xiLzVdUeFLddrIe8lyiwCSuD8yDuL1IsxPrZMkIZhDoP86lUz+mGe+pt+Fi7Us6t
	sjwwP9A574SpF4rcLZbjkqOmdzzjqivlzyb7fGYTsEUYbWPiH+EwMnGhqXfJGYrtITeX
	9eprgFvUsoUwJ+8Jv80pbWfsjKR6WLWdRHPhXYr9CQpNhfDCF6yReGCJYDzmTSvfPv3Y
	BkcQ==
Received: by 10.68.218.7 with SMTP id pc7mr5594799pbc.88.1344093179943;
	Sat, 04 Aug 2012 08:12:59 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id vc5sm1719586pbc.2.2012.08.04.08.12.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 04 Aug 2012 08:12:59 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
Date: Sat, 4 Aug 2012 19:12:43 +0400
Message-Id: <299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
To: Khem Raj <raj.khem@gmail.com>,
 Tim Bird <tim.bird@am.sony.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Aug 2012 15:13:00 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A6795ABE-3746-4383-B1B0-C02DF7381833"

--Apple-Mail=_A6795ABE-3746-4383-B1B0-C02DF7381833
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 4, 2012, at 5:56 PM, Elvis Dowson wrote:

> On Aug 4, 2012, at 6:24 AM, Khem Raj wrote:
>=20
>> OK couple of things.  You could boot into static bash thats good, =
keep it that way and bundle some dynamically linked programs into the =
root file system
>> may be just a hello world which is dynamically linked. I would also =
compile a static version of gdb and strace but that could be next steps.
>>=20
>> then boot into this static shell and try to run the dynamically =
linked hello world. Does that work ?
>> if not we have a dynamic linking issue.=20
>>=20
>> Then you can go a step deeper and see whats going on. Many  a times =
interpreter is specified wrongly in the elf file.
>> and there could be dynamic linker issues too. But step at a time.
>=20
> I created a new 16GB ramdisk file, and put the core-image-minimal root =
filesystem into it. I then created a static version and a dynamic =
version of the helloworld program.
>=20
> I find that the static version of the helloworld loads okay, but the =
dynamic version of the helloworld program doesn't give any output.
>=20
> I guess this means we have a dynamic linking issue.=20
>=20

In the objdump I see two version references for glibc, is that normal?

Version References:
  required from libc.so.6:
    0x0d696910 0x00 03 GLIBC_2.0
    0x0d696914 0x00 02 GLIBC_2.4


Here is the full output of the readelf -a helloworlddynamic executable:

${CROSS_COMPILE}readelf -a helloworlddynamic
ELF Header:
  Magic:   7f 45 4c 46 01 02 01 00 00 00 00 00 00 00 00 00=20
  Class:                             ELF32
  Data:                              2's complement, big endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           PowerPC
  Version:                           0x1
  Entry point address:               0x1000032c
  Start of program headers:          52 (bytes into file)
  Start of section headers:          4216 (bytes into file)
  Flags:                             0x0
  Size of this header:               52 (bytes)
  Size of program headers:           32 (bytes)
  Number of program headers:         8
  Size of section headers:           40 (bytes)
  Number of section headers:         36
  Section header string table index: 33

Section Headers:
  [Nr] Name              Type            Addr     Off    Size   ES Flg =
Lk Inf Al
  [ 0]                   NULL            00000000 000000 000000 00      =
0   0  0
  [ 1] .interp           PROGBITS        10000134 000134 00000d 00   A  =
0   0  1
  [ 2] .note.ABI-tag     NOTE            10000144 000144 000020 00   A  =
0   0  4
  [ 3] .gnu.hash         GNU_HASH        10000164 000164 000020 04   A  =
4   0  4
  [ 4] .dynsym           DYNSYM          10000184 000184 000070 10   A  =
5   1  4
  [ 5] .dynstr           STRTAB          100001f4 0001f4 000064 00   A  =
0   0  1
  [ 6] .gnu.version      VERSYM          10000258 000258 00000e 02   A  =
4   0  2
  [ 7] .gnu.version_r    VERNEED         10000268 000268 000030 00   A  =
5   1  4
  [ 8] .rela.dyn         RELA            10000298 000298 00000c 0c   A  =
4   0  4
  [ 9] .rela.plt         RELA            100002a4 0002a4 00003c 0c   A  =
4  23  4
  [10] .init             PROGBITS        100002e0 0002e0 00004c 00  AX  =
0   0  4
  [11] .text             PROGBITS        1000032c 00032c 000348 00  AX  =
0   0  4
  [12] .fini             PROGBITS        10000674 000674 000030 00  AX  =
0   0  4
  [13] .rodata           PROGBITS        100006a4 0006a4 000039 00   A  =
0   0  4
  [14] .eh_frame_hdr     PROGBITS        100006e0 0006e0 000014 00   A  =
0   0  4
  [15] .eh_frame         PROGBITS        100006f4 0006f4 00002c 00   A  =
0   0  4
  [16] .ctors            PROGBITS        10010720 000720 000008 00  WA  =
0   0  4
  [17] .dtors            PROGBITS        10010728 000728 000008 00  WA  =
0   0  4
  [18] .jcr              PROGBITS        10010730 000730 000004 00  WA  =
0   0  4
  [19] .got2             PROGBITS        10010734 000734 000008 00  WA  =
0   0  1
  [20] .dynamic          DYNAMIC         1001073c 00073c 0000c8 08  WA  =
5   0  4
  [21] .data             PROGBITS        10010804 000804 000008 00  WA  =
0   0  4
  [22] .got              PROGBITS        1001080c 00080c 000014 04 WAX  =
0   0  4
  [23] .plt              NOBITS          10010820 000820 000084 00 WAX  =
0   0  4
  [24] .bss              NOBITS          100108a4 000820 000008 00  WA  =
0   0  4
  [25] .comment          PROGBITS        00000000 000820 000027 01  MS  =
0   0  1
  [26] .debug_aranges    PROGBITS        00000000 000847 000038 00      =
0   0  1
  [27] .debug_info       PROGBITS        00000000 00087f 0001d6 00      =
0   0  1
  [28] .debug_abbrev     PROGBITS        00000000 000a55 00014d 00      =
0   0  1
  [29] .debug_line       PROGBITS        00000000 000ba2 000113 00      =
0   0  1
  [30] .debug_frame      PROGBITS        00000000 000cb8 00005c 00      =
0   0  4
  [31] .debug_str        PROGBITS        00000000 000d14 000154 01  MS  =
0   0  1
  [32] .debug_loc        PROGBITS        00000000 000e68 0000cf 00      =
0   0  1
  [33] .shstrtab         STRTAB          00000000 000f37 000140 00      =
0   0  1
  [34] .symtab           SYMTAB          00000000 001618 000520 10     =
35  58  4
  [35] .strtab           STRTAB          00000000 001b38 0002d6 00      =
0   0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings)
  I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown)
  O (extra OS processing required) o (OS specific), p (processor =
specific)

There are no section groups in this file.

Program Headers:
  Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg =
Align
  PHDR           0x000034 0x10000034 0x10000034 0x00100 0x00100 R E 0x4
  INTERP         0x000134 0x10000134 0x10000134 0x0000d 0x0000d R   0x1
      [Requesting program interpreter: /lib/ld.so.1]
  LOAD           0x000000 0x10000000 0x10000000 0x00720 0x00720 R E =
0x10000
  LOAD           0x000720 0x10010720 0x10010720 0x00100 0x0018c RWE =
0x10000
  DYNAMIC        0x00073c 0x1001073c 0x1001073c 0x000c8 0x000c8 RW  0x4
  NOTE           0x000144 0x10000144 0x10000144 0x00020 0x00020 R   0x4
  GNU_EH_FRAME   0x0006e0 0x100006e0 0x100006e0 0x00014 0x00014 R   0x4
  GNU_STACK      0x000000 0x00000000 0x00000000 0x00000 0x00000 RW  0x4

 Section to Segment mapping:
  Segment Sections...
   00    =20
   01     .interp=20
   02     .interp .note.ABI-tag .gnu.hash .dynsym .dynstr .gnu.version =
.gnu.version_r .rela.dyn .rela.plt .init .text .fini .rodata =
.eh_frame_hdr .eh_frame=20
   03     .ctors .dtors .jcr .got2 .dynamic .data .got .plt .bss=20
   04     .dynamic=20
   05     .note.ABI-tag=20
   06     .eh_frame_hdr=20
   07    =20

Dynamic section at offset 0x73c contains 20 entries:
  Tag        Type                         Name/Value
 0x00000001 (NEEDED)                     Shared library: [libc.so.6]
 0x0000000c (INIT)                       0x100002e0
 0x0000000d (FINI)                       0x10000674
 0x6ffffef5 (GNU_HASH)                   0x10000164
 0x00000005 (STRTAB)                     0x100001f4
 0x00000006 (SYMTAB)                     0x10000184
 0x0000000a (STRSZ)                      100 (bytes)
 0x0000000b (SYMENT)                     16 (bytes)
 0x00000015 (DEBUG)                      0x0
 0x00000003 (PLTGOT)                     0x10010820
 0x00000002 (PLTRELSZ)                   60 (bytes)
 0x00000014 (PLTREL)                     RELA
 0x00000017 (JMPREL)                     0x100002a4
 0x00000007 (RELA)                       0x10000298
 0x00000008 (RELASZ)                     72 (bytes)
 0x00000009 (RELAENT)                    12 (bytes)
 0x6ffffffe (VERNEED)                    0x10000268
 0x6fffffff (VERNEEDNUM)                 1
 0x6ffffff0 (VERSYM)                     0x10000258
 0x00000000 (NULL)                       0x0

Relocation section '.rela.dyn' at offset 0x298 contains 1 entries:
 Offset     Info    Type            Sym.Value  Sym. Name + Addend
1001080c  00000314 R_PPC_GLOB_DAT    00000000   __gmon_start__ + 0

Relocation section '.rela.plt' at offset 0x2a4 contains 5 entries:
 Offset     Info    Type            Sym.Value  Sym. Name + Addend
10010868  00000115 R_PPC_JMP_SLOT    00000000   printf + 0
10010870  00000215 R_PPC_JMP_SLOT    00000000   sleep + 0
10010878  00000315 R_PPC_JMP_SLOT    00000000   __gmon_start__ + 0
10010880  00000415 R_PPC_JMP_SLOT    00000000   __libc_start_main + 0
10010888  00000515 R_PPC_JMP_SLOT    00000000   putchar + 0

There are no unwind sections in this file.

Symbol table '.dynsym' contains 7 entries:
   Num:    Value  Size Type    Bind   Vis      Ndx Name
     0: 00000000     0 NOTYPE  LOCAL  DEFAULT  UND=20
     1: 00000000     0 FUNC    GLOBAL DEFAULT  UND printf@GLIBC_2.4 (2)
     2: 00000000     0 FUNC    GLOBAL DEFAULT  UND sleep@GLIBC_2.0 (3)
     3: 00000000     0 NOTYPE  WEAK   DEFAULT  UND __gmon_start__
     4: 00000000     0 FUNC    GLOBAL DEFAULT  UND =
__libc_start_main@GLIBC_2.0 (3)
     5: 00000000     0 FUNC    GLOBAL DEFAULT  UND putchar@GLIBC_2.0 (3)
     6: 100006b4     4 OBJECT  GLOBAL DEFAULT   13 _IO_stdin_used

Symbol table '.symtab' contains 82 entries:
   Num:    Value  Size Type    Bind   Vis      Ndx Name
     0: 00000000     0 NOTYPE  LOCAL  DEFAULT  UND=20
     1: 10000134     0 SECTION LOCAL  DEFAULT    1=20
     2: 10000144     0 SECTION LOCAL  DEFAULT    2=20
     3: 10000164     0 SECTION LOCAL  DEFAULT    3=20
     4: 10000184     0 SECTION LOCAL  DEFAULT    4=20
     5: 100001f4     0 SECTION LOCAL  DEFAULT    5=20
     6: 10000258     0 SECTION LOCAL  DEFAULT    6=20
     7: 10000268     0 SECTION LOCAL  DEFAULT    7=20
     8: 10000298     0 SECTION LOCAL  DEFAULT    8=20
     9: 100002a4     0 SECTION LOCAL  DEFAULT    9=20
    10: 100002e0     0 SECTION LOCAL  DEFAULT   10=20
    11: 1000032c     0 SECTION LOCAL  DEFAULT   11=20
    12: 10000674     0 SECTION LOCAL  DEFAULT   12=20
    13: 100006a4     0 SECTION LOCAL  DEFAULT   13=20
    14: 100006e0     0 SECTION LOCAL  DEFAULT   14=20
    15: 100006f4     0 SECTION LOCAL  DEFAULT   15=20
    16: 10010720     0 SECTION LOCAL  DEFAULT   16=20
    17: 10010728     0 SECTION LOCAL  DEFAULT   17=20
    18: 10010730     0 SECTION LOCAL  DEFAULT   18=20
    19: 10010734     0 SECTION LOCAL  DEFAULT   19=20
    20: 1001073c     0 SECTION LOCAL  DEFAULT   20=20
    21: 10010804     0 SECTION LOCAL  DEFAULT   21=20
    22: 1001080c     0 SECTION LOCAL  DEFAULT   22=20
    23: 10010820     0 SECTION LOCAL  DEFAULT   23=20
    24: 100108a4     0 SECTION LOCAL  DEFAULT   24=20
    25: 00000000     0 SECTION LOCAL  DEFAULT   25=20
    26: 00000000     0 SECTION LOCAL  DEFAULT   26=20
    27: 00000000     0 SECTION LOCAL  DEFAULT   27=20
    28: 00000000     0 SECTION LOCAL  DEFAULT   28=20
    29: 00000000     0 SECTION LOCAL  DEFAULT   29=20
    30: 00000000     0 SECTION LOCAL  DEFAULT   30=20
    31: 00000000     0 SECTION LOCAL  DEFAULT   31=20
    32: 00000000     0 SECTION LOCAL  DEFAULT   32=20
    33: 00000000     0 FILE    LOCAL  DEFAULT  ABS init.c
    34: 00000000     0 FILE    LOCAL  DEFAULT  ABS crtstuff.c
    35: 10010720     0 OBJECT  LOCAL  DEFAULT   16 __CTOR_LIST__
    36: 10010728     0 OBJECT  LOCAL  DEFAULT   17 __DTOR_LIST__
    37: 10010730     0 OBJECT  LOCAL  DEFAULT   18 __JCR_LIST__
    38: 10000350     0 FUNC    LOCAL  DEFAULT   11 deregister_tm_clones
    39: 10000388     0 FUNC    LOCAL  DEFAULT   11 register_tm_clones
    40: 100003c4     0 FUNC    LOCAL  DEFAULT   11 __do_global_dtors_aux
    41: 100108a4     1 OBJECT  LOCAL  DEFAULT   24 completed.6650
    42: 100108a8     4 OBJECT  LOCAL  DEFAULT   24 dtor_idx.6652
    43: 10000470     0 FUNC    LOCAL  DEFAULT   11 =
call___do_global_dtors_au
    44: 1000048c     0 FUNC    LOCAL  DEFAULT   11 frame_dummy
    45: 100004d8     0 FUNC    LOCAL  DEFAULT   11 call_frame_dummy
    46: 00000000     0 FILE    LOCAL  DEFAULT  ABS crtstuff.c
    47: 10010724     0 OBJECT  LOCAL  DEFAULT   16 __CTOR_END__
    48: 1000071c     0 OBJECT  LOCAL  DEFAULT   15 __FRAME_END__
    49: 10010730     0 OBJECT  LOCAL  DEFAULT   18 __JCR_END__
    50: 1000060c     0 FUNC    LOCAL  DEFAULT   11 __do_global_ctors_aux
    51: 10000658     0 FUNC    LOCAL  DEFAULT   11 =
call___do_global_ctors_au
    52: 00000000     0 FILE    LOCAL  DEFAULT  ABS helloworld.c
    53: 00000000     0 FILE    LOCAL  DEFAULT  ABS elf-init.c
    54: 10010720     0 NOTYPE  LOCAL  DEFAULT   16 __init_array_end
    55: 1001073c     0 OBJECT  LOCAL  DEFAULT   20 _DYNAMIC
    56: 10010720     0 NOTYPE  LOCAL  DEFAULT   16 __init_array_start
    57: 10010814     0 OBJECT  LOCAL  DEFAULT   22 _GLOBAL_OFFSET_TABLE_
    58: 10000608     4 FUNC    GLOBAL DEFAULT   11 __libc_csu_fini
    59: 00000000     0 NOTYPE  WEAK   DEFAULT  UND =
_ITM_deregisterTMCloneTab
    60: 10010804     0 NOTYPE  WEAK   DEFAULT   21 data_start
    61: 00000000     0 FUNC    GLOBAL DEFAULT  UND printf@@GLIBC_2.4
    62: 10010820     0 NOTYPE  GLOBAL DEFAULT  ABS _edata
    63: 00000000     0 FUNC    GLOBAL DEFAULT  UND sleep@@GLIBC_2.0
    64: 10000674     0 FUNC    GLOBAL DEFAULT   12 _fini
    65: 1001072c     0 OBJECT  GLOBAL HIDDEN    17 __DTOR_END__
    66: 10010804     0 NOTYPE  GLOBAL DEFAULT   21 __data_start
    67: 00000000     0 NOTYPE  WEAK   DEFAULT  UND __gmon_start__
    68: 10010808     0 OBJECT  GLOBAL HIDDEN    21 __dso_handle
    69: 100006b4     4 OBJECT  GLOBAL DEFAULT   13 _IO_stdin_used
    70: 00000000     0 FUNC    GLOBAL DEFAULT  UND =
__libc_start_main@@GLIBC_
    71: 10000554   180 FUNC    GLOBAL DEFAULT   11 __libc_csu_init
    72: 10018820     0 NOTYPE  GLOBAL DEFAULT   22 _SDA_BASE_
    73: 00000000     0 FUNC    GLOBAL DEFAULT  UND putchar@@GLIBC_2.0
    74: 100108ac     0 NOTYPE  GLOBAL DEFAULT  ABS _end
    75: 1000032c    36 FUNC    GLOBAL DEFAULT   11 _start
    76: 10010820     0 NOTYPE  GLOBAL DEFAULT  ABS __bss_start
    77: 100004f4    92 FUNC    GLOBAL DEFAULT   11 main
    78: 00000000     0 NOTYPE  WEAK   DEFAULT  UND _Jv_RegisterClasses
    79: 1001080c     0 OBJECT  GLOBAL HIDDEN    21 __TMC_END__
    80: 00000000     0 NOTYPE  WEAK   DEFAULT  UND =
_ITM_registerTMCloneTable
    81: 100002e0     0 FUNC    GLOBAL DEFAULT   10 _init

Histogram for `.gnu.hash' bucket list length (total of 2 buckets):
 Length  Number     % of total  Coverage
      0  1          ( 50.0%)
      1  1          ( 50.0%)    100.0%

Version symbols section '.gnu.version' contains 7 entries:
 Addr: 0000000010000258  Offset: 0x000258  Link: 4 (.dynsym)
  000:   0 (*local*)       2 (GLIBC_2.4)     3 (GLIBC_2.0)     0 =
(*local*)   =20
  004:   3 (GLIBC_2.0)     3 (GLIBC_2.0)     1 (*global*)  =20

Version needs section '.gnu.version_r' contains 1 entries:
 Addr: 0x0000000010000268  Offset: 0x000268  Link: 5 (.dynstr)
  000000: Version: 1  File: libc.so.6  Cnt: 2
  0x0010:   Name: GLIBC_2.0  Flags: none  Version: 3
  0x0020:   Name: GLIBC_2.4  Flags: none  Version: 2

Notes at offset 0x00000144 with length 0x00000020:
  Owner                 Data size	Description
  GNU                  0x00000010	NT_GNU_ABI_TAG (ABI version tag)
    OS: Linux, ABI: 2.6.16


Here is the output of the objdump -x command:

${CROSS_COMPILE}objdump -x helloworlddynamic

helloworlddynamic:     file format elf32-powerpc
helloworlddynamic
architecture: powerpc:common, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x1000032c

Program Header:
    PHDR off    0x00000034 vaddr 0x10000034 paddr 0x10000034 align 2**2
         filesz 0x00000100 memsz 0x00000100 flags r-x
  INTERP off    0x00000134 vaddr 0x10000134 paddr 0x10000134 align 2**0
         filesz 0x0000000d memsz 0x0000000d flags r--
    LOAD off    0x00000000 vaddr 0x10000000 paddr 0x10000000 align 2**16
         filesz 0x00000720 memsz 0x00000720 flags r-x
    LOAD off    0x00000720 vaddr 0x10010720 paddr 0x10010720 align 2**16
         filesz 0x00000100 memsz 0x0000018c flags rwx
 DYNAMIC off    0x0000073c vaddr 0x1001073c paddr 0x1001073c align 2**2
         filesz 0x000000c8 memsz 0x000000c8 flags rw-
    NOTE off    0x00000144 vaddr 0x10000144 paddr 0x10000144 align 2**2
         filesz 0x00000020 memsz 0x00000020 flags r--
EH_FRAME off    0x000006e0 vaddr 0x100006e0 paddr 0x100006e0 align 2**2
         filesz 0x00000014 memsz 0x00000014 flags r--
   STACK off    0x00000000 vaddr 0x00000000 paddr 0x00000000 align 2**2
         filesz 0x00000000 memsz 0x00000000 flags rw-

Dynamic Section:
  NEEDED               libc.so.6
  INIT                 0x100002e0
  FINI                 0x10000674
  GNU_HASH             0x10000164
  STRTAB               0x100001f4
  SYMTAB               0x10000184
  STRSZ                0x00000064
  SYMENT               0x00000010
  DEBUG                0x00000000
  PLTGOT               0x10010820
  PLTRELSZ             0x0000003c
  PLTREL               0x00000007
  JMPREL               0x100002a4
  RELA                 0x10000298
  RELASZ               0x00000048
  RELAENT              0x0000000c
  VERNEED              0x10000268
  VERNEEDNUM           0x00000001
  VERSYM               0x10000258

Version References:
  required from libc.so.6:
    0x0d696910 0x00 03 GLIBC_2.0
    0x0d696914 0x00 02 GLIBC_2.4

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .interp       0000000d  10000134  10000134  00000134  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  10000144  10000144  00000144  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .gnu.hash     00000020  10000164  10000164  00000164  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .dynsym       00000070  10000184  10000184  00000184  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynstr       00000064  100001f4  100001f4  000001f4  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .gnu.version  0000000e  10000258  10000258  00000258  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version_r 00000030  10000268  10000268  00000268  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .rela.dyn     0000000c  10000298  10000298  00000298  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rela.plt     0000003c  100002a4  100002a4  000002a4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .init         0000004c  100002e0  100002e0  000002e0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .text         00000348  1000032c  1000032c  0000032c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .fini         00000030  10000674  10000674  00000674  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .rodata       00000039  100006a4  100006a4  000006a4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 13 .eh_frame_hdr 00000014  100006e0  100006e0  000006e0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 14 .eh_frame     0000002c  100006f4  100006f4  000006f4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 15 .ctors        00000008  10010720  10010720  00000720  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 16 .dtors        00000008  10010728  10010728  00000728  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 17 .jcr          00000004  10010730  10010730  00000730  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 18 .got2         00000008  10010734  10010734  00000734  2**0
                  CONTENTS, ALLOC, LOAD, DATA
 19 .dynamic      000000c8  1001073c  1001073c  0000073c  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 20 .data         00000008  10010804  10010804  00000804  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000014  1001080c  1001080c  0000080c  2**2
                  CONTENTS, ALLOC, LOAD, CODE
 22 .plt          00000084  10010820  10010820  00000820  2**2
                  ALLOC, CODE
 23 .bss          00000008  100108a4  100108a4  00000820  2**2
                  ALLOC
 24 .comment      00000027  00000000  00000000  00000820  2**0
                  CONTENTS, READONLY
 25 .debug_aranges 00000038  00000000  00000000  00000847  2**0
                  CONTENTS, READONLY, DEBUGGING
 26 .debug_info   000001d6  00000000  00000000  0000087f  2**0
                  CONTENTS, READONLY, DEBUGGING
 27 .debug_abbrev 0000014d  00000000  00000000  00000a55  2**0
                  CONTENTS, READONLY, DEBUGGING
 28 .debug_line   00000113  00000000  00000000  00000ba2  2**0
                  CONTENTS, READONLY, DEBUGGING
 29 .debug_frame  0000005c  00000000  00000000  00000cb8  2**2
                  CONTENTS, READONLY, DEBUGGING
 30 .debug_str    00000154  00000000  00000000  00000d14  2**0
                  CONTENTS, READONLY, DEBUGGING
 31 .debug_loc    000000cf  00000000  00000000  00000e68  2**0
                  CONTENTS, READONLY, DEBUGGING
SYMBOL TABLE:
10000134 l    d  .interp	00000000              .interp
10000144 l    d  .note.ABI-tag	00000000              .note.ABI-tag
10000164 l    d  .gnu.hash	00000000              .gnu.hash
10000184 l    d  .dynsym	00000000              .dynsym
100001f4 l    d  .dynstr	00000000              .dynstr
10000258 l    d  .gnu.version	00000000              .gnu.version
10000268 l    d  .gnu.version_r	00000000              .gnu.version_r
10000298 l    d  .rela.dyn	00000000              .rela.dyn
100002a4 l    d  .rela.plt	00000000              .rela.plt
100002e0 l    d  .init	00000000              .init
1000032c l    d  .text	00000000              .text
10000674 l    d  .fini	00000000              .fini
100006a4 l    d  .rodata	00000000              .rodata
100006e0 l    d  .eh_frame_hdr	00000000              .eh_frame_hdr
100006f4 l    d  .eh_frame	00000000              .eh_frame
10010720 l    d  .ctors	00000000              .ctors
10010728 l    d  .dtors	00000000              .dtors
10010730 l    d  .jcr	00000000              .jcr
10010734 l    d  .got2	00000000              .got2
1001073c l    d  .dynamic	00000000              .dynamic
10010804 l    d  .data	00000000              .data
1001080c l    d  .got	00000000              .got
10010820 l    d  .plt	00000000              .plt
100108a4 l    d  .bss	00000000              .bss
00000000 l    d  .comment	00000000              .comment
00000000 l    d  .debug_aranges	00000000              .debug_aranges
00000000 l    d  .debug_info	00000000              .debug_info
00000000 l    d  .debug_abbrev	00000000              .debug_abbrev
00000000 l    d  .debug_line	00000000              .debug_line
00000000 l    d  .debug_frame	00000000              .debug_frame
00000000 l    d  .debug_str	00000000              .debug_str
00000000 l    d  .debug_loc	00000000              .debug_loc
00000000 l    df *ABS*	00000000              init.c
00000000 l    df *ABS*	00000000              crtstuff.c
10010720 l     O .ctors	00000000              __CTOR_LIST__
10010728 l     O .dtors	00000000              __DTOR_LIST__
10010730 l     O .jcr	00000000              __JCR_LIST__
10000350 l     F .text	00000000              deregister_tm_clones
10000388 l     F .text	00000000              register_tm_clones
100003c4 l     F .text	00000000              __do_global_dtors_aux
100108a4 l     O .bss	00000001              completed.6650
100108a8 l     O .bss	00000004              dtor_idx.6652
10000470 l     F .text	00000000              call___do_global_dtors_aux
1000048c l     F .text	00000000              frame_dummy
100004d8 l     F .text	00000000              call_frame_dummy
00000000 l    df *ABS*	00000000              crtstuff.c
10010724 l     O .ctors	00000000              __CTOR_END__
1000071c l     O .eh_frame	00000000              __FRAME_END__
10010730 l     O .jcr	00000000              __JCR_END__
1000060c l     F .text	00000000              __do_global_ctors_aux
10000658 l     F .text	00000000              call___do_global_ctors_aux
00000000 l    df *ABS*	00000000              helloworld.c
00000000 l    df *ABS*	00000000              elf-init.c
10010720 l       .ctors	00000000              __init_array_end
1001073c l     O .dynamic	00000000              _DYNAMIC
10010720 l       .ctors	00000000              __init_array_start
10010814 l     O .got	00000000              _GLOBAL_OFFSET_TABLE_
10000608 g     F .text	00000004              __libc_csu_fini
00000000  w      *UND*	00000000              =
_ITM_deregisterTMCloneTable
10010804  w      .data	00000000              data_start
00000000       F *UND*	00000000              printf@@GLIBC_2.4
10010820 g       *ABS*	00000000              _edata
00000000       F *UND*	00000000              sleep@@GLIBC_2.0
10000674 g     F .fini	00000000              _fini
1001072c g     O .dtors	00000000              .hidden __DTOR_END__
10010804 g       .data	00000000              __data_start
00000000  w      *UND*	00000000              __gmon_start__
10010808 g     O .data	00000000              .hidden __dso_handle
100006b4 g     O .rodata	00000004              _IO_stdin_used
00000000       F *UND*	00000000              =
__libc_start_main@@GLIBC_2.0
10000554 g     F .text	000000b4              __libc_csu_init
10018820 g       .got	00000000              _SDA_BASE_
00000000       F *UND*	00000000              putchar@@GLIBC_2.0
100108ac g       *ABS*	00000000              _end
1000032c g     F .text	00000024              _start
10010820 g       *ABS*	00000000              __bss_start
100004f4 g     F .text	0000005c              main
00000000  w      *UND*	00000000              _Jv_RegisterClasses
1001080c g     O .data	00000000              .hidden __TMC_END__
00000000  w      *UND*	00000000              _ITM_registerTMCloneTable
100002e0 g     F .init	00000000              _init


Elvis Dowson


--Apple-Mail=_A6795ABE-3746-4383-B1B0-C02DF7381833
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 4, 2012, at 5:56 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; ">On Aug 4, 2012, at 6:24 =
AM, Khem Raj wrote:<div><div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite"><meta =
http-equiv=3D"Content-Type" content=3D"text/html charset=3Dus-ascii"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div><div>OK couple of things. =
&nbsp;You could boot into static bash thats good, keep it that way and =
bundle some dynamically linked programs into the root file =
system</div><div>may be just a hello world which is dynamically linked. =
I would also compile a static version of gdb and strace but that could =
be next steps.</div><div><br></div><div>then boot into this static shell =
and try to run the dynamically linked hello world. Does that work =
?</div><div>if not we have a dynamic linking =
issue.&nbsp;</div><div><br></div><div>Then you can go a step deeper and =
see whats going on. Many &nbsp;a times interpreter is specified wrongly =
in the elf file.</div><div>and there could be dynamic linker issues too. =
But step at a time.</div></div></div></blockquote><br></div><div>I =
created a new 16GB ramdisk file, and put the core-image-minimal root =
filesystem into it. I then created a static version and a dynamic =
version of the helloworld program.</div></div><div><br></div><div>I find =
that the static version of the helloworld loads okay, but the dynamic =
version of the helloworld program doesn't give any =
output.</div><div><br></div><div>I guess this means we have a dynamic =
linking =
issue.&nbsp;</div><div><br></div></div></blockquote><br></div><div>In =
the objdump I see two version references for glibc, is that =
normal?</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Version References:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; required =
from libc.so.6:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 0x0d696910 0x00 03 =
GLIBC_2.0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 0x0d696914 0x00 02 =
GLIBC_2.4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div></div><div><br></div><div>Here=
 is the full output of the readelf -a helloworlddynamic =
executable:</div><div><br></div><div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">${CROSS_COMPILE}readelf -a =
helloworlddynamic</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ELF Header:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Magic: =
&nbsp; 7f 45 4c 46 01 02 01 00 00 00 00 00 00 00 00 =
00&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; Class: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
ELF32</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Data: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2's complement, =
big endian</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; Version: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1 =
(current)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; OS/ABI: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;UNIX - System V</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; ABI Version: &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Type: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;EXEC (Executable =
file)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Machine: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
PowerPC</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Version: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Entry point address: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x1000032c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Start of =
program headers: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;52 (bytes into =
file)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Start of section headers: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;4216 (bytes into file)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Flags: =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 0x0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Size of =
this header: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 52 =
(bytes)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Size of program headers: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 32 (bytes)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; Number of program headers: &nbsp; =
&nbsp; &nbsp; &nbsp; 8</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; Size of section headers: &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 40 (bytes)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Number of =
section headers: &nbsp; &nbsp; &nbsp; &nbsp; 36</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Section =
header string table index: 33</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Section Headers:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [Nr] Name =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Type &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;Addr &nbsp; &nbsp; Off &nbsp; &nbsp;Size =
&nbsp; ES Flg Lk Inf Al</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; [ 0] &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; NULL &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;00000000 000000 000000 00 &nbsp; &nbsp; &nbsp;0 &nbsp; 0 =
&nbsp;0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [ 1] .interp &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;10000134 000134 00000d 00 &nbsp; A =
&nbsp;0 &nbsp; 0 &nbsp;1</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; [ 2] .note.ABI-tag &nbsp; &nbsp; NOTE =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10000144 000144 000020 00 =
&nbsp; A &nbsp;0 &nbsp; 0 &nbsp;4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [ 3] =
.gnu.hash &nbsp; &nbsp; &nbsp; &nbsp; GNU_HASH &nbsp; &nbsp; &nbsp; =
&nbsp;10000164 000164 000020 04 &nbsp; A &nbsp;4 &nbsp; 0 =
&nbsp;4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [ 4] .dynsym &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; DYNSYM =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10000184 000184 000070 10 &nbsp; A =
&nbsp;5 &nbsp; 1 &nbsp;4</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; [ 5] .dynstr &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; STRTAB &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;100001f4 0001f4 =
000064 00 &nbsp; A &nbsp;0 &nbsp; 0 &nbsp;1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [ 6] =
.gnu.version &nbsp; &nbsp; &nbsp;VERSYM &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;10000258 000258 00000e 02 &nbsp; A &nbsp;4 &nbsp; 0 =
&nbsp;2</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [ 7] .gnu.version_r &nbsp; &nbsp;VERNEED &nbsp; &nbsp; =
&nbsp; &nbsp; 10000268 000268 000030 00 &nbsp; A &nbsp;5 &nbsp; 1 =
&nbsp;4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [ 8] .rela.dyn &nbsp; &nbsp; &nbsp; &nbsp; RELA &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10000298 000298 00000c 0c &nbsp; A =
&nbsp;4 &nbsp; 0 &nbsp;4</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; [ 9] .rela.plt &nbsp; &nbsp; &nbsp; =
&nbsp; RELA &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;100002a4 0002a4 =
00003c 0c &nbsp; A &nbsp;4 &nbsp;23 &nbsp;4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [10] .init =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;100002e0 0002e0 00004c 00 &nbsp;AX &nbsp;0 &nbsp; 0 =
&nbsp;4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [11] .text &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;1000032c 00032c 000348 00 &nbsp;AX =
&nbsp;0 &nbsp; 0 &nbsp;4</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; [12] .fini &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;10000674 000674 =
000030 00 &nbsp;AX &nbsp;0 &nbsp; 0 &nbsp;4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [13] =
.rodata &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;100006a4 0006a4 000039 00 &nbsp; A &nbsp;0 &nbsp; 0 =
&nbsp;4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [14] .eh_frame_hdr &nbsp; &nbsp; PROGBITS &nbsp; =
&nbsp; &nbsp; &nbsp;100006e0 0006e0 000014 00 &nbsp; A &nbsp;0 &nbsp; 0 =
&nbsp;4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [15] .eh_frame &nbsp; &nbsp; &nbsp; &nbsp; PROGBITS =
&nbsp; &nbsp; &nbsp; &nbsp;100006f4 0006f4 00002c 00 &nbsp; A &nbsp;0 =
&nbsp; 0 &nbsp;4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; [16] .ctors &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;10010720 000720 =
000008 00 &nbsp;WA &nbsp;0 &nbsp; 0 &nbsp;4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [17] .dtors =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;10010728 000728 000008 00 &nbsp;WA &nbsp;0 &nbsp; 0 =
&nbsp;4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [18] .jcr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;10010730 000730 000004 00 =
&nbsp;WA &nbsp;0 &nbsp; 0 &nbsp;4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [19] .got2 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;10010734 000734 000008 00 &nbsp;WA &nbsp;0 &nbsp; 0 =
&nbsp;1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [20] .dynamic &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;DYNAMIC &nbsp; &nbsp; &nbsp; &nbsp; 1001073c 00073c 0000c8 08 =
&nbsp;WA &nbsp;5 &nbsp; 0 &nbsp;4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [21] .data =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;10010804 000804 000008 00 &nbsp;WA &nbsp;0 &nbsp; 0 =
&nbsp;4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [22] .got &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;1001080c 00080c 000014 04 WAX =
&nbsp;0 &nbsp; 0 &nbsp;4</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; [23] .plt &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;NOBITS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10010820 =
000820 000084 00 WAX &nbsp;0 &nbsp; 0 &nbsp;4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [24] .bss =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;NOBITS &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;100108a4 000820 000008 00 &nbsp;WA &nbsp;0 &nbsp; 0 =
&nbsp;4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [25] .comment &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;00000000 000820 000027 01 =
&nbsp;MS &nbsp;0 &nbsp; 0 &nbsp;1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [26] =
.debug_aranges &nbsp; &nbsp;PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;00000000 =
000847 000038 00 &nbsp; &nbsp; &nbsp;0 &nbsp; 0 =
&nbsp;1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [27] .debug_info &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; =
&nbsp; &nbsp; &nbsp;00000000 00087f 0001d6 00 &nbsp; &nbsp; &nbsp;0 =
&nbsp; 0 &nbsp;1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; [28] .debug_abbrev &nbsp; &nbsp; =
PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;00000000 000a55 00014d 00 &nbsp; =
&nbsp; &nbsp;0 &nbsp; 0 &nbsp;1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [29] =
.debug_line &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;00000000 000ba2 000113 00 &nbsp; &nbsp; &nbsp;0 &nbsp; 0 =
&nbsp;1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [30] .debug_frame &nbsp; &nbsp; &nbsp;PROGBITS &nbsp; =
&nbsp; &nbsp; &nbsp;00000000 000cb8 00005c 00 &nbsp; &nbsp; &nbsp;0 =
&nbsp; 0 &nbsp;4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; [31] .debug_str &nbsp; &nbsp; &nbsp; =
&nbsp;PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;00000000 000d14 000154 01 =
&nbsp;MS &nbsp;0 &nbsp; 0 &nbsp;1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [32] =
.debug_loc &nbsp; &nbsp; &nbsp; &nbsp;PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;00000000 000e68 0000cf 00 &nbsp; &nbsp; &nbsp;0 &nbsp; 0 =
&nbsp;1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [33] .shstrtab &nbsp; &nbsp; &nbsp; &nbsp; STRTAB =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000000 000f37 000140 00 &nbsp; =
&nbsp; &nbsp;0 &nbsp; 0 &nbsp;1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; [34] =
.symtab &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SYMTAB &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;00000000 001618 000520 10 &nbsp; &nbsp; 35 &nbsp;58 =
&nbsp;4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; [35] .strtab &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; STRTAB =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000000 001b38 0002d6 00 &nbsp; =
&nbsp; &nbsp;0 &nbsp; 0 &nbsp;1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Key to =
Flags:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; W (write), A (alloc), X (execute), M (merge), S =
(strings)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; I (info), L (link order), G (group), T =
(TLS), E (exclude), x (unknown)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; O (extra OS =
processing required) o (OS specific), p (processor =
specific)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">There are no =
section groups in this file.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Program Headers:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Type &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Offset &nbsp; VirtAddr &nbsp; PhysAddr =
&nbsp; FileSiz MemSiz &nbsp;Flg Align</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; PHDR &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 0x000034 0x10000034 0x10000034 0x00100 =
0x00100 R E 0x4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; INTERP &nbsp; &nbsp; &nbsp; &nbsp; =
0x000134 0x10000134 0x10000134 0x0000d 0x0000d R &nbsp; =
0x1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; [Requesting program interpreter: =
/lib/ld.so.1]</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; LOAD &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 0x000000 0x10000000 0x10000000 0x00720 0x00720 R E =
0x10000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; LOAD &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0x000720 =
0x10010720 0x10010720 0x00100 0x0018c RWE 0x10000</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; DYNAMIC =
&nbsp; &nbsp; &nbsp; &nbsp;0x00073c 0x1001073c 0x1001073c 0x000c8 =
0x000c8 RW &nbsp;0x4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; NOTE &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 0x000144 0x10000144 0x10000144 0x00020 0x00020 R &nbsp; =
0x4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; GNU_EH_FRAME &nbsp; 0x0006e0 0x100006e0 0x100006e0 =
0x00014 0x00014 R &nbsp; 0x4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; GNU_STACK =
&nbsp; &nbsp; &nbsp;0x000000 0x00000000 0x00000000 0x00000 0x00000 RW =
&nbsp;0x4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;Section to =
Segment mapping:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; Segment =
Sections...</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp;00 &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp;01 &nbsp; &nbsp; =
.interp&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp;02 &nbsp; &nbsp; .interp =
.note.ABI-tag .gnu.hash .dynsym .dynstr .gnu.version .gnu.version_r =
.rela.dyn .rela.plt .init .text .fini .rodata .eh_frame_hdr =
.eh_frame&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp;03 &nbsp; &nbsp; .ctors .dtors =
.jcr .got2 .dynamic .data .got .plt .bss&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp;04 =
&nbsp; &nbsp; .dynamic&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp;05 =
&nbsp; &nbsp; .note.ABI-tag&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp;06 =
&nbsp; &nbsp; .eh_frame_hdr&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp;07 =
&nbsp; &nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Dynamic section at =
offset 0x73c contains 20 entries:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Tag &nbsp; =
&nbsp; &nbsp; &nbsp;Type &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Name/Value</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x00000001 (NEEDED) &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Shared library: =
[libc.so.6]</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x0000000c (INIT) &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x100002e0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x0000000d (FINI) &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x10000674</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x6ffffef5 (GNU_HASH) &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x10000164</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x00000005 (STRTAB) &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x100001f4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x00000006 (SYMTAB) &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x10000184</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x0000000a (STRSZ) &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;100 =
(bytes)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;0x0000000b (SYMENT) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16 (bytes)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;0x00000015 =
(DEBUG) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;0x0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x00000003 (PLTGOT) &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x10010820</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x00000002 (PLTRELSZ) &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 60 =
(bytes)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;0x00000014 (PLTREL) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RELA</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;0x00000017 =
(JMPREL) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 0x100002a4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x00000007 (RELA) &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x10000298</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x00000008 (RELASZ) &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 72 =
(bytes)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;0x00000009 (RELAENT) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;12 (bytes)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;0x6ffffffe =
(VERNEED) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0x10000268</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x6fffffff (VERNEEDNUM) &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;0x6ffffff0 =
(VERSYM) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 0x10000258</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;0x00000000 (NULL) &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Relocation section '.rela.dyn' at offset =
0x298 contains 1 entries:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;Offset =
&nbsp; &nbsp; Info &nbsp; &nbsp;Type &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;Sym.Value &nbsp;Sym. Name + Addend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1001080c =
&nbsp;00000314 R_PPC_GLOB_DAT &nbsp; &nbsp;00000000 &nbsp; =
__gmon_start__ + 0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Relocation section =
'.rela.plt' at offset 0x2a4 contains 5 entries:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;Offset =
&nbsp; &nbsp; Info &nbsp; &nbsp;Type &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;Sym.Value &nbsp;Sym. Name + Addend</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10010868 =
&nbsp;00000115 R_PPC_JMP_SLOT &nbsp; &nbsp;00000000 &nbsp; printf + =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">10010870 &nbsp;00000215 R_PPC_JMP_SLOT &nbsp; &nbsp;00000000 =
&nbsp; sleep + 0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010878 &nbsp;00000315 R_PPC_JMP_SLOT &nbsp; =
&nbsp;00000000 &nbsp; __gmon_start__ + 0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10010880 =
&nbsp;00000415 R_PPC_JMP_SLOT &nbsp; &nbsp;00000000 &nbsp; =
__libc_start_main + 0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010888 &nbsp;00000515 R_PPC_JMP_SLOT &nbsp; =
&nbsp;00000000 &nbsp; putchar + 0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">There are no unwind sections in this =
file.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Symbol table '.dynsym' contains 7 =
entries:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp;Num: &nbsp; &nbsp;Value &nbsp;Size Type &nbsp; =
&nbsp;Bind &nbsp; Vis &nbsp; &nbsp; &nbsp;Ndx =
Name</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp;0: 00000000 &nbsp; &nbsp; 0 NOTYPE =
&nbsp;LOCAL &nbsp;DEFAULT &nbsp;UND&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;1: 00000000 &nbsp; &nbsp; 0 FUNC &nbsp; &nbsp;GLOBAL DEFAULT =
&nbsp;UND printf@GLIBC_2.4 (2)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;2: 00000000 &nbsp; &nbsp; 0 FUNC &nbsp; &nbsp;GLOBAL DEFAULT =
&nbsp;UND sleep@GLIBC_2.0 (3)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;3: 00000000 &nbsp; &nbsp; 0 NOTYPE &nbsp;WEAK &nbsp; DEFAULT =
&nbsp;UND __gmon_start__</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;4: 00000000 &nbsp; =
&nbsp; 0 FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp;UND =
__libc_start_main@GLIBC_2.0 (3)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;5: 00000000 &nbsp; &nbsp; 0 FUNC &nbsp; &nbsp;GLOBAL DEFAULT =
&nbsp;UND putchar@GLIBC_2.0 (3)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;6: 100006b4 &nbsp; &nbsp; 4 OBJECT &nbsp;GLOBAL DEFAULT &nbsp; 13 =
_IO_stdin_used</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Symbol table =
'.symtab' contains 82 entries:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp;Num: =
&nbsp; &nbsp;Value &nbsp;Size Type &nbsp; &nbsp;Bind &nbsp; Vis &nbsp; =
&nbsp; &nbsp;Ndx Name</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;0: 00000000 &nbsp; &nbsp; =
0 NOTYPE &nbsp;LOCAL &nbsp;DEFAULT =
&nbsp;UND&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;1: 10000134 &nbsp; &nbsp; =
0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
&nbsp;1&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;2: 10000144 &nbsp; &nbsp; =
0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
&nbsp;2&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;3: 10000164 &nbsp; &nbsp; =
0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
&nbsp;3&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;4: 10000184 &nbsp; &nbsp; =
0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
&nbsp;4&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;5: 100001f4 &nbsp; &nbsp; =
0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
&nbsp;5&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;6: 10000258 &nbsp; &nbsp; =
0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
&nbsp;6&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;7: 10000268 &nbsp; &nbsp; =
0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
&nbsp;7&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;8: 10000298 &nbsp; &nbsp; =
0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
&nbsp;8&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;9: 100002a4 &nbsp; &nbsp; =
0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
&nbsp;9&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 10: 100002e0 &nbsp; &nbsp; 0 =
SECTION LOCAL &nbsp;DEFAULT &nbsp; 10&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 11: =
1000032c &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
11&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 12: 10000674 &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 12&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 13: =
100006a4 &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
13&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 14: 100006e0 &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 14&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 15: =
100006f4 &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
15&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 16: 10010720 &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 16&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 17: =
10010728 &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
17&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 18: 10010730 &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 18&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 19: =
10010734 &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
19&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 20: 1001073c &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 20&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 21: =
10010804 &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
21&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 22: 1001080c &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 22&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 23: =
10010820 &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
23&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 24: 100108a4 &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 24&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 25: =
00000000 &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
25&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 26: 00000000 &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 26&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 27: =
00000000 &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
27&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 28: 00000000 &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 28&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 29: =
00000000 &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
29&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 30: 00000000 &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 30&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 31: =
00000000 &nbsp; &nbsp; 0 SECTION LOCAL &nbsp;DEFAULT &nbsp; =
31&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 32: 00000000 &nbsp; &nbsp; 0 SECTION LOCAL =
&nbsp;DEFAULT &nbsp; 32&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 33: =
00000000 &nbsp; &nbsp; 0 FILE &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp;ABS =
init.c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; 34: 00000000 &nbsp; &nbsp; 0 FILE &nbsp; =
&nbsp;LOCAL &nbsp;DEFAULT &nbsp;ABS crtstuff.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 35: =
10010720 &nbsp; &nbsp; 0 OBJECT &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 16 =
__CTOR_LIST__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 36: 10010728 &nbsp; &nbsp; 0 =
OBJECT &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 17 =
__DTOR_LIST__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 37: 10010730 &nbsp; &nbsp; 0 =
OBJECT &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 18 =
__JCR_LIST__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 38: 10000350 &nbsp; &nbsp; 0 =
FUNC &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 11 =
deregister_tm_clones</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 39: 10000388 &nbsp; &nbsp; 0 =
FUNC &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 11 =
register_tm_clones</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 40: 100003c4 &nbsp; &nbsp; 0 =
FUNC &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 11 =
__do_global_dtors_aux</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 41: 100108a4 &nbsp; &nbsp; 1 =
OBJECT &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 24 =
completed.6650</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 42: 100108a8 &nbsp; &nbsp; 4 =
OBJECT &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 24 =
dtor_idx.6652</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 43: 10000470 &nbsp; &nbsp; 0 =
FUNC &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 11 =
call___do_global_dtors_au</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 44: =
1000048c &nbsp; &nbsp; 0 FUNC &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 11 =
frame_dummy</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 45: 100004d8 &nbsp; &nbsp; 0 =
FUNC &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 11 =
call_frame_dummy</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 46: 00000000 &nbsp; &nbsp; 0 =
FILE &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp;ABS =
crtstuff.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 47: 10010724 &nbsp; &nbsp; 0 =
OBJECT &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 16 =
__CTOR_END__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 48: 1000071c &nbsp; &nbsp; 0 =
OBJECT &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 15 =
__FRAME_END__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 49: 10010730 &nbsp; &nbsp; 0 =
OBJECT &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 18 =
__JCR_END__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 50: 1000060c &nbsp; &nbsp; 0 =
FUNC &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 11 =
__do_global_ctors_aux</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 51: 10000658 &nbsp; &nbsp; 0 =
FUNC &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 11 =
call___do_global_ctors_au</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 52: =
00000000 &nbsp; &nbsp; 0 FILE &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp;ABS =
helloworld.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 53: 00000000 &nbsp; &nbsp; 0 =
FILE &nbsp; &nbsp;LOCAL &nbsp;DEFAULT &nbsp;ABS =
elf-init.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 54: 10010720 &nbsp; &nbsp; 0 =
NOTYPE &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 16 =
__init_array_end</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 55: 1001073c &nbsp; &nbsp; 0 =
OBJECT &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 20 =
_DYNAMIC</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; 56: 10010720 &nbsp; &nbsp; 0 NOTYPE =
&nbsp;LOCAL &nbsp;DEFAULT &nbsp; 16 =
__init_array_start</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 57: 10010814 &nbsp; &nbsp; 0 =
OBJECT &nbsp;LOCAL &nbsp;DEFAULT &nbsp; 22 =
_GLOBAL_OFFSET_TABLE_</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 58: 10000608 &nbsp; &nbsp; 4 =
FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp; 11 =
__libc_csu_fini</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 59: 00000000 &nbsp; &nbsp; 0 =
NOTYPE &nbsp;WEAK &nbsp; DEFAULT &nbsp;UND =
_ITM_deregisterTMCloneTab</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 60: =
10010804 &nbsp; &nbsp; 0 NOTYPE &nbsp;WEAK &nbsp; DEFAULT &nbsp; 21 =
data_start</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 61: 00000000 &nbsp; &nbsp; 0 =
FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp;UND =
printf@@GLIBC_2.4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 62: 10010820 &nbsp; &nbsp; 0 =
NOTYPE &nbsp;GLOBAL DEFAULT &nbsp;ABS _edata</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 63: =
00000000 &nbsp; &nbsp; 0 FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp;UND =
sleep@@GLIBC_2.0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 64: 10000674 &nbsp; &nbsp; 0 =
FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp; 12 _fini</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 65: =
1001072c &nbsp; &nbsp; 0 OBJECT &nbsp;GLOBAL HIDDEN &nbsp; &nbsp;17 =
__DTOR_END__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 66: 10010804 &nbsp; &nbsp; 0 =
NOTYPE &nbsp;GLOBAL DEFAULT &nbsp; 21 =
__data_start</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 67: 00000000 &nbsp; &nbsp; 0 =
NOTYPE &nbsp;WEAK &nbsp; DEFAULT &nbsp;UND =
__gmon_start__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 68: 10010808 &nbsp; &nbsp; 0 =
OBJECT &nbsp;GLOBAL HIDDEN &nbsp; &nbsp;21 =
__dso_handle</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 69: 100006b4 &nbsp; &nbsp; 4 =
OBJECT &nbsp;GLOBAL DEFAULT &nbsp; 13 =
_IO_stdin_used</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 70: 00000000 &nbsp; &nbsp; 0 =
FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp;UND =
__libc_start_main@@GLIBC_</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 71: =
10000554 &nbsp; 180 FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp; 11 =
__libc_csu_init</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 72: 10018820 &nbsp; &nbsp; 0 =
NOTYPE &nbsp;GLOBAL DEFAULT &nbsp; 22 _SDA_BASE_</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 73: =
00000000 &nbsp; &nbsp; 0 FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp;UND =
putchar@@GLIBC_2.0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 74: 100108ac &nbsp; &nbsp; 0 =
NOTYPE &nbsp;GLOBAL DEFAULT &nbsp;ABS _end</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 75: =
1000032c &nbsp; &nbsp;36 FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp; 11 =
_start</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; 76: 10010820 &nbsp; &nbsp; 0 NOTYPE =
&nbsp;GLOBAL DEFAULT &nbsp;ABS __bss_start</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 77: =
100004f4 &nbsp; &nbsp;92 FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp; 11 =
main</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; 78: 00000000 &nbsp; &nbsp; 0 NOTYPE &nbsp;WEAK =
&nbsp; DEFAULT &nbsp;UND _Jv_RegisterClasses</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 79: =
1001080c &nbsp; &nbsp; 0 OBJECT &nbsp;GLOBAL HIDDEN &nbsp; &nbsp;21 =
__TMC_END__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 80: 00000000 &nbsp; &nbsp; 0 =
NOTYPE &nbsp;WEAK &nbsp; DEFAULT &nbsp;UND =
_ITM_registerTMCloneTable</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 81: =
100002e0 &nbsp; &nbsp; 0 FUNC &nbsp; &nbsp;GLOBAL DEFAULT &nbsp; 10 =
_init</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Histogram for `.gnu.hash' bucket list length =
(total of 2 buckets):</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;Length &nbsp;Number &nbsp; &nbsp; % of =
total &nbsp;Coverage</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; 0 &nbsp;1 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;( 50.0%)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; 1 &nbsp;1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;( 50.0%) &nbsp; =
&nbsp;100.0%</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Version symbols =
section '.gnu.version' contains 7 entries:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;Addr: =
0000000010000258 &nbsp;Offset: 0x000258 &nbsp;Link: 4 =
(.dynsym)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; 000: &nbsp; 0 (*local*) &nbsp; &nbsp; =
&nbsp; 2 (GLIBC_2.4) &nbsp; &nbsp; 3 (GLIBC_2.0) &nbsp; &nbsp; 0 =
(*local*) &nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; 004: &nbsp; 3 (GLIBC_2.0) &nbsp; =
&nbsp; 3 (GLIBC_2.0) &nbsp; &nbsp; 1 (*global*) =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Version needs =
section '.gnu.version_r' contains 1 entries:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;Addr: =
0x0000000010000268 &nbsp;Offset: 0x000268 &nbsp;Link: 5 =
(.dynstr)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; 000000: Version: 1 &nbsp;File: =
libc.so.6 &nbsp;Cnt: 2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; 0x0010: &nbsp; Name: GLIBC_2.0 =
&nbsp;Flags: none &nbsp;Version: 3</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; 0x0020: =
&nbsp; Name: GLIBC_2.4 &nbsp;Flags: none &nbsp;Version: =
2</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Notes at offset 0x00000144 with length =
0x00000020:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; Owner &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Data size<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	=
</span>Description</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; GNU &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;0x00000010<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>NT_GNU_ABI_TAG (ABI version =
tag)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; OS: Linux, ABI: =
2.6.16</font></div><div><br></div><div><br></div><div>Here is the output =
of the objdump -x command:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">${CROSS_COMPILE}objdump -x =
helloworlddynamic</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">helloworlddynamic: =
&nbsp; &nbsp; file format elf32-powerpc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">helloworlddynamic</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">architecture: =
powerpc:common, flags 0x00000112:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">EXEC_P, HAS_SYMS, =
D_PAGED</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">start address 0x1000032c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Program Header:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; PHDR =
off &nbsp; &nbsp;0x00000034 vaddr 0x10000034 paddr 0x10000034 align =
2**2</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;filesz 0x00000100 memsz =
0x00000100 flags r-x</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; INTERP off &nbsp; &nbsp;0x00000134 =
vaddr 0x10000134 paddr 0x10000134 align 2**0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;filesz 0x0000000d memsz 0x0000000d flags =
r--</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; LOAD off &nbsp; &nbsp;0x00000000 vaddr =
0x10000000 paddr 0x10000000 align 2**16</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;filesz 0x00000720 memsz 0x00000720 flags =
r-x</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; LOAD off &nbsp; &nbsp;0x00000720 vaddr =
0x10010720 paddr 0x10010720 align 2**16</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;filesz 0x00000100 memsz 0x0000018c flags =
rwx</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;DYNAMIC off &nbsp; &nbsp;0x0000073c vaddr 0x1001073c =
paddr 0x1001073c align 2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;filesz 0x000000c8 memsz 0x000000c8 flags =
rw-</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; NOTE off &nbsp; &nbsp;0x00000144 vaddr =
0x10000144 paddr 0x10000144 align 2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;filesz 0x00000020 memsz 0x00000020 flags =
r--</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">EH_FRAME off &nbsp; &nbsp;0x000006e0 vaddr 0x100006e0 paddr =
0x100006e0 align 2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;filesz =
0x00000014 memsz 0x00000014 flags r--</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp;STACK =
off &nbsp; &nbsp;0x00000000 vaddr 0x00000000 paddr 0x00000000 align =
2**2</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;filesz 0x00000000 memsz =
0x00000000 flags rw-</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Dynamic =
Section:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; NEEDED &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; libc.so.6</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; INIT &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 0x100002e0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; FINI &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x10000674</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; GNU_HASH &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 0x10000164</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; STRTAB &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x100001f4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; SYMTAB =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x10000184</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; STRSZ &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;0x00000064</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; SYMENT =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x00000010</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; DEBUG &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;0x00000000</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; PLTGOT =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x10010820</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; PLTRELSZ &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 0x0000003c</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; PLTREL &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00000007</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; JMPREL =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x100002a4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; RELA &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 0x10000298</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; RELASZ =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x00000048</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; RELAENT &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;0x0000000c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; VERNEED =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0x10000268</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; VERNEEDNUM &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 0x00000001</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; VERSYM &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x10000258</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Version References:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; required =
from libc.so.6:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 0x0d696910 0x00 03 =
GLIBC_2.0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; 0x0d696914 0x00 02 =
GLIBC_2.4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Sections:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Idx Name &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;Size &nbsp; &nbsp; &nbsp;VMA &nbsp; &nbsp; &nbsp; LMA &nbsp; =
&nbsp; &nbsp; File off &nbsp;Algn</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; 0 .interp =
&nbsp; &nbsp; &nbsp; 0000000d &nbsp;10000134 &nbsp;10000134 =
&nbsp;00000134 &nbsp;2**0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
READONLY, DATA</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; 1 .note.ABI-tag 00000020 =
&nbsp;10000144 &nbsp;10000144 &nbsp;00000144 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, =
DATA</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; 2 .gnu.hash &nbsp; &nbsp; 00000020 &nbsp;10000164 =
&nbsp;10000164 &nbsp;00000164 &nbsp;2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
READONLY, DATA</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; 3 .dynsym &nbsp; &nbsp; &nbsp; =
00000070 &nbsp;10000184 &nbsp;10000184 &nbsp;00000184 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, =
DATA</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; 4 .dynstr &nbsp; &nbsp; &nbsp; 00000064 &nbsp;100001f4 =
&nbsp;100001f4 &nbsp;000001f4 &nbsp;2**0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
READONLY, DATA</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; 5 .gnu.version &nbsp;0000000e =
&nbsp;10000258 &nbsp;10000258 &nbsp;00000258 =
&nbsp;2**1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, =
DATA</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; 6 .gnu.version_r 00000030 &nbsp;10000268 =
&nbsp;10000268 &nbsp;00000268 &nbsp;2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
READONLY, DATA</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; 7 .rela.dyn &nbsp; &nbsp; 0000000c =
&nbsp;10000298 &nbsp;10000298 &nbsp;00000298 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, =
DATA</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; 8 .rela.plt &nbsp; &nbsp; 0000003c &nbsp;100002a4 =
&nbsp;100002a4 &nbsp;000002a4 &nbsp;2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
READONLY, DATA</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; 9 .init &nbsp; &nbsp; &nbsp; &nbsp; =
0000004c &nbsp;100002e0 &nbsp;100002e0 &nbsp;000002e0 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, =
CODE</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;10 .text &nbsp; &nbsp; &nbsp; &nbsp; 00000348 =
&nbsp;1000032c &nbsp;1000032c &nbsp;0000032c =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, =
CODE</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;11 .fini &nbsp; &nbsp; &nbsp; &nbsp; 00000030 =
&nbsp;10000674 &nbsp;10000674 &nbsp;00000674 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, =
CODE</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;12 .rodata &nbsp; &nbsp; &nbsp; 00000039 &nbsp;100006a4 =
&nbsp;100006a4 &nbsp;000006a4 &nbsp;2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
READONLY, DATA</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;13 .eh_frame_hdr 00000014 =
&nbsp;100006e0 &nbsp;100006e0 &nbsp;000006e0 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, READONLY, =
DATA</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;14 .eh_frame &nbsp; &nbsp; 0000002c &nbsp;100006f4 =
&nbsp;100006f4 &nbsp;000006f4 &nbsp;2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
READONLY, DATA</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;15 .ctors &nbsp; &nbsp; &nbsp; =
&nbsp;00000008 &nbsp;10010720 &nbsp;10010720 &nbsp;00000720 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;16 .dtors =
&nbsp; &nbsp; &nbsp; &nbsp;00000008 &nbsp;10010728 &nbsp;10010728 =
&nbsp;00000728 &nbsp;2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
DATA</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;17 .jcr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000004 =
&nbsp;10010730 &nbsp;10010730 &nbsp;00000730 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;18 .got2 =
&nbsp; &nbsp; &nbsp; &nbsp; 00000008 &nbsp;10010734 &nbsp;10010734 =
&nbsp;00000734 &nbsp;2**0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
DATA</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;19 .dynamic &nbsp; &nbsp; &nbsp;000000c8 &nbsp;1001073c =
&nbsp;1001073c &nbsp;0000073c &nbsp;2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
DATA</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;20 .data &nbsp; &nbsp; &nbsp; &nbsp; 00000008 =
&nbsp;10010804 &nbsp;10010804 &nbsp;00000804 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, DATA</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;21 .got =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000014 &nbsp;1001080c &nbsp;1001080c =
&nbsp;0000080c &nbsp;2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, ALLOC, LOAD, =
CODE</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;22 .plt &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000084 =
&nbsp;10010820 &nbsp;10010820 &nbsp;00000820 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; ALLOC, CODE</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;23 .bss =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000008 &nbsp;100108a4 &nbsp;100108a4 =
&nbsp;00000820 &nbsp;2**2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
ALLOC</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;24 .comment &nbsp; &nbsp; &nbsp;00000027 &nbsp;00000000 =
&nbsp;00000000 &nbsp;00000820 &nbsp;2**0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, =
READONLY</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp;25 .debug_aranges 00000038 &nbsp;00000000 =
&nbsp;00000000 &nbsp;00000847 &nbsp;2**0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CONTENTS, READONLY, =
DEBUGGING</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;26 .debug_info &nbsp; 000001d6 =
&nbsp;00000000 &nbsp;00000000 &nbsp;0000087f =
&nbsp;2**0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, READONLY, =
DEBUGGING</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;27 .debug_abbrev 0000014d =
&nbsp;00000000 &nbsp;00000000 &nbsp;00000a55 =
&nbsp;2**0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, READONLY, =
DEBUGGING</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;28 .debug_line &nbsp; 00000113 =
&nbsp;00000000 &nbsp;00000000 &nbsp;00000ba2 =
&nbsp;2**0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, READONLY, =
DEBUGGING</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;29 .debug_frame &nbsp;0000005c =
&nbsp;00000000 &nbsp;00000000 &nbsp;00000cb8 =
&nbsp;2**2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, READONLY, =
DEBUGGING</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;30 .debug_str &nbsp; &nbsp;00000154 =
&nbsp;00000000 &nbsp;00000000 &nbsp;00000d14 =
&nbsp;2**0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, READONLY, =
DEBUGGING</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;31 .debug_loc &nbsp; &nbsp;000000cf =
&nbsp;00000000 &nbsp;00000000 &nbsp;00000e68 =
&nbsp;2**0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; CONTENTS, READONLY, =
DEBUGGING</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">SYMBOL TABLE:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000134 l &nbsp; =
&nbsp;d &nbsp;.interp<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.interp</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000144 l &nbsp; =
&nbsp;d &nbsp;.note.ABI-tag<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.note.ABI-tag</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000164 l &nbsp; =
&nbsp;d &nbsp;.gnu.hash<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.gnu.hash</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000184 l &nbsp; =
&nbsp;d &nbsp;.dynsym<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.dynsym</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100001f4 l &nbsp; =
&nbsp;d &nbsp;.dynstr<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.dynstr</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000258 l &nbsp; =
&nbsp;d &nbsp;.gnu.version<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.gnu.version</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000268 l &nbsp; =
&nbsp;d &nbsp;.gnu.version_r<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.gnu.version_r</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000298 l &nbsp; =
&nbsp;d &nbsp;.rela.dyn<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.rela.dyn</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100002a4 l &nbsp; =
&nbsp;d &nbsp;.rela.plt<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.rela.plt</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100002e0 l &nbsp; =
&nbsp;d &nbsp;.init<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.init</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000032c l &nbsp; =
&nbsp;d &nbsp;.text<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.text</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000674 l &nbsp; =
&nbsp;d &nbsp;.fini<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.fini</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100006a4 l &nbsp; =
&nbsp;d &nbsp;.rodata<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.rodata</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100006e0 l &nbsp; =
&nbsp;d &nbsp;.eh_frame_hdr<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.eh_frame_hdr</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100006f4 l &nbsp; =
&nbsp;d &nbsp;.eh_frame<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.eh_frame</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10010720 l &nbsp; =
&nbsp;d &nbsp;.ctors<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.ctors</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10010728 l &nbsp; =
&nbsp;d &nbsp;.dtors<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.dtors</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10010730 l &nbsp; =
&nbsp;d &nbsp;.jcr<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.jcr</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10010734 l &nbsp; =
&nbsp;d &nbsp;.got2<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.got2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1001073c l &nbsp; =
&nbsp;d &nbsp;.dynamic<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.dynamic</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10010804 l &nbsp; =
&nbsp;d &nbsp;.data<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.data</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1001080c l &nbsp; =
&nbsp;d &nbsp;.got<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.got</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10010820 l &nbsp; =
&nbsp;d &nbsp;.plt<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.plt</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100108a4 l &nbsp; =
&nbsp;d &nbsp;.bss<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.bss</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 l &nbsp; =
&nbsp;d &nbsp;.comment<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.comment</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 l &nbsp; =
&nbsp;d &nbsp;.debug_aranges<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.debug_aranges</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 l &nbsp; =
&nbsp;d &nbsp;.debug_info<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.debug_info</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 l &nbsp; =
&nbsp;d &nbsp;.debug_abbrev<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.debug_abbrev</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 l &nbsp; =
&nbsp;d &nbsp;.debug_line<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.debug_line</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 l &nbsp; =
&nbsp;d &nbsp;.debug_frame<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.debug_frame</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 l &nbsp; =
&nbsp;d &nbsp;.debug_str<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.debug_str</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 l &nbsp; =
&nbsp;d &nbsp;.debug_loc<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;.debug_loc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 l &nbsp; =
&nbsp;df *ABS*<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;init.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">00000000 l &nbsp; &nbsp;df *ABS*<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;crtstuff.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010720 l &nbsp; &nbsp; O .ctors<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__CTOR_LIST__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010728 l &nbsp; &nbsp; O .dtors<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__DTOR_LIST__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010730 l &nbsp; &nbsp; O .jcr<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__JCR_LIST__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000350 l &nbsp; &nbsp; F .text<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;deregister_tm_clones</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000388 l &nbsp; =
&nbsp; F .text<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;register_tm_clones</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">100003c4 l &nbsp; &nbsp; F .text<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__do_global_dtors_aux</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100108a4 l &nbsp; =
&nbsp; O .bss<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000001 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;completed.6650</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100108a8 l &nbsp; &nbsp; O .bss<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000004 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;dtor_idx.6652</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000470 l &nbsp; &nbsp; F .text<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;call___do_global_dtors_aux</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000048c l &nbsp; =
&nbsp; F .text<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;frame_dummy</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004d8 l &nbsp; &nbsp; F .text<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;call_frame_dummy</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">00000000 l &nbsp; &nbsp;df *ABS*<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;crtstuff.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010724 l &nbsp; &nbsp; O .ctors<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__CTOR_END__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000071c l &nbsp; &nbsp; O .eh_frame<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__FRAME_END__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010730 l &nbsp; &nbsp; O .jcr<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__JCR_END__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000060c l &nbsp; &nbsp; F .text<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__do_global_ctors_aux</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000658 l &nbsp; =
&nbsp; F .text<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;call___do_global_ctors_aux</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 l &nbsp; =
&nbsp;df *ABS*<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;helloworld.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">00000000 l &nbsp; &nbsp;df *ABS*<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;elf-init.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010720 l &nbsp; &nbsp; &nbsp; .ctors<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__init_array_end</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1001073c l &nbsp; &nbsp; O .dynamic<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_DYNAMIC</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010720 l &nbsp; &nbsp; &nbsp; .ctors<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__init_array_start</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">10010814 l &nbsp; &nbsp; O .got<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_GLOBAL_OFFSET_TABLE_</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000608 g &nbsp; =
&nbsp; F .text<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000004 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__libc_csu_fini</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">00000000 &nbsp;w &nbsp; &nbsp; =
&nbsp;*UND*<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_ITM_deregisterTMCloneTable</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10010804 &nbsp;w =
&nbsp; &nbsp; &nbsp;.data<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;data_start</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 &nbsp; =
&nbsp; &nbsp; F *UND*<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;printf@@GLIBC_2.4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10010820 g &nbsp; =
&nbsp; &nbsp; *ABS*<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;_edata</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">00000000 &nbsp; =
&nbsp; &nbsp; F *UND*<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00000000 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;sleep@@GLIBC_2.0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000674 g &nbsp; =
&nbsp; F .fini<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_fini</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1001072c g &nbsp; &nbsp; O .dtors<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.hidden =
__DTOR_END__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010804 g &nbsp; &nbsp; &nbsp; .data<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__data_start</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">00000000 &nbsp;w &nbsp; &nbsp; =
&nbsp;*UND*<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__gmon_start__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010808 g &nbsp; &nbsp; O .data<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.hidden =
__dso_handle</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100006b4 g &nbsp; &nbsp; O .rodata<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000004 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_IO_stdin_used</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">00000000 &nbsp; &nbsp; &nbsp; F *UND*<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__libc_start_main@@GLIBC_2.0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000554 g &nbsp; =
&nbsp; F .text<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>000000b4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__libc_csu_init</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10018820 g &nbsp; &nbsp; &nbsp; .got<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_SDA_BASE_</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">00000000 &nbsp; &nbsp; &nbsp; F *UND*<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;putchar@@GLIBC_2.0</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">100108ac g &nbsp; &nbsp; &nbsp; *ABS*<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_end</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000032c g &nbsp; &nbsp; F .text<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000024 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_start</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10010820 g &nbsp; &nbsp; &nbsp; *ABS*<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00000000 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;__bss_start</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004f4 g &nbsp; &nbsp; F .text<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>0000005c =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;main</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">00000000 &nbsp;w &nbsp; &nbsp; =
&nbsp;*UND*<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_Jv_RegisterClasses</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1001080c g &nbsp; =
&nbsp; O .data<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.hidden =
__TMC_END__</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">00000000 &nbsp;w &nbsp; &nbsp; =
&nbsp;*UND*<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_ITM_registerTMCloneTable</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100002e0 g &nbsp; =
&nbsp; F .init<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>00000000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;_init</font></div></div><div><br></div></div><div><br></div><div>Elv=
is Dowson</div><br></div></body></html>=

--Apple-Mail=_A6795ABE-3746-4383-B1B0-C02DF7381833--
