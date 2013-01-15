Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8EF4E002AB
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 08:52:15 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,473,1355119200"; 
   d="scan'208";a="6778028"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 15 Jan 2013 10:52:15 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.222]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0318.004;
	Tue, 15 Jan 2013 10:52:14 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SDK environment LDFLAGS problem?
Thread-Index: AQHN80CrW+D5q5ceGEyAgnDriN6FpQ==
Date: Tue, 15 Jan 2013 16:52:14 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C35D457@GV1HQPEX03.babgsetc.pvt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Subject: SDK environment LDFLAGS problem?
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
X-List-Received-Date: Tue, 15 Jan 2013 16:52:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <C513495379DFC64F9B36A18ABF4A16F8@gamestop.com>
Content-Transfer-Encoding: quoted-printable

I used the meta-toolchain-sdk recipe to produce an SDK, and I installed it.=
 Here's an interesting line from the environment setup script:

  export LDFLAGS=3D"-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed"

All these linker options are preceded by "-Wl", which indicates the SDK is =
*expecting* them to be given to gcc and then passed on to ld.

If you look at the help for the ld command line, all these options are avai=
lable, but with the "-Wl," omitted. In fact, if you use these options exact=
ly as shown here, ld will complain that they aren't recognized and fail.

So, the SDK is giving me a value of LDFLAGS that *cannot* be used with ld. =
Of course, the C compiler driver can link and produce executables, and that=
 muddies the issue somewhat.

Here's an example where this is causing me real problems=85

I'm building an external module against the kernel produced by Yocto. Here'=
s an extract from my output:


make -C /home/pturley/yocto-mpu-build/tmp/work/dm8148_mpu-poky-linux-gnueab=
i/linux-ti81xx-psp-2.6.37-r0+spawnlabs+r0/git M=3D`pwd` ARCH=3Darm CROSS_CO=
MPILE=3D/opt/poky/1.3/sysroots/x86_64-pokysdk-linux/usr/bin/armv7a-vfp-neon=
-poky-linux-gnueabi/arm-poky-linux-gnueabi- \
                EXTRA_CFLAGS=3D"-DUSE_UDEV=3D1 -DMAX_POOLS=3D128" modules
.
.
.
  LD [M]  /home/pturley/z3-work/z3-centaurus-dm814x_RPS-20120626/ezsdk/comp=
onent-sources/linuxutils_3_22_00_02/packages/ti/sdo/linuxutils/cmem/src/mod=
ule/cmemk.ko
/opt/poky/1.3/sysroots/x86_64-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-li=
nux-gnueabi/arm-poky-linux-gnueabi-ld: unrecognized option '-Wl,-O1'


As you can see here, the kernel Make files are interpreting LDFLAGS as some=
thing that *can* be given directly to ld, so they fail.


My questions are:

1) Has anyone else run into this before?

2) If so, how did you resolve it?

3) Since the Yocto kernel build is *not* failing, I infer that it is *not* =
using the ld options the SDK gives me. So, the Yocto kernel build has its o=
wn pathway through which it computes its value for LDFLAGS. Why would Yocto=
 use its own SDK in a way that no user is expected to?


