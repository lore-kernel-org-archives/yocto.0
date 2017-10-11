Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7BA4E00C78; Wed, 11 Oct 2017 10:08:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A483E00C65
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 10:08:09 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx4.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Wed, 11 Oct 2017 17:08:03 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 11 Oct 2017 10:07:55 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 11 Oct 2017 10:07:55 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] errors in recipe after move from devtool
Thread-Index: AQHTQeR3bS5Hw1lI/kCbrgtXNT82jKLdRhRGgACT2ID//5It1oAAn3CA//+g8HA=
Date: Wed, 11 Oct 2017 17:07:55 +0000
Message-ID: <158f5845a0574c538b147a1fcc70a6c3@sakuraus.com>
References: <c69919c2a00f4b6f8b9f00b46d848839@sakuraus.com>
	<CAJTo0LYK-f5C4LcRp0dtOoDdMoF_zBhoqZnptYTTpq1GjVfjQA@mail.gmail.com>
	<85ad132a2f884b56ad55f81e78d6ed2c@sakuraus.com>
	<4335149.ZQHvdiGDWE@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <4335149.ZQHvdiGDWE@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1507741675-298555-16401-49512-2
X-BESS-VER: 2017.12-r1710102214
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185894
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: errors in recipe after move from devtool
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
X-List-Received-Date: Wed, 11 Oct 2017 17:08:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul,
Thanks for the info, now I understand what is going on. Hopefully I can fin=
d a way to get rid of the RPATH, I don't like ignoring errors or warnings.

I've spent some more time looking into this, I haven't been able to find ou=
t where the -rpath comes from. If I start a devshell none of the environmen=
t variables have it set. In the run.do_compile log none of the environment =
variables have it set, it's not set in the run.do_configure log. But in the=
 log.do_compile file the command that links the library:

/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_6=
4-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc  -fPIC  -=
march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4  -mfloat-abi=3Dhard -mcpu=3Dcortex=
-a7  --sysroot=3D/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/t=
mp/sysroots/raspberrypi3 -O2 -pipe -g -feliminate-unused-debug-types -fdebu=
g-prefix-map=3D/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp=
/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/zint/2.6.1-r0=3D/usr/src/deb=
ug/zint/2.6.1-r0 -fdebug-prefix-map=3D/home/gwilson/Qt-5.9/Yocto-build-RPi3=
/build-raspberrypi3/tmp/sysroots/x86_64-linux=3D -fdebug-prefix-map=3D/home=
/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/raspberryp=
i3=3D  -march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4  -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a7  --sysroot=3D/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspb=
errypi3/tmp/sysroots/raspberrypi3 -O2 -g -DNDEBUG  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -shared -Wl,-soname,libzint.so.2.6 -o libzint.so.2.6=
.1 CMakeFiles/zint.dir/render.c.o CMakeFiles/zint.dir/ps.c.o CMakeFiles/zin=
t.dir/svg.c.o CMakeFiles/zint.dir/emf.c.o CMakeFiles/zint.dir/bmp.c.o CMake=
Files/zint.dir/pcx.c.o CMakeFiles/zint.dir/gif.c.o CMakeFiles/zint.dir/png.=
c.o CMakeFiles/zint.dir/tif.c.o CMakeFiles/zint.dir/raster.c.o CMakeFiles/z=
int.dir/common.c.o CMakeFiles/zint.dir/library.c.o CMakeFiles/zint.dir/larg=
e.c.o CMakeFiles/zint.dir/reedsol.c.o CMakeFiles/zint.dir/gs1.c.o CMakeFile=
s/zint.dir/eci.c.o CMakeFiles/zint.dir/code.c.o CMakeFiles/zint.dir/code128=
.c.o CMakeFiles/zint.dir/2of5.c.o CMakeFiles/zint.dir/upcean.c.o CMakeFiles=
/zint.dir/telepen.c.o CMakeFiles/zint.dir/medical.c.o CMakeFiles/zint.dir/p=
lessey.c.o CMakeFiles/zint.dir/rss.c.o CMakeFiles/zint.dir/postal.c.o CMake=
Files/zint.dir/auspost.c.o CMakeFiles/zint.dir/imail.c.o CMakeFiles/zint.di=
r/code16k.c.o CMakeFiles/zint.dir/codablock.c.o CMakeFiles/zint.dir/dmatrix=
.c.o CMakeFiles/zint.dir/pdf417.c.o CMakeFiles/zint.dir/qr.c.o CMakeFiles/z=
int.dir/maxicode.c.o CMakeFiles/zint.dir/composite.c.o CMakeFiles/zint.dir/=
aztec.c.o CMakeFiles/zint.dir/code49.c.o CMakeFiles/zint.dir/code1.c.o CMak=
eFiles/zint.dir/gridmtx.c.o CMakeFiles/zint.dir/hanxin.c.o CMakeFiles/zint.=
dir/dotcode.c.o -lpng -lz -lm -Wl,-rpath,/usr/lib=20

There it is at the end of the command line.

As you can see the build for zint is based on CMake. Do you have any sugges=
tions as to where I can look to figure out how this is getting set, I've do=
ne searches of all of the files in the zint download and the only ones that=
 have -rpath in them are some files that build a tcl based support program =
that has its own autotools based build system.

I'm very confused at this point.

Regards,
Greg

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Tuesday, October 10, 2017 2:16 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: yocto@yoctoproject.org; Burton, Ross <ross.burton@intel.com>
> Subject: Re: [yocto] errors in recipe after move from devtool
>=20
> Hi Greg,
>=20
> On Wednesday, 11 October 2017 7:50:45 AM NZDT Greg Wilson-Lindberg
> wrote:
> > I'm still getting the:
> >
> > ERROR: zint-2.6.1-r0 do_package_qa: QA Issue: zint:
> > /work/cortexa7hf-neon-
> > vfpv4-poky-linux-gnueabi/zint/2.6.1-r0/packages-split/zint/usr/lib/
> > libzint.so.2.6.1 contains probably-redundant RPATH /usr/lib
>=20
> There's a short hint about this QA issue in the manual:
>=20
>   http://www.yoctoproject.org/docs/current/ref-manual/ref-
> manual.html#ref-qa-checks
>=20
> Ultimately it depends on the build system for the software your recipe is
> building, but somewhere it will be explicitly adding this rpath to the co=
mpiler
> command line, so you need to figure out the best way to remove that - if =
the
> software's build system makes it optional, turn it off, but you may find =
you
> need to patch it out. If you don't care about this particular issue, you =
could
> alternatively use INSANE_SKIP to ignore it.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

