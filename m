Return-Path: <lizhijian@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7D48E015C1;
	Sun, 22 Sep 2013 19:35:12 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.90,938,1371052800"; 
   d="scan'208";a="8590798"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 23 Sep 2013 10:31:54 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r8N2Z6q7004488;
	Mon, 23 Sep 2013 10:35:06 +0800
Received: from [127.0.0.1] ([10.167.226.56])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013092310332763-1689231 ;
	Mon, 23 Sep 2013 10:33:27 +0800 
Message-ID: <523FA8C1.5020101@cn.fujitsu.com>
Date: Mon, 23 Sep 2013 10:34:41 +0800
From: Li Zhijian <lizhijian@cn.fujitsu.com>
Organization: fnst-ulinux
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
References: <523BEF04.5070308@cn.fujitsu.com>
	<20130920084330.GA14107@lpalcu-linux>
	<20130920085039.GB14107@lpalcu-linux>
	<523C1BC9.5070303@cn.fujitsu.com>
	<20130920100227.GC14107@lpalcu-linux>
	<523C228F.7060700@cn.fujitsu.com>
	<20130920110021.GD14107@lpalcu-linux>
In-Reply-To: <20130920110021.GD14107@lpalcu-linux>
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/09/23 10:33:27,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/09/23 10:33:28
Cc: Yocto list discussion <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Re: [poky] Is this a bug of binutils
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Sep 2013 02:35:16 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

at 2013-9-20 19:00, Laurentiu Palcu wrote:
> Hi,
>
> On Fri, Sep 20, 2013 at 06:25:19PM +0800, Li Zhijian wrote:
>>>>>>> III=EF=BC=89 compile a simple C program
>>>>>>> # cat test.c
>>>>>>> int main ()
>>>>>>> {
>>>>>>> printf("hello world\n");
>>>>>>> return 0;
>>>>>>> }
>>>>>>> # source toolchain-1.3-tcmode-default/environment-setup-x86=5F64-po=
ky-linux
>>>>>>> # $CC -o test test.c -L tmp/sysroots/qemux86-64/usr/lib/ -lm
> OK, it looks like something strange happens in your setup.
>
> To debug it, let's add '-Wl,--verbose' at the end of your command and you
> should be able to see where the linker is looking for libraries. Also,
> the linker script will be printed.
>
> You should see it try your directory first
> tmp/sysroots/qemux86-64/usr/lib/, and then fall through the default ones
> with the sysroot prefix added and, at the end, the system ones:
> /lib:/usr/lib.
>
> Thanks,
> Laurentiu

First=EF=BC=8Cin this case

[lizj@suika x86-64-yocto-1.3]$ source toolchain-1.3-tcmode-default/environm=
ent-setup-x86=5F64-poky-linux
[lizj@suika x86-64-yocto-1.3]$ echo $CC
x86=5F64-poky-linux-gcc -m64 --sysroot=3D/yocto/fnst/lizj/build=5Fyocto/x86=
-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux
[lizj@suika x86-64-yocto-1.3]$ $CC -o test test.c -L tmp/sysroots/qemux86-6=
4/usr/lib/ -lm -Wl,--verbose
test.c: In function 'main':
test.c:3:9: warning: incompatible implicit declaration of built-in function=
 'printf' [enabled by default]
GNU ld (GNU Binutils) 2.23.1.20121113
   Supported emulations:
    elf=5Fx86=5F64
    elf32=5Fx86=5F64
    elf=5Fi386
    i386linux
    elf=5Fl1om
    elf=5Fk1om
using internal linker script:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
/* Script for -z combreloc: combine and sort reloc sections */
OUTPUT=5FFORMAT("elf64-x86-64", "elf64-x86-64",
               "elf64-x86-64")
