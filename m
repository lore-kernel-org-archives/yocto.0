Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C836CE01465
	for <yocto@yoctoproject.org>; Sat,  9 Mar 2013 04:49:06 -0800 (PST)
Received: by mail-pb0-f47.google.com with SMTP id rp2so2153562pbb.6
	for <yocto@yoctoproject.org>; Sat, 09 Mar 2013 04:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:content-type:subject:date:message-id:cc:to
	:mime-version:x-mailer;
	bh=RP+7P9zCYNVO6YGwUF5l3wIVG9OFnsaIVkcOOHRwsM4=;
	b=Spa2yOZuQwngRqR5B2dYTvgjBLiZ3ny6ltCFNsg+Q+rK4y1PdQiURQG1vA5I7FbmB2
	sLZigGvmIaSIah+5LqTxic1U+llGb/RDYe7GCcNPA0pzYerFMjRch4grh+21VeTKWQgI
	mFazvVof1AByx0uz4u/esFlVjh+6LzzJomDTtmwkP2AyNpc8+Pmli5qD/23Nx8TePJS9
	kouvLasC0YYWq4GvSLt6d7CDRin4tRBXmBvKj77TNROIzenAkzP2swo76GPDdjM97RQJ
	tNeCpnPU7RitYRPrJNyAtAH1AoLOOxI50a2qx2TusloRpH4kW7EYtHFdn4RcpEOtQcpT
	hXRw==
X-Received: by 10.68.237.100 with SMTP id vb4mr11176542pbc.202.1362833346265; 
	Sat, 09 Mar 2013 04:49:06 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id eg1sm10133116pbb.33.2013.03.09.04.49.02
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 09 Mar 2013 04:49:04 -0800 (PST)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 9 Mar 2013 16:48:56 +0400
Message-Id: <7A8D32F5-6145-4345-BC33-0500C71DE92A@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: arch and tune files for microblaze processor
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
X-List-Received-Date: Sat, 09 Mar 2013 12:49:06 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7E85DE7A-824F-483E-87B4-8BBF63970EEB"

--Apple-Mail=_7E85DE7A-824F-483E-87B4-8BBF63970EEB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,
                  I'm trying to expand on the initial arch and tune =
files defined for the microblaze processor within the meta-xilinx layer.

I was wondering if you could help review the arch and tune files, to see =
if there are any glaring mistakes, possible areas for improvement or =
mistakes in the naming convention.

The microblaze processor is a   32-bit processor, supporting =
combinations of big-endian and little-endian, plus hard-float and =
soft-float for the FPU.

=
http://www.xilinx.com/support/documentation/sw_manuals/xilinx14_4/mb_ref_g=
uide.pdf
http://gcc.gnu.org/onlinedocs/gcc/MicroBlaze-Options.html

I've listed the main arch-microblaze.inc (big-endian, hard-float), =
tune-microblazeel (little-endian, hard-float), and a machine conf that =
uses these files (spartan-6-sp601-microblazeel.conf)

File: arch-microblaze.inc

# Microblaze ABI interface definition
# Four defined ABIs, all combinations of:
# *) Hard/Soft Floating Point
# *) Big Endian (PLB System) / Little Endian (AXI System)

DEFAULTTUNE ?=3D "microblaze"

TUNE_PKGARCH =3D "${TUNE_PKGARCH_tune-${DEFAULTTUNE}}"
ABIEXTENSION ?=3D ""

TUNEVALID[m32] =3D "Microblaze ELF32 standard ABI"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "m32", "-m32", =
"", d)}"
TUNE_ARCH .=3D "${@bb.utils.contains("TUNE_FEATURES", "m32", =
"microblaze", "", d)}"

TUNEVALID[mbig-endian] =3D "Microblaze Big Endian processor"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "mbig-endian", =
"-mbig-endian", "", d)}"

TUNEVALID[mlittle-endian] =3D "Microblaze Little Endian processor"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", =
"mlittle-endian", "-mlittle-endian", "", d)}"

TUNEVALID[fpu-soft] =3D "Use software FPU."
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "fpu-soft", =
"-msoft-float", "", d)}"
TARGET_FPU .=3D "${@bb.utils.contains("TUNE_FEATURES", "fpu-soft", =
"soft", "", d)}"

TUNEVALID[fpu-hard] =3D "Use hardware FPU."
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "fpu-hard", =
"-mhard-float", "", d)}"

TUNE_PKGARCH ?=3D "${TUNE_ARCH}"

# Basic tune definitions
AVAILTUNES +=3D "microblaze"

