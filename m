Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7AD0E011CC
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 07:18:31 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fa1so663991pad.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 07:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=ISnlOCn6QjSLJD4vamTycz8a7hBvNM20r3vfvGZ4RbA=;
	b=Yjksld3dwL8dpGjG7ifMLC4UG4Xy0fKy7EMqM9aM+dnBuiBn4OPS+qE60lZAfyVaev
	gAEKAB2fHyKDlqECD7p49f5pdu5CGIKDjdFp38WZBhDXipy6yEeitN/9XGHmgM/sBQyC
	v7EMsMXMy4zoqcjaRgf84U45ZnYSfPTZlCuAIZp5KpJabifuBuSqnvjXe2hLneslqU6y
	PP+Pk8Gq9tv5TGbZOxlILFBorEVF+HBayr1rBPvg+fYcAJ1wSwwdXMEnEO27wPmr/PmM
	aO18xUxnmKJgLrR4t88+/48f41lCdxSc68biWLWJCJS766rb0xD5ViZ6McOoTE646JM/
	KbOg==
Received: by 10.66.76.41 with SMTP id h9mr3483411paw.1.1355325511377;
	Wed, 12 Dec 2012 07:18:31 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id pm8sm14557939pbb.29.2012.12.12.07.18.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Dec 2012 07:18:30 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAKS01o=9sWAg3OhZAf-S+GRyWtv4QxktWKEmtZ7LaXK3vJQoCQ@mail.gmail.com>
Date: Wed, 12 Dec 2012 19:18:25 +0400
Message-Id: <92408E63-2CBD-4806-9B71-14BECF354896@gmail.com>
References: <CAKS01o=9sWAg3OhZAf-S+GRyWtv4QxktWKEmtZ7LaXK3vJQoCQ@mail.gmail.com>
To: Anup Kini <akini@synapticon.com>
X-Mailer: Apple Mail (2.1499)
Cc: yocto@yoctoproject.org
Subject: Re: building for ZYNQ ZC702 SoC
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
X-List-Received-Date: Wed, 12 Dec 2012 15:18:31 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C73F4F7F-72B1-46C2-AB0F-375088DA726B"

--Apple-Mail=_C73F4F7F-72B1-46C2-AB0F-375088DA726B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Hi Anup,
                Atleast two people on the yocto mailing list have =
successfully built the toolchain and rootfile system for the ZC702, =
Philip Balister and myself, using the latest yocto master.

Here are a few steps:

01. Look up the Yocto Quick Start Guide to setup your Ubuntu 12.10 x86 =
64-bit host development environment.

02. Use Philip Balister's meta-zynq layer located here, and add it to =
your bblayer.conf file

https://github.com/balister/meta-zynq

$ gedit conf/bblayers.conf

# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "5"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  /tool/yocto/poky/meta \
  /tool/yocto/poky/meta-yocto \
  /tool/yocto/meta-openembedded/toolchain-layer \
  /tool/yocto/meta-zynq \
  "

03. Updated your yocto local.conf file as follows:

#
# Xilinx target board configuration.
#=20
# Set the target machine details
MACHINE ?=3D "zynq-zc702"
# Set Xilinx Platform Studio hardware project path
XILINX_BSP_PATH ?=3D "/project/xilinx-zc702"
# Set target board
XILINX_BOARD ?=3D "zc702"


04. Download the souces

$ cd /tool/yocto/poky
$ source oe-init-build-env build

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    meta-toolchain-sdk
    adt-installer
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu =
qemux86'

$ bitbake -c fetchall core-image-minimal

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "zynq-zc702"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3+snapshot-20121025"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto        =3D "master:33440ee70623394d06a4b214c2be10788cba6d08"
toolchain-layer   =3D "master:55855cd569fbff7182974ca08b1de8435bf0f597"
meta-zynq-balister =3D =
"master-xilinx-zc702-gcc-4.7:d168cea411034d1f1530e4eacf6eb3ce4affd1c8"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks

05. Build the toolchain

$ cd /tool/yocto/poky
$ source oe-init-build-env build
$ bitbake meta-toolchain


06. Build the image

$ bitbake core-image-minimal

07. Use Xilinx PlanAhead 14.3 software design too to create your =
hardware design.

