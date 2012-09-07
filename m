Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B67CFE01517
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 20:22:18 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so3900900pbb.35
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 20:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=JS1xXO7sCjz3kjAlzhPOj+MNVof1b0UG4WmNomGv2ss=;
	b=dkQSPqCSIX6bY2tK2gJUlXtlsY1FwB3LdwLPetAJ/m0NyRO4zWmhtPvrdx662TcdIe
	diL4ooqW9Jl6jIcabgytNfdkRfY2lHe+G0bw5XD6OvT15Ox+VVvI+7aEqRKCqAAkUaft
	2oehuHwymZVDNwrDNYIAREmSphlUMOLoZmWROnWyMzPwe+r/nMUF3xKrxlcrNuuKKFAG
	/LLIBdmGlQBRzLICRwigpfV9xszdf81ZIQ41er5z9Oh/qmCo6kcxSeD+cNfOcvu904a8
	GZRkNMpz9FC1+mSGrH/XRtiMT8MvgK8eywoUq1/3di5+YGJLfBmFBT4DUiU9w8l8lAaa
	Eomw==
Received: by 10.68.130.67 with SMTP id oc3mr8232561pbb.18.1346988124374;
	Thu, 06 Sep 2012 20:22:04 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id qn3sm2402577pbc.6.2012.09.06.20.22.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 06 Sep 2012 20:22:03 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
Date: Fri, 7 Sep 2012 07:21:57 +0400
Message-Id: <AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
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
X-List-Received-Date: Fri, 07 Sep 2012 03:22:18 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_98A55373-CD15-4A4D-82AA-240D857A8CF8"

--Apple-Mail=_98A55373-CD15-4A4D-82AA-240D857A8CF8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Sep 6, 2012, at 7:19 PM, Elvis Dowson wrote:

>>=20
>> issues:
>>=20
>> The first problem I encountered was trying to build =
gcc-cross-initial:
>>   This target does not support --with-float.
>>=20
>=20
> If you look at the tune file, it says TARGET_FPU =3D "soft", which =
means
> software floating point emulation.
>=20
> However, the gcc toolchain recipes are trying to build with hardware =
floating
> point support, from the error message.

My bad, the error was because the --with-float option does not exist for =
the
microblaze processor

Looking at the gcc options for microblaze from=20

http://gcc.gnu.org/onlinedocs/gcc/Option-Summary.html

MicroBlaze Options

          -msoft-float -mhard-float -msmall-divides -mcpu=3Dcpu=20
          -mmemcpy -mxl-soft-mul -mxl-soft-div -mxl-barrel-shift=20
          -mxl-pattern-compare -mxl-stack-check -mxl-gp-opt =
-mno-clearbss=20
          -mxl-multiply-high -mxl-float-convert -mxl-float-sqrt=20
          -mxl-mode-app-model

So, the next step is to try and modify the tune files, slightly. I =
recall someone from
windriver mentioned that TARGET_FPU is to be explicitly set specified =
only if a=20
special hardware FPU was used. When it is blank, it means default, which =
is
hardware floating point. Software floating point gets set automatically =
from
other settings in the tune file.

So the first thing to try is to remove any entry for TARGET_FPU =3D =
"soft" from
any tune file that you are referencing. It will get set automatically at =
build time,
as far as I know from the other options in the tune file.



