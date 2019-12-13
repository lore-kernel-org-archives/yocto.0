Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1082.1576278643020809653
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 15:10:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=tEQMcW0a;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F936E01166; Fri, 13 Dec 2019 15:10:42 -0800 (PST)
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
	*      [74.6.135.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic302-6.consmr.mail.bf2.yahoo.com (sonic302-6.consmr.mail.bf2.yahoo.com [74.6.135.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6AA8E01126
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2019 15:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1576278638; bh=Dr36V/2e5x/+Bg7RmSNKr3Z5E9BRVnlZoOHSreZha5c=; h=Date:From:To:Cc:Subject:References:From:Subject; b=tEQMcW0afHxg9km7Lrk+54BfbF+S4hBNZGwhd6ihNK+p5T3bJ5atJLkxnKi9pMydGcJRW79LUATliIjDkPyY5UDa9fcxzSFsVSBEDj4ljiRjYYveg2R8eCRgeke50bJ3ZjK0Lqz0IkiEQMdFlKY33TIbNZ4LyGSXSmQPg/zDDJxn8MkZi0kbXlgwZH7Vos7dAZKYdxrLb6IyXVtRV0hLIbdARCRnTnasrOl30+L0suHkU+1tvXypSX60h2KZ98xEvCVFD0BVKraT+EICIo7ibERJYplm0Al5VjmBnVATvGaeI6E3MCCaAspnm3i9Rgv23ml890XxOLkbJyqDolYKcg==
X-YMail-OSG: OOAvDsAVM1leJFaNmw2NuxG9EaS8ptIW1a0SavBoJBpAtbTYH1ZDPjqy_BC2VUL
 trmEXkCd3GpGRmHNXr1tQBOfWWHSF7TnPvKgjIssL.e_3WW4mqH68G6ovjxkvh9sJxShJz3T2txN
 zLR7Q6hvSR.R0Yc0TCeen_d1YWwKoycY0tmvKAomajEaDomokD6mxOevdSVUIIjCFip0Tiwck.gc
 5r8__PN7VhiJCGZJW01AAdMnWsQxwBm59QlMvEEK6d1g2qTDELWaXJx6gXxkx0sA1GOt7qaSZWVo
 oAkWp9heVJT2aZEWJfi2Nu9fV1lY4tnXk12Ar3g4fS2pfU41TzfMLB2.HJasM4d6jr.qzZ218qcK
 pCGhGSSrREVIHpK6DCLqfsrsRvV4YY_0AxKLz0.iBfZh54HARLAc6MIYjjOy4Eo9zMaHm_dtyt11
 jA9KamhM00vcEWfTSxUVbIHIpQO0oci30IxF1DokSH0tfbESd94p6Fny_woIIIfiOj_qEhImcGqN
 WRA_seFwUpT_0jedZDlcDUVt.mJwDoOjuERf402hQ.UncJ9c.OmMm.kcCiEbINy7dOLgO_FzH8Kb
 ge8qGpbYsCeKBDMeE5hKiiKamvIr4AoKX_ecJ3.tFidUuFLXJFW6bokh4mm8vesMnLg1hVfXhkcr
 d8QMnmOLGl.gu.HzdnjyERJrYLkSeH27lbmHgdm0ukVPEzdcz5eHWgKGTIvvD_ZZSW_RxnUlV6dR
 Fp3awwHLDNHsJX3tJHFhHY90GFdsbO6DcMkAzfXpqn9pPwOx3W5e7Ikl5UIxxdTpj__EF6_RbHl_
 UYZEBDesI6j9gu1xkXDB6f4pgwlcNR3RPmDCmmuMuYdalTbSoZAvUU2CeIlDf4Q6AkHNecTDammv
 p2iBdD.SyZgbHQdJwIKLiCCOwoYrhhdicmgHGtZ1Q7mWSE_dRnX99YvvnorUHSZEmzm0uSqQkNhe
 6kHGvm1i4gqz2yFisQC5CpnUfH57dGZbiFebsGSJU6gH25aHsxnMcMwLmOP0HFWsEV0ODT4tJ2M0
 cz.zWvS9I7zdmADtweS9_4pgchHKfBUTmGCgHdIZa0Dv9m35INSnFMMdNaOeubY3tm3ydR7z1nDq
 FYYCh2j.RkQPcysXy2bEa8tLEAWWPhVZBqoJuYMFDmuPU_5b47sgdeKU7JySHOTDEUsLht2LzsuN
 7ugi2L08gjnmS2vxX3IeK93rLt8J.hb357r_kMAtZ.VS41SBAvoDwuy1TvqcGmgrEqha62NOSISz
 tKHCVI0GpEpIEiuqRrh9Y59myk.5Mo6v_rGKsEuo.pYhHNryqWk7vPBOzYKOvIHgLbV7elmOE.WB
 IYy.4fBI9BpfmTRcy9Uqhv9DDlG5oCeU-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.bf2.yahoo.com with HTTP; Fri, 13 Dec 2019 23:10:38 +0000
Date: Fri, 13 Dec 2019 23:10:35 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <769876899.8739756.1576278635643@mail.yahoo.com>
Subject: Re: [yocto] Raspberry pi 4 recipe and layer issues.
MIME-Version: 1.0
References: <769876899.8739756.1576278635643.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14728 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_8739755_2105737752.1576278635641"

------=_Part_8739755_2105737752.1576278635641
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Josef,Thanks for your help.=C2=A0
My icestorm recipe still fails trying to include ftdi.h even with in the DE=
PENDS.has libftdi.=C2=A0 The header file is found libftdi-dev rpm.=C2=A0 Wh=
en I tried adding it to DEPENDS. I get nothing provides=C2=A0libftdi-dev.
Making progress in the yosys recipe now getting to do_install where the err=
or see below=C2=A0Unable to recognise the format of the input file `/home/v=
idal/wkg/yocto-zeus-3.0/rpi4-64/build/tmp/work/aarch64-poky-linux/yosys/0.1=
+gitAUTOINC+e275692e84-r0/image/usr/local/bin/yosys'=C2=A0 =C2=A0 Makefile:=
567: recipe for target 'install' failed
=C2=A0 =C2=A0 getting error in do_compile=C2=A0 =C2=A0 bash: tclsh: command=
 not found=C2=A0 =C2=A0 Have tried adding to DEPENDS one at time bash=C2=A0=
 =C2=A0 and tclsh.=C2=A0 =C2=A0 Have tried adding to inherit one at time ba=
sh=C2=A0 =C2=A0 and tclsh.=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 In the Makefile =
chg line 110=C2=A0 =C2=A0 to ae6716b default=C2=A0 =C2=A0 ABCREV =3D ae6716=
b=C2=A0 =C2=A0 ABCREV =3D default=C2=A0 =C2=A0 [100%] Building yosys=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 Build successful=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0 This is part of do_install=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 [=C2=A0 5=
%] ABC: `` Building binary: abc-default=C2=A0 =C2=A0 [ 10%] Building yosys-=
abc=C2=A0 =C2=A0 mkdir -p /home/vidal/wkg/yocto-zeus-3.0/rpi4-64/build/tmp/=
work/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/=
bin=C2=A0 =C2=A0 cp yosys yosys-config yosys-abc yosys-filterlib yosys-smtb=
mc /home/vidal/wkg/yocto-zeus-3.0/rpi4-64/build/tmp/work/aarch64-poky-linux=
/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/bin=C2=A0 =C2=A0 aarch6=
4-poky-linux-strip -S /home/vidal/wkg/yocto-zeus-3.0/rpi4-64/build/tmp/work=
/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/bin/=
yosys=C2=A0 =C2=A0 aarch64-poky-linux-strip: Unable to recognise the format=
 of the input file `/home/vidal/wkg/yocto-zeus-3.0/rpi4-64/build/tmp/work/a=
arch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/bin/yo=
sys'=C2=A0 =C2=A0 Makefile:567: recipe for target 'install' failed=C2=A0 =
=C2=A0 make: *** [install] Error 1=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 +inherit=
 pkgconfig=C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0oe_runmake install=C2=
=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0oe_runmake install 'DESTDIR=3D${D}'

Let me know if I can provide additional information.
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20

    On Friday, December 13, 2019, 1:20:48 AM MST, Josef Holzmayr <holzmayr@=
rsi-elektrotechnik.de> wrote: =20
=20
 On Thu, Dec 12, 2019 at 10:20:03PM +0000, Ed Vidal wrote:
> Hi AllAny and all help is appreciated.=C2=A0 Thanks in advance.
> I want to install 6 software packages needed for FPGA Development.These a=
re icestorm, arachne-pnr, yosys, nextpnr, verilator, and zipcpu.I have crea=
ted 4 of the recipes (icestorm_0.1.bb, arachne-pnr_0.1.bb, yosys_0.1.bb, an=
d nextpnr_0.1.bb)using the recipetool & bitbake-layers, and I added these t=
o a meta-yosys-tools layer.
> https://github.com/develone/meta-yosys-tools.git
> I can now execute "bitbake icestorm" which is a python and C++ Makefile p=
roject.The first time the recipe goes thru the python build and gets an err=
or existing the shell.If I rerun "bitbake icestorm" I get=C2=A0
> | iceprog.c:27:10: fatal error: ftdi.h: No such file or directory|=C2=A0 =
=C2=A0 27 | #include <ftdi.h>|=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ^~~~~~~~Which is the 2nd C++ program in the Makfile.On th=
e rpi4-64 all that is needed are the following steps to build icestorm git =
clone https://github.com/cliffordwolf/icestorm.git cd icestorm=C2=A0 make r=
eal 33m4.774s user 32m39.073s sys 0m19.247s I first tried using the cross c=
ompiler with little sucess.=C2=A0 This is why I trying to generate=C2=A0the=
 recipes to build using bitbake instead. These are the location of the head=
er files, needed to be added to the cross compiler sdkwhich I installed for=
 rpi4 using the following commands. "bitbake meta-toolchain" "bitbake core-=
image-sato -c populate_sdk_ext" "./poky-glibc-x86_64-meta-toolchain-aarch64=
-raspberrypi4-64-toolchain-3.0.1.sh"
> =C2=A0=C2=A0/usr/include/libftdi1/ftdi.h/usr/include/pcap/usb.h
> As root make install which install to /usr/local/bin & /usr/local/share.C=
reates /usr/local/bin & /usr/local/sharels /usr/local/bin/icebox.py icebox_=
diff icebox_maps=C2=A0 icebram=C2=A0 =C2=A0iceprogicebox_asc2hlc icebox_exp=
lain icebox_stat=C2=A0 icemulti=C2=A0 icetimeicebox_chipdb icebox_hlc2asc i=
cebox_vlog=C2=A0 icepack=C2=A0 =C2=A0iceunpackicebox_colbuf icebox_html ice=
boxdb.py=C2=A0 icepll
> ls /usr/local/share/icebox/chipdb-1k.txt chipdb-lm4k.txt=C2=A0 =C2=A0timi=
ngs_lp1k.txt=C2=A0 =C2=A0timings_up5k.txtchipdb-384.txt chipdb-u4k.txt =C2=
=A0 timings_lp384.txtchipdb-5k.txt timings_hx1k.txt=C2=A0 timings_lp8k.txtc=
hipdb-8k.txt timings_hx8k.txt=C2=A0 timings_u4k.txt
> When I executed "bitbake nextpnr", I noticed the boost was built first.=
=C2=A0 Since then=C2=A0I have added boost to rpi4-core-image-sato which add=
ed quite a bit to the image2420113408 without boost and 2839543808 with boo=
st.

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
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548=20

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

 =20

------=_Part_8739755_2105737752.1576278635641
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp53858f62yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div><div dir=3D"ltr" data-setdir=3D"false">Hi Josef,</div><div dir=
=3D"ltr" data-setdir=3D"false">Thanks for your help.&nbsp;</div><div dir=3D=
"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false=
">My icestorm recipe still fails trying to include ftdi.h even with in the =
DEPENDS.</div><div dir=3D"ltr" data-setdir=3D"false">has libftdi.&nbsp; The=
 header file is found libftdi-dev rpm.&nbsp; When I tried adding it to DEPE=
NDS. I get nothing provides&nbsp;</div><div dir=3D"ltr" data-setdir=3D"fals=
e">libftdi-dev.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div =
dir=3D"ltr" data-setdir=3D"false">Making progress in the yosys recipe now g=
etting to do_install where the error see below&nbsp;</div><div dir=3D"ltr" =
data-setdir=3D"false"><div><div style=3D"color: rgb(0, 0, 0); font-family: =
Helvetica Neue, Helvetica, Arial, sans-serif;">Unable to recognise the form=
at of the input file `/home/vidal/wkg/yocto-zeus-3.0/rpi4-64/build/tmp/work=
/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/bin/=
yosys'</div><div style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue,=
 Helvetica, Arial, sans-serif;">&nbsp; &nbsp; Makefile:567: recipe for targ=
et 'install' failed</div></div><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse"><div><div>&nbsp; &nbsp; getting error in do_compile</div><div>&nbsp; &=
nbsp; bash: tclsh: command not found</div><div>&nbsp; &nbsp; Have tried add=
ing to DEPENDS one at time bash</div><div>&nbsp; &nbsp; and tclsh.</div><di=
v>&nbsp; &nbsp; Have tried adding to inherit one at time bash</div><div>&nb=
sp; &nbsp; and tclsh.</div><div>&nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp;=
 In the Makefile chg line 110</div><div>&nbsp; &nbsp; to ae6716b default</d=
iv><div>&nbsp; &nbsp; ABCREV =3D ae6716b</div><div>&nbsp; &nbsp; ABCREV =3D=
 default</div><div>&nbsp; &nbsp; [100%] Building yosys</div><div>&nbsp; &nb=
sp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; Build successful</div><div>&nbsp; =
&nbsp;&nbsp;</div><div>&nbsp; &nbsp; This is part of do_install</div><div>&=
nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; [&nbsp; 5%] ABC: `` Building bin=
ary: abc-default</div><div>&nbsp; &nbsp; [ 10%] Building yosys-abc</div><di=
v>&nbsp; &nbsp; mkdir -p /home/vidal/wkg/yocto-zeus-3.0/rpi4-64/build/tmp/w=
ork/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/b=
in</div><div>&nbsp; &nbsp; cp yosys yosys-config yosys-abc yosys-filterlib =
yosys-smtbmc /home/vidal/wkg/yocto-zeus-3.0/rpi4-64/build/tmp/work/aarch64-=
poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0/image/usr/local/bin</div><div=
>&nbsp; &nbsp; aarch64-poky-linux-strip -S /home/vidal/wkg/yocto-zeus-3.0/r=
pi4-64/build/tmp/work/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275692e84-r0=
/image/usr/local/bin/yosys</div><div>&nbsp; &nbsp; aarch64-poky-linux-strip=
: Unable to recognise the format of the input file `/home/vidal/wkg/yocto-z=
eus-3.0/rpi4-64/build/tmp/work/aarch64-poky-linux/yosys/0.1+gitAUTOINC+e275=
692e84-r0/image/usr/local/bin/yosys'</div><div>&nbsp; &nbsp; Makefile:567: =
recipe for target 'install' failed</div><div>&nbsp; &nbsp; make: *** [insta=
ll] Error 1</div><div>&nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; +inherit =
pkgconfig</div><div>&nbsp; &nbsp; -&nbsp; &nbsp; &nbsp; &nbsp;oe_runmake in=
stall</div><div>&nbsp; &nbsp; +&nbsp; &nbsp; &nbsp; &nbsp;oe_runmake instal=
l 'DESTDIR=3D${D}'</div><div><br></div></div><br></div><div dir=3D"ltr" dat=
a-setdir=3D"false">Let me know if I can provide additional information.</di=
v><div dir=3D"ltr" data-setdir=3D"false"><br></div><div class=3D"ydp53858f6=
2signature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</di=
v></div>
        <div><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_6392855735" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, December 13, 2019, 1:20:48 AM MST, Josef Hol=
zmayr &lt;holzmayr@rsi-elektrotechnik.de&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>On Thu, Dec 12, 2019 at 10:20:03PM +0000, Ed Vidal wro=
te:<div class=3D"yqt3300773609" id=3D"yqtfd49013"><br clear=3D"none">&gt; H=
i AllAny and all help is appreciated.&nbsp; Thanks in advance.<br clear=3D"=
none">&gt; I want to install 6 software packages needed for FPGA Developmen=
t.These are icestorm, arachne-pnr, yosys, nextpnr, verilator, and zipcpu.I =
have created 4 of the recipes (icestorm_0.1.bb, arachne-pnr_0.1.bb, yosys_0=
.1.bb, and nextpnr_0.1.bb)using the recipetool &amp; bitbake-layers, and I =
added these to a meta-yosys-tools layer.<br clear=3D"none">&gt; <a shape=3D=
"rect" href=3D"https://github.com/develone/meta-yosys-tools.git" target=3D"=
_blank">https://github.com/develone/meta-yosys-tools.git</a><br clear=3D"no=
ne">&gt; I can now execute "bitbake icestorm" which is a python and C++ Mak=
efile project.The first time the recipe goes thru the python build and gets=
 an error existing the shell.If I rerun "bitbake icestorm" I get&nbsp;<br c=
lear=3D"none">&gt; | iceprog.c:27:10: fatal error: ftdi.h: No such file or =
directory|&nbsp; &nbsp; 27 | #include &lt;ftdi.h&gt;|&nbsp; &nbsp; &nbsp; &=
nbsp;|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~Which is the 2nd C++ progr=
am in the Makfile.On the rpi4-64 all that is needed are the following steps=
 to build icestorm git clone <a shape=3D"rect" href=3D"https://github.com/c=
liffordwolf/icestorm.git " target=3D"_blank">https://github.com/cliffordwol=
f/icestorm.git </a>cd icestorm&nbsp; make real 33m4.774s user 32m39.073s sy=
s 0m19.247s I first tried using the cross compiler with little sucess.&nbsp=
; This is why I trying to generate&nbsp;the recipes to build using bitbake =
instead. These are the location of the header files, needed to be added to =
the cross compiler sdkwhich I installed for rpi4 using the following comman=
ds. "bitbake meta-toolchain" "bitbake core-image-sato -c populate_sdk_ext" =
"./poky-glibc-x86_64-meta-toolchain-aarch64-raspberrypi4-64-toolchain-3.0.1=
.sh"<br clear=3D"none">&gt; &nbsp;&nbsp;/usr/include/libftdi1/ftdi.h/usr/in=
clude/pcap/usb.h<br clear=3D"none">&gt; As root make install which install =
to /usr/local/bin &amp; /usr/local/share.Creates /usr/local/bin &amp; /usr/=
local/sharels /usr/local/bin/icebox.py icebox_diff icebox_maps&nbsp; icebra=
m&nbsp; &nbsp;iceprogicebox_asc2hlc icebox_explain icebox_stat&nbsp; icemul=
ti&nbsp; icetimeicebox_chipdb icebox_hlc2asc icebox_vlog&nbsp; icepack&nbsp=
; &nbsp;iceunpackicebox_colbuf icebox_html iceboxdb.py&nbsp; icepll<br clea=
r=3D"none">&gt; ls /usr/local/share/icebox/chipdb-1k.txt chipdb-lm4k.txt&nb=
sp; &nbsp;timings_lp1k.txt&nbsp; &nbsp;timings_up5k.txtchipdb-384.txt chipd=
b-u4k.txt &nbsp; timings_lp384.txtchipdb-5k.txt timings_hx1k.txt&nbsp; timi=
ngs_lp8k.txtchipdb-8k.txt timings_hx8k.txt&nbsp; timings_u4k.txt<br clear=
=3D"none">&gt; When I executed "bitbake nextpnr", I noticed the boost was b=
uilt first.&nbsp; Since then&nbsp;I have added boost to rpi4-core-image-sat=
o which added quite a bit to the image2420113408 without boost and 28395438=
08 with boost.</div><br clear=3D"none"><br clear=3D"none">This sounds all v=
ery much like you just need to sort out your<br clear=3D"none">dependencies=
. If something needs boost, there should be<br clear=3D"none"><br clear=3D"=
none">DEPENDS =3D "boost"<br clear=3D"none"><br clear=3D"none">in the recip=
e. If smething needs libftdi, there should be<br clear=3D"none"><br clear=
=3D"none">DEPENDS =3D "libftdi"<br clear=3D"none"><br clear=3D"none">and so=
 on, and so on. Randomly adding things to the image does not solve<br clear=
=3D"none">those issue, for a simple reason: It guarantees that the thing go=
 into<br clear=3D"none">the image. It does *not* guarantee that they are al=
ready around when<br clear=3D"none">some random, other recipe is being buil=
t.<br clear=3D"none"><br clear=3D"none">So, first and foremost - sort out y=
our dependencies.<br clear=3D"none"><br clear=3D"none">There is some introd=
uctory information here:<br clear=3D"none"><a shape=3D"rect" href=3D"https:=
//youtu.be/IehnEC3GOGU" target=3D"_blank">https://youtu.be/IehnEC3GOGU</a><=
br clear=3D"none"><br clear=3D"none">Greetz<br clear=3D"none"><br clear=3D"=
none">-- <br clear=3D"none">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94<br clear=3D"none">Josef Holzmayr<br clear=3D"none">Software=
 Developer Embedded Systems<br clear=3D"none"><br clear=3D"none">Tel: +49 8=
444 9204-48<br clear=3D"none">Fax: +49 8444 9204-50<br clear=3D"none"><br c=
lear=3D"none">R-S-I Elektrotechnik GmbH &amp; Co. KG<br clear=3D"none">Woel=
kestrasse 11<br clear=3D"none">D-85301 Schweitenkirchen<br clear=3D"none">w=
ww.rsi-elektrotechnik.de<br clear=3D"none">=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94<br clear=3D"none">Amtsgericht Ingolstadt =E2=
=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393<br clear=3D"none">Gesch=C3=
=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br clear=3D=
"none">Ust-IdNr: DE 128592548 <br clear=3D"none"><br clear=3D"none">_______=
______________________________________________________<br clear=3D"none">Am=
tsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363<br clear=3D"none">=
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br =
clear=3D"none">USt-IdNr.: DE 128592548<div class=3D"yqt3300773609" id=3D"yq=
tfd93729"><br clear=3D"none"><br clear=3D"none"></div></div>
            </div>
        </div></body></html>

------=_Part_8739755_2105737752.1576278635641--
