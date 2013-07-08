Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD977E01488
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 07:31:01 -0700 (PDT)
Received: by mail-ee0-f49.google.com with SMTP id b57so2872246eek.22
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 07:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=UM1v/WYvNfIgGHSnvbnaVITIdpTLgg0U9l06Qy4AhIY=;
	b=V3NNOk3+XzavX5Bkkbd5FvK2FvVQSKxdIRTw3pC3vccBRP9m82BySqL60nugIEqFCM
	vfKj7qG6RcFHmwlSrzQ+MFCAQgBgRT+Rzs0SUhIyPYzyRJRrrO4likB+pEYNkxUSWois
	1VaoJf0wd3zEPnWu0sSvtcYhoJ+NnW2GkkPCevIJ6RSCH1xaI3IvVgp14L2Nb8PsbDmJ
	vhdFiracdeo3yNuvk6sQiX9TgEq3k+qXFJuaerv5gXq9tYsk9vBjnHvOkqQ8sFskH03m
	i/t8aUfKTFen1d1gT8CmvDKIkS8PqnjCh7O7iuCkHYW5NXrsUYo92TnSQTbTKCjz+1ir
	MRdw==
MIME-Version: 1.0
X-Received: by 10.15.93.134 with SMTP id w6mr25601480eez.25.1373293861089;
	Mon, 08 Jul 2013 07:31:01 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Mon, 8 Jul 2013 07:31:00 -0700 (PDT)
Date: Mon, 8 Jul 2013 08:31:00 -0600
Message-ID: <CANwz6nxcLia6Sp1r-pOE7Qf4BCtJyXsUzXKcE=tguMtn402k3A@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Fedora 18 x86_64 and make 3.82 & make 3.81
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
X-List-Received-Date: Mon, 08 Jul 2013 14:31:05 -0000
Content-Type: multipart/alternative; boundary=089e0160c864c35ff604e100e4d3

--089e0160c864c35ff604e100e4d3
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Is this a bitbake or poky error?  My poky was pulled pull on 07/03/13.

Fedora 18 x86_64 which has been used to build with branch dylan for the
past couple of months or longer.
The build below used make-3.82-13.fc18.x86_64.rpm
MACHINE=beagleboard bitbake core-image-sato-sdk-ex
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "dylan:e4a0a4c5e419154a34710a1b6c28d4180c6304c3"
meta-oe           = "master:46354a697c18a64c5836159adf8dbd92e6547e85"
meta-java         = "(nobranch):59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "dylan:e4a0a4c5e419154a34710a1b6c28d4180c6304c3"

MACHINE=beagleboard bitbake core-image-sato-sdk-ex
ERROR:  OE-core's config sanity checker detected a potential
misconfiguration.
    Either fix the cause of this error or at your own risk disable the
checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Your version of make 3.82 is broken. Please revert to 3.81 or install a
patched version.
make-3.81-19.fc13.x86_64.rpm was installed with rpm -Uh --force
make-3.81-19.fc13.x86_64.rpm
MACHINE=beagleboard bitbake core-image-sato-sdk-ex is currently working.

Build Configuration:
BB_VERSION        = "1.19.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4+snapshot-20130708"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:8a186a6b3853fc1a7dcf342d421c8926c38949c9"
meta-oe           = "master:46354a697c18a64c5836159adf8dbd92e6547e85"
meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "master:8a186a6b3853fc1a7dcf342d421c8926c38949c9"
Any and all help will be appricated.
Thanks

--089e0160c864c35ff604e100e4d3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br>Is this a bitbake or poky error?=A0 My poky was =
pulled pull on 07/03/13. <br><br>Fedora 18 x86_64 which has been used to bu=
ild with branch dylan for the past couple of months or longer.<br>The build=
 below used make-3.82-13.fc18.x86_64.rpm<br>
MACHINE=3Dbeagleboard bitbake core-image-sato-sdk-ex <br>Build Configuratio=
n:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=
=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=A0=
=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;=
arm-poky-linux-gnueabi&quot;<br>
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=
=A0=A0 =3D &quot;1.4.1&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a =
vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<=
br>
meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;dylan:e4a0a4c5e419154a34710a1b6c28d4180c6304c3&quot;<br>me=
ta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:46354a697c18a64c583615=
9adf8dbd92e6547e85&quot;<br>meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(no=
branch):59696d89fd33df6953dcb2dd54ccd3b362513f28&quot;<br>
meta-yocto-bsp=A0=A0=A0 =3D &quot;dylan:e4a0a4c5e419154a34710a1b6c28d4180c6=
304c3&quot;<br><br>MACHINE=3Dbeagleboard bitbake core-image-sato-sdk-ex<br>=
ERROR:=A0 OE-core&#39;s config sanity checker detected a potential misconfi=
guration.<br>
=A0=A0=A0 Either fix the cause of this error or at your own risk disable th=
e checker (see sanity.conf).<br>=A0=A0=A0 Following is the list of potentia=
l problems / advisories:<br><br>=A0=A0=A0 Your version of make 3.82 is brok=
en. Please revert to 3.81 or install a patched version.<br>
make-3.81-19.fc13.x86_64.rpm was installed with rpm -Uh --force make-3.81-1=
9.fc13.x86_64.rpm <br>MACHINE=3Dbeagleboard bitbake core-image-sato-sdk-ex =
is currently working.<br><br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;1.19.1&quot;<br>
BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSB=
STRING=A0=A0 =3D &quot;Fedora-18&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =
=3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;beagleboard&quot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4+snapshot-20130708&quot;<br>TUNE_FEATU=
RES=A0=A0=A0=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=
=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:8a186a6b3853fc1=
a7dcf342d421c8926c38949c9&quot;<br>
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:46354a697c18a64c5836=
159adf8dbd92e6547e85&quot;<br>meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;m=
aster:59696d89fd33df6953dcb2dd54ccd3b362513f28&quot;<br>meta-yocto-bsp=A0=
=A0=A0 =3D &quot;master:8a186a6b3853fc1a7dcf342d421c8926c38949c9&quot;<br>
Any and all help will be appricated.<br>Thanks <br></div>

--089e0160c864c35ff604e100e4d3--