> opening microblaze-c.o: No such file or directory
> make[1]: *** [cc1-checksum.c] Error 1
> rm cpp.pod gcov.pod gfdl.pod gcc.pod fsf-funding.pod
> make[1]: Leaving directory
> =
`/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/work/microblazeel-po=
ky-linux/gcc-cross-initial-4.7.1.0+git1+d07e24f4ab59f264d68d21838795349faa=
b5dede-r11/gcc-4_7-branch/build.x86_64-linux.microblaze-poky-linux/gcc'
> make: *** [all-gcc] Error 2
> ERROR: oe_runmake failed
> ERROR: Function failed: do_compile

The second thing to look at is the above error that you got.=20

Perhaps the reason why it couldn't find the microblaze-c.o output file =
was because in the gcc sources, there is no cpu=3Dmicroblazeel, but only =
cpu=3Dmicroblaze

=
http://gcc.gnu.org/git/?p=3Dgcc.git;a=3Dblob;f=3Dgcc/config/microblaze/mic=
roblaze-c.c;h=3D32c38da311b12b07cc1ed9fbf13f7946291f2857;hb=3Drefs/heads/g=
cc-4_7-branch

void=20
microblaze_cpp_define (cpp_reader *pfile)
{
  builtin_assert ("cpu=3Dmicroblaze");
  builtin_assert ("machine=3Dmicroblaze");
  builtin_define ("__MICROBLAZE__");
  if (!TARGET_SOFT_MUL)=20
    {
      if (!flag_iso)
        builtin_define ("HAVE_HW_MUL");
      builtin_define ("__HAVE_HW_MUL__");
    }

So, we will need to examine the tune files that you are using for your =
particular machine configuration, and ensure that it is setting the =
correct cpu type

What you could start off, as a quick test would be to replace the =
selected tune file in spartan6-lx9mb.conf and change it to use =
tune-microblaze.inc instead of tune-microblazeel.inc, because the latter =
appears to incorrectly set the cpu to microblazeel, I think.

File: meta-xilinx/tree/conf/machine/spartan6-lx9mb.conf
# Copyright (C) 2011, SecretLab Technologies Ltd.
# Adrian Alonso <aalonso@secretlab.ca>
# Released under the MIT license (see packages/COPYING)
#@TYPE: Machine
#@Name: Xilinx generic microblaze target support
#@DESCRIPTION: Machine configuration for Xilinx Microblaze
# Supported target: spartan6-lx9mb
#
# Xilinx EDK override hardware  definitions for xilinx-bsp
# Include in your local.conf
# XILINX_BSP_PATH =3D "complete path for Xilinx XPS project"

TARGET_CPU =3D "microblaze"
# tune for the microblaze little endian cpu
-require conf/machine/include/tune-microblazeel.inc
+require conf/machine/include/tune-microblaze.inc

PREFERRED_PROVIDER_virtual/kernel =3D "linux-xilinx"
PREFERRED_VERSION_u-boot =3D "uboot-xilinx"
# Add uboot to rootfs
EXTRA_IMAGEDEPENDS +=3D "u-boot-xilinx"
XILINX_BOARD =3D "microblaze-generic"

KERNEL_IMAGETYPE =3D "simpleImage.system"

MACHINE_FEATURES =3D "kernel26 apm ext2 vfat ethernet"
MACHINE_EXTRA_RECOMMENDS =3D "kernel-modules"

UBOOT_ENTRYPOINT ?=3D "0xBC000000"
UBOOT_LOADADDRESS ?=3D "0xBC000000"
UBOOT_MACHINE ?=3D "microblaze-generic_config"

# Don't use tty1
USE_VT =3D "0"
SERIAL_CONSOLE =3D "115200 ttyUL0"

# Device nodes add xsa for (system ace)
IMAGE_DEVICE_TABLES =3D "files/device_table-minimal.txt \
                       files/device_table_add-xsa.txt"

Perhaps if you could try the above two changes, i.e. remove the =
TARGET_FPU =3D "soft" from the tune file, and switch tune files so that =
the correct cpu type is set, and see if the gcc-initial compilation =
progresses?

File: meta-xilinx/plain/conf/machine/include/tune-microblaze.inc
# Tune options for microblaze

require conf/machine/include/microblaze/arch-microblaze.inc

-TARGET_FPU =3D "soft"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "microblaze", =
"-mcpu=3Dv8.10a", "", d)}"

#MACHINEOVERRIDES .=3D "microblaze"

If that works, then maybe we could update the tune-microblaze.inc files, =
so that it uses the variables defined in the following file, which I =
updated recently for powerpc440 soft float

File: meta-xilinx/tree/conf/machine/include/tune-ppc440.inc

DEFAULTTUNE ?=3D "ppc440"

require conf/machine/include/powerpc/arch-powerpc.inc

TUNEVALID[ppc440] =3D "Enable ppc440 specific processor optimizations"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc440", =
"-mcpu=3D440", "", d)}"

AVAILTUNES +=3D "ppc440"
TUNE_FEATURES_tune-ppc440 =3D "m32 fpu-soft ppc440"
TUNE_PKGARCH_tune-ppc440 =3D "ppc440"
PACKAGE_EXTRA_ARCHS_tune-ppc440 =3D =
"${PACKAGE_EXTRA_ARCHS_tune-powerpc-nf} ppc440"

# glibc configure options to get ppc440 specific library (for sqrt)
GLIBC_EXTRA_OECONF +=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc440", =
"-with-cpu=3D440", "", d)}"

I don't see the need for tune-microblazeel.inc, and you could merge the =
contents of tune-microblazeel.inc, taking care not to define cpu =3D =
"microblazeel", as highlighed in red below. that should only be =
microblaze.=20

meta-xilinx/conf.machine/include/tune-microblazeel.inc

# Tune options for microblaze endian little
DEFAULTTUNE ?=3D "microblazeel"

require conf/machine/include/microblaze/arch-microblaze.inc

TUNEVALID[microblazeel] =3D "Enable microblaze endian little =
optimizations"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "microblazeel", =
"-mcpu=3Dv8.10a", "", d)}"
TUNE_PKGARCH =3D "${@bb.utils.contains("TUNE_FEATURES", "microblazeel", =
"microblazeel", "microblazeel", d)}"

TARGET_FPU =3D "soft"

AVAILTUNES +=3D "microblazeel"
TUNE_FEATURES_tune-microblazeel =3D "m32 microblazeel"
PACKAGE_EXTRA_ARCHS_tune-microblazeel =3D "microblazeel"

#MACHINEOVERRIDES .=3D "microblaze"


Summary

01. Remove the TARGET_FPU =3D "soft" specification

02. Quickly test the machine/spartan6-lx9mb.conf by temporarily changing =
the tune file to include/tune-microblaze.inc, and see if the toolchain =
gets built using gcc-4.7 recipes.

03. If that works, then update the include/tune-microblaze.inc, to make =
it more current by looking at include/tune-ppc440.inc. We could =
potentially delete include/tune-microblazeel.inc, since after including =
same variables from include/tune-ppc440.inc, into=20
include/tune-microblaze.inc, it would end up nearly looking like =
include/tune-microblazeel.inc, without the erroneous cpu=3Dmicroblazeel =
spec in TUNE_CCARGS.

04. Later on create a include/tune-microblazee.inc file, for hardware =
floating point support.

Do let me know how it goes!

Best regards,

Elvis Dowson=

--Apple-Mail=_98A55373-CD15-4A4D-82AA-240D857A8CF8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Sep 6, 2012, at 7:19 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div><blockquote type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">issues:<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">The first =
problem I encountered was trying to build =
gcc-cross-initial:<br></blockquote><blockquote type=3D"cite"> =
&nbsp;&nbsp;This target does not support =
--with-float.<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><br>If you look at the tune file, it says =
TARGET_FPU =3D "soft", which means<br>software floating point =
emulation.<br><br>However, the gcc toolchain recipes are trying to build =
with hardware floating<br>point support, from the error =
message.<br></div></blockquote></div><br><div>My bad, the error was =
because the --with-float option does not exist for =
the</div><div>microblaze =
processor</div><div><br></div><div><div><div>Looking at the gcc options =
for microblaze from&nbsp;</div><div><br></div><div><a =
href=3D"http://gcc.gnu.org/onlinedocs/gcc/Option-Summary.html">http://gcc.=
gnu.org/onlinedocs/gcc/Option-Summary.html</a></div></div><div><br></div><=
div><div>MicroBlaze Options</div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; -msoft-float -mhard-float -msmall-divides =
-mcpu=3Dcpu&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -mmemcpy =
-mxl-soft-mul -mxl-soft-div =
-mxl-barrel-shift&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
-mxl-pattern-compare -mxl-stack-check -mxl-gp-opt =
-mno-clearbss&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
-mxl-multiply-high -mxl-float-convert =
-mxl-float-sqrt&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
-mxl-mode-app-model</font></div></div></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div>So, the next step is to try and modify =
the tune files, slightly. I recall someone from</div><div>windriver =
mentioned that TARGET_FPU is to be explicitly set specified only if =
a&nbsp;</div><div>special hardware FPU&nbsp;was used. When it is blank, =
it means default, which is</div><div>hardware floating point. Software =
floating point gets set automatically from</div><div>other settings in =
the tune file.</div><div><br></div><div>So the first thing to try is to =
remove any entry for TARGET_FPU =3D "soft" from</div><div>any tune file =
that you are referencing. It will get set automatically at build =
time,</div><div>as far as I know from the other options in the tune =
file.</div><div><br></div><div><br></div><div><br></div><div><blockquote =
type=3D"cite"><div>opening microblaze-c.o: No such file or =
directory<br>make[1]: *** [cc1-checksum.c] Error 1<br>rm cpp.pod =
gcov.pod gfdl.pod gcc.pod fsf-funding.pod<br>make[1]: Leaving =
directory<br>`/home/trevor/devel/yocto/git-method/spartan6-lx9/tmp/work/mi=
croblazeel-poky-linux/gcc-cross-initial-4.7.1.0+git1+d07e24f4ab59f264d68d2=
1838795349faab5dede-r11/gcc-4_7-branch/build.x86_64-linux.microblaze-poky-=
linux/gcc'<br>make: *** [all-gcc] Error 2<br>ERROR: oe_runmake =
failed<br>ERROR: Function failed: =
do_compile</div></blockquote><br></div><div>The second thing to look at =
is the above error that you got.&nbsp;</div><div><br></div><div>Perhaps =
the reason why it couldn't find the microblaze-c.o output file was =
because in the gcc sources, there is no cpu=3Dmicroblazeel, but only =
cpu=3Dmicroblaze</div><div><br></div><div><a =
href=3D"http://gcc.gnu.org/git/?p=3Dgcc.git;a=3Dblob;f=3Dgcc/config/microb=
laze/microblaze-c.c;h=3D32c38da311b12b07cc1ed9fbf13f7946291f2857;hb=3Drefs=
/heads/gcc-4_7-branch">http://gcc.gnu.org/git/?p=3Dgcc.git;a=3Dblob;f=3Dgc=
c/config/microblaze/microblaze-c.c;h=3D32c38da311b12b07cc1ed9fbf13f7946291=
f2857;hb=3Drefs/heads/gcc-4_7-branch</a></div><div><br></div><div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">void&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">microblaze_cpp_define (cpp_reader =
*pfile)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">{</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; builtin_assert =
("cpu=3Dmicroblaze");</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; builtin_assert =
("machine=3Dmicroblaze");</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
builtin_define ("__MICROBLAZE__");</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; if =
(!TARGET_SOFT_MUL)&nbsp;</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; &nbsp; {</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; if (!flag_iso)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; builtin_define =
("HAVE_HW_MUL");</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; builtin_define =
("__HAVE_HW_MUL__");</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
}</font></div></div><div><br></div><div>So, we will need to examine the =
tune files that you are using for your particular machine configuration, =
and ensure that it is setting the correct cpu =
type</div><div><br></div><div>What you could start off, as a quick test =
would be to replace the selected tune file in spartan6-lx9mb.conf and =
change it to use tune-microblaze.inc instead of tune-microblazeel.inc, =
because the latter appears to incorrectly set the cpu to microblazeel, I =
think.</div><div><br></div><div>File:&nbsp;meta-xilinx/tree/conf/machine/s=
partan6-lx9mb.conf</div><div><pre style=3D"font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
word-wrap: break-word; white-space: pre-wrap; "><span =
class=3D"Apple-style-span" style=3D"color: rgb(0, 0, 0); "># Copyright =
(C) 2011, SecretLab Technologies Ltd.
# Adrian Alonso &lt;<a =
href=3D"mailto:aalonso@secretlab.ca">aalonso@secretlab.ca</a>&gt;
# Released under the MIT license (see packages/COPYING)
#@TYPE: Machine
#@Name: Xilinx generic microblaze target support
#@DESCRIPTION: Machine configuration for Xilinx Microblaze
# Supported target: spartan6-lx9mb
#
# Xilinx EDK override hardware  definitions for xilinx-bsp
# Include in your local.conf
# XILINX_BSP_PATH =3D "complete path for Xilinx XPS project"

