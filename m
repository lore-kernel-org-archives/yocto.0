Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABBD1E00720
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 14:46:26 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,447,1355119200"; 
   d="scan'208";a="6587977"
Received: from unknown (HELO GV1HQPEX01.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 10 Jan 2013 16:46:25 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.222]) by
	GV1HQPEX01.babgsetc.pvt ([172.22.1.191]) with mapi id 14.02.0318.004;
	Thu, 10 Jan 2013 16:46:25 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Shouldn't linux/version.h appear in the SDK's host sysroot?
Thread-Index: AQHN74RRRgdDAMaXIkOZBHm2H4rXqw==
Date: Thu, 10 Jan 2013 22:46:23 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C35AE74@GV1HQPEX03.babgsetc.pvt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Subject: Shouldn't linux/version.h appear in the SDK's host sysroot?
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
X-List-Received-Date: Thu, 10 Jan 2013 22:46:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D8DBED43C9E86D4792184DB50CAC9D1F@gamestop.com>
Content-Transfer-Encoding: quoted-printable

I'm using a Yocto-based SDK, produced by:

    bitbake meta-toolchain-sdk

This creates the file=20

    poky-eglibc-x86_64-arm-toolchain-gmae-1.3.sh

in the directory

    build/tmp/deploy/sdk

I ran the installation script to install the SDK on my build system. Within=
 the SDK installation directory, under "sysroots", I have the following two=
 directories:

    armv7a-vfp-neon-poky-linux-gnueabi
    x86_64-pokysdk-linux

Unless I'm mistaken, the first one reflects the target environment, and the=
 second one contains what I need to do cross-compilation. Thus, the latter =
contains the cross-compilation tools, and that's the sysroot to which all m=
y builds are directed.

I'm compiling the lm_sensors package for my target. As part of its work, it=
 tries to discover the version of the target linux kernel. To do this, it c=
ompiles a very small file (etc/config.c) that includes the header file <lin=
ux/kernel.h>.

As it happens, <linux/kernel.h> does *not* appear in the cross-compilation =
sysroot, so this simple task fails. That header file *does* appear in the t=
arget sysroot, but that's of no use to me in the cross-compilation process.

I believe one of the following is true:

1) The lm_sensors package is doing something entirely legitimate, and the f=
ile <linux/kernel.h> *should* appear in the cross-compilation sysroot to su=
pport this. The Yocto SDK build target needs a small fix so that <linux/ker=
nel.h> is properly added to the cross-compilation sys root. In the meantime=
, I can work around this oversight by creating a symbolic link.

2) I've made a mistake in setting up my build environment because I don't u=
nderstand how cross-compilation *should* be done. If done properly, the cro=
ss-compilation process will have access to *both* sysroots and get what it =
needs from each. If this is the case, please tell me what I appear to have =
done wrong.

3) Something else.


