Return-Path: <ftoth@telfort.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC157E00DB7; Sat, 27 Jan 2018 13:46:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.75.39.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Sat, 27 Jan 2018 13:46:20 PST
Received: from cpsmtpb-ews02.kpnxchange.com (cpsmtpb-ews02.kpnxchange.com
	[213.75.39.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B877E005A2
	for <yocto@yoctoproject.org>; Sat, 27 Jan 2018 13:46:20 -0800 (PST)
Received: from cpsps-ews20.kpnxchange.com ([10.94.84.186]) by
	cpsmtpb-ews02.kpnxchange.com with Microsoft SMTPSVC(7.5.7601.17514); 
	Sat, 27 Jan 2018 22:45:18 +0100
X-KPN-SpamVerdict: BM:Clean;
X-Brightmail-Tracker: H4sIAAAAAAAAC+NgFtrAJsWRWlGSWpSXmKPExsVyuJKZRfft
	p5wog5fz/29gtJj0cg2bA6NH+4k+tgDGKNbMvKT8igTWjIfXJrMVfLnMXHH863amBsaZC5
	i7GLk4hASWMkp87DrL3sXIwcEs4CWxYL9qFyMnkCkv0XG5kRWkhkWgk1li9f9PjCAJCYFM
	iXnHr7JBNG9nlLg9q5cZJMEmoCyx880bNhBbREBTYvGxS+wQk6Qkjqz4xwRiCwu4Svz/9Q
	qsnkVAVWLTvTUsIDavgIbE1p7DYHF+oPo9j76ALeMUsJW4eGofWK+QQI3EtwUH2CDqBSVO
	znzCAhGXlfi67iI7xHHBEtMa7jBNYBSahfDPLCT/zELSDRHXlli28DUzhK0p0br9NzumuI
	bEgjv7GBcwsq9ilEguKC4o1k0tLzYy0MsuyAMy9HLykxNzNjEC44IrLmTXDsafU2MPMZpy
	MCmJ8uaq5kQJ8SXlp1RmJBZnxBeV5qQWK0nx7tngECUkDBcuLk3KzSwuzszPO8RozcGhJM
	Hb8BGoT7AoNT21Ii0zBxjZUK2yvGc4DSKFxJBlkHUbc/AoifAaAlODEG9xQWJucWY6VKck
	RKcQTBSh6xRjMkfTgwdtzBwt214AyS2PXgLJA2DyxovXbcxCLHn5ealS4rwfQa4SAJmQUZ
	oHd5SUDO+001lRQqJIEgjTQUl0YovBsVuMfFBzoAKvGA05GJWEea+ADOXJzCtBuFWCd+rr
	NKD/oYIIw14BPcgE9KBdRSbIgyWJJVg8CBVF6JJqYDRbJSG/5az9438mTdcdWRZv+9Q+xU
	VP7/A2t0fmv8RqdLLCGi7HTNofUmCcP6V4llnQtXcP1vmd+d8UnX43kjuvn9PIkfnbb+n5
	q35Er9UyWm8axJDZsbFxDqdiEpfboZ7Nt7v+BfSWX+8Q9JJclX2rn2PjBlPhA7pzF/JwRT
	2OTy2xqmGepsRSnJFoqMVcVJwIAPiFaVvDAwAA
Received: from CPSMTPM-TLF101.kpnxchange.com ([195.121.3.4]) by
	cpsps-ews20.kpnxchange.com with Microsoft SMTPSVC(8.5.9600.16384); 
	Sat, 27 Jan 2018 22:45:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; d=telfort.nl; s=telfort01;
	c=relaxed/relaxed; t=1517089518;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=NboycHP6mBzr3oUnaZZt0J+h3AMEVu67fes7dC8qD0g=;
	b=AMXQfgeKpcCqmZq/hmiuqNQPZchiS+D2zHCMMlMvewnhyDK6WqZDl6foJe5Rikq4wdPn/Q6J1x+
	746BDlwV8suXQGvCVlqMm5cBF2f3/DVamoU4auAs/FYKm7hJI1TKF8QfpY5IkGBAP7Zz51CB+BIim
	sJUxx1vwbpobWqzSfno=
X-CMASSUN: 33|riWMwx1dx0le5tl40rAN85ng3vWLRp1ZFtxtRCRDRbjkX3TBm1Xd+L4Y8J8YvUKI
	iB2ftXqwS0QV35GojKR0fw==
Received: from delfion.localnet ([145.132.48.198]) by
	CPSMTPM-TLF101.kpnxchange.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.17514); Sat, 27 Jan 2018 22:45:18 +0100
From: Ferry Toth <ftoth@telfort.nl>
To: Stefan Roese <stefan.roese@gmail.com>
Date: Sat, 27 Jan 2018 22:45:16 +0100
Message-ID: <2402702.XCRuTLMMbz@delfion>
Organization: Exalon Delft
In-Reply-To: <f7643bd9-50ed-9b52-4138-1d6da7ccbd01@gmail.com>
References: <onj82v$64m$1@blaine.gmane.org> <ordl0n$kh6$1@blaine.gmane.org>
	<f7643bd9-50ed-9b52-4138-1d6da7ccbd01@gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Jan 2018 21:45:18.0168 (UTC)
	FILETIME=[1F790D80:01D397B8]
X-RcptDomain: yoctoproject.org
X-Mailman-Approved-At: Tue, 30 Jan 2018 08:54:36 -0800
Cc: yocto@yoctoproject.org
Subject: Re: Solved : Re: Problems building U-Boot for x86_64
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
X-List-Received-Date: Sat, 27 Jan 2018 21:46:24 -0000
Content-Type: multipart/alternative; boundary="nextPart8736247.uLYI4D1r1Z"
Content-Transfer-Encoding: 7Bit

--nextPart8736247.uLYI4D1r1Z
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Op donderdag 30 november 2017 09:03:46 CET schreef Stefan Roese:
> Hi Ferry,
>=20
> On 08.10.2017 18:50, Ferry Toth wrote:
> > Op Fri, 25 Aug 2017 22:30:42 +0000, schreef Ferry Toth:
> >=20
> >> Op Fri, 25 Aug 2017 21:22:40 +0200, schreef Ferry Toth:
> >>
> >>> Khem Raj wrote:
> >>>
> >>>
> >>>
> >>>>
> >>>> On 8/23/17 3:40 PM, Ferry Toth wrote:
> >>>>> Op Wed, 23 Aug 2017 14:51:55 -0700, schreef Khem Raj:
> >>>>>
> >>>>>> On 8/23/17 2:29 PM, Ferry Toth wrote:
> >>>>>>> Ferry Toth wrote:
> >>>>>>>
> >>>>>>>> Khem Raj wrote:
> >>>>>>>>
> >>>>>>>>> On 8/22/17 11:41 PM, Ferry Toth wrote:
> >>>>>>>>>> I am having trouble building a specific U-Boot version with
> >>>>>>>>>> Yocto. Outside of Yocto on 64 bit Ubuntu 17.04 with multilib it
> >>>>>>>>>> builds fine.
> >>>>>>>>>>
> >>>>>>>>>> I am extending meta-intel-edison to build a 64 bit Poke Morty,
> >>>>>>>>>> with a vanilla 64-bit kernel (4.12). This is working quite wel=
l.
> >>>>>>>>>>
> >>>>>>>>>> My host is x86_64, the target is core2 with tune=3Dcore-64.
> >>>>>>>>>>
> >>>>>>>>>> Without 64bit tune I can build U-Boot fine. With 64bit it can
> >>>>>>>>>> not link, appearently because it needs lbgcc.a
> >>>>>>>>>
> >>>>>>>>> what is exact error message ? is it while compiling host bits or
> >>>>>>>>> target bits ?
> >>>>>>>>
> >>>>>>>> The failing line is:
> >>>>>>>> x86_64-poky-linux-ld.bfd -Bsymbolic -Bsymbolic-functions -m
> >>>>>>>> elf_i386 --emit- relocs --wrap=3D__divdi3 --wrap=3D__udivdi3
> >>>>>>>> --wrap=3D__moddi3 --wrap=3D__umoddi3 -- gc-sections -pie -Bstatic
> >>>>>>>> --no-dynamic-linker -Ttext 0x01101000 -o u-boot -T u-boot.lds
> >>>>>>>> arch/x86/cpu/start.o --start-group arch/x86/cpu/built-in.o
> >>>>>>>> arch/x86/lib/built-in.o board/intel/edison/built-in.o
> >>>>>>>> cmd/built-in.o common/built-in.o disk/built-in.o
> >>>>>>>> drivers/built-in.o drivers/dma/built-in.o drivers/gpio/built-in.o
> >>>>>>>> drivers/i2c/built-in.o drivers/mmc/built-in.o
> >>>>>>>> drivers/mtd/built-in.o drivers/mtd/onenand/built-in.o
> >>>>>>>> drivers/mtd/spi/built- in.o drivers/net/built-in.o
> >>>>>>>> drivers/net/phy/built-in.o drivers/pci/built- in.o
> >>>>>>>> drivers/power/built-in.o drivers/power/battery/built-in.o
> >>>>>>>> drivers/power/domain/built-in.o
> >>>>>>>> drivers/power/fuel_gauge/built-in.o drivers/power/mfd/built-in.o
> >>>>>>>> drivers/power/pmic/built-in.o drivers/power/regulator/built-in.o
> >>>>>>>> drivers/serial/built-in.o drivers/spi/built-in.o
> >>>>>>>> drivers/usb/common/built-in.o drivers/usb/dwc3/built- in.o
> >>>>>>>> drivers/usb/emul/built-in.o drivers/usb/eth/built-in.o
> >>>>>>>> drivers/usb/gadget/built-in.o drivers/usb/gadget/udc/built-in.o
> >>>>>>>> drivers/usb/host/built-in.o drivers/usb/musb-new/built-in.o
> >>>>>>>> drivers/usb/musb/built-in.o drivers/usb/phy/built-in.o
> >>>>>>>> drivers/usb/ulpi/built-in.o dts/built-in.o fs/built-in.o
> >>>>>>>> lib/built-in.o net/built-in.o test/built-in.o test/dm/built-in.o
> >>>>>>>> --end-group arch/x86/lib/lib.a -Map u-boot.map ERROR: oe_runmake
> >>>>>>>> failed arch/x86/lib/built-in.o: In function `__wrap___udivdi3':
> >>>>>>>> /home/ferry/tmp/edison-intel/my/edison-
> >>>>>>>> morty/out/linux64/build/tmp/work/edison-poky-linux/u-boot/edison-
> >>>>> v2017.03-
> >>>>>>>> r0/git/arch/x86/lib/gcc.c:25: undefined reference to
> >>>>>>>> `__normal___udivdi3'
> >>>>>>>
> >>>>>>> I as believe the missing lib is libgcc.a I just my sysroot and
> >>>>>>> found it here:
> >>>>>>
> >>>>>> the linker cmdline above does not link with libgcc and there might
> >>>>>> be a good reason for that, many standalone applications dont link
> >>>>>> with libgcc intentionally. You could look into the code and see if
> >>>>>> it can be written differently such that gcc does not have to invoke
> >>>>>> a helper function from gcc runtime. Another option is to link with
> >>>>>> libgcc explicitly
> >>>>>
> >>>>> If change my setup to build for a 32bit target, it build u-boot
> >>>>> without error.
> >>>>
> >>>> compiler may not be generating calls for the missing function.
> >>>>
> >>>>> When I build the same git outside yocto on 64bit with multilib
> >>>>> installed it also builds without error. In that case the make comma=
nd
> >>>>> would be: make -j8 edison_defconfig
> >>>>
> >>>> same is possible. Can you do readelf -sW gcc.o and see if there is a
> >>>> undefined reference to __normal___udivdi3
> >>>
> >>>     20: 00000000    22 FUNC    GLOBAL HIDDEN     4 __wrap___divdi3 21:
> >>>     00000000     0 NOTYPE  GLOBAL DEFAULT  UND __normal___divdi3 22:
> >>>     00000000    22 FUNC    GLOBAL HIDDEN     6 __wrap___udivdi3 23:
> >>>     00000000     0 NOTYPE  GLOBAL DEFAULT  UND __normal___udivdi3 24:
> >>>     00000000    22 FUNC    GLOBAL HIDDEN     8 __wrap___moddi3 25:
> >>>     00000000     0 NOTYPE  GLOBAL DEFAULT  UND __normal___moddi3 26:
> >>>     00000000    22 FUNC    GLOBAL HIDDEN    10 __wrap___umoddi3 27:
> >>>     00000000     0 NOTYPE  GLOBAL DEFAULT  UND __normal___umoddi3
> >>
> >> AFAIKT when building for a 32-bit target is only that U-Boot makefile =
is
> >> called with CROSS_COMPILE=3Di686-poky-linux- CC=3Di686-poky-linux-gcc
> >> instead of CROSS_COMPILE=3Dx86_64-poky-linux- CC=3Dx86_64-poky-linux-g=
cc.
> >>
> >> Result from readelf -sW gcc.o built wuth i686:
> >>
> >> 20: 00000000    27 FUNC    GLOBAL HIDDEN     4 __wrap___divdi3 21:
> >> 00000000     0 NOTYPE  GLOBAL DEFAULT  UND __normal___divdi3 22:
> >> 00000000    27 FUNC    GLOBAL HIDDEN     6 __wrap___udivdi3 23: 000000=
00
> >>      0 NOTYPE  GLOBAL DEFAULT  UND __normal___udivdi3 24: 00000000    =
27
> >> FUNC    GLOBAL HIDDEN     8 __wrap___moddi3 25: 00000000     0 NOTYPE
> >> GLOBAL DEFAULT  UND __normal___moddi3 26: 00000000    27 FUNC    GLOBAL
> >> HIDDEN    10 __wrap___umoddi3 27: 00000000     0 NOTYPE  GLOBAL DEFAULT
> >> UND __normal___umoddi3
> >>
> >> The path to libs and incs is the same (x86_64...) and I can't find any
> >> libgcc.a there. Still it links in this case.
> >>
> >> Maybe in the 64-bit case I need to add i686-poky-linux-gcc to native a=
nd
> >> modify the recipe to use that?
> >>
> >>
> >>>>> My conclusion: I have some bb variable set to the wrong value or I
> >>>>> need to get multilib installed into /..../sysroots/x86_64-linux/lib.
> >>>>>
> >>>>> So how to do that?
> >>>>>
> >>>>>>> sysroots/lib32-edison/usr/lib/i686-pokymllib32-linux/6.2.0/
> >>>>>>> sysroots/lib32-edison-tcbootstrap/usr/lib/i686-pokymllib32-
> >> linux/6.2.0/
> >>>>>>> sysroots/edison/usr/lib64/x86_64-poky-linux/6.2.0/
> >>>>>>> sysroots/edison-tcbootstrap/usr/lib64/x86_64-poky-linux/6.2.0/
> >>>>>>>
> >>>>>>> How compile log shows:
> >>>>>>> NOTE: make -j8 CROSS_COMPILE=3Dx86_64-poky-linux-
> >>>>>>> CC=3Dx86_64-poky-linux-gcc --sysroot=3D/..../sysroots/edison V=3D1
> >>>>>>> HOSTCC=3Dgcc -isystem/..../sysroots/x86_64-linux/usr/include -O2
> >>>>>>> -pipe -L/..../sysroots/x86_64-linux/usr/lib
> >>>>>>> -L/..../sysroots/x86_64-linux/lib
> >>>>>>> -Wl,-rpath-link,/..../sysroots/x86_64-linux/usr/lib
> >>>>>>> -Wl,-rpath-link,/..../sysroots/x86_64-linux/lib
> >>>>>>> -Wl,-rpath,/..../sysroots/x86_64-linux/usr/lib
> >>>>>>> -Wl,-rpath,/..../sysroots/x86_64-linux/lib -Wl,-O1 -C
> >>>>>>> /..../out/linux64/build/tmp/work/edison-poky-linux/u-boot/edison-
> >>>>>>> v2017.03-r0/git
> >>>>>>> O=3D/..../out/linux64/build/tmp/work/edison-poky-linux/u-
> >>>>>>> boot/edison-v2017.03-r0/build edison_defconfig
> >>>>>>>
> >>>>>>> (.... my edits to shorten the uninteresting part of the path)
> >>>>>>>
> >>>>>>> I would think: --sysroot points to /edison dir which actually
> >>>>>>> contains libgcc.a, but -i, _l and -W1 options point to host dirs
> >>>>>>> that don't have the lib.
> >>>>>>>
> >>>>>>>
> >>>>>>>>>> I attempted to add multilib, but although that immediately
> >>>>>>>>>> exposed bugs in other recipes but actually adds libgcc.a, it
> >>>>>>>>>> does that for the target sysroot only.
> >>>>>>>>>>
> >>>>>>>>>> And for some reason, U-Boot is built with the native gcc
> >>>>>>>>>> (x86_64-linux),
> >>>>>>>>>> and multilib does not add libgcc.a to that sysroot.
> >>>>>>>>>>
> >>>>>>>>>> So, how do I add multilib to -native sysroot, preferably only =
to
> >>>>>>>>>> -native and not to the target, as the target has not further u=
se
> >>>>>>>>>> for it?
> >>>>>>>>>>
> >>>>>>>>>> Strangest thing is in u-boot.inc there is:
> >>>>>>>>>> EXTRA_OEMAKE =3D 'CROSS_COMPILE=3D${TARGET_PREFIX}
> >>>>>>>>>> CC=3D"${TARGET_PREFIX}gcc ${TOOLCHAIN_OPTIONS}" V=3D1'
> >>>>>>>>>> EXTRA_OEMAKE +=3D 'HOSTCC=3D"${BUILD_CC} ${BUILD_CFLAGS}
> >>>>>>>>>> ${BUILD_LDFLAGS}"'
> >>>>>>>>>>
> >>>>>>>>>> But when I check my log file:
> >>>>>>>>>> NOTE: make -j8 CROSS_COMPILE=3Dx86_64-poky-linux-
> >>>>>>>>>> CC=3Dx86_64-poky-linux- gcc  ......
> >>>>>>>>>>
> >>>>>>>>>> So TARGET_PREFIX resolves to x86_64-poky-linux, but I think my
> >>>>>>>>>> target is core2_64 (or something like that). Is that normal for
> >>>>>>>>>> U-Boot?
> >>>>>>>>>
> >>>>>>>>> thats ok.
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>>> I am a little lost, so any help would be greatly appreciated
> >=20
> > I added multilib to the meta0intel-edison-bsp machine conf:
> > #multilib
> > require conf/multilib.conf
> > MULTILIBS =3D "multilib:lib32"
> > DEFAULTTUNE_virtclass-multilib-lib32 =3D "core2-32"
> > IMAGE_INSTALL_append =3D " lib32-libgcc"
> >=20
> > This exposes a lot recipy bugs in other places that needed to be fixed
> > first.
> >=20
> > Then I changed IMAGE_INSTALL +=3D "u-boot" to "lib32_u-boot". Now it bu=
ilds
> > without error.
> >=20
> > Now I changed IMAGE_INSTALL tot EXTRA_IMAGEDEPENDS. I believe that will
> > prevent u-boot and the otherwise unecessary multilib to be installed on
> > the image. Not sure if that really works out as I hope.
> >=20
> > All of this now causes populate_sdk to fail, but I will post that
> > seperately.
> >=20
> > Thanks all for the usefull comments.
>=20
> Just a quick update on this. I recently sent a patch to the U-Boot list,
> fixing this x86 toolchain dependency in mainline U-Boot:
>=20
> https://patchwork.ozlabs.org/patch/842613/
>=20
> This patch will be included in the upcoming release (2018.01).

And it is working brilliantly regardless if I set DEFAULTTUNE =3D =E2=80=9C=
core2-64=E2=80=9D or not, thanks so much!

=2D-=20
=46erry Toth


> Thanks,
> Stefan
>=20



--nextPart8736247.uLYI4D1r1Z
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-=
html40/strict.dtd">
<html><head><meta name=3D"qrichtext" content=3D"1" /><style type=3D"text/cs=
s">
p, li { white-space: pre-wrap; }
</style></head><body style=3D" font-family:'Liberation Sans'; font-size:10p=
t; font-weight:400; font-style:normal;">
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px;">Op donderdag 30 november 2017=
 09:03:46 CET schreef Stefan Roese:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; Hi Fer=
ry,</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; On 08.=
10.2017 18:50, Ferry Toth wrote:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; O=
p Fri, 25 Aug 2017 22:30:42 +0000, schreef Ferry Toth:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; Op Fri, 25 Aug 2017 21:22:40 +0200, schreef Ferry Toth:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt; Khem Raj wrote:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt; On 8/23/17 3:40 PM, Ferry Toth wrote:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt; Op Wed, 23 Aug 2017 14:51:55 -0700, schreef Khem Raj:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt; On 8/23/17 2:29 PM, Ferry Toth wrote:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; Ferry Toth wrote:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; Khem Raj wrote:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 8/22/17 11:41 PM, Ferry Toth wrote:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am having trouble building a specific =
U-Boot version with</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Yocto. Outside of Yocto on 64 bit Ubuntu=
 17.04 with multilib it</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; builds fine.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am extending meta-intel-edison to buil=
d a 64 bit Poke Morty,</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; with a vanilla 64-bit kernel (4.12). Thi=
s is working quite well.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; My host is x86_64, the target is core2 w=
ith tune=3Dcore-64.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Without 64bit tune I can build U-Boot fi=
ne. With 64bit it can</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; not link, appearently because it needs l=
bgcc.a</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt; what is exact error message ? is it while co=
mpiling host bits or</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt; target bits ?</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; The failing line is:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; x86_64-poky-linux-ld.bfd -Bsymbolic -Bsymbolic-f=
unctions -m</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; elf_i386 --emit- relocs --wrap=3D__divdi3 --wrap=
=3D__udivdi3</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; --wrap=3D__moddi3 --wrap=3D__umoddi3 -- gc-secti=
ons -pie -Bstatic</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; --no-dynamic-linker -Ttext 0x01101000 -o u-boot =
=2DT u-boot.lds</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; arch/x86/cpu/start.o --start-group arch/x86/cpu/=
built-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; arch/x86/lib/built-in.o board/intel/edison/built=
=2Din.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; cmd/built-in.o common/built-in.o disk/built-in.o=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/built-in.o drivers/dma/built-in.o driver=
s/gpio/built-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/i2c/built-in.o drivers/mmc/built-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/mtd/built-in.o drivers/mtd/onenand/built=
=2Din.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/mtd/spi/built- in.o drivers/net/built-in=
=2Eo</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/net/phy/built-in.o drivers/pci/built- in=
=2Eo</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/power/built-in.o drivers/power/battery/b=
uilt-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/power/domain/built-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/power/fuel_gauge/built-in.o drivers/powe=
r/mfd/built-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/power/pmic/built-in.o drivers/power/regu=
lator/built-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/serial/built-in.o drivers/spi/built-in.o=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/usb/common/built-in.o drivers/usb/dwc3/b=
uilt- in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/usb/emul/built-in.o drivers/usb/eth/buil=
t-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/usb/gadget/built-in.o drivers/usb/gadget=
/udc/built-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/usb/host/built-in.o drivers/usb/musb-new=
/built-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/usb/musb/built-in.o drivers/usb/phy/buil=
t-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; drivers/usb/ulpi/built-in.o dts/built-in.o fs/bu=
ilt-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; lib/built-in.o net/built-in.o test/built-in.o te=
st/dm/built-in.o</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; --end-group arch/x86/lib/lib.a -Map u-boot.map E=
RROR: oe_runmake</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; failed arch/x86/lib/built-in.o: In function `__w=
rap___udivdi3':</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; /home/ferry/tmp/edison-intel/my/edison-</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; morty/out/linux64/build/tmp/work/edison-poky-lin=
ux/u-boot/edison-</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt; v2017.03-</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; r0/git/arch/x86/lib/gcc.c:25: undefined referenc=
e to</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt; `__normal___udivdi3'</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; I as believe the missing lib is libgcc.a I just my s=
ysroot and</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; found it here:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt; the linker cmdline above does not link with libgcc and t=
here might</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt; be a good reason for that, many standalone applications =
dont link</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt; with libgcc intentionally. You could look into the code =
and see if</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt; it can be written differently such that gcc does not hav=
e to invoke</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt; a helper function from gcc runtime. Another option is to=
 link with</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt; libgcc explicitly</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt; If change my setup to build for a 32bit target, it build u-b=
oot</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt; without error.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt; compiler may not be generating calls for the missing function.</=
p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt; When I build the same git outside yocto on 64bit with multil=
ib</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt; installed it also builds without error. In that case the mak=
e command</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt; would be: make -j8 edison_defconfig</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt; same is possible. Can you do readelf -sW gcc.o and see if there =
is a</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt; undefined reference to __normal___udivdi3</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;     20: 00000000    22 FUNC    GLOBAL HIDDEN     4 __wrap___divdi3 2=
1:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;     00000000     0 NOTYPE  GLOBAL DEFAULT  UND __normal___divdi3 22:=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;     00000000    22 FUNC    GLOBAL HIDDEN     6 __wrap___udivdi3 23:<=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;     00000000     0 NOTYPE  GLOBAL DEFAULT  UND __normal___udivdi3 24=
:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;     00000000    22 FUNC    GLOBAL HIDDEN     8 __wrap___moddi3 25:</=
p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;     00000000     0 NOTYPE  GLOBAL DEFAULT  UND __normal___moddi3 26:=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;     00000000    22 FUNC    GLOBAL HIDDEN    10 __wrap___umoddi3 27:<=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;     00000000     0 NOTYPE  GLOBAL DEFAULT  UND __normal___umoddi3</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; AFAIKT when building for a 32-bit target is only that U-Boot makefile is=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; called with CROSS_COMPILE=3Di686-poky-linux- CC=3Di686-poky-linux-gcc</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; instead of CROSS_COMPILE=3Dx86_64-poky-linux- CC=3Dx86_64-poky-linux-gcc=
=2E</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; Result from readelf -sW gcc.o built wuth i686:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; 20: 00000000    27 FUNC    GLOBAL HIDDEN     4 __wrap___divdi3 21:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; 00000000     0 NOTYPE  GLOBAL DEFAULT  UND __normal___divdi3 22:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; 00000000    27 FUNC    GLOBAL HIDDEN     6 __wrap___udivdi3 23: 00000000=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;      0 NOTYPE  GLOBAL DEFAULT  UND __normal___udivdi3 24: 00000000    27=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; FUNC    GLOBAL HIDDEN     8 __wrap___moddi3 25: 00000000     0 NOTYPE</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; GLOBAL DEFAULT  UND __normal___moddi3 26: 00000000    27 FUNC    GLOBAL<=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; HIDDEN    10 __wrap___umoddi3 27: 00000000     0 NOTYPE  GLOBAL DEFAULT<=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; UND __normal___umoddi3</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; The path to libs and incs is the same (x86_64...) and I can't find any</=
p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; libgcc.a there. Still it links in this case.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; Maybe in the 64-bit case I need to add i686-poky-linux-gcc to native and=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; modify the recipe to use that?</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt; My conclusion: I have some bb variable set to the wrong valu=
e or I</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt; need to get multilib installed into /..../sysroots/x86_64-li=
nux/lib.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt; So how to do that?</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; sysroots/lib32-edison/usr/lib/i686-pokymllib32-linux=
/6.2.0/</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; sysroots/lib32-edison-tcbootstrap/usr/lib/i686-pokym=
llib32-</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t; linux/6.2.0/</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; sysroots/edison/usr/lib64/x86_64-poky-linux/6.2.0/</=
p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; sysroots/edison-tcbootstrap/usr/lib64/x86_64-poky-li=
nux/6.2.0/</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; How compile log shows:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; NOTE: make -j8 CROSS_COMPILE=3Dx86_64-poky-linux-</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; CC=3Dx86_64-poky-linux-gcc --sysroot=3D/..../sysroot=
s/edison V=3D1</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; HOSTCC=3Dgcc -isystem/..../sysroots/x86_64-linux/usr=
/include -O2</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; -pipe -L/..../sysroots/x86_64-linux/usr/lib</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; -L/..../sysroots/x86_64-linux/lib</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; -Wl,-rpath-link,/..../sysroots/x86_64-linux/usr/lib<=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; -Wl,-rpath-link,/..../sysroots/x86_64-linux/lib</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; -Wl,-rpath,/..../sysroots/x86_64-linux/usr/lib</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; -Wl,-rpath,/..../sysroots/x86_64-linux/lib -Wl,-O1 -=
C</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; /..../out/linux64/build/tmp/work/edison-poky-linux/u=
=2Dboot/edison-</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; v2017.03-r0/git</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; O=3D/..../out/linux64/build/tmp/work/edison-poky-lin=
ux/u-</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; boot/edison-v2017.03-r0/build edison_defconfig</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; (.... my edits to shorten the uninteresting part of =
the path)</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; I would think: --sysroot points to /edison dir which=
 actually</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; contains libgcc.a, but -i, _l and -W1 options point =
to host dirs</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt; that don't have the lib.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I attempted to add multilib, but althoug=
h that immediately</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; exposed bugs in other recipes but actual=
ly adds libgcc.a, it</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; does that for the target sysroot only.</=
p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; And for some reason, U-Boot is built wit=
h the native gcc</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; (x86_64-linux),</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; and multilib does not add libgcc.a to th=
at sysroot.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; So, how do I add multilib to -native sys=
root, preferably only to</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -native and not to the target, as the ta=
rget has not further use</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; for it?</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Strangest thing is in u-boot.inc there i=
s:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; EXTRA_OEMAKE =3D 'CROSS_COMPILE=3D${TARG=
ET_PREFIX}</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; CC=3D&quot;${TARGET_PREFIX}gcc ${TOOLCHA=
IN_OPTIONS}&quot; V=3D1'</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; EXTRA_OEMAKE +=3D 'HOSTCC=3D&quot;${BUIL=
D_CC} ${BUILD_CFLAGS}</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ${BUILD_LDFLAGS}&quot;'</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; But when I check my log file:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; NOTE: make -j8 CROSS_COMPILE=3Dx86_64-po=
ky-linux-</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; CC=3Dx86_64-poky-linux- gcc  ......</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; So TARGET_PREFIX resolves to x86_64-poky=
=2Dlinux, but I think my</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; target is core2_64 (or something like th=
at). Is that normal for</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; U-Boot?</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt; thats ok.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt;&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am a little lost, so any help would be=
 greatly appreciated</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; I=
 added multilib to the meta0intel-edison-bsp machine conf:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; #=
