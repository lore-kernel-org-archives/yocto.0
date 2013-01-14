Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport2.gamestop.com (mail2.gamestop.com [12.25.107.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DC6FE002AB
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 15:27:10 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,468,1355119200"; 
   d="scan'208";a="6962034"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by gsironport2.gamestop.com with ESMTP; 14 Jan 2013 17:27:09 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.222]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0318.004;
	Mon, 14 Jan 2013 17:27:09 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build external module against Yocto kernel
Thread-Index: AQHN8q6s5QOP/6xKnEq8yLl/GYg/sA==
Date: Mon, 14 Jan 2013 23:27:08 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Subject: Build external module against Yocto kernel
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
X-List-Received-Date: Mon, 14 Jan 2013 23:27:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <76227FBCC52A744890C1982BA0319C2F@gamestop.com>
Content-Transfer-Encoding: quoted-printable

I have to build a module from a third-party that has nothing to do with Yoc=
to.

I want to build this module against the kernel Yocto is giving me.

The Make file for this module has a build command like this:

    make -C $(LINUX_DIR) M=3D`pwd` $(ENV) \
        EXTRA_CFLAGS=3D"$(EXTRA_CFLAGS)" modules

Obviously, this command needs to connect with either the Linux source tree =
or something like a "kernel-headers" package.

I used the meta-toolchain-sdk recipe to produce an SDK, and I installed it.=
 Unfortunately, I don't see a "kernel-header" equivalent in there.

This leads me to imagine I must point this command at some sub-tree within =
the Yocto output (probably under tmp/sysroots). And, if I want that tree av=
ailable elsewhere, I have to package it up into a tarball and transport it.

Usually, Yocto is way ahead of me on these sorts of things, and there's alr=
eady a graceful way to deal with this -- I just haven't figure it out yet.

What am I missing?