TUNE_FEATURES_tune-microblaze ?=3D "m32 mbig-endian fpu-hard"
BASE_LIB_tune-microblaze =3D "lib"
TUNE_PKGARCH_tune-microblaze =3D "microblaze"
PACKAGE_EXTRA_ARCHS_tune-microblaze =3D "microblaze"

File: tune-microblazeel.inc

# Tune options for MicroBlaze little endian hard-float
DEFAULTTUNE ?=3D "microblazeel"

require conf/machine/include/microblaze/arch-microblaze.inc

TUNEVALID[microblazeel] =3D "Enable MicroBlaze little endian hard-float =
optimizations"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "microblazeel", =
"-mcpu=3Dv8.10a", "", d)}"
TUNE_PKGARCH =3D "${@bb.utils.contains("TUNE_FEATURES", "microblazeel", =
"microblazeel", "microblazeel", d)}"

AVAILTUNES +=3D "microblazeel"
TUNE_FEATURES_tune-microblazeel ?=3D "m32 mlittle-endian fpu-hard =
microblazeel"
BASE_LIB_tune-microblazeel =3D "lib"
PACKAGE_EXTRA_ARCHS_tune-microblazeel =3D "microblazeel"

File: spartan-6-sp601-microblazeel.conf

# Copyright (C) 2013, Elvis Dowson <xx.xx@xx.xx>
# Released under the MIT license (see packages/COPYING)
#@TYPE: Machine
#@Name: spartan-6-sp601-microblazeel
#@DESCRIPTION: Machine configuration for the Xilinx Spartan-6 SP601 FPGA =
development platform with a MicroBlaze Little Endian processor (with =
FPU).

# Specify target cpu
TARGET_CPU =3D "microblaze"

# Specify tune for the MicroBlaze litte endian CPU
include conf/machine/include/tune-microblazeel.inc

# Specify common settings.
include conf/machine/include/spartan-6/spartan-6-base.inc

# Specify linux kernel devicetree
KERNEL_DEVICETREE =3D "${S}/arch/microblaze/boot/dts/sp601_le.dts"

# Specify u-boot machine configuration
UBOOT_MACHINE ?=3D "microblaze-generic_config"
UBOOT_ENTRYPOINT ?=3D "0xa8000000"
UBOOT_LOADADDRESS ?=3D "0xa8000000"

# Specify machine features
MACHINE_FEATURES =3D "kernel26 apm ext2 ext3 vfat ethernet serial"
#MACHINE_FEATURES_BACKFILL_CONSIDERED =3D "rtc"

# Specify the Xilinx board name
XILINX_BOARD =3D "sp601"

# Xilinx EDK override hardware  definitions for xilinx-bsp
# Include the following environment variables in your local.conf
# XILINX_BSP_PATH =3D "complete path to the Xilinx XPS project"

# Specify serial console settings
# Don't use tty1
# USE_VT =3D "0"
SERIAL_CONSOLE ?=3D "115200 ttyUL0"

# Device nodes add xsa for (system ace)
IMAGE_DEVICE_TABLES =3D "files/device_table_add-xsa.txt"

Best regards,

Elvis Dowson=

