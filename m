Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17ED6E0047F
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 09:59:12 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,475,1355119200"; d="scan'208,217";a="6781697"
Received: from unknown (HELO GV1HQPEX01.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 15 Jan 2013 11:59:11 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.222]) by
	GV1HQPEX01.babgsetc.pvt ([172.22.1.191]) with mapi id 14.02.0318.004;
	Tue, 15 Jan 2013 11:59:11 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Brian Lloyd <blloyd@familyhonor.net>
Thread-Topic: [yocto] SDK environment LDFLAGS problem?
Thread-Index: AQHN80CrW+D5q5ceGEyAgnDriN6FpZhLDGeAgAAFtgA=
Date: Tue, 15 Jan 2013 17:59:10 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C35D76D@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35D457@GV1HQPEX03.babgsetc.pvt>
	<1358271523.2479.14.camel@omclinuxballt.devnet.ordermatic.net>
In-Reply-To: <1358271523.2479.14.camel@omclinuxballt.devnet.ordermatic.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK environment LDFLAGS problem?
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
X-List-Received-Date: Tue, 15 Jan 2013 17:59:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5BEFD653CA8A8D47AA194ED30AB5968C35D76DGV1HQPEX03babgset_"

--_000_5BEFD653CA8A8D47AA194ED30AB5968C35D76DGV1HQPEX03babgset_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable


On Jan 15, 2013, at 11:38 AM, Brian Lloyd <blloyd@familyhonor.net<mailto:bl=
loyd@familyhonor.net>>
 wrote:

The kernel is a special case, where the SDK is really designed for developi=
ng user applications (which the kernel is not).

Yes, it's clear to me that, in this one respect, the SDK is unsuitable for =
building kernels or kernel modules.

My point is that this is a problem, and it might be reasonable to fix it.

I found it pretty easy to create a kernel-module-MYMODULE.bbclass file and =
build the kernel and module in the OE/Poky build system directly, and then =
have it included in the image made for the device.

See http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorpo=
rating-out-of-tree-modules for details.

Thanks for pointing me at that.  As it happens, I can't use that method bec=
ause I'm not going to create a recipe.

Brian

On Tue, 2013-01-15 at 16:52 +0000, Patrick Turley wrote:

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

_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto





--_000_5BEFD653CA8A8D47AA194ED30AB5968C35D76DGV1HQPEX03babgset_
Content-Type: text/html; charset="Windows-1252"
Content-ID: <59089FA94AAD214692BAA063C02161BB@gamestop.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; ">
<br>
<div>
<div>On Jan 15, 2013, at 11:38 AM, Brian Lloyd &lt;<a href=3D"mailto:blloyd=
@familyhonor.net">blloyd@familyhonor.net</a>&gt;</div>
<div>&nbsp;wrote:</div>
<br class=3D"Apple-interchange-newline">
<blockquote type=3D"cite">
<meta name=3D"GENERATOR" content=3D"GtkHTML/4.4.4">
<div>The kernel is a special case, where the SDK is really designed for dev=
eloping user applications (which the kernel is not).<br>
</div>
</blockquote>
<div><br>
</div>
<div>Yes, it's clear to me that, in this one respect, the SDK is unsuitable=
 for building kernels or kernel modules.</div>
<div><br>
</div>
<div>My point is that this is a problem, and it might be reasonable to fix =
it.</div>
<div><br>
</div>
<blockquote type=3D"cite">
<div>I found it pretty easy to create a kernel-module-MYMODULE.bbclass file=
 and build the kernel and module in the OE/Poky build system directly, and =
then have it included in the image made for the device.<br>
<br>
See <a href=3D"http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.h=
tml#incorporating-out-of-tree-modules">
http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporati=
ng-out-of-tree-modules</a> for details.<br>
</div>
</blockquote>
<div><br>
</div>
Thanks for pointing me at that. &nbsp;As it happens, I can't use that metho=
d because I'm not going to create a recipe.<br>
<br>
<blockquote type=3D"cite">
<div>Brian<br>
<br>
On Tue, 2013-01-15 at 16:52 &#43;0000, Patrick Turley wrote:
<blockquote type=3D"CITE">
<pre>I used the meta-toolchain-sdk recipe to produce an SDK, and I installe=
d it. Here's an interesting line from the environment setup script:

  export LDFLAGS=3D&quot;-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed&quo=
t;

All these linker options are preceded by &quot;-Wl&quot;, which indicates t=
he SDK is *expecting* them to be given to gcc and then passed on to ld.

If you look at the help for the ld command line, all these options are avai=
lable, but with the &quot;-Wl,&quot; omitted. In fact, if you use these opt=
ions exactly as shown here, ld will complain that they aren't recognized an=
d fail.

So, the SDK is giving me a value of LDFLAGS that *cannot* be used with ld. =
Of course, the C compiler driver can link and produce executables, and that=
 muddies the issue somewhat.

Here's an example where this is causing me real problems=85

I'm building an external module against the kernel produced by Yocto. Here'=
s an extract from my output:


make -C /home/pturley/yocto-mpu-build/tmp/work/dm8148_mpu-poky-linux-gnueab=
i/linux-ti81xx-psp-2.6.37-r0&#43;spawnlabs&#43;r0/git M=3D`pwd` ARCH=3Darm =
CROSS_COMPILE=3D/opt/poky/1.3/sysroots/x86_64-pokysdk-linux/usr/bin/armv7a-=
vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi- \
                EXTRA_CFLAGS=3D&quot;-DUSE_UDEV=3D1 -DMAX_POOLS=3D128&quot;=
 modules
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

_______________________________________________
yocto mailing list
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a>

</pre>
</blockquote>
<br>
</div>
</blockquote>
</div>
<br>
</body>
</html>

--_000_5BEFD653CA8A8D47AA194ED30AB5968C35D76DGV1HQPEX03babgset_--
