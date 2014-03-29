Return-Path: <elvis.dowson@gmail.com>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D27EEE00AF1
	for <yocto@yoctoproject.org>; Sat, 29 Mar 2014 01:02:43 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id t10so4736655eei.5
	for <yocto@yoctoproject.org>; Sat, 29 Mar 2014 01:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:cc:to:mime-version;
	bh=T71bDp4QWdH2klAdRqnyrnooZrkc6upWjmoZceGPcFA=;
	b=TczRzxNJkTXyrmUX7t3UuNBCsYtcdqWu3/Tgp2zEcumlktpzigKNW8WkgRdklUAveW
	SBXS1pUUxJDyK89IpkFR/oHYtOQkixVO8lidIwR/m4ojUu2eauVVPjXi7xREe0Da+27N
	UYqvbPjLDmkRFDBRFZNW6p/P7UqfKACzF3CeH2GH6n0dnNNA5bhG4vuSTGd1lDhTquuf
	E5tVm4ULc3stehbsHJSVHzvJ00XLvxFV5M/cbEyrtW+LntcAAOIOzTjaa695QAiemenP
	LfSXHbKnnhc1c8Dq/Ecim+UQpzbRq0yp66QYSx8ScEvgSiZTP5mayYXrupAbEI5liqG1
	NeCA==
X-Received: by 10.14.206.137 with SMTP id l9mr16181580eeo.40.1396080161956;
	Sat, 29 Mar 2014 01:02:41 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.107.23])
	by mx.google.com with ESMTPSA id 4sm17012087eeq.33.2014.03.29.01.02.39
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 29 Mar 2014 01:02:40 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 29 Mar 2014 12:02:35 +0400
Message-Id: <BFDE5C68-EC5E-4FA5-92DD-49CDFB39DB70@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1877.4\))
X-Mailer: Apple Mail (2.1877.4)
Subject: [poky] WARNING: QA Issue: ELF binary has relocations in .text
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
X-List-Received-Date: Sat, 29 Mar 2014 08:02:44 -0000
X-Groupsio-MsgNum: 18753
Content-Type: multipart/signed;
	boundary="Apple-Mail=_7C90BBA8-EC1D-4F32-B3C5-770D17F5739A";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_7C90BBA8-EC1D-4F32-B3C5-770D17F5739A
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F1FDC073-0F99-4C3B-BE0E-07612380F1C7"

--Apple-Mail=_F1FDC073-0F99-4C3B-BE0E-07612380F1C7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

Hi,

I just built meta-toolchain using the latest poky master, along with the =
meta-xilinx layer, and find that the build system issues multiple QA =
warnings, for a number of qemu machine configurations that are not =
specified in my local.conf.

I only have MACHINE=3D=93zc702-zynq7=94 specified, but the toolchain =
appears to be generating native-sdk-qemu binaries for all architectures.

Build Configuration:
BB_VERSION        =3D "1.21.1"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.10"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "zc702-zynq7"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.5+snapshot-20140329"
TUNE_FEATURES     =3D " armv7a vfp neon zynq"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto       =20
meta-yocto-bsp    =3D "master:95cd5688c67fa179204a7704b1287980672894fd"
meta-xilinx       =3D "master:9d446e98558239d0453d61f65e69b67c4df72f26"
meta-xilinx-community =3D =
"master:3b513f2b29f047b17778538c331bfaddd6105e39"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-eglibc/2.19-r0/packages-split/nativesdk-nscd/opt/poky/1.5+snapshot/sysroo=
ts/x86_64-pokysdk-linux/usr/sbin/nscd' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-microblazeel' has relocations =
in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-mipsel' has relocations in =
.text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-i386' has relocations in =
.text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-ga' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-mips.real' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-microblazeel' has relocations in =
.text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-img' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-mipsel' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-mips' has relocations in =
.text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-nbd' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-x86_64' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-i386' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-ppc' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-ppc' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-arm' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-x86_64' has relocations in =
.text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-io' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-arm' has relocations in .text
WARNING: QA Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/lib/qemu/qemu-bridge-helper' has relocations =
in .text
NOTE: Tasks Summary: Attempted 1938 tasks of which 988 didn't need to be =
rerun and all succeeded.

Summary: There were 20 WARNING messages shown.

