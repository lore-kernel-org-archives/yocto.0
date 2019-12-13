Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.8436.1576225244874253307
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 00:20:47 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=UZ9c5dQU;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 140.211.169.56, mailfrom: prvs=1250d2e9da=holzmayr@rsi-elektrotechnik.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56292E010FE; Fri, 13 Dec 2019 00:20:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [85.215.255.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53092E0107D
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2019 00:20:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576225240;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=2CjPzdO1X6MG8TnNCKizMaUytcYknSEKKVSiHEDHBP0=;
	b=UZ9c5dQUEENP6WdJBjeR0fTu59VUHfjHTbW8/5G6X6xqRj1tOTlz2lxvGaOs06S/y7
	rqF3QXIkuPEg9VJarGPjDdkEUGeQemvUeyzF8FnIZ63dgFhW32cVSAwPMP949rbIjWyn
	iLgtEdNMRvexpncH0OAmMYvMKQtiDAmYalg3NEz8YCs0neMq4rZ9sIpXdcBt9T+PeKUg
	+HdqvFWrkTzs2gxhnwxbSN1KXw/xy7jvzvBPdaH1NXcr4CjJp2M8z1o+66lJSZSDAPxB
	q8OgdBeOgnfUgU8qN5Fq02QHSohx6E2Eap/e/cbn9uqrXGSdT9Nk8rTgyrAaoXCXSFaD
	vQBQ==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.0.7 AUTH)
	with ESMTPSA id n03ef0vBD8Kd3LA
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate);
	Fri, 13 Dec 2019 09:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1576225239; x=1576830039;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=2C
	jPzdO1X6MG8TnNCKizMaUytcYknSEKKVSiHEDHBP0=; b=TXnMYdrYsKt+wdjXNB
	r4XCGC4PNVB5/MXo03jlcFSN+JSYATb6Mezdxg56KhUiKdGZlLhyEQJso3XtGaup
	d5zso4Lsz7h/KoOEI4631ubBshgpbS5R8xkm35YcFERPfIFpTyQxFtjF0P2ka+Ze
	6n1cHSaSpX12Mv0dQb8P5tO1Y=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.1) with ESMTPSA id md50000227159.msg; 
	Fri, 13 Dec 2019 09:20:39 +0100
X-MDArrival-Date: Fri, 13 Dec 2019 09:20:39 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1250d2e9da=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Fri, 13 Dec 2019 09:20:33 +0100
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
To: Ed Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] Raspberry pi 4 recipe and layer issues.
Message-ID: <20191213082033.7ttfx7hzysrc36hu@jholzmayr.localdomain>
References: <1425959048.4595077.1576189203518.ref@mail.yahoo.com>
 <1425959048.4595077.1576189203518@mail.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <1425959048.4595077.1576189203518@mail.yahoo.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 12, 2019 at 10:20:03PM +0000, Ed Vidal wrote:
> Hi AllAny and all help is appreciated.=C2=A0 Thanks in advance.
> I want to install 6 software packages needed for FPGA Development.These=
 are icestorm, arachne-pnr, yosys, nextpnr, verilator, and zipcpu.I have =
created 4 of the recipes (icestorm_0.1.bb, arachne-pnr_0.1.bb, yosys_0.1.=
bb, and nextpnr_0.1.bb)using the recipetool & bitbake-layers, and I added=
 these to a meta-yosys-tools layer.
> https://github.com/develone/meta-yosys-tools.git
> I can now execute "bitbake icestorm" which is a python and C++ Makefile=
 project.The first time the recipe goes thru the python build and gets an=
 error existing the shell.If I rerun "bitbake icestorm" I get=C2=A0
> | iceprog.c:27:10: fatal error: ftdi.h: No such file or directory|=C2=A0=
 =C2=A0 27 | #include <ftdi.h>|=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ^~~~~~~~Which is the 2nd C++ program in the Makfile.=
On the rpi4-64 all that is needed are the following steps to build icesto=
rm git clone https://github.com/cliffordwolf/icestorm.git cd icestorm=C2=A0=
 make real 33m4.774s user 32m39.073s sys 0m19.247s I first tried using th=
e cross compiler with little sucess.=C2=A0 This is why I trying to genera=
te=C2=A0the recipes to build using bitbake instead. These are the locatio=
n of the header files, needed to be added to the cross compiler sdkwhich =
I installed for rpi4 using the following commands. "bitbake meta-toolchai=
n" "bitbake core-image-sato -c populate_sdk_ext" "./poky-glibc-x86_64-met=
a-toolchain-aarch64-raspberrypi4-64-toolchain-3.0.1.sh"
> =C2=A0=C2=A0/usr/include/libftdi1/ftdi.h/usr/include/pcap/usb.h
> As root make install which install to /usr/local/bin & /usr/local/share=
.Creates /usr/local/bin & /usr/local/sharels /usr/local/bin/icebox.py ice=
box_diff icebox_maps=C2=A0 icebram=C2=A0 =C2=A0iceprogicebox_asc2hlc iceb=
ox_explain icebox_stat=C2=A0 icemulti=C2=A0 icetimeicebox_chipdb icebox_h=
lc2asc icebox_vlog=C2=A0 icepack=C2=A0 =C2=A0iceunpackicebox_colbuf icebo=
x_html iceboxdb.py=C2=A0 icepll
> ls /usr/local/share/icebox/chipdb-1k.txt chipdb-lm4k.txt=C2=A0 =C2=A0ti=
mings_lp1k.txt=C2=A0 =C2=A0timings_up5k.txtchipdb-384.txt chipdb-u4k.txt =
=C2=A0 timings_lp384.txtchipdb-5k.txt timings_hx1k.txt=C2=A0 timings_lp8k=
.txtchipdb-8k.txt timings_hx8k.txt=C2=A0 timings_u4k.txt
> When I executed "bitbake nextpnr", I noticed the boost was built first.=
=C2=A0 Since then=C2=A0I have added boost to rpi4-core-image-sato which a=
dded quite a bit to the image2420113408 without boost and 2839543808 with=
 boost.

This sounds all very much like you just need to sort out your
dependencies. If something needs boost, there should be

DEPENDS =3D "boost"

in the recipe. If smething needs libftdi, there should be

DEPENDS =3D "libftdi"

and so on, and so on. Randomly adding things to the image does not solve
those issue, for a simple reason: It guarantees that the thing go into
the image. It does *not* guarantee that they are already around when
some random, other recipe is being built.

So, first and foremost - sort out your dependencies.

There is some introductory information here:
https://youtu.be/IehnEC3GOGU

Greetz

--=20
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548=20

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

