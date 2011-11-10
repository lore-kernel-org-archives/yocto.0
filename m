Return-Path: <Michael_E_Brown@Dell.com>
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
	[143.166.148.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FAB4E0059C
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 14:36:47 -0800 (PST)
X-Loopcount0: from 10.175.216.251
From: <Michael_E_Brown@Dell.com>
To: <yocto@yoctoproject.org>
Date: Thu, 10 Nov 2011 16:36:45 -0600
Thread-Topic: SH4 build failure fix
Thread-Index: AQHMn/k5DNKfuvujVk+xPJByWnze6g==
Message-ID: <DB6E482E89290547898851B8CC9D81108D109394@AUSX7MCPS302.AMER.DELL.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: SH4 build failure fix
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
X-List-Received-Date: Thu, 10 Nov 2011 22:36:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I'm presently working on porting the build environment for three existing e=
mbedded projects over to use yocto. Unfortunately, the project which has to=
 go first is based on an SH4 chip, which isn't on the officially supported =
yocto architecture list. I gave the compile a go, and ran into a build erro=
r in gcc-cross-intermediate:

build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-li=
nux-ld: cannot find crti.o: No such file or directory
build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-li=
nux-ld: cannot find -lc
build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-li=
nux-ld: cannot find crtn.o: No such file or directory

Trying to figure out the source of this build error, I found that base open=
embedded does compile this package successfully, so I started focusing on t=
he differences. I narrowed the build failure down to this line in gcc-cross=
4.inc, which is present in openembedded, but absent in yocto/poky:
    gcc-cross4.inc
    EXTRA_OECONF_append_sh4 =3D " --with-multilib-list=3D --enable-incomple=
te-targets "

After I added this one line, I was able to sucessfully build a base yocto i=
mage for qemu sh4. Is it possible to get this added to the upstream yocto b=
uild?
--
Michael Brown