real	20m47.466s
user	0m8.620s
sys	0m0.904s


Regards,

Elvis Dowson

--Apple-Mail=_F1FDC073-0F99-4C3B-BE0E-07612380F1C7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;">Hi,<div><br></div><div>I just built meta-toolchain =
using the latest poky master, along with the meta-xilinx layer, and find =
that the build system issues multiple QA warnings, for a number of qemu =
machine configurations that are not specified in my =
local.conf.</div><div><br></div><div>I only have MACHINE=3D=93zc702-zynq7=94=
 specified, but the toolchain appears to be generating native-sdk-qemu =
binaries for all architectures.</div><div><br></div><div><div><font =
face=3D"Monaco" size=3D"1">Build Configuration:</font></div><div><font =
face=3D"Monaco" size=3D"1">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"1.21.1"</font></div><div><font face=3D"Monaco" size=3D"1">BUILD_SYS =
&nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"</font></div><div><font =
face=3D"Monaco" size=3D"1">NATIVELSBSTRING &nbsp; =3D =
"Ubuntu-12.10"</font></div><div><font face=3D"Monaco" =
size=3D"1">TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"arm-poky-linux-gnueabi"</font></div><div><font face=3D"Monaco" =
size=3D"1">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D =
"zc702-zynq7"</font></div><div><font face=3D"Monaco" size=3D"1">DISTRO =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"poky"</font></div><div><font face=3D"Monaco" size=3D"1">DISTRO_VERSION =
&nbsp; &nbsp;=3D "1.5+snapshot-20140329"</font></div><div><font =
face=3D"Monaco" size=3D"1">TUNE_FEATURES &nbsp; &nbsp; =3D " armv7a vfp =
neon zynq"</font></div><div><font face=3D"Monaco" size=3D"1">TARGET_FPU =
&nbsp; &nbsp; &nbsp; &nbsp;=3D "vfp-neon"</font></div><div><font =
face=3D"Monaco" size=3D"1">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;</font></div><div><font face=3D"Monaco" size=3D"1">meta-yocto=
 &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font face=3D"Monaco" =
size=3D"1">meta-yocto-bsp &nbsp; &nbsp;=3D =
"master:95cd5688c67fa179204a7704b1287980672894fd"</font></div><div><font =
face=3D"Monaco" size=3D"1">meta-xilinx &nbsp; &nbsp; &nbsp; =3D =
"master:9d446e98558239d0453d61f65e69b67c4df72f26"</font></div><div><font =
face=3D"Monaco" size=3D"1">meta-xilinx-community =3D =
"master:3b513f2b29f047b17778538c331bfaddd6105e39"</font></div><div><font =
face=3D"Monaco" size=3D"1"><br></font></div><div><font face=3D"Monaco" =
size=3D"1">NOTE: Preparing runqueue</font></div><div><font face=3D"Monaco"=
 size=3D"1">NOTE: Executing SetScene Tasks</font></div><div><font =
face=3D"Monaco" size=3D"1">NOTE: Executing RunQueue =
Tasks</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-eglibc/2.19-r0/packages-split/nativesdk-nscd/opt/poky/1.5+snapshot/sysroo=
ts/x86_64-pokysdk-linux/usr/sbin/nscd' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-microblazeel' has relocations =
in .text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-mipsel' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-i386' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-ga' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-mips.real' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-microblazeel' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-img' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-mipsel' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-mips' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-nbd' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-x86_64' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-i386' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-ppc' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-ppc' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-arm' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-system-x86_64' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-io' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/bin/qemu-arm' has relocations in =
.text</font></div><div><font face=3D"Monaco" size=3D"1">WARNING: QA =
Issue: ELF binary =
'/tool/yocto/build/zc702/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qemu/1.7.0-r0/packages-split/nativesdk-qemu/opt/poky/1.5+snapshot/sysroot=
s/x86_64-pokysdk-linux/usr/lib/qemu/qemu-bridge-helper' has relocations =
in .text</font></div><div><font face=3D"Monaco" size=3D"1">NOTE: Tasks =
Summary: Attempted 1938 tasks of which 988 didn't need to be rerun and =
all succeeded.</font></div><div><font face=3D"Monaco" =
size=3D"1"><br></font></div><div><font face=3D"Monaco" size=3D"1">Summary:=
 There were 20 WARNING messages shown.</font></div><div><font =