--Apple-Mail=_7E85DE7A-824F-483E-87B4-8BBF63970EEB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
I'm trying to expand on the initial arch and tune files defined for the =
microblaze processor within the meta-xilinx =
layer.</div><div><br></div><div>I was wondering if you could help review =
the arch and tune files, to see if there are any glaring mistakes, =
possible areas for improvement or mistakes in the naming =
convention.</div><div><br></div><div>The microblaze processor is a =
&nbsp; 32-bit processor, supporting combinations of big-endian and =
little-endian, plus hard-float and soft-float for the =
FPU.</div><div><br></div><div><a =
href=3D"http://www.xilinx.com/support/documentation/sw_manuals/xilinx14_4/=
mb_ref_guide.pdf">http://www.xilinx.com/support/documentation/sw_manuals/x=
ilinx14_4/mb_ref_guide.pdf</a></div><div><a =
href=3D"http://gcc.gnu.org/onlinedocs/gcc/MicroBlaze-Options.html">http://=
gcc.gnu.org/onlinedocs/gcc/MicroBlaze-Options.html</a></div><div><br></div=
><div>I've listed the main arch-microblaze.inc (big-endian, hard-float), =
tune-microblazeel (little-endian, hard-float), and a machine conf that =
uses these files =
(spartan-6-sp601-microblazeel.conf)</div><div><br></div><div><b><u>File: =
arch-microblaze.inc</u></b></div><div><br></div><div><div><font =
face=3D"Monaco" size=3D"2"># Microblaze ABI interface =
definition</font></div><div><font face=3D"Monaco" size=3D"2"># Four =
defined ABIs, all combinations of:</font></div><div><font face=3D"Monaco" =
size=3D"2"># *) Hard/Soft Floating Point</font></div><div><font =
face=3D"Monaco" size=3D"2"># *) Big Endian (PLB System) / Little Endian =
(AXI System)</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">DEFAULTTUNE ?=3D "microblaze"</font></div><div><font =
face=3D"Monaco" size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">TUNE_PKGARCH =3D =
"${TUNE_PKGARCH_tune-${DEFAULTTUNE}}"</font></div><div><font =
face=3D"Monaco" size=3D"2">ABIEXTENSION ?=3D ""</font></div><div><font =
face=3D"Monaco" size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">TUNEVALID[m32] =3D "Microblaze ELF32 standard =
ABI"</font></div><div><font face=3D"Monaco" size=3D"2">TUNE_CCARGS +=3D =
"${@bb.utils.contains("TUNE_FEATURES", "m32", "-m32", "", =
d)}"</font></div><div><font face=3D"Monaco" size=3D"2">TUNE_ARCH .=3D =
"${@bb.utils.contains("TUNE_FEATURES", "m32", "microblaze", "", =
d)}"</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">TUNEVALID[mbig-endian] =3D "Microblaze Big Endian =
processor"</font></div><div><font face=3D"Monaco" size=3D"2">TUNE_CCARGS =
+=3D "${@bb.utils.contains("TUNE_FEATURES", "mbig-endian", =
"-mbig-endian", "", d)}"</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">TUNEVALID[mlittle-endian] =3D "Microblaze Little Endian =
processor"</font></div><div><font face=3D"Monaco" size=3D"2">TUNE_CCARGS =
+=3D "${@bb.utils.contains("TUNE_FEATURES", "mlittle-endian", =
"-mlittle-endian", "", d)}"</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">TUNEVALID[fpu-soft] =3D "Use software =
FPU."</font></div><div><font face=3D"Monaco" size=3D"2">TUNE_CCARGS +=3D =
"${@bb.utils.contains("TUNE_FEATURES", "fpu-soft", "-msoft-float", "", =
d)}"</font></div><div><font face=3D"Monaco" size=3D"2">TARGET_FPU .=3D =
"${@bb.utils.contains("TUNE_FEATURES", "fpu-soft", "soft", "", =
d)}"</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">TUNEVALID[fpu-hard] =3D "Use hardware =
FPU."</font></div><div><font face=3D"Monaco" size=3D"2">TUNE_CCARGS +=3D =
"${@bb.utils.contains("TUNE_FEATURES", "fpu-hard", "-mhard-float", "", =
d)}"</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">TUNE_PKGARCH ?=3D "${TUNE_ARCH}"</font></div><div><font =
face=3D"Monaco" size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2"># Basic tune definitions</font></div><div><font face=3D"Monaco"=
 size=3D"2">AVAILTUNES +=3D "microblaze"</font></div><div><font =
face=3D"Monaco" size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">TUNE_FEATURES_tune-microblaze ?=3D "m32 mbig-endian =
fpu-hard"</font></div><div><font face=3D"Monaco" =
size=3D"2">BASE_LIB_tune-microblaze =3D "lib"</font></div><div><font =
face=3D"Monaco" size=3D"2">TUNE_PKGARCH_tune-microblaze =3D =
"microblaze"</font></div><div><font face=3D"Monaco" =
size=3D"2">PACKAGE_EXTRA_ARCHS_tune-microblaze =3D =
"microblaze"</font></div></div><div><br></div><div><b><u>File: =
tune-microblazeel.inc</u></b></div><div><br></div><div><div><font =
face=3D"Monaco" size=3D"2"># Tune options for MicroBlaze little endian =
hard-float</font></div><div><font face=3D"Monaco" size=3D"2">DEFAULTTUNE =
?=3D "microblazeel"</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" size=3D"2">require =
conf/machine/include/microblaze/arch-microblaze.inc</font></div><div><font=
 face=3D"Monaco" size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">TUNEVALID[microblazeel] =3D "Enable MicroBlaze little endian =