TARGET_CPU =3D "microblaze"
# tune for the microblaze little endian cpu
</span><font class=3D"Apple-style-span" color=3D"#ff2a1a">-require =
conf/machine/include/tune-microblazeel.inc</font></pre><pre =
style=3D"color: rgb(0, 0, 0); font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; white-space: =
pre-wrap; "><span class=3D"Apple-style-span" style=3D"font-family: =
Helvetica; white-space: normal; "><pre style=3D"color: rgb(0, 0, 0); =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; white-space: =
pre-wrap; ">+require =
conf/machine/include/tune-microblaze.inc</pre></span>
PREFERRED_PROVIDER_virtual/kernel =3D "linux-xilinx"
PREFERRED_VERSION_u-boot =3D "uboot-xilinx"
# Add uboot to rootfs
EXTRA_IMAGEDEPENDS +=3D "u-boot-xilinx"
XILINX_BOARD =3D "microblaze-generic"

KERNEL_IMAGETYPE =3D "simpleImage.system"

MACHINE_FEATURES =3D "kernel26 apm ext2 vfat ethernet"
MACHINE_EXTRA_RECOMMENDS =3D "kernel-modules"

UBOOT_ENTRYPOINT ?=3D "0xBC000000"
UBOOT_LOADADDRESS ?=3D "0xBC000000"
UBOOT_MACHINE ?=3D "microblaze-generic_config"

