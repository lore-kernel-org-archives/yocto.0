Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2BF3E00720
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 15:03:11 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jan 2013 15:03:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,447,1355126400"; d="scan'208";a="242488546"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 10 Jan 2013 15:03:07 -0800
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 10 Jan 2013 15:03:06 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.237]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.188]) with mapi id
	14.01.0355.002; Thu, 10 Jan 2013 15:03:06 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Patrick Turley <PatrickTurley@gamestop.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Shouldn't linux/version.h appear in the SDK's host sysroot?
Thread-Index: AQHN74RRRgdDAMaXIkOZBHm2H4rXq5hDLG0Q
Date: Thu, 10 Jan 2013 23:03:05 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B8119D@ORSMSX101.amr.corp.intel.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35AE74@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C35AE74@GV1HQPEX03.babgsetc.pvt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Shouldn't linux/version.h appear in the SDK's host sysroot?
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
X-List-Received-Date: Thu, 10 Jan 2013 23:03:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Patrick,

The toolchain and sysroot are behaving correctly,  the x86_64-pokysdk-linux=
 contains the cross tools for your development host, whereas armv7a-vfp-neo=
n-poky-linux-gnueabi contains your target sysroot, and all your target prog=
rams should be using files against that sysroot.  By not knowing how your c=
ompile your package, but if you look at our ADT manual, you should source t=
he environment setup script before you try to use the toolchain and you als=
o need to pass sysroot option to your compiler and linker for them to go to=
 the target sysroot location for headers and libraries.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Patrick Turley
Sent: Thursday, January 10, 2013 2:46 PM
To: yocto@yoctoproject.org
Subject: [yocto] Shouldn't linux/version.h appear in the SDK's host sysroot=
?

I'm using a Yocto-based SDK, produced by:

    bitbake meta-toolchain-sdk

This creates the file

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

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