face=3D"Monaco" size=3D"1"><br></font></div><div><font face=3D"Monaco" =
size=3D"1">real<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>20m47.466s</font></div><div><font face=3D"Monaco" =
size=3D"1">user<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>0m8.620s</font></div><div><font face=3D"Monaco" size=3D"1">sys<span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>0m0.904s</font></div><div><br></div></div><div><br></div><div>Regar=
ds,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_F1FDC073-0F99-4C3B-BE0E-07612380F1C7--

--Apple-Mail=_7C90BBA8-EC1D-4F32-B3C5-770D17F5739A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQQcBAEBCgAGBQJTNn4bAAoJENajI+UwiZtEB/cf/2kuIKM5N51Vhfao6EsFk2Pe
752UfVxx8LqZwvGuodcZ6nu6DmiPOyAUHrmSrubsaOEoWNQFAnwil8DWqufCCjgO
7cTM1Mxa+LBwL7drjykrJ5o1YXnWPnQi+Z4J8H0qLHwSwCdGTykLyCjizAfswkrH
2XW5PgVMpCelsUtLczI08kfzDut0Hks8XtO1f4KdADUHlj9okCXtvO9ZXCXetxtm
IJ9WZIhJUtecFOeYF2e9cSBQuNlqyOIF3POV7KjeCcc3CkUUisi6ajg7pb8j2w+g
FpTvOaeowKO6GPp2+aeXjf/HvfZTDtj/vXo4qYO6ozGNfR6qPNpCIxV/h9sHDSwl
fZThvwJNBVeyKo1WOupgwE1pmBKEa3fjQV9Wz7sHorhtSta8pU+jGbn8M6P+NGmv
cswsYoMm8fnOI+HNBhEywz/TG56CGmjaWqwbb1ZGCJHYICg6h7OrzvlwBtxW6Epx
dOb3lxWTgpaA+E/YN86Z5neBMjKBXJok3iaG/f45gE/24vkUm4USqOsTa7urPMAY
cVe3/+xQiyoXcOQN69a6Ia5/9g70mY/mHXOy5w30tGu55uYNmRURNRN2/cjaFMFk
19kFYp7gKgYYYZdib3bo/eDt04rcRZEEhus4/liILSWRB4kV6ZEsKYbnaB+EOJSO
TKyN2SWkpLuPOGlhSCBS3suGuIWes79ZoH6u6SJk9/t4V+wEXFkiKDNI6ChfE7+l
0mb1iBDrNeTs1TKREYNCbH+STJOXrwdc8xfzv/DgKwJERPndU8V7IB5d70tuwFfC
rZLhCc4GyoOw9jAG6ymCGVnlEQO2OXU8lM2baIdQNLXxpopAr9qqmXGQWB1A77xG
OKoXX7Kg3Z9+NC11W7Us55gO/DwG68mdNrCys20Fq1U9Riog9NYwveJaBF0KHE4Z
N9EtJwueIgeQRVvdSigeKvwbe/IUE6iCs0BZio/JqZqq6cdJ6fAR7qsFvtnE2dMM
hk/rc2V7lpTqJup0In0IGm2i4tXQEgWXlaRUHj2cMB/loRftv0/KpIF8iHaj8I3k
kuGsC+E5mV3Utbbv5eY+5a0qwZRO1MrSl9Kon82UTSKLjKRZv0vVfZeFX9wC0F6+
Al3i3Qn2HTZzS8H+OFV/h7oBBS3KTEt+JdPui4WeEWHdztc6iprMiyqnRv0mo9BP
GvLZV7G8uUJ9toCOKrvrXh6pjhhIi9DoMuYVAfdnL7UDGYxtgF3vKIQ80h2+9z2Y
k9kTaNPtsdp5IiplHATGfEQuiJpe2WDOSGO10R10pr4A4OfG6uOxU9U0xjxsMIsl
ITiJ6gl8/jFWI2reSvUh5BhbTwI3MI51CMOpTdsigKOh5Sc67zmndHGpXQ/Nn3Q=
=Y+oG
-----END PGP SIGNATURE-----

--Apple-Mail=_7C90BBA8-EC1D-4F32-B3C5-770D17F5739A--
