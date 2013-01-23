Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E494E002AB
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 08:05:44 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,523,1355119200"; 
   d="scan'208";a="7187262"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 23 Jan 2013 10:05:43 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0318.004;
	Wed, 23 Jan 2013 10:05:43 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Inconsistency in the SDK
Thread-Index: AQHN+YN/j5WxvTQO80yl7hPrQkausQ==
Date: Wed, 23 Jan 2013 16:05:43 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C3714A8@GV1HQPEX03.babgsetc.pvt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Subject: Inconsistency in the SDK
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
X-List-Received-Date: Wed, 23 Jan 2013 16:05:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <086DD0FBF348DB43BA9AC483D92F1EAE@gamestop.com>
Content-Transfer-Encoding: quoted-printable

Here's our machine in local.conf:

    MACHINE =3D "dm8148-mpu"

Naturally, then, we see a directly like this under tmp/work:

    dm8148_mpu-poky-linux-gnueabi

Also, under tmp/sysroots, we see these two:

    dm8148-mpu=20
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


