Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4075.1580760929982452872
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2020 12:15:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=HZZvjnZK;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54F0FE016A4; Mon,  3 Feb 2020 12:15:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [74.6.132.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic306-5.consmr.mail.bf2.yahoo.com (sonic306-5.consmr.mail.bf2.yahoo.com [74.6.132.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C825AE007EE
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2020 12:15:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1580760927; bh=eHI8Stj2z7o32sRNFn0/yNvgcZ8TVdYc2aKo7U3JuQo=; h=Date:From:To:Cc:Subject:References:From:Subject; b=HZZvjnZKc29gyOAqoWU8ACcMeewb4ek34GHjQRDempK0hbQi0tR8VXI4nmgX3mzccpQqryHWFa0aUjUWCiq6LIHlzLM0Gap03y3/hp7+LW2BnW5k9X96U3gnAJDYhDMNQumVVUgKKrttFUf5YUlqFXhFHWEyUVXC1AK38YjC8uR3Kh6r6L+mYdXnJKBtZ0kZaVxnXRY4WJdj/lBThFidYisRH+A5NmR3twXYZlNdSgkGINfhBdWAwQgc6z6EnHLfPWa5rf97Ez4Yl6eu6AdhhCFcX+Q0nNTbqZwl8GZmxEGlgI13CU6kWKARgE5AMdf6D+hC5+YeP2WqoyzoSPXSGQ==
X-YMail-OSG: PcZviOsVM1nAKAw_0Uay4YyTa1LfmfS0rrQvCMt7ETS2iUZ7Xtx0x.MCajsNoDy
 QVk4ZgCkhfTJhOAPcxHkvEOsWcIr3CuFofhvXDVFHLHa4v7u4GMJ1twDrRFHdS9aVJl34F.J9x8o
 VqDngIeHly_3.1zqZjOUnT47MV_CQSvpL11LVRZLnQ5kk5sZYkaAPilln7wzu0punHeZYrSxzJEp
 3M6MX8xtyyp94hMwJonvpA9ySBg5e30oE7X3ZJKPrigVlFnJHc6I1PRfEz0yhrF43VzHIIq9_o35
 kLprEXoFGLSvU_9dZ6Bg_ffZOEnTZxHabDjI2Fb3Rr3HlUiukmmu60rnt1PWUnh7OuS_j0IVRm7L
 cXB8EAETJRYHhuE0OF6cGwT6AZ.mqKi6VAdjhHiSLW4pTtEofPq9JajNkSdt4lTMq0w9KA85jjx.
 ohVibakW1xMpe4jelExUWAux1cuz3voCDsBwKL1qPRtluPNvaxsLkojygRwn6ngraNIbZC6P6S8T
 BGXpO.kx5ZERGXV7LFx9ZjsxhS7i4y6mEt1NQfB_YQQZDQ0B75VVJqc982bK2K5xL95XfE79TBw_
 HI7FKO39t6.DehOXb2hbHoAEUuzPYh6aKW7jZuIWEX3o6pCrPV12uFdDrEcsyxnZ0Nxw4nY3XTU5
 zJvE3glQ7XGnWoArAWX.rOEilu2ifIgiivKeon76uIyKKHK4umnd6RvBeWDB.7Rs0vS5Ch9GKpT_
 oL.6RHTW3iXGf_4zHBv0mIEWzA9gFcHp6W0mKawHW7IeNX.Y5LgTH8LcPpwNqgEWJzCsj0ZsbxPY
 ZtfBElA5AEX4Aq.Jd5TMzFM3fCsSW4dwaDJX6JHhfOYYE7HgZByG.UCvGez8.oxyII5LVP2YonQa
 6PYEp1b0WweLvCbj0E170V37_jrbCbfUw1qCAgCuywjXoFBJMO7DtoIL_rkLMqHa32sLFJdxLQq.
 0147x97Ae4LnuQ4gW5N4LpYmp8goNBinOTc9H8IRJmy0YiV8wUvdcoNNmt8hEDKpm.g8vT4BkvPY
 PnKZMrDytEToD24tL2ojtOLbeolbu6V8Fdt0SU8yPt._5VfBHZRRuqkmkdRDfcLmOOtOsWHBfJLa
 Hu2jtlmL7QLLxa_42BTapd3sCD.uXuj82CaU3X9gAW86hirPBjC.M8N07CUEzPK1fLAwNdRX1n0s
 yNUphP5RlxoBT1wbvpl57P2yjIN2F80cvE8DFQy_TezqMiVF3Vh_tY7N3gNraMfdbiFkQrskjgmy
 4Ydp8kr0.D4pC7boVtnz6Tb32buRu7GkalM9DWVSHYNTV3vedfnAPgHC_Ho_rLHV_NrEq66U_xrA
 EZ7mFFhXdL0ubWCuVPTNHQZ67Oa8sWeWi2jg-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.bf2.yahoo.com with HTTP; Mon, 3 Feb 2020 20:15:27 +0000
Date: Mon, 3 Feb 2020 20:15:22 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1296422045.824746.1580760922893@mail.yahoo.com>
Subject: Re: [yocto] raspberrypi missing libtclstub8.6.a on target system
MIME-Version: 1.0
References: <1296422045.824746.1580760922893.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15149 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_824745_611558390.1580760922892"

------=_Part_824745_611558390.1580760922892
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Quentin,I added to my local.confEXTRA_IMAGE_FEATURES ?=3D "debug-tweaks dev=
-pkgs tools-sdk doc-pkgs staticdev-pkgs"
Thanks for the quick reply. That fixed the problem of not having libtclstub=
8.6.aI will look into the formatting of my e-mail.Best regards,Ed
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20

    On Monday, February 3, 2020, 9:09:35 AM MST, Quentin Schulz <quentin.sc=
hulz@streamunlimited.com> wrote: =20
=20
 Hi Ed,

On Mon, Feb 03, 2020 at 04:01:39PM +0000, Ed Vidal wrote:
> Hello all,
> Is it normal to not include the=C2=A0 static librarieson the filesystem r=
oot?
> I created a raspberrypi4 image.=C2=A0 This image was created with docker =
using crops.
> bitbake core-image-sato was 7078 tasks
> Build Configuration:BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D "1.44.0"BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-=
linux"NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"TARGET_SYS=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "arm-poky-linux-gnueabi"MACHINE=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "raspberrypi4"DISTRO=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"DISTRO_VERSION=C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D "3.0.1"TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =3D "arm vfp cortexa7 neon vfpv4 thumb callconvention-hard"TARGET_FPU=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "hard"meta=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "zeus:d=
a81542171f0cab0ea1a9bf45ac3c256e6f343f9"meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0meta-multimedia=C2=A0 =C2=A0 =C2=A0 =3D "zeus:aad5b3d070cd8c58828b0975cf=
861d8ebc90f460"meta-raspberrypi=C2=A0 =C2=A0 =C2=A0=3D "master:3ae288aa38e3=
a1609c6e861918a874416d3f0f13"
> This was part of local.conf
> IMAGE_INSTALL_append =3D " xterm git \gperf tree tcl tk rsync tar pv \gea=
ny cmake man iproute2 squashfs-tools \minicom linux-firmware iputils yasm \=
texinfo python-imaging libmtp python-pip openjpeg \v4l-utils gsl opencv lib=
ftdi=C2=A0 \chkconfig openjpeg lame liba52 gtkmm \gnuplot ghostscript boost=
 python3 python3-ujson \hexedit graphviz \"On the yocto host system I see s=
everal version of the libtclstub8.6.a
> find . -name libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnu=
eabi/tcl/8.6.9-r0/build/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-=
linux-gnueabi/tcl/8.6.9-r0/image/usr/lib/libtclstub8.6.a./work/cortexa7t2hf=
-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/package/usr/lib/libtclstub8.6.a=
./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/recipe-sysro=
ot-native/usr/lib/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux-=
gnueabi/tcl/8.6.9-r0/sysroot-destdir/usr/lib/libtclstub8.6.a./work/cortexa7=
t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/packages-split/tcl-staticde=
v/usr/lib/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/=
gtkwave/3.3.98-r0/recipe-sysroot/usr/lib/libtclstub8.6.a./work/cortexa7t2hf=
-neon-vfpv4-poky-linux-gnueabi/tk/8.6.9-r0/recipe-sysroot/usr/lib/libtclstu=
b8.6.a./work/x86_64-linux/tcl-native/8.6.9-r0/build/libtclstub8.6.a./work/x=
86_64-linux/tcl-native/8.6.9-r0/image/work-cuteradio/build/tmp/work/x86_64-=
linux/tcl-native/8.6.9-r0/recipe-sysroot-native/usr/lib/libtclstub8.6.a./wo=
rk/x86_64-linux/tcl-native/8.6.9-r0/sysroot-destdir/work-cuteradio/build/tm=
p/work/x86_64-linux/tcl-native/8.6.9-r0/recipe-sysroot-native/usr/lib/libtc=
lstub8.6.a./sysroots-components/x86_64/tcl-native/usr/lib/libtclstub8.6.a./=
sysroots-components/cortexa7t2hf-neon-vfpv4/tcl/usr/lib/libtclstub8.6.a
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks dev-pkgs tools-sdk doc-pkgs"
>=20

Please have a look at your mail formatting, I'm missing most new lines
and it makes it hard to read your mail.

You would need staticdev-pkgs in your EXTRA_IMAGE_FEATURES to have the
static libraries of your packages on your system.
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref-=
features-image

Or if you want only that specific static library, you can add
tcl-staticdev to your IMAGE_INSTALL.

How did I know?

./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/packages-spl=
it/tcl-staticdev/usr/lib/libtclstub8.6.a

Yocto splits the files between packages and you can see where goes what
by having a look at where the file is in ${WORKDIR}/packages-split. Here
it's in tcl-staticdev.

BR,
Quentin =20

------=_Part_824745_611558390.1580760922892
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpcf6635f3yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div><div dir=3D"ltr" data-setdir=3D"false">Quentin,</div><div dir=3D"lt=
r" data-setdir=3D"false">I added to my local.conf</div><div dir=3D"ltr" dat=
a-setdir=3D"false"><span>EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks dev-pkgs t=
ools-sdk doc-pkgs staticdev-pkgs"</span><br></div><div dir=3D"ltr" data-set=
dir=3D"false">Thanks for the quick reply. That fixed the problem of not hav=
ing libtclstub8.6.a</div><div dir=3D"ltr" data-setdir=3D"false">I will look=
 into the formatting of my e-mail.</div><div dir=3D"ltr" data-setdir=3D"fal=
se">Best regards,</div><div dir=3D"ltr" data-setdir=3D"false">Ed</div><div>=
<br></div><div class=3D"ydpcf6635f3signature">Edward Vidal Jr. e-mail devel=
one@sbcglobal.net 915-595-1613</div></div>
        <div><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_0889413445" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, February 3, 2020, 9:09:35 AM MST, Quentin Sc=
hulz &lt;quentin.schulz@streamunlimited.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>Hi Ed,<br clear=3D"none"><br clear=3D"none">On Mon, Fe=
b 03, 2020 at 04:01:39PM +0000, Ed Vidal wrote:<br clear=3D"none">&gt; Hell=
o all,<br clear=3D"none">&gt; Is it normal to not include the&nbsp; static =
librarieson the filesystem root?<br clear=3D"none">&gt; I created a raspber=
rypi4 image.&nbsp; This image was created with docker using crops.<br clear=
=3D"none">&gt; bitbake core-image-sato was 7078 tasks<br clear=3D"none">&gt=
; Build Configuration:BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
=3D "1.44.0"BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-=
linux"NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D "universal"TARGET_SYS&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "arm-poky-linux-gnueabi"MACHINE&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "raspberrypi4"DISTRO&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"DISTRO_VERSION&nbsp=
; &nbsp; &nbsp; &nbsp;=3D "3.0.1"TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =
=3D "arm vfp cortexa7 neon vfpv4 thumb callconvention-hard"TARGET_FPU&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "hard"meta&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;&nbsp;meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp;=3D "zeus:da81542=
171f0cab0ea1a9bf45ac3c256e6f343f9"meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;&nbsp;meta-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;meta=
-multimedia&nbsp; &nbsp; &nbsp; =3D "zeus:aad5b3d070cd8c58828b0975cf861d8eb=
c90f460"meta-raspberrypi&nbsp; &nbsp; &nbsp;=3D "master:3ae288aa38e3a1609c6=
e861918a874416d3f0f13"<br clear=3D"none">&gt; This was part of local.conf<b=
r clear=3D"none">&gt; IMAGE_INSTALL_append =3D " xterm git \gperf tree tcl =
tk rsync tar pv \geany cmake man iproute2 squashfs-tools \minicom linux-fir=
mware iputils yasm \texinfo python-imaging libmtp python-pip openjpeg \v4l-=
utils gsl opencv libftdi&nbsp; \chkconfig openjpeg lame liba52 gtkmm \gnupl=
ot ghostscript boost python3 python3-ujson \hexedit graphviz \"On the yocto=
 host system I see several version of the libtclstub8.6.a<br clear=3D"none"=
>&gt; find . -name libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux=
-gnueabi/tcl/8.6.9-r0/build/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-p=
oky-linux-gnueabi/tcl/8.6.9-r0/image/usr/lib/libtclstub8.6.a./work/cortexa7=
t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/package/usr/lib/libtclstub8=
.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/recipe-s=
ysroot-native/usr/lib/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-li=
nux-gnueabi/tcl/8.6.9-r0/sysroot-destdir/usr/lib/libtclstub8.6.a./work/cort=
exa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl/8.6.9-r0/packages-split/tcl-stat=
icdev/usr/lib/libtclstub8.6.a./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnue=
abi/gtkwave/3.3.98-r0/recipe-sysroot/usr/lib/libtclstub8.6.a./work/cortexa7=
t2hf-neon-vfpv4-poky-linux-gnueabi/tk/8.6.9-r0/recipe-sysroot/usr/lib/libtc=
lstub8.6.a./work/x86_64-linux/tcl-native/8.6.9-r0/build/libtclstub8.6.a./wo=
rk/x86_64-linux/tcl-native/8.6.9-r0/image/work-cuteradio/build/tmp/work/x86=
_64-linux/tcl-native/8.6.9-r0/recipe-sysroot-native/usr/lib/libtclstub8.6.a=
./work/x86_64-linux/tcl-native/8.6.9-r0/sysroot-destdir/work-cuteradio/buil=
d/tmp/work/x86_64-linux/tcl-native/8.6.9-r0/recipe-sysroot-native/usr/lib/l=
ibtclstub8.6.a./sysroots-components/x86_64/tcl-native/usr/lib/libtclstub8.6=
.a./sysroots-components/cortexa7t2hf-neon-vfpv4/tcl/usr/lib/libtclstub8.6.a=
<br clear=3D"none">&gt; EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks dev-pkgs to=
ols-sdk doc-pkgs"<br clear=3D"none">&gt; <br clear=3D"none"><br clear=3D"no=
ne">Please have a look at your mail formatting, I'm missing most new lines<=
br clear=3D"none">and it makes it hard to read your mail.<br clear=3D"none"=
><br clear=3D"none">You would need staticdev-pkgs in your EXTRA_IMAGE_FEATU=
RES to have the<br clear=3D"none">static libraries of your packages on your=
 system.<br clear=3D"none"><a shape=3D"rect" href=3D"https://www.yoctoproje=
ct.org/docs/current/mega-manual/mega-manual.html#ref-features-image" target=
=3D"_blank">https://www.yoctoproject.org/docs/current/mega-manual/mega-manu=
al.html#ref-features-image</a><br clear=3D"none"><br clear=3D"none">Or if y=
ou want only that specific static library, you can add<br clear=3D"none">tc=
l-staticdev to your IMAGE_INSTALL.<br clear=3D"none"><br clear=3D"none">How=
 did I know?<div class=3D"yqt6011960342" id=3D"yqtfd14155"><br clear=3D"non=
e"><br clear=3D"none">./work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/tcl=
/8.6.9-r0/packages-split/tcl-staticdev/usr/lib/libtclstub8.6.a</div><br cle=
ar=3D"none"><br clear=3D"none">Yocto splits the files between packages and =
you can see where goes what<br clear=3D"none">by having a look at where the=
 file is in ${WORKDIR}/packages-split. Here<br clear=3D"none">it's in tcl-s=
taticdev.<br clear=3D"none"><br clear=3D"none">BR,<br clear=3D"none">Quenti=
n</div>
            </div>
        </div></body></html>

------=_Part_824745_611558390.1580760922892--