The only additional step you need to perform is to use the Xilinx =
PlanAhead software, to export you hardware to the Xilinx SDK, and use =
the SDK to generate and build the Zynq First Stage Bootloader =
(zynq_fsbl). After that, create a boot image by using the Xilinx tool =
menu option, and include the u-boot.elf, system.bit and zynq_fsbl.elf.

Use the scripts in XAPP792 to download the kernel and bootable image to =
the target using XMD. Or rename the u-boot.bin file to BOOT.bin, copy =
the uImage generated from the yocto build, and it should all work.

Best regards,

Elvis Dowson


On Dec 12, 2012, at 6:56 PM, Anup Kini <akini@synapticon.com> wrote:

> Hi all,
>=20
> I am new to Yocto.
> I am trying to build an environment with arm-gcc integrated since the =
ZYNQ board has ARM Cortex A9 ducal core on it.
> Let me know if any one has tried something similar or some pointers on =
how i can proceed.
>=20
>=20
>=20
> --=20
> Anup Kini
> Systems Engineer
> Synapticon  |  Cyber-Physical System Solutions=20
>=20
> Direct:
> +49 7335 / 186 999 17
> Fax:
> +49 7335 / 186 999 19
> =20
> =20
> synapticon.com  |  @synapticon_co
>=20
> Synapticon GmbH  |  Hohlbachweg 2  |  73344 Gruibingen, DE
> Secretary +49 7335 / 186 999 0  |  General Manager: Nikolai Ensslen=20
> Registry Court Ulm HRB 725114  |  USt-ID DE271647127
>=20
> This message and any files transmitted with it are confidential and =
intended=20
> solely for the use of the individual or entity to whom they are =
addressed.=20
> Please notify the sender immediately if you have received this e-mail =
by=20
> mistake and delete it from your system.=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_C73F4F7F-72B1-46C2-AB0F-375088DA726B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Anup,<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Atleast two people on the yocto mailing list have successfully built the =
toolchain and rootfile system for the ZC702, Philip Balister and myself, =
using the latest yocto master.</div><div><br></div><div>Here are a few =
steps:</div><div><br></div><div>01. Look up the Yocto Quick Start Guide =
to setup your Ubuntu 12.10 x86 64-bit host development =
environment.</div><div><br></div><div>02. Use Philip Balister's =
meta-zynq layer located here, and add it to your bblayer.conf =
file</div><div><br></div><div><a =
href=3D"https://github.com/balister/meta-zynq">https://github.com/balister=
/meta-zynq</a></div><div><br></div><div><div style=3D"margin: 0px; =
font-size: 10px; font-family: Monaco; ">$ gedit =
conf/bblayers.conf</div><div style=3D"margin: 0px; font-size: 12px; =
font-family: 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; "># =
LAYER_CONF_VERSION is increased each time =
build/conf/bblayers.conf</div><div style=3D"margin: 0px; font-size: =
10px; font-family: Monaco; "># changes incompatibly</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; =
">LCONF_VERSION =3D "5"</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; min-height: 14px; "><br></div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; ">BBPATH =3D =
"${TOPDIR}"</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; ">BBFILES ?=3D ""</div><div style=3D"margin: 0px; =
font-size: 10px; font-family: Monaco; min-height: 14px; "><br></div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; ">BBLAYERS =
?=3D " \</div><div style=3D"margin: 0px; font-size: 10px; font-family: =
Monaco; ">&nbsp; /tool/yocto/poky/meta \</div><div style=3D"margin: 0px; =
font-size: 10px; font-family: Monaco; ">&nbsp; =
/tool/yocto/poky/meta-yocto \</div><div style=3D"margin: 0px; font-size: =
10px; font-family: Monaco; ">&nbsp; =
/tool/yocto/meta-openembedded/toolchain-layer \</div><div style=3D"margin:=
 0px; font-size: 10px; font-family: Monaco; ">&nbsp; =