# Don't use tty1
USE_VT =3D "0"
SERIAL_CONSOLE =3D "115200 ttyUL0"

# Device nodes add xsa for (system ace)
IMAGE_DEVICE_TABLES =3D "files/device_table-minimal.txt \
                       =
files/device_table_add-xsa.txt"</pre><div><br></div></div><div>Perhaps =
if you could try the above two changes, i.e. remove the TARGET_FPU =3D =
"soft" from the tune file, and switch tune files so that the correct cpu =
type is set, and see if the gcc-initial compilation =
progresses?</div><div><br></div><div>File:&nbsp;meta-xilinx/plain/conf/mac=
hine/include/tune-microblaze.inc</div><div><pre style=3D"font-variant: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-align: -webkit-auto; text-indent: 0px; text-transform: none; =
widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; white-space: =
pre-wrap; font-style: normal; font-weight: normal; "><span =
class=3D"Apple-style-span" style=3D"color: rgb(0, 0, 0); "># Tune =
options for microblaze

require conf/machine/include/microblaze/arch-microblaze.inc

</span><font class=3D"Apple-style-span" color=3D"#ff2a1a">-TARGET_FPU =3D =
"soft"</font>
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "microblaze", =
"-mcpu=3Dv8.10a", "", d)}"

#MACHINEOVERRIDES .=3D "microblaze"</pre><div><br></div></div><div>If =
that works, then maybe we could update =
the&nbsp;tune-microblaze.inc&nbsp;files, so that it uses the variables =
defined in the following file, which I updated recently for powerpc440 =
soft float</div><div><br></div><div>File: =
meta-xilinx/tree/conf/machine/include/tune-ppc440.inc</div><div><br></div>=
<div><pre style=3D"color: rgb(0, 0, 0); font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
word-wrap: break-word; white-space: pre-wrap; ">DEFAULTTUNE ?=3D =
"ppc440"

