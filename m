Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A210E00CD0; Thu, 28 Sep 2017 09:29:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A77E9E00CC6
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 09:29:35 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id w9so1390566ywi.11
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 09:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=oyK398tONHDGyw00RgRQhb0F/RmabhJVwjzv/EgfiA0=;
	b=I02WkTUatfNXYubOICs/tNpp9bSn3m86RNjmhVmgZ1Gum2hGm2uYKzOKv88lKPZoi9
	smj9waBx0CsUoc2KTWlbT4LeC1XpKxOgI8gA3hkFUxdO/sfEsOcoGNpzpb8TDwJPlV7C
	n4RICBDjHg2Dd8vs53gMcH4rGXeqx+x7ptR8shn+RIfjVEO9eMVLUH5nNqfFUqykqLDj
	HWNSMwVIdno88EpFSheY4xzIESJry/JMFZ5Lp+lV0MX37xd6S9Sf4uGvB9uwLW7WgzZY
	28MJOxk7slac3udszfXDtv3kfTnbqTvkA3ISZhP1K0IIJT4nAz9Xb4fxt1vZ3kf7dPid
	puCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=oyK398tONHDGyw00RgRQhb0F/RmabhJVwjzv/EgfiA0=;
	b=HlPjcic54O/7xYZ9B68LO0nCcYwrjtVMgabXHqF48K2qvXz/Q79WAB3XxobC4vSkTO
	j3j7jxtFox10gfaFQIucX22xfBp3gVu6aoCtY/2t/6711Q0NW0fPnkd1iZOvQpiAA3jg
	FaCoLwZMxdo1E9QiAfij/QRPY2ppCDFFT2xyB4FX0HgcjFYsf//YNCjB+HelREnsGoZN
	2nA4ECwKNnKjr7mQzigncpXvSIFK7yIRRuUjAIQpsK/beDLhVzxoNQXrDW7pDsVtHNID
	8ChXIOhFBJX2m0yi4sjb31RUaIbmFqQHRqDECgdX2n4SNwa9Zws+YE/HWIhhTuw11Sjk
	PDug==
X-Gm-Message-State: AHPjjUhVFgOiE+2Y7NdMrCKUqXBy+dHAeS3h6fnX3Ql496z4viszXOWZ
	MJBBLmnmmGvovtrm3FypWB/Oyw==
X-Google-Smtp-Source: AOwi7QDbSZAQ8aZab4JX2/i3VwvQcvsKf21HhvGoogyEHN8nOVZ4JQ1R/dUwhgTgoTNGbT0ZJj74Og==
X-Received: by 10.129.168.5 with SMTP id f5mr4112281ywh.7.1506616174779;
	Thu, 28 Sep 2017 09:29:34 -0700 (PDT)
Received: from 2600-6c64-617f-fb18-a56e-1e6f-7cab-0a2d.dhcp6.chtrptr.net
	(2600-6c64-617f-fb18-a56e-1e6f-7cab-0a2d.dhcp6.chtrptr.net.
	[2600:6c64:617f:fb18:a56e:1e6f:7cab:a2d])
	by smtp.gmail.com with ESMTPSA id
	y186sm733833ywc.71.2017.09.28.09.29.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Sep 2017 09:29:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Steve Pavao <stevep@korgrd.com>
In-Reply-To: <CAJ86T=V6sbzpz4_3dYrjhkxkavWJbs1vAU6x95GjRTdVT5cX+w@mail.gmail.com>
Date: Thu, 28 Sep 2017 12:29:32 -0400
Message-Id: <1A69A446-50D3-4FE2-AC3E-4B26099B9EB5@korgrd.com>
References: <7C20937E-B5A7-4824-89C2-B93B198E3EDB@korgrd.com>
	<CAJ86T=V6sbzpz4_3dYrjhkxkavWJbs1vAU6x95GjRTdVT5cX+w@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: yocto@yoctoproject.org
Subject: Re: advice on recipe for shared lib mDNSResponder
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
X-List-Received-Date: Thu, 28 Sep 2017 16:29:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

Thanks so much for the great and useful information from you and Ross.

I was unable to successfully build that recipe here, though.  I=E2=80=99ll=
 check with the maintainers to ask why.

All I did was clone the meta-intel-iot-middleware repo, add that layer =
to bblayers.conf, and add mdns to IMAGE_INSTALL_append to get this far.

- Steve Pavao
Korg R&D


Build Configuration:
BB_VERSION        =3D "1.34.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "aarch64-poky-linux"
MACHINE           =3D "raspberrypi3-64"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.3.2"
TUNE_FEATURES     =3D "aarch64"
TARGET_FPU        =3D ""
meta             =20
meta-poky        =20
meta-yocto-bsp    =3D "pyro:072430b9b3a78b318b66371c36e2986d2ed5cba4"
meta-oe          =20
meta-python      =20
meta-multimedia   =3D "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
meta-intel-iot-middleware =3D =
"master:fc8eabfa4fb54802d3f97123b9d2954450175e33"
meta-raspberrypi  =3D "pyro:c981f01a2cdb3299eb57920cffbb5dfd4248209a"