/tool/yocto/meta-zynq \</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; ">&nbsp; "</div></div><div><br></div><div>03. =
Updated your yocto local.conf file as =
follows:</div><div><br></div><div><div style=3D"margin: 0px; font-size: =
10px; font-family: Monaco; ">#</div><div style=3D"margin: 0px; =
font-size: 10px; font-family: Monaco; "># Xilinx target board =
configuration.</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; ">#&nbsp;</div><div style=3D"margin: 0px; =
font-size: 10px; font-family: Monaco; "># Set the target machine =
details</div><div style=3D"margin: 0px; font-size: 10px; font-family: =
Monaco; ">MACHINE ?=3D "zynq-zc702"</div><div style=3D"margin: 0px; =
font-size: 10px; font-family: Monaco; "># Set Xilinx Platform Studio =
hardware project path</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; ">XILINX_BSP_PATH ?=3D =
"/project/xilinx-zc702"</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; "># Set target board</div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; ">XILINX_BOARD ?=3D =
"zc702"</div></div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; "><br></div><div style=3D"margin: 0px; font-size: =
10px; font-family: Monaco; "><br></div><div>04. Download the =
souces</div><div><br></div><div><div style=3D"margin: 0px; font-size: =
10px; font-family: Monaco; ">$ cd /tool/yocto/poky</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; ">$ source =
oe-init-build-env build</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; min-height: 14px; "><br></div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; ">### Shell environment set =
up for builds. ###</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; min-height: 14px; "><br></div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; ">You can now run 'bitbake =
&lt;target&gt;'</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; min-height: 14px; "><br></div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; ">Common targets =
are:</div><div style=3D"margin: 0px; font-size: 10px; font-family: =
Monaco; ">&nbsp; &nbsp; core-image-minimal</div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; ">&nbsp; &nbsp; =
core-image-sato</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; ">&nbsp; &nbsp; meta-toolchain</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; ">&nbsp; =
&nbsp; meta-toolchain-sdk</div><div style=3D"margin: 0px; font-size: =
10px; font-family: Monaco; ">&nbsp; &nbsp; adt-installer</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; ">&nbsp; =
&nbsp; meta-ide-support</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; min-height: 14px; "><br></div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; ">You can also run generated =
qemu images with a command like 'runqemu qemux86'</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; min-height: =
14px; "><br></div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; ">$ bitbake -c fetchall =
core-image-minimal</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; min-height: 14px; "><br></div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; ">Build =
Configuration:</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; ">BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; =3D =
"1.16.0"</div><div style=3D"margin: 0px; font-size: 10px; font-family: =
Monaco; ">TARGET_ARCH &nbsp; &nbsp; &nbsp; =3D "arm"</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; ">TARGET_OS =
&nbsp; &nbsp; &nbsp; &nbsp; =3D "linux-gnueabi"</div><div style=3D"margin:=
 0px; font-size: 10px; font-family: Monaco; ">MACHINE &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; =3D "zynq-zc702"</div><div style=3D"margin: 0px; =
font-size: 10px; font-family: Monaco; ">DISTRO&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; =3D "poky"</div><div style=3D"margin: 0px; =
font-size: 10px; font-family: Monaco; ">DISTRO_VERSION&nbsp; &nbsp; =3D =
"1.3+snapshot-20121025"</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; ">TUNE_FEATURES &nbsp; &nbsp; =3D "armv7a vfp neon =
cortexa9"</div><div style=3D"margin: 0px; font-size: 10px; font-family: =
Monaco; ">TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; =3D "vfp-neon"</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; ">meta =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; =
">meta-yocto&nbsp; &nbsp; &nbsp; &nbsp; =3D =
"master:33440ee70623394d06a4b214c2be10788cba6d08"</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; =
">toolchain-layer &nbsp; =3D =
"master:55855cd569fbff7182974ca08b1de8435bf0f597"</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; =
">meta-zynq-balister =3D =
"master-xilinx-zc702-gcc-4.7:d168cea411034d1f1530e4eacf6eb3ce4affd1c8"</di=
v><div style=3D"margin: 0px; font-size: 10px; font-family: Monaco; =
min-height: 14px; "><br></div><div style=3D"margin: 0px; font-size: =
10px; font-family: Monaco; ">NOTE: Resolving any missing task queue =
dependencies</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; ">NOTE: Preparing runqueue</div><div style=3D"margin:=
 0px; font-size: 10px; font-family: Monaco; ">NOTE: Executing SetScene =
