Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E30BC433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Dec 2021 06:26:45 +0000 (UTC)
Received: from mailout04.t-online.de (mailout04.t-online.de [194.25.134.18])
 by mx.groups.io with SMTP id smtpd.web11.48151.1640759203690855954
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 22:26:44 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.18,
 mailfrom: f_l_k@t-online.de)
Received: from fwd83.dcpf.telekom.de (fwd83.aul.t-online.de [10.223.144.109])
	by mailout04.t-online.de (Postfix) with SMTP id 2F1A06634
	for <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 07:26:40 +0100 (CET)
Received: from [192.168.178.83] ([84.163.47.249]) by fwd83.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1n2SPt-3UAdkH0; Wed, 29 Dec 2021 07:26:29 +0100
Subject: Re: [yocto] /bin/sh: 1: bison: not found while compiling own kernel
 module with poky-dunfell #bitbake
To: yocto@lists.yoctoproject.org
References: <SUq3.1640758576674182643.xC9E@lists.yoctoproject.org>
From: Markus Volk <f_l_k@t-online.de>
Message-ID: <dbd1e026-5d60-eed8-5f51-7642cb309313@t-online.de>
Date: Wed, 29 Dec 2021 07:26:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <SUq3.1640758576674182643.xC9E@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------411F1EE6DD6AA9EF84F49987"
Content-Language: en-US
X-TOI-EXPURGATEID: 150726::1640759189-0000EDC4-CAB931B5/0/0 CLEAN NORMAL
X-TOI-MSGID: c106673a-6b86-485a-9cb3-b6f21a88cb44
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 06:26:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55684

This is a multi-part message in MIME format.
--------------411F1EE6DD6AA9EF84F49987
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

hello,

try to add 'bison-native' to DEPENDS.

Am 29.12.21 um 07:16 schrieb prashantsingh@dialtronics.com:
> hello team,
> I'm trying to build my own kernel module with yocto for raspberry-pi=20
> kernel, but it's giving me error that "*bison not found*", as-
>
> DEBUG: Executing shell function do_compile
> NOTE: make -j 12=20
> KERNEL_SRC=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BS=
P/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-source=20
> KSRC=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/work=
space/FXS/tmp/work-shared/raspberrypi3/kernel-build-artifacts=20
> KERNEL_PATH=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_B=
SP/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-source=20
> KERNEL_VERSION=3D5.4.72-v7 CC=3Darm-poky-linux-gnueabi-gcc=20
> -mno-thumb-interwork -marm -fuse-ld=3Dbfd=20
> -fmacro-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUIL=
D/FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/=
1.0-r0=3D/usr/src/debug/ax88772/1.0-r0=20
> -fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUIL=
D/FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/=
1.0-r0=3D/usr/src/debug/ax88772/1.0-r0=20
> -fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUIL=
D/FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/=
1.0-r0/recipe-sysroot=3D=20
> -fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUIL=
D/FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/=
1.0-r0/recipe-sysroot-native=3D=20
> -fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUIL=
D/FXS_BSP/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-source=3D/usr=
/src/kernel=20
> LD=3Darm-poky-linux-gnueabi-ld.bfd=C2=A0=C2=A0 AR=3Darm-poky-linux-gnue=
abi-ar=20
> O=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspa=
ce/FXS/tmp/work-shared/raspberrypi3/kernel-build-artifacts=20
> KBUILD_EXTRA_SYMBOLS=3D
> make -C=20
> /home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/F=
XS/tmp/work-shared/raspberrypi3/kernel-build-artifacts=20
> SUBDIRS=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/w=
orkspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1.0-r0=20
> modules
> make[1]: warning: jobserver unavailable: using -j1.=C2=A0 Add '+' to pa=
rent=20
> make rule.
> make[1]: Entering directory=20
> '/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/=
FXS/tmp/work-shared/raspberrypi3/kernel-build-artifacts'
> =C2=A0 GEN=C2=A0=C2=A0=C2=A0=C2=A0 Makefile
> =C2=A0 YACC=C2=A0=C2=A0=C2=A0 scripts/kconfig/parser.tab.[ch]
> /bin/sh: 1: bison: not found
> make[4]: *** [scripts/Makefile.host:17: scripts/kconfig/parser.tab.h]=20
> Error 127
> make[3]: ***=20
> [/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/=
FXS/tmp/work-shared/raspberrypi3/kernel-source/Makefile:590:=20
> syncconfig] Error 2
> make[2]: ***=20
> [/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/=
FXS/tmp/work-shared/raspberrypi3/kernel-source/Makefile:696:=20
> include/config/auto.conf.cmd] Error 2
> make[1]: ***=20
> [/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/=
FXS/tmp/work-shared/raspberrypi3/kernel-source/Makefile:179:=20
> sub-make] Error 2
> make[1]: Leaving directory=20
> '/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/=
FXS/tmp/work-shared/raspberrypi3/kernel-build-artifacts'
> make: *** [Makefile:19: default] Error 2
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.
>
>
> *Here is my bb file for the same-*
>
> SUMMARY =3D "WAN IC asix kernel module"
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D014e508ee78ef83e5007b9cb3834=
f0e9"
>
> DEPENDS =3D "virtual/kernel bc bison"
>
> inherit module
>
> PR =3D "r0"
> PV =3D "1.0"
>
> SRC_URI =3D "file://Makefile \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://asix.c \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://asix.h \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://axusbnet.=
c \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://axusbnet.=
h \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://command.h=
 \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://debug.txt=
 \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://eeprom_da=