OUTPUT=5FARCH(i386:x86-64)
ENTRY(=5Fstart)
SEARCH=5FDIR("/opt/poky/1.3+snapshot/sysroots/x86=5F64-pokysdk-linux/usr/x8=
6=5F64-poky-linux/lib64"); SEARCH=5FDIR("=3D/usr/local/lib64"); SEARCH=5FDI=
R("=3D/lib64"); SEARCH=5FDIR("=3D/usr/lib64"); SEARCH=5FDIR("=3D/usr/local/=
lib"); SEARCH=5FDIR("=3D/lib"); SEARCH=5FDIR("=3D/usr/lib");
SECTIONS
{
   /* Read-only sections, merged into text segment: */
   PROVIDE (=5F=5Fexecutable=5Fstart =3D SEGMENT=5FSTART("text-segment", 0x=
400000)); . =3D SEGMENT=5FSTART("text-segment", 0x400000) + SIZEOF=5FHEADER=
S;
   .interp         : { *(.interp) }
   .note.gnu.build-id : { *(.note.gnu.build-id) }
   .hash           : { *(.hash) }
   .gnu.hash       : { *(.gnu.hash) }
   .dynsym         : { *(.dynsym) }
   .dynstr         : { *(.dynstr) }
   .gnu.version    : { *(.gnu.version) }
   .gnu.version=5Fd  : { *(.gnu.version=5Fd) }
   .gnu.version=5Fr  : { *(.gnu.version=5Fr) }
   .rela.dyn       :
     {
       *(.rela.init)
       *(.rela.text .rela.text.* .rela.gnu.linkonce.t.*)
       *(.rela.fini)
       *(.rela.rodata .rela.rodata.* .rela.gnu.linkonce.r.*)
       *(.rela.data .rela.data.* .rela.gnu.linkonce.d.*)
       *(.rela.tdata .rela.tdata.* .rela.gnu.linkonce.td.*)
       *(.rela.tbss .rela.tbss.* .rela.gnu.linkonce.tb.*)
       *(.rela.ctors)
       *(.rela.dtors)
       *(.rela.got)
       *(.rela.bss .rela.bss.* .rela.gnu.linkonce.b.*)
       *(.rela.ldata .rela.ldata.* .rela.gnu.linkonce.l.*)
       *(.rela.lbss .rela.lbss.* .rela.gnu.linkonce.lb.*)
       *(.rela.lrodata .rela.lrodata.* .rela.gnu.linkonce.lr.*)
       *(.rela.ifunc)
     }
   .rela.plt       :
     {
       *(.rela.plt)
       PROVIDE=5FHIDDEN (=5F=5Frela=5Fiplt=5Fstart =3D .);
       *(.rela.iplt)
       PROVIDE=5FHIDDEN (=5F=5Frela=5Fiplt=5Fend =3D .);
     }
   .init           :
   {
     KEEP (*(SORT=5FNONE(.init)))
   }
   .plt            : { *(.plt) *(.iplt) }
   .text           :
   {
     *(.text.unlikely .text.*=5Funlikely)
     *(.text.exit .text.exit.*)
     *(.text.startup .text.startup.*)
     *(.text.hot .text.hot.*)
     *(.text .stub .text.* .gnu.linkonce.t.*)
     /* .gnu.warning sections are handled specially by elf32.em.  */
     *(.gnu.warning)
   }
   .fini           :
   {
     KEEP (*(SORT=5FNONE(.fini)))
   }
   PROVIDE (=5F=5Fetext =3D .);
   PROVIDE (=5Fetext =3D .);
   PROVIDE (etext =3D .);
   .rodata         : { *(.rodata .rodata.* .gnu.linkonce.r.*) }
   .rodata1        : { *(.rodata1) }
   .eh=5Fframe=5Fhdr : { *(.eh=5Fframe=5Fhdr) }
   .eh=5Fframe       : ONLY=5FIF=5FRO { KEEP (*(.eh=5Fframe)) }
   .gcc=5Fexcept=5Ftable   : ONLY=5FIF=5FRO { *(.gcc=5Fexcept=5Ftable
   .gcc=5Fexcept=5Ftable.*) }
   /* These sections are generated by the Sun/Oracle C++ compiler. */
   .exception=5Franges   : ONLY=5FIF=5FRO { *(.exception=5Franges
   .exception=5Franges*) }
   /* Adjust the address for the data segment.  We want to adjust up to
      the same address within the page on the next page up.  */
   . =3D ALIGN (CONSTANT (MAXPAGESIZE)) - ((CONSTANT (MAXPAGESIZE) - .) & (=
CONSTANT (MAXPAGESIZE) - 1)); . =3D DATA=5FSEGMENT=5FALIGN (CONSTANT (MAXPA=
GESIZE), CONSTANT (COMMONPAGESIZE));
   /* Exception handling  */
   .eh=5Fframe       : ONLY=5FIF=5FRW { KEEP (*(.eh=5Fframe)) }
   .gcc=5Fexcept=5Ftable   : ONLY=5FIF=5FRW { *(.gcc=5Fexcept=5Ftable .gcc=
=5Fexcept=5Ftable.*) }
   .exception=5Franges   : ONLY=5FIF=5FRW { *(.exception=5Franges .exceptio=
n=5Franges*) }
   /* Thread Local Storage sections  */
   .tdata          : { *(.tdata .tdata.* .gnu.linkonce.td.*) }
   .tbss           : { *(.tbss .tbss.* .gnu.linkonce.tb.*) *(.tcommon) }
   .preinit=5Farray     :
   {
     PROVIDE=5FHIDDEN (=5F=5Fpreinit=5Farray=5Fstart =3D .);
     KEEP (*(.preinit=5Farray))
     PROVIDE=5FHIDDEN (=5F=5Fpreinit=5Farray=5Fend =3D .);
   }
   .init=5Farray     :
   {
     PROVIDE=5FHIDDEN (=5F=5Finit=5Farray=5Fstart =3D .);
     KEEP (*(SORT(.init=5Farray.*)))
     KEEP (*(.init=5Farray))
     PROVIDE=5FHIDDEN (=5F=5Finit=5Farray=5Fend =3D .);
   }
   .fini=5Farray     :
   {
     PROVIDE=5FHIDDEN (=5F=5Ffini=5Farray=5Fstart =3D .);
     KEEP (*(SORT(.fini=5Farray.*)))
     KEEP (*(.fini=5Farray))
     PROVIDE=5FHIDDEN (=5F=5Ffini=5Farray=5Fend =3D .);
   }
   .ctors          :
   {
     /* gcc uses crtbegin.o to find the start of
        the constructors, so we make sure it is
        first.  Because this is a wildcard, it
        doesn't matter if the user does not
        actually link against crtbegin.o; the
        linker won't look for a file to match a
        wildcard.  The wildcard also means that it
        doesn't matter which directory crtbegin.o
        is in.  */
     KEEP (*crtbegin.o(.ctors))
     KEEP (*crtbegin?.o(.ctors))
     /* We don't want to include the .ctor section from
        the crtend.o file until after the sorted ctors.
        The .ctor section from the crtend file contains the
        end of ctors marker and it must be last */
     KEEP (*(EXCLUDE=5FFILE (*crtend.o *crtend?.o ) .ctors))
     KEEP (*(SORT(.ctors.*)))
     KEEP (*(.ctors))
   }
   .dtors          :
   {
     KEEP (*crtbegin.o(.dtors))
     KEEP (*crtbegin?.o(.dtors))
     KEEP (*(EXCLUDE=5FFILE (*crtend.o *crtend?.o ) .dtors))
     KEEP (*(SORT(.dtors.*)))
     KEEP (*(.dtors))
   }
   .jcr            : { KEEP (*(.jcr)) }
   .data.rel.ro : { *(.data.rel.ro.local* .gnu.linkonce.d.rel.ro.local.*) *=
(.data.rel.ro .data.rel.ro.* .gnu.linkonce.d.rel.ro.*) }
   .dynamic        : { *(.dynamic) }
   .got            : { *(.got) *(.igot) }
   . =3D DATA=5FSEGMENT=5FRELRO=5FEND (SIZEOF (.got.plt) >=3D 24 ? 24 : 0, =
.);
   .got.plt        : { *(.got.plt)  *(.igot.plt) }
   .data           :
   {
     *(.data .data.* .gnu.linkonce.d.*)
     SORT(CONSTRUCTORS)
   }
   .data1          : { *(.data1) }
   =5Fedata =3D .; PROVIDE (edata =3D .);
   . =3D .;
   =5F=5Fbss=5Fstart =3D .;
   .bss            :
   {
    *(.dynbss)
    *(.bss .bss.* .gnu.linkonce.b.*)
    *(COMMON)
    /* Align here to ensure that the .bss section occupies space up to
       =5Fend.  Align after .bss to ensure correct alignment even if the
       .bss section disappears because there are no input sections.
       FIXME: Why do we need it? When there is no .bss section, we don't
       pad the .data section.  */
    . =3D ALIGN(. !=3D 0 ? 64 / 8 : 1);
   }
   .lbss   :
   {
     *(.dynlbss)
     *(.lbss .lbss.* .gnu.linkonce.lb.*)
     *(LARGE=5FCOMMON)
   }
   . =3D ALIGN(64 / 8);
   .lrodata   ALIGN(CONSTANT (MAXPAGESIZE)) + (. & (CONSTANT (MAXPAGESIZE) =
- 1)) :
   {
     *(.lrodata .lrodata.* .gnu.linkonce.lr.*)
   }
   .ldata   ALIGN(CONSTANT (MAXPAGESIZE)) + (. & (CONSTANT (MAXPAGESIZE) - =
1)) :
   {
     *(.ldata .ldata.* .gnu.linkonce.l.*)
     . =3D ALIGN(. !=3D 0 ? 64 / 8 : 1);
   }
   . =3D ALIGN(64 / 8);
   =5Fend =3D .; PROVIDE (end =3D .);
   . =3D DATA=5FSEGMENT=5FEND (.);
   /* Stabs debugging sections.  */
   .stab          0 : { *(.stab) }
   .stabstr       0 : { *(.stabstr) }
   .stab.excl     0 : { *(.stab.excl) }
   .stab.exclstr  0 : { *(.stab.exclstr) }
   .stab.index    0 : { *(.stab.index) }
   .stab.indexstr 0 : { *(.stab.indexstr) }
   .comment       0 : { *(.comment) }
   /* DWARF debug sections.
      Symbols in the DWARF debugging sections are relative to the beginning
      of the section so we begin them at 0.  */
   /* DWARF 1 */
   .debug          0 : { *(.debug) }
   .line           0 : { *(.line) }
   /* GNU DWARF 1 extensions */
   .debug=5Fsrcinfo  0 : { *(.debug=5Fsrcinfo) }
   .debug=5Fsfnames  0 : { *(.debug=5Fsfnames) }
   /* DWARF 1.1 and DWARF 2 */
   .debug=5Faranges  0 : { *(.debug=5Faranges) }
   .debug=5Fpubnames 0 : { *(.debug=5Fpubnames) }
   /* DWARF 2 */
   .debug=5Finfo     0 : { *(.debug=5Finfo .gnu.linkonce.wi.*) }
   .debug=5Fabbrev   0 : { *(.debug=5Fabbrev) }
   .debug=5Fline     0 : { *(.debug=5Fline) }
   .debug=5Fframe    0 : { *(.debug=5Fframe) }
   .debug=5Fstr      0 : { *(.debug=5Fstr) }
   .debug=5Floc      0 : { *(.debug=5Floc) }
   .debug=5Fmacinfo  0 : { *(.debug=5Fmacinfo) }
   /* SGI/MIPS DWARF 2 extensions */
   .debug=5Fweaknames 0 : { *(.debug=5Fweaknames) }
   .debug=5Ffuncnames 0 : { *(.debug=5Ffuncnames) }
   .debug=5Ftypenames 0 : { *(.debug=5Ftypenames) }
   .debug=5Fvarnames  0 : { *(.debug=5Fvarnames) }
   /* DWARF 3 */
   .debug=5Fpubtypes 0 : { *(.debug=5Fpubtypes) }
   .debug=5Franges   0 : { *(.debug=5Franges) }
   /* DWARF Extension.  */
   .debug=5Fmacro    0 : { *(.debug=5Fmacro) }
   .gnu.attributes 0 : { KEEP (*(.gnu.attributes)) }
   /DISCARD/ : { *(.note.GNU-stack) *(.gnu=5Fdebuglink) *(.gnu.lto=5F*) }
}


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-poky-linux/usr/lib/../lib/crt1.o succee=
ded
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-poky-linux/usr/lib/../lib/crt1.o
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-poky-linux/usr/lib/../lib/crti.o succee=
ded
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-poky-linux/usr/lib/../lib/crti.o
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-poky-linux/usr/lib/x86=5F64-poky-linux/=
4.7.2/crtbegin.o succeeded
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-poky-linux/usr/lib/x86=5F64-poky-linux/4.7.2/crtbegin.o
attempt to open /tmp/ccyeJPMB.o succeeded
/tmp/ccyeJPMB.o
attempt to open tmp/sysroots/qemux86-64/usr/lib//libm.so succeeded
-lm (tmp/sysroots/qemux86-64/usr/lib//libm.so)
attempt to open tmp/sysroots/qemux86-64/usr/lib//libgcc.so failed
attempt to open tmp/sysroots/qemux86-64/usr/lib//libgcc.a failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-lin=
ux/../../lib/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/libgcc.so fa=
iled
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-lin=
ux/../../lib/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/libgcc.a fai=
led
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-lin=
ux/../../lib/x86=5F64-poky-linux/gcc/libgcc.so failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-lin=
ux/../../lib/x86=5F64-poky-linux/gcc/libgcc.a failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-poky-linux/lib/../lib/libgcc.so failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-poky-linux/lib/../lib/libgcc.a failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-poky-linux/usr/lib/x86=5F64-poky-linux/=
4.7.2/libgcc.so failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-poky-linux/usr/lib/x86=5F64-poky-linux/=
4.7.2/libgcc.a succeeded
attempt to open tmp/sysroots/qemux86-64/usr/lib//libgcc=5Fs.so failed
attempt to open tmp/sysroots/qemux86-64/usr/lib//libgcc=5Fs.a failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-lin=
ux/../../lib/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/libgcc=5Fs.s=
o failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-lin=
ux/../../lib/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/libgcc=5Fs.a=
 failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-lin=
ux/../../lib/x86=5F64-poky-linux/gcc/libgcc=5Fs.so failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-lin=
ux/../../lib/x86=5F64-poky-linux/gcc/libgcc=5Fs.a failed
attempt to open /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1=
.3-tcmode-default/sysroots/x86=5F64-poky-linux/lib/../lib/libgcc=5Fs.so suc=
ceeded
-lgcc=5Fs (/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tc=
mode-default/sysroots/x86=5F64-poky-linux/lib/../lib/libgcc=5Fs.so)
attempt to open tmp/sysroots/qemux86-64/usr/lib//libc.so succeeded
opened script file tmp/sysroots/qemux86-64/usr/lib//libc.so
opened script file tmp/sysroots/qemux86-64/usr/lib//libc.so
attempt to open /lib/libc.so.6 succeeded
attempt to open /usr/lib/libc=5Fnonshared.a succeeded
attempt to open /lib/ld-linux-x86-64.so.2 succeeded
/lib/ld-linux-x86-64.so.2
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libexec=
/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: skipping incompatibl=
e /lib/libc.so.6 when searching for /lib/libc.so.6
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libexec=
/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: cannot find /lib/lib=
c.so.6
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libexec=
/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: skipping incompatibl=
e /usr/lib/libc=5Fnonshared.a when searching for /usr/lib/libc=5Fnonshared.a
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libexec=
/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: cannot find /usr/lib=
/libc=5Fnonshared.a
collect2: error: ld returned 1 exit status

--=20
Best regards.
Li Zhijian


=