hard-float optimizations"</font></div><div><font face=3D"Monaco" =
size=3D"2">TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", =
"microblazeel", "-mcpu=3Dv8.10a", "", d)}"</font></div><div><font =
face=3D"Monaco" size=3D"2">TUNE_PKGARCH =3D =
"${@bb.utils.contains("TUNE_FEATURES", "microblazeel", "microblazeel", =
"microblazeel", d)}"</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">AVAILTUNES +=3D "microblazeel"</font></div><div><font =
face=3D"Monaco" size=3D"2">TUNE_FEATURES_tune-microblazeel ?=3D "m32 =
mlittle-endian fpu-hard microblazeel"</font></div><div><font =
face=3D"Monaco" size=3D"2">BASE_LIB_tune-microblazeel =3D =
"lib"</font></div><div><font face=3D"Monaco" =
size=3D"2">PACKAGE_EXTRA_ARCHS_tune-microblazeel =3D =
"microblazeel"</font></div></div><div><br></div><div><b><u>File: =
spartan-6-sp601-microblazeel.conf</u></b></div><div><br></div><div><div><f=
ont face=3D"Monaco" size=3D"2"># Copyright (C) 2013, Elvis Dowson &lt;<a =
href=3D"mailto:xx.xx@xx.xx">xx.xx@xx.xx</a>&gt;</font></div><div><font =
face=3D"Monaco" size=3D"2"># Released under the MIT license (see =
packages/COPYING)</font></div><div><font face=3D"Monaco" =
size=3D"2">#@TYPE: Machine</font></div><div><font face=3D"Monaco" =
size=3D"2">#@Name: spartan-6-sp601-microblazeel</font></div><div><font =
face=3D"Monaco" size=3D"2">#@DESCRIPTION: Machine configuration for the =
Xilinx Spartan-6 SP601 FPGA development platform with a MicroBlaze =
Little Endian processor (with FPU).</font></div><div><font face=3D"Monaco"=
 size=3D"2"><br></font></div><div><font face=3D"Monaco" size=3D"2"># =
Specify target cpu</font></div><div><font face=3D"Monaco" =
size=3D"2">TARGET_CPU =3D "microblaze"</font></div><div><font =
face=3D"Monaco" size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2"># Specify tune for the MicroBlaze litte endian =
CPU</font></div><div><font face=3D"Monaco" size=3D"2">include =
conf/machine/include/tune-microblazeel.inc</font></div><div><font =
face=3D"Monaco" size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2"># Specify common settings.</font></div><div><font =
face=3D"Monaco" size=3D"2">include =
conf/machine/include/spartan-6/spartan-6-base.inc</font></div><div><font =
face=3D"Monaco" size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2"># Specify linux kernel devicetree</font></div><div><font =
face=3D"Monaco" size=3D"2">KERNEL_DEVICETREE =3D =
"${S}/arch/microblaze/boot/dts/sp601_le.dts"</font></div><div><font =
face=3D"Monaco" size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2"># Specify u-boot machine configuration</font></div><div><font =
face=3D"Monaco" size=3D"2">UBOOT_MACHINE ?=3D =
"microblaze-generic_config"</font></div><div><font face=3D"Monaco" =
size=3D"2">UBOOT_ENTRYPOINT ?=3D "0xa8000000"</font></div><div><font =
face=3D"Monaco" size=3D"2">UBOOT_LOADADDRESS ?=3D =
"0xa8000000"</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" size=3D"2"># =
Specify machine features</font></div><div><font face=3D"Monaco" =
size=3D"2">MACHINE_FEATURES =3D "kernel26 apm ext2 ext3 vfat ethernet =
serial"</font></div><div><font face=3D"Monaco" =
size=3D"2">#MACHINE_FEATURES_BACKFILL_CONSIDERED =3D =
"rtc"</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" size=3D"2"># =
Specify the Xilinx board name</font></div><div><font face=3D"Monaco" =
size=3D"2">XILINX_BOARD =3D "sp601"</font></div><div><font face=3D"Monaco"=
 size=3D"2"><br></font></div><div><font face=3D"Monaco" size=3D"2"># =
Xilinx EDK override hardware &nbsp;definitions for =
xilinx-bsp</font></div><div><font face=3D"Monaco" size=3D"2"># Include =
the following environment variables in your =
local.conf</font></div><div><font face=3D"Monaco" size=3D"2"># =
XILINX_BSP_PATH =3D "complete path to the Xilinx XPS =
project"</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" size=3D"2"># =
Specify serial console settings</font></div><div><font face=3D"Monaco" =
size=3D"2"># Don't use tty1</font></div><div><font face=3D"Monaco" =
size=3D"2"># USE_VT =3D "0"</font></div><div><font face=3D"Monaco" =
size=3D"2">SERIAL_CONSOLE ?=3D "115200 ttyUL0"</font></div><div><font =
face=3D"Monaco" size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2"># Device nodes add xsa for (system =
ace)</font></div><div><font face=3D"Monaco" size=3D"2">IMAGE_DEVICE_TABLES=
 =3D =
"files/device_table_add-xsa.txt"</font></div></div><div><br></div><div>Bes=
t regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_7E85DE7A-824F-483E-87B4-8BBF63970EEB--
