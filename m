Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D9EE0034C
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 08:19:48 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Jan 2013 08:19:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,523,1355126400"; d="scan'208";a="281262822"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga002.fm.intel.com with ESMTP; 23 Jan 2013 08:19:48 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 23 Jan 2013 08:19:47 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.17]) with mapi id
	14.01.0355.002; Wed, 23 Jan 2013 08:19:48 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Patrick Turley <PatrickTurley@gamestop.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Inconsistency in the SDK
Thread-Index: AQHN+YN/j5WxvTQO80yl7hPrQkausZhXFxww
Date: Wed, 23 Jan 2013 16:19:46 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD6A71@ORSMSX101.amr.corp.intel.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C3714A8@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C3714A8@GV1HQPEX03.babgsetc.pvt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Inconsistency in the SDK
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
X-List-Received-Date: Wed, 23 Jan 2013 16:19:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please file a bug at bugzilla.yoctoproject.org

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Patrick Turley
Sent: Wednesday, January 23, 2013 8:06 AM
To: yocto@yoctoproject.org
Subject: [yocto] Inconsistency in the SDK

Here's our machine in local.conf:

    MACHINE =3D "dm8148-mpu"

Naturally, then, we see a directly like this under tmp/work:

    dm8148_mpu-poky-linux-gnueabi

Also, under tmp/sysroots, we see these two:

    dm8148-mpu
    dm8148-mpu-tcbootstrap

Finally, when I install the SDK, I see the following under sysroots:

    dm8148_mpu-poky-linux-gnueabi
    x86_64-pokysdk-linux

However, if I ask the cross-compiler the path to its default sysroot, I see=
 this:

    $ cd /opt/poky/1.3/sysroots/x86_64-pokysdk-linux
    $ cd usr/bin/armv7a-vfp-neon-poky-linux-gnueabi
    $ ./arm-poky-linux-gnueabi-gcc -print-sysroot
    /opt/poky/1.3/sysroots/armv7a-vfp-neon-poky-linux-gnueabi

There is no such directory. That is, the default sysroot for the SDK doesn'=
t exist.

Now, if I go back and look in tmp/work, I realize that I see *both* of thes=
e:

    dm8148_mpu-poky-linux-gnueabi
    armv7a-vfp-neon-poky-linux-gnueabi

There are a number of work directories under both.

It seems to me there are these possibilities:


1) There are at least two different (and disagreeing) methods to compute th=
e architecture "tuple," and different pieces of the system are choosing dif=
ferent methods. These different methods usually agree, but sometimes they d=
on't. Thus, when they *do* agree, it's "luck."


2) These strings *should* agree, but something is missing from our machine =
definition that causes them to disagree (we weren't using our own machine d=
efinition until recently). In that case, the machine definition code should=
 change such that it's not *possible* for these strings to disagree. Also, =
I'd like to know what we missed, so we can fix it.


3) These strings, though similar, actually *mean* different things and are =
*both* correct. The only problem is that the build process for the tool cha=
in chooses the wrong one when defining the default sysroot path.


In any case, I can fix the immediate problem with a symbolic link, but that=
's not a long-term solution.

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

