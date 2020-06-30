Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9395.1593495893718411107
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jun 2020 22:44:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: redrectangle.org, ip: 140.211.169.56, mailfrom: robert.joslyn@redrectangle.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49984E01DBF; Mon, 29 Jun 2020 22:44:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [217.70.178.242 listed in list.dnswl.org]
X-Greylist: delayed 1346 seconds by postgrey-1.32 at yocto-www; Mon, 29 Jun 2020 22:44:51 PDT
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DECD3E01DBD
	for <yocto@yoctoproject.org>; Mon, 29 Jun 2020 22:44:51 -0700 (PDT)
Received: from relay2-d.mail.gandi.net (unknown [217.70.183.194])
	by mslow2.mail.gandi.net (Postfix) with ESMTP id 819C73A2DAD
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2020 05:14:00 +0000 (UTC)
X-Originating-IP: 173.197.191.182
Received: from bucephalus (rrcs-173-197-191-182.west.biz.rr.com [173.197.191.182])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id C06C140004
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2020 05:13:57 +0000 (UTC)
Message-ID: <0e53cff2f343fe6bd08ec502376ad1910b1d8039.camel@redrectangle.org>
Subject: Errors Building openjdk-8 on dunfell
From: "Robert Joslyn" <robert.joslyn@redrectangle.org>
To: Yocto discussion list <yocto@yoctoproject.org>
Date: Mon, 29 Jun 2020 22:13:53 -0700
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to build openjdk-8 on dunfull and am getting some build errors=
.
Using an Ubuntu 18.04 host, I get an error building the openjdk-8 recipe:

| g++: error: unrecognized command line option =E2=80=98-fmacro-prefix-
map=3D/mnt/yocto/bionic/poky/build/tmp/work/core2-64-poky-linux/openjdk-
8/252-r0=3D/usr/src/debug/openjdk-8/252-r0=E2=80=99

This seems to imply I need a newer gcc which supports the -fmacro-prefix-
map option. The README says I need gcc 6 or later on the host, but 18.04
has gcc 7.5.0. Maybe the README is outdated?

I then tried building in an Ubuntu 20.04 container to see if that makes
any difference. It fails in a different way while building icedtea7-
native:

| /usr/include/x86_64-linux-gnu/bits/stdio2.h:100:24: error: =E2=80=98%s=E2=
=80=99
directive argument is null [-Werror=3Dformat-overflow=3D]

I'm doing clean builds with both my 18.04 and 20.04 setups starting with
separate, empty sstate-cache directories. Both builds are using poky
defaults:

Build Configuration:
BB_VERSION           =3D "1.46.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "x86_64-poky-linux"
MACHINE              =3D "qemux86-64"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "3.1.1"
TUNE_FEATURES        =3D "m64 core2"
TARGET_FPU           =3D ""
meta                =20
meta-poky           =20
meta-yocto-bsp       =3D "dunfell:93ef4736915090ac9a2402916df8924ac443949=
0"
meta-oe              =3D "dunfell:8a72d29e0876830ffd96b85d7d0308302eb07a5=
d"
meta-java            =3D "dunfell:cf9604a4789801d9dfb0cb8ca134ff04b42ae16=
1"

Is there some trick I'm missing to get clean builds out of the box? I can
fix the 20.04 build by adding -Wno-error for that specific warning (and
can send a patch if desired), but has anyone else had these issues? Any
thoughts would be appreciated.

Thanks,
Robert