require conf/machine/include/powerpc/arch-powerpc.inc

TUNEVALID[ppc440] =3D "Enable ppc440 specific processor optimizations"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc440", =
"-mcpu=3D440", "", d)}"

AVAILTUNES +=3D "ppc440"
TUNE_FEATURES_tune-ppc440 =3D "m32 fpu-soft ppc440"
TUNE_PKGARCH_tune-ppc440 =3D "ppc440"
PACKAGE_EXTRA_ARCHS_tune-ppc440 =3D =
"${PACKAGE_EXTRA_ARCHS_tune-powerpc-nf} ppc440"

# glibc configure options to get ppc440 specific library (for sqrt)
GLIBC_EXTRA_OECONF +=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc440", =
"-with-cpu=3D440", "", d)}"</pre><div><br></div></div><div>I don't see =
the need for tune-microblazeel.inc, and you could merge the contents of =
tune-microblazeel.inc, taking care not to define cpu =3D "microblazeel", =
as highlighed in red below. that should only be =
microblaze.&nbsp;</div><div><br></div><div><div><div>meta-xilinx/conf.mach=
ine/include/tune-microblazeel.inc</div><div><br></div></div><div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># Tune options =
for microblaze endian little</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DEFAULTTUNE ?=3D =
"microblazeel"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">require =
conf/machine/include/microblaze/arch-microblaze.inc</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNEVALID[microblazeel] =3D "Enable =
microblaze endian little optimizations"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TUNE_CCARGS +=3D =
"${@bb.utils.contains("TUNE_FEATURES", "<font class=3D"Apple-style-span" =
color=3D"#ff2a1a">microblazeel</font>", "-mcpu=3Dv8.10a", "", =
d)}"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">TUNE_PKGARCH =3D "${@bb.utils.contains("TUNE_FEATURES", =
"microblazeel", "microblazeel", "microblazeel", =
d)}"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TARGET_FPU =3D "soft"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">AVAILTUNES +=3D =
"microblazeel"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNE_FEATURES_tune-microblazeel =3D "m32 =
microblazeel"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PACKAGE_EXTRA_ARCHS_tune-microblazeel =3D =
"microblazeel"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">#MACHINEOVERRIDES =
.=3D =
"microblaze"</font></div></div></div><div><br></div><div><br></div><div><b=
><u>Summary</u></b></div><div><br></div><div>01. Remove the TARGET_FPU =3D=
 "soft" specification</div><div><br></div><div>02. Quickly test =
the&nbsp;machine/spartan6-lx9mb.conf by temporarily changing the tune =
file to include/tune-microblaze.inc, and see if the toolchain gets built =
using gcc-4.7 recipes.</div><div><br></div><div>03. If that works, then =
update the&nbsp;include/tune-microblaze.inc, to make it more current by =
looking at&nbsp;include/tune-ppc440.inc. We could potentially =
delete&nbsp;include/tune-microblazeel.inc, since after including same =
variables from&nbsp;include/tune-ppc440.inc, =
into&nbsp;</div><div>include/tune-microblaze.inc, it would end up nearly =
looking like&nbsp;include/tune-microblazeel.inc, without the erroneous =
cpu=3Dmicroblazeel spec in TUNE_CCARGS.</div><div><br></div><div>04. =
Later on create a include/tune-microblaze<b>e</b>.inc file, for hardware =
floating point support.</div><div><br></div><div>Do let me know how it =
goes!</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></div></body></html>=

--Apple-Mail=_98A55373-CD15-4A4D-82AA-240D857A8CF8--