Tasks</div><div style=3D"margin: 0px; font-size: 10px; font-family: =
Monaco; ">NOTE: Executing RunQueue =
Tasks</div></div><div><br></div><div>05. Build the =
toolchain</div><div><br></div><div><div style=3D"margin: 0px; font-size: =
10px; font-family: Monaco; ">$ cd /tool/yocto/poky</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; ">$ source =
oe-init-build-env build</div><div style=3D"margin: 0px; font-size: 10px; =
font-family: Monaco; ">$ bitbake =
meta-toolchain</div></div><div><br></div><div><br></div><div>06. Build =
the image</div><div><br></div><div><div style=3D"margin: 0px; font-size: =
10px; font-family: Monaco; ">$ bitbake =
core-image-minimal</div></div><div><br></div><div>07. Use Xilinx =
PlanAhead 14.3 software design too to create your hardware =
design.</div><div><br></div><div>The only additional step you need to =
perform is to use the Xilinx PlanAhead software, to export you hardware =
to the Xilinx SDK, and use the SDK to generate and build the Zynq First =
Stage Bootloader (zynq_fsbl). After that, create a boot image by using =
the Xilinx tool menu option, and include the u-boot.elf, system.bit and =
zynq_fsbl.elf.</div><div><br></div><div>Use the scripts in XAPP792 to =
download the kernel and bootable image to the target using XMD. Or =
rename the u-boot.bin file to BOOT.bin, copy the uImage generated from =
the yocto build, and it should all work.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div><div><br><div><div>On Dec 12, 2012, at 6:56 =
PM, Anup Kini &lt;<a =
href=3D"mailto:akini@synapticon.com">akini@synapticon.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite">Hi all,<div><br></div><div>I am new to Yocto.</div><div>I =
am trying to build an environment with arm-gcc integrated since the ZYNQ =
board has ARM Cortex A9 ducal core on it.</div><div>Let me know if any =
one has tried something similar or some pointers on how i can =
proceed.</div>
<div><br></div><div><br clear=3D"all"><div><br></div>-- <br><div =
style=3D"margin: 0px; color: rgb(34, 34, 34); font-family: arial, =
sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); =
"><b><span lang=3D"EN-US" =
style=3D"font-size:10pt;font-family:Arial,sans-serif">Anup Kini<br>
</span></b><span lang=3D"EN-US" =
style=3D"font-size:10pt;font-family:Arial,sans-serif">Systems =
Engineer</span><span lang=3D"EN-US"><u></u><u></u></span></div><div =
align=3D"center" =
style=3D"margin:0px;color:rgb(34,34,34);font-family:arial,sans-serif;font-=
size:13px;background-color:rgb(255,255,255);text-align:center">
<b><span lang=3D"EN-US" =
style=3D"font-size:12pt;font-family:Arial,sans-serif"><hr size=3D"2" =
width=3D"100%" align=3D"center"></span></b></div><p style=3D"margin:0px =
0px =
8pt;color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;backgr=
ound-color:rgb(255,255,255)">
<b><span lang=3D"EN-US" =
style=3D"font-size:12pt;font-family:Arial,sans-serif">Synapticon</span></b=
><b><span lang=3D"EN-US" style=3D"font-size:12pt;font-family:'Times New =
Roman',serif">&nbsp;</span></b><span lang=3D"EN-US" =
style=3D"font-size:12pt;font-family:Arial,sans-serif">&nbsp;|&nbsp;&nbsp;<=
/span><span lang=3D"EN-US" =
style=3D"font-size:10pt;font-family:Arial,sans-serif">Cyber-Physical =
System Solutions</span><span lang=3D"EN-US" =
style=3D"font-size:10pt;font-family:Verdana,sans-serif">&nbsp;</span><span=
 lang=3D"EN-US"><u></u><u></u></span></p>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;t=