Initialising tasks: 100% =
|#########################################################################=
####################################| Time: 0:00:10
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: mdns-544-r1 do_compile: oe_runmake failed
ERROR: mdns-544-r1 do_compile: Function failed: do_compile (log file is =
located at =
/data/development/lfs/yocto/poky/build/tmp/work/aarch64-poky-linux/mdns/54=
4-r1/temp/log.do_compile.10472)
ERROR: Logfile of failure stored in: =
/data/development/lfs/yocto/poky/build/tmp/work/aarch64-poky-linux/mdns/54=
4-r1/temp/log.do_compile.10472
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make os=3Dlinux DEBUG=3D0
| ERROR: oe_runmake failed
| make: cc: Command not found
| Makefile:494: recipe for target 'objects/prod/PosixDaemon.c.o' failed
| make: *** [objects/prod/PosixDaemon.c.o] Error 127
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at =
/data/development/lfs/yocto/poky/build/tmp/work/aarch64-poky-linux/mdns/54=
4-r1/temp/log.do_compile.10472)
ERROR: Task =
(/data/development/lfs/yocto/poky/meta-intel-iot-middleware/recipes-connec=
tivity/mdns/mdns_544.bb:do_compile) failed with exit code '1'


> On Sep 27, 2017, at 7:17 PM, Andre McCurdy <armccurdy@gmail.com> =
wrote:
>=20
> On Wed, Sep 27, 2017 at 3:58 PM, Steve Pavao <stevep@korgrd.com> =
wrote:
>> Hello,
>>=20
>> I am fairly new to Yocto, yet have been able to successfully add a =
custom kernel object to my Yocto poky build, no problem. However, I am =
having some difficulty adding a shared library, namely mDNSResponder.
>>=20
>> Right now, my recipe is very simple and does not use autotools.  =
There are just a few tweaks for cross-building which I=E2=80=99ve added =
to the supplied mDNSResponder Makefile for mDNSPosix, in order to target =
64-bit ARM hardware.  Here is the build error I encounter.  Obviously =
the environment is not being set 100% correctly, because it can not find =
stdio.h.  Is there an easy way to avoid this problem?
>=20
> You need to ensure that the Makefiles etc for the package you are
> building respect the ${CC} environment variable defined by OE. It
> includes not only the name of the cross compiler but also important
> command line options, e.g. tuning for the correct target CPU and the
> correct --sysroot option. =46rom your build log the --sysroot option =
is
> missing, therefore the compiler can not find standard include files
> etc.
>=20
> Unfortunately packages with build with custom Makefiles are so diverse
> that there's no single approach to making them work. Sometimes you can
> force CC=3D${CC} etc via the make command line to over-ride incorrect
> defaults in the Makefile, sometime the Makefile needs to be patched,
> etc. Even if the build succeeds it's wise to carefully check the build
> log to ensure that all calls to the compiler, linker, etc contain the
> flags defined by OE.
>=20
> Note however that according to the layer index there does already seem
> to be at least one recipe for mDNSResponder. It includes a Makefile
> patch which looks like it will address your issue (and some others):
>=20
>  =
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-middleware/tree/r=
ecipes-connectivity/mdns/mdns_544.bb?h=3Dmaster
>=20
>>=20
>> - Steve Pavao
>> Korg R&D
>>=20
>> Log data follows:
>> | DEBUG: Executing shell function do_compile
>> | NOTE: make -j 4
>> | ERROR: oe_runmake failed
>> | make os=3DEmbeddedLinuxAarch64 Daemon libdns_sd -C mDNSPosix
>> | make[1]: warning: jobserver unavailable: using -j1.  Add '+' to =
parent make rule.
>> | make[1]: Entering directory =
'/data/development/lfs/yocto/poky/build/tmp/work/aarch64-poky-linux/mDNSRe=
sponder/333.10-r0/mDNSPosix'
>> | aarch64-poky-linux-gcc -I../mDNSCore -I../mDNSShared =
-Iobjects/prod/EmbeddedLinuxAarch64 -fwrapv -W -Wall =
-DPID_FILE=3D\"/var/run/mdnsd.pid\" =
-DMDNS_UDS_SERVERPATH=3D\"/var/run/mdnsd\" -DNOT_HAVE_SA_LEN =
-DUSES_NETLINK -DHAVE_LINUX -DTARGET_OS_LINUX -fno-strict-aliasing -Os =
-DMDNS_DEBUGMSGS=3D0   -c -o =
objects/prod/EmbeddedLinuxAarch64/PosixDaemon.c.o PosixDaemon.c
>> | PosixDaemon.c:31:19: fatal error: stdio.h: No such file or =
directory
>> |  #include <stdio.h>
>> |                    ^
>> | compilation terminated.
>> | Makefile:553: recipe for target =
'objects/prod/EmbeddedLinuxAarch64/PosixDaemon.c.o' failed
>> | make[1]: *** [objects/prod/EmbeddedLinuxAarch64/PosixDaemon.c.o] =
Error 1
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