multilib</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; r=
equire conf/multilib.conf</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; M=
ULTILIBS =3D &quot;multilib:lib32&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; D=
EFAULTTUNE_virtclass-multilib-lib32 =3D &quot;core2-32&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; I=
MAGE_INSTALL_append =3D &quot; lib32-libgcc&quot;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; T=
his exposes a lot recipy bugs in other places that needed to be fixed</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; f=
irst.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; T=
hen I changed IMAGE_INSTALL +=3D &quot;u-boot&quot; to &quot;lib32_u-boot&q=
uot;. Now it builds</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; w=
ithout error.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; N=
ow I changed IMAGE_INSTALL tot EXTRA_IMAGEDEPENDS. I believe that will</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; p=
revent u-boot and the otherwise unecessary multilib to be installed on</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; t=
he image. Not sure if that really works out as I hope.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; A=
ll of this now causes populate_sdk to fail, but I will post that</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; s=
eperately.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; <=
/p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; &gt; T=
hanks all for the usefull comments.</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; Just a=
 quick update on this. I recently sent a patch to the U-Boot list,</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; fixing=
 this x86 toolchain dependency in mainline U-Boot:</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; https:=
//patchwork.ozlabs.org/patch/842613/</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; This p=
atch will be included in the upcoming release (2018.01).</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px;">And it is working brilliantly=
 regardless if I set DEFAULTTUNE =3D =E2=80=9Ccore2-64=E2=80=9D or not, tha=
nks so much!<br /><br />-- </p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Ferry Toth<=
/p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; Thanks=
,</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; Stefan=
</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-rig=
ht:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">&gt; </p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; ma=
rgin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nb=
sp;</p></body></html>

--nextPart8736247.uLYI4D1r1Z--