ta.tar.bz2 \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://ioctl.c \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://ioctl.h \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://ioctl_rea=
dme \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://readme \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://readme \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://LICENSE \
> "
>
> S =3D "${WORKDIR}"
>
> export TARGET_SYS
> EXTRA_OEMAKE +=3D "KSRC=3D${STAGING_KERNEL_BUILDDIR}"
>
> do_compile_append() {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${CC} ioctl.c -o ioctl
> }
>
> do_install_prepend() {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 export DESTDIR=3D"${D}"
> }
>
>
>
>
> # The inherit of module.bbclass will automatically name module=20
> packages with
> # "kernel-module-" prefix as required by the oe-core build environment.
>
>
>
> Same kernel module with poky zeus and rpi kernel 4.19 got compiled=20
> successfully, but here I'm getting issue with poky dunfell with Rpi=20
> kernel 5.4
>
> Please help me resolve this issue.
>
> Thanks.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55683): https://lists.yoctoproject.org/g/yocto/mess=
age/55683
> Mute This Topic: https://lists.yoctoproject.org/mt/88010629/3618223
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbak=
e
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [f_l_k@t-onli=
ne.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--------------411F1EE6DD6AA9EF84F49987
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>hello,</p>
    <p>try to add 'bison-native' to DEPENDS.</p>
    <div class=3D"moz-cite-prefix">Am 29.12.21 um 07:16 schrieb
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:prashantsingh@=
dialtronics.com">prashantsingh@dialtronics.com</a>:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:SUq3.1640758576674182643.xC9E@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      hello team,<br>
      I'm trying to build my own kernel module with yocto for
      raspberry-pi kernel, but it's giving me error that "<strong>bison
        not found</strong>", as-<br>
      <br>
      DEBUG: Executing shell function do_compile<br>
      NOTE: make -j 12
KERNEL_SRC=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/=
workspace/FXS/tmp/work-shared/raspberrypi3/kernel-source
KSRC=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/worksp=
ace/FXS/tmp/work-shared/raspberrypi3/kernel-build-artifacts
KERNEL_PATH=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP=
/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-source
      KERNEL_VERSION=3D5.4.72-v7 CC=3Darm-poky-linux-gnueabi-gcc=C2=A0
      -mno-thumb-interwork -marm -fuse-ld=3Dbfd
-fmacro-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/=
FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1.=
0-r0=3D/usr/src/debug/ax88772/1.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
-fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/=
FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1.=
0-r0=3D/usr/src/debug/ax88772/1.0-r0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
-fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/=
FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1.=
0-r0/recipe-sysroot=3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
-fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/=
FXS_BSP/workspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1.=
0-r0/recipe-sysroot-native=3D=C2=A0
-fdebug-prefix-map=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/=
FXS_BSP/workspace/FXS/tmp/work-shared/raspberrypi3/kernel-source=3D/usr/s=
rc/kernel
      LD=3Darm-poky-linux-gnueabi-ld.bfd=C2=A0=C2=A0 AR=3Darm-poky-linux-=
gnueabi-ar=C2=A0
O=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace=
/FXS/tmp/work-shared/raspberrypi3/kernel-build-artifacts
      KBUILD_EXTRA_SYMBOLS=3D<br>
      make -C
/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FXS=
/tmp/work-shared/raspberrypi3/kernel-build-artifacts
SUBDIRS=3D/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/wor=
kspace/FXS/tmp/work/raspberrypi3-poky-linux-gnueabi/ax88772/1.0-r0
      modules<br>
      make[1]: warning: jobserver unavailable: using -j1.=C2=A0 Add '+' t=
o
      parent make rule.<br>
      make[1]: Entering directory
'/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FX=
S/tmp/work-shared/raspberrypi3/kernel-build-artifacts'<br>
      =C2=A0 GEN=C2=A0=C2=A0=C2=A0=C2=A0 Makefile<br>
      =C2=A0 YACC=C2=A0=C2=A0=C2=A0 scripts/kconfig/parser.tab.[ch]<br>
      /bin/sh: 1: bison: not found<br>
      make[4]: *** [scripts/Makefile.host:17:
      scripts/kconfig/parser.tab.h] Error 127<br>
      make[3]: ***
[/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FX=
S/tmp/work-shared/raspberrypi3/kernel-source/Makefile:590:
      syncconfig] Error 2<br>
      make[2]: ***
[/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FX=
S/tmp/work-shared/raspberrypi3/kernel-source/Makefile:696:
      include/config/auto.conf.cmd] Error 2<br>
      make[1]: ***
[/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FX=
S/tmp/work-shared/raspberrypi3/kernel-source/Makefile:179:
      sub-make] Error 2<br>
      make[1]: Leaving directory
'/home/dialtronics/DIALT_WORK/RPI_YOCTO/PS_RPI_BUILD/FXS_BSP/workspace/FX=
S/tmp/work-shared/raspberrypi3/kernel-build-artifacts'<br>
      make: *** [Makefile:19: default] Error 2<br>
      ERROR: oe_runmake failed<br>
      WARNING: exit code 1 from a shell command.<br>
      <br>
      <br>
      <strong>Here is my bb file for the same-</strong><br>
      <br>
      SUMMARY =3D "WAN IC asix kernel module"<br>
      LICENSE =3D "GPLv2"<br>
      LIC_FILES_CHKSUM =3D
      <a class=3D"moz-txt-link-rfc2396E" href=3D"file://LICENSE;md5=3D014=
e508ee78ef83e5007b9cb3834f0e9">"file://LICENSE;md5=3D014e508ee78ef83e5007=
b9cb3834f0e9"</a><br>
      <br>
      DEPENDS =3D "virtual/kernel bc bison"<br>
      <br>
      inherit module<br>
      <br>
      PR =3D "r0"<br>
      PV =3D "1.0"<br>
      <br>
      SRC_URI =3D "<a class=3D"moz-txt-link-freetext" href=3D"file://Make=
file">file://Makefile</a> \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://asix.c">file://asix.c</a> \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://asix.h">file://asix.h</a> \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://axusbnet.c">file://axusbnet.c</a> \=
<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://axusbnet.h">file://axusbnet.h</a> \=
<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://command.h">file://command.h</a> \<b=
r>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://debug.txt">file://debug.txt</a> \<b=
r>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://eeprom_data.tar.bz2">file://eeprom_=
data.tar.bz2</a> \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://ioctl.c">file://ioctl.c</a> \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://ioctl.h">file://ioctl.h</a> \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://ioctl_readme">file://ioctl_readme</=
a> \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://readme">file://readme</a> \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://readme">file://readme</a> \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"=
moz-txt-link-freetext" href=3D"file://LICENSE">file://LICENSE</a> \<br>
      "<br>
      <br>
      S =3D "${WORKDIR}"<br>
      <br>
      export TARGET_SYS<br>
      EXTRA_OEMAKE +=3D "KSRC=3D${STAGING_KERNEL_BUILDDIR}"<br>
      <br>
      do_compile_append() {<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${CC} ioctl.c -o ioctl<b=
r>
      }<br>
      <br>
      do_install_prepend() {<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 export DESTDIR=3D"${D}"<=
br>
      }<br>
      <br>
      <br>
      <br>
      <br>
      # The inherit of module.bbclass will automatically name module
      packages with<br>
      # "kernel-module-" prefix as required by the oe-core build
      environment.<br>
      <br>
      <br>
      <br>
      Same kernel module with poky zeus and rpi kernel 4.19 got compiled
      successfully, but here I'm getting issue with poky dunfell with
      Rpi kernel 5.4<br>
      <br>
      Please help me resolve this issue.<br>
      <br>
      Thanks.
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#55683): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/55683">https://lists.yoctopr=
oject.org/g/yocto/message/55683</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/88010629/3618223">https://lists.yoctoproject.org/mt/=
88010629/3618223</a>
Mute #bitbake:<a class=3D"moz-txt-link-freetext" href=3D"https://lists.yo=
ctoproject.org/g/yocto/mutehashtag/bitbake">https://lists.yoctoproject.or=
g/g/yocto/mutehashtag/bitbake</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:f_l_k@t-online=
.de">f_l_k@t-online.de</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
  </body>
</html>

--------------411F1EE6DD6AA9EF84F49987--

