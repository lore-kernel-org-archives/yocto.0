Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9975E008C3; Thu, 13 Nov 2014 13:00:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DF86E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 13:00:20 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: nick <xerofoify@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] New recipe for toolchain fails install, "ERROR: ld.so:
	object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
Thread-Index: Ac//dyjXh7smuVrBRu2Ap8xoWi/L/QAReyOA//+PVLE=
Date: Thu, 13 Nov 2014 21:00:19 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0CDF3F397A@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0CDF3F393A@reactor.sldomain.com>,
	<546517D3.4030107@gmail.com>
In-Reply-To: <546517D3.4030107@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.200.8]
MIME-Version: 1.0
Subject: Re: New recipe for toolchain fails install, "ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
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
X-List-Received-Date: Thu, 13 Nov 2014 21:00:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Nick, that will be much appreciated.=0A=
=0A=
-Jim-=0A=
=0A=
=0A=
________________________________________=0A=
From: nick [xerofoify@gmail.com]=0A=
Sent: Thursday, November 13, 2014 1:42 PM=0A=
To: Jim Rafert; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] New recipe for toolchain fails install, "ERROR: ld.so:=
 object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."=0A=
=0A=
Hey Jim,=0A=
I had a stressful day with other things so I would like some time to unwind=
 but I will try and help out=0A=
later if that's OK.=0A=
Nick=0A=
=0A=
On 14-11-13 03:13 PM, Jim Rafert wrote:=0A=
> Hi folks,=0A=
>=0A=
> I'm trying to put together a recipe to include llvm and clang in the yoct=
o toolchain.  My goal is to have the clang compiler available for applicati=
on development.  I do not intend to compile the kernel or OS image with cla=
ng.  I have created a recipe and placed it in one of my added layers as fol=
lows:=0A=
>=0A=
> LICENSE =3D "NCSA"=0A=
> PR =3D "r0"=0A=
> LIC_FILES_CHKSUM =3D "file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098bd7=
814d1d"=0A=
>=0A=
> SRC_URI =3D "file://llvm-3.5.0.tar.gz \=0A=
>           "=0A=
> SRC_URI[md5sum] =3D "e2dd127722ffb305c981d2a02687b4ff"=0A=
> SRC_URI[sha256sum] =3D "1badb762129feb7ced9484a7969c88cebab9b01b80b83002f=
c9690933cd7d0e0"=0A=
>=0A=
> EXTRA_OECONF =3D "--config=3DLinux-yocto "=0A=
>=0A=
> INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"=0A=
>=0A=
> INSANE_SKIP_${PN} =3D "already-stripped"=0A=
>=0A=
> #FILES_${PN} =3D "${libdir}/* /usr/bin "=0A=
> inherit autotools=0A=
>=0A=
> do_configure () {=0A=
>         ./configure --enable-optimized --enable-targets=3Dx86,x86_64 --ho=
st=3Dx86_64-unknown-linux-gnu --build=3Dx86_64-unknown-linux-gnu=0A=
> }=0A=
>=0A=
> The recipe is copied from another recipe of mine that builds the POCO lib=
raries, so INSANE_SKIP_${PN} =3D "already-stripped" may not actually be nec=
essary, but was left in until I got the recipe running.=0A=
>=0A=
> I add the recipe to the toolchain by including it in TOOLCHAIN_HOST_TASK =
from my local.conf, thus:=0A=
> "TOOLCHAIN_HOST_TASK +=3D " llvm "=0A=
>=0A=
> This gets the source unpacked, configures, and compiles, but do_install f=
ails with several instances of this message: "ERROR: ld.so: object 'libpseu=
do.so' from LD_PRELOAD cannot be preloaded: ignored."=0A=
>=0A=
> Even though it doesn't install, the build products are in the work direct=
ory, so I examined them.=0A=
>=0A=
> [jimr@krusty llvm-3.5.0]$ file /home/jimr/tera/yocto/daisy/build/tmp/work=
/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release+Asserts/bin/clang=0A=
> /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r0/=
llvm-3.5.0/Release+Asserts/bin/clang: ELF 32-bit LSB executable, Intel 8038=
6, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2=
.6.16, BuildID[sha1]=3D0x96bd97125551d23e94bcbbc4e68b69b8db36def9, not stri=
pped=0A=
>=0A=
> I was hoping that this would be built for the architecture specified in l=
ocal.conf for the toolchain, which is: SDKMACHINE ?=3D "x86_64"=0A=
>=0A=
> I think that this architecture mismatch may be the root of the problem wi=
th the LD_PRELOAD of pseudo.  I also would expect that the work directory w=
ould be under x86_64-nativesdk-pokysdk-linux or x86_64-pokysdk-linux rather=
 than i586-poky-linux.=0A=
>=0A=
> Do any of you Yocto/OE/bitbake experts out there know what I might be doi=
ng wrong, or not doing, that causes this problem?=0A=
>=0A=
> I have attached the output of the bitbake command, my local.conf file, th=
e recipe, and config.log and config.status from the work directory for your=
 viewing pleasure.=0A=
>=0A=
> Any help with this would be greatly appreciated.=0A=
>=0A=
> -Jim-=0A=
>=0A=
>=0A=
>=0A=