ext-align:start;background-color:rgb(255,255,255);border-collapse:collapse=
"><tbody><tr><td width=3D"57" valign=3D"top" =
style=3D"margin:0px;width:42.55pt;padding:0cm 5.4pt 0cm 0cm"><div =
style=3D"margin: 0px; "><span lang=3D"EN-US" =
style=3D"font-size:10pt;font-family:Arial,sans-serif">Direct:</span><span =
lang=3D"EN-US"><u></u><u></u></span></div></td><td width=3D"227" =
valign=3D"top" style=3D"margin:0px;width:6cm;padding:0cm 5.4pt 0cm =
0cm"><div style=3D"margin: 0px; "><span lang=3D"EN-US" =
style=3D"font-size:10pt;font-family:Arial,sans-serif"><a =
value=3D"+49733518699917" style=3D"color:rgb(17,85,204)">+49 7335 / 186 =
999 17</a></span><span lang=3D"EN-US"><u></u><u></u></span></div>
</td></tr><tr><td width=3D"57" valign=3D"top" =
style=3D"margin:0px;width:42.55pt;padding:0cm 5.4pt 0cm 0cm"><div =
style=3D"margin: 0px; "><span lang=3D"EN-US" =
style=3D"font-size:10pt;font-family:Arial,sans-serif">Fax:</span><span =
lang=3D"EN-US"><u></u><u></u></span></div>
</td><td width=3D"227" valign=3D"top" =
style=3D"margin:0px;width:6cm;padding:0cm 5.4pt 0cm 0cm"><div =
style=3D"margin: 0px; "><span lang=3D"EN-US" =
style=3D"font-size:10pt;font-family:Arial,sans-serif"><a =
value=3D"+49733518699919" style=3D"color:rgb(17,85,204)">+49 7335 / 186 =
999 19</a></span><u></u><u></u></div>
</td></tr><tr><td width=3D"57" valign=3D"top" =
style=3D"margin:0px;width:42.55pt;padding:0cm 5.4pt 0cm 0cm"><div =
style=3D"margin: 0px; "><span lang=3D"EN-US" =
style=3D"font-size:6pt;font-family:Arial,sans-serif">&nbsp;</span><u></u><=
u></u></div></td>
<td width=3D"227" valign=3D"top" style=3D"margin:0px;width:6cm;padding:0cm=
 5.4pt 0cm 0cm"><div style=3D"margin: 0px; "><span lang=3D"EN-US" =
style=3D"font-size:6pt;font-family:Arial,sans-serif">&nbsp;</span><u></u><=
u></u></div></td></tr></tbody></table><p style=3D"margin:0px 0px =
8pt;color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;backgr=
ound-color:rgb(255,255,255)"><span =
style=3D"font-size:10pt;font-family:Arial,sans-serif"><a =
href=3D"http://www.synapticon.com/" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">synapticon.com</a>&nbsp;&nbsp;| &nbsp;<a =
href=3D"https://twitter.com/#!/synapticon_co" =
style=3D"color:rgb(17,85,204)" =
target=3D"_blank">@synapticon_co</a></span><u></u><u></u></p><p =
style=3D"margin:0px 0px =
8pt;color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;backgr=
ound-color:rgb(255,255,255)"><span =
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:rgb(127,127,127=
)">Synapticon GmbH &nbsp;|&nbsp; Hohlbachweg 2&nbsp; | &nbsp;73344 =
Gruibingen, DE<br>
Secretary&nbsp;<a value=3D"+4973351869990" =
style=3D"color:rgb(17,85,204)">+49 7335 / 186 999 0</a>&nbsp; |&nbsp; =
General Manager: Nikolai Ensslen&nbsp;<br>Registry Court Ulm HRB =
725114&nbsp; |&nbsp; USt-ID DE271647127</span><u></u><u></u></p><p =
style=3D"margin:0px 0px =
8pt;color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;backgr=
ound-color:rgb(255,255,255)">
<span lang=3D"EN-US" =
style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(127,127,127)=
">This message and any files transmitted with it are confidential and =
intended&nbsp;</span><span lang=3D"EN-US" =
style=3D"font-size:8pt;font-family:Verdana,sans-serif;color:rgb(127,127,12=
7)"><br>
</span><span lang=3D"EN-US" =
style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(127,127,127)=
">solely for the use of the individual or entity to whom they are =
addressed.&nbsp;</span><span lang=3D"EN-US" =
style=3D"font-size:8pt;font-family:Verdana,sans-serif;color:rgb(127,127,12=
7)"><br>
</span><span lang=3D"EN-US" =
style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(127,127,127)=
">Please notify the sender immediately if you have received this e-mail =
by&nbsp;</span><span lang=3D"EN-US" =
style=3D"font-size:8pt;font-family:Verdana,sans-serif;color:rgb(127,127,12=
7)"><br>
</span><span lang=3D"EN-US" =
style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(127,127,127)=
">mistake and delete it from your system.&nbsp;</span></p><br>
</div>
_______________________________________________<br>yocto mailing =
list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https=
://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></div><=
/body></html>=

--Apple-Mail=_C73F4F7F-72B1-46C2-AB0F-375088DA726B--
