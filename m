Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4349.1575467461558695353
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 05:51:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=GqHwvYE8;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CC04E010B6; Wed,  4 Dec 2019 05:51:01 -0800 (PST)
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
	*      [74.6.129.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic301-5.consmr.mail.bf2.yahoo.com (sonic301-5.consmr.mail.bf2.yahoo.com [74.6.129.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6A5CE00839
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2019 05:50:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1575467458; bh=jl0ftzWsIQtKgIvu2KcaRAjKIIm3LE8w7jCM7AO/o2o=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject; b=GqHwvYE8vmLYx8DPmE1ORmxhDwcMqjr9nNprRIQqgA3C2wsi+JmeOcpSJ7/NyQTjcJ5osQRYVpwxUybGgN0JGZTuWBlKpAjIN50+7q4XdJ6kwzxPG3mbvBeX2oy+D3FRRUZGbHnUJI2acOxSQxKdya3+8kksnI0WA/kEWWWRKlWtlr9CatGJyWwsDnvASww/Zv5hMTGSzLGbf/iIA5T/hq5OGlYDkydOl762FcYvwRW+LaVFcaxcQs+koqQdCR1J6utmR7sVc5uBPqiqg9TqZKY2Rmc5ZgF2KfR2pcxHPUbw7OuBgCKXrAoRN7w1glmotAI0/p72JvkUThfR4hRpNA==
X-YMail-OSG: vhUPHrkVM1mYF3j1tke8lGIUovrTBr6ARfuMeESxQN3YKG63iZFD7K3tp5tgNly
 W4.IHRiWm.qL63Tfv.Ch.LkMPJgr8tfzY8ZoNSv_DbmblvSQmNEtAGnT3XYf_UH6hgZaSIR3XQrD
 0vfgBjew3oTdUeXmw6syk6cvh9sH_.jx35WmreIU9O_X8GfIJ23b9Y5tSBEP7PGf8scMA9E0TtPB
 5FlXeg2MPWtfErcmEgtQfciHDTXNLVl4wb7KjaN.m70Z8BruPtLZdqA6rnNP.aJETidNO5MaECK8
 PghiMq4Xw4N9eTaIp5cWA1qa9zuYSvSYgUphWoUt7bj12YvbOXXBP6lHsYpwc8WD5hpTWpMg7..n
 ssUk7RpHZsr.lAdg_p4U5wR6GHOXrBwmJJYfMNzvmJ3F_npnKhiF9n7vRuXSEYwoiYAcqVKJDafW
 zmBRAvS.F_ur_B45z0FXyHMcbAGBDPDZv9VRrt7Mzvbz7B9srCoV58oT6YaNsu9g_mDNCBuu9EwU
 oyVs1ns3TurysDgadPSPCEvwuu1cDc13E4B6AabnPpCZr4yjRemDRaTpaeBGji2fhwC57sqtGngH
 ADN.cVYIk08qGwywZv_9nvGe7KCn9nLlJxbbxyQsESc66naW34zGT1R1OMxMxDr4lMPPN9bqYZKh
 v0pu9atBwdcNmc5YuU_G1iMFmqsrBw0axdwCMAY3DPgpWT6pooOLQ3bu11ShDvKbOIczLs5GERjr
 WhIxwj5Ff4awdpPjCJYMB.nmyGDigdPNdcZEsrQXhOLe_kr0dHwGwprLZc6Rbc_r1Ro3_NHzgEdL
 wWSc82ayCTzqakV8hq3Vhq7Mh6Yleeb1UtlmS6_rO6tjsrz.7rrgx0ohttnjEX0vSucTYkCadRhF
 tW7SnMZ_5d2yaaWU5X5NWu.MKTxJ5CmGknTQ3qf6uR7AIDAoN9i0XQLbg1vkNWP5XXNe4OHNjywE
 uI7dXy3hAjFBXd1b4F8o_eQnwTV8t9xZC4cFdsPEdb5FvVFg3lQSGkf.1128fdnh7wSJB62X_2Pr
 IHrXF_oHbgmv6UkAlkSJ5GLLVYZLc3cGiG_EAy.StMXz8FLe1rx0Sxqc.kbB.qjOg4jjvUk9GZex
 .KBPUU7KBGbl9HTIjZcQBgu574I5qyb58UQHDl5tNerg24kEfk9BzTp6.7kYHMMQmkiJPWPaWEsk
 BLO_iVP3qDg9jwRyu_vebiDKWW7HDSAm3wGyEA.IJpRSuRsOGUDCR3M71v04K5v5acfUuPW5V9zp
 QOjUhbZPzaWeQlootEdqmmiZUKuNqrSb325WaMqNeS3F6vycKww1uxba7jr.W08o9o_rxoKrWoJK
 c9UgC7TuXuAHPYcey5p4VITO2t9r8bSzC4XqCtQ--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.bf2.yahoo.com with HTTP; Wed, 4 Dec 2019 13:50:58 +0000
Date: Wed, 4 Dec 2019 13:50:02 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <3164079.5714061.1575467402737@mail.yahoo.com>
In-Reply-To: <20191204081631.xpgggwsnmsmo7qo5@qschulz>
References: <477398133.5584303.1575419071624.ref@mail.yahoo.com> <477398133.5584303.1575419071624@mail.yahoo.com> <20191204081631.xpgggwsnmsmo7qo5@qschulz>
Subject: Re: [yocto] raspberry pi Rpi3 does not boot to login prompt.
MIME-Version: 1.0
X-Mailer: WebService/1.1.14728 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_5714060_463377534.1575467402735"

------=_Part_5714060_463377534.1575467402735
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Quentin,I made the change that you recommended (see below) and the Rp=
i3B+ booted without displaying the dmesg=C2=A0output only=C2=A0Please wait:=
 booting...
vidal@ws009:~/wkg/yocto-zeus-3.0/poky/meta-raspberrypi$ git diffdiff --git =
a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.confindex 581e=
47c..43a0a25 100644--- a/conf/machine/raspberrypi3.conf+++ b/conf/machine/r=
aspberrypi3.conf@@ -18,3 +18,4 @@ UBOOT_MACHINE =3D "rpi_3_32b_config"=C2=
=A0SERIAL_CONSOLES ?=3D "115200;ttyS0"=C2=A0=C2=A0ARMSTUB ?=3D "armstub7.bi=
n"+ENABLE_UART =3D "1"
My meta-raspberrypi ver ed6b75ba6, I believe was the current version.How do=
es this modification get updated in meta-raspberrypi?
The ethernet did not get set at boot.=C2=A0 I needed to execute "ifup eth0"=
.In addition the hostname was not seen by router.The dmesg outout is at my =
github.https://github.com/develone/raspberrypi2_yocto-zeus/blob/master/doc/=
first-rpi3-build/firstbootdmesg.txtLet me know if I can provide additional =
information.Thanks=C2=A0

Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20

    On Wednesday, December 4, 2019, 1:16:38 AM MST, Quentin Schulz <quentin=
.schulz@streamunlimited.com> wrote: =20
=20
 Hi Ed,

On Wed, Dec 04, 2019 at 12:24:31AM +0000, Ed Vidal wrote:
> Hello all,I am testing a zeus rpi3.=C2=A0 Any and all help is appreciated=
.
> I created a rpi2 core-image-minimal and built a micro sd card.which boote=
d okay.I then modified the build/conf/local.conf file for a raspberrypi3.
> The rpi3 core-image-minimal does not boot to login prompt.This is the out=
put as it is booting[=C2=A0 =C2=A0 =C2=A03.27169] lan78xx 1-1.1.1:-mdiobus:=
 probed[=C2=A0 =C2=A020.921838] raddom: crng init done[=C2=A0 =C2=A020.9264=
90] radom: 3 urandom warning(s) missed due to ratelimiting
> see the jpeg file doc/rpi3fails.jpeg in repo=C2=A0https://github.com/deve=
lone/raspberrypi2_yocto-zeus
> devel@mypi3-15:~/raspberrypi2_yocto-zeus $ diff raspberrypi2/conf/local.c=
onf raspberrypi3/conf/local.conf=C2=A039c39< MACHINE ??=3D "raspberrypi2"--=
-> MACHINE ??=3D "raspberrypi3"
> devel@mypi3-15:~/raspberrypi2_yocto-zeus $ diff raspberrypi2/conf/bblayer=
s.conf raspberrypi3/conf/bblayers.conf
> Let me know if I can provide any additional information.

I think you might be missing `ENABLE_UART =3D "1"`. We have it in
local.conf but I think you should be able to put it in your machine conf
file or in your distro conf file if you can't modify local.conf
persistently.

C.f.: http://git.yoctoproject.org/cgit.cgi/meta-raspberrypi/tree/docs/extra=
-build-config.md?h=3Dzeus#n228

BR
Quentin
 =20

------=_Part_5714060_463377534.1575467402735
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp2b5c1697yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div><div><div><div>Hello Quentin,</div><div>I made the change that y=
ou recommended (see below) and the Rpi3B+ booted without displaying the dme=
sg&nbsp;</div><div>output only&nbsp;</div><div>Please wait: booting...</div=
><div><br></div><div>vidal@ws009:~/wkg/yocto-zeus-3.0/poky/meta-raspberrypi=
$ git diff</div><div>diff --git a/conf/machine/raspberrypi3.conf b/conf/mac=
hine/raspberrypi3.conf</div><div>index 581e47c..43a0a25 100644</div><div>--=
- a/conf/machine/raspberrypi3.conf</div><div>+++ b/conf/machine/raspberrypi=
3.conf</div><div>@@ -18,3 +18,4 @@ UBOOT_MACHINE =3D "rpi_3_32b_config"</di=
v><div>&nbsp;SERIAL_CONSOLES ?=3D "115200;ttyS0"</div><div>&nbsp;</div><div=
>&nbsp;ARMSTUB ?=3D "armstub7.bin"</div><div>+ENABLE_UART =3D "1"</div><div=
><br></div><div>My meta-raspberrypi ver ed6b75ba6, I believe was the curren=
t version.</div><div>How does this modification get updated in meta-raspber=
rypi?</div><div><br></div><div>The ethernet did not get set at boot.&nbsp; =
I needed to execute "ifup eth0".</div><div>In addition the hostname was not=
 seen by router.</div><div>The dmesg outout is at my github.</div><div>http=
s://github.com/develone/raspberrypi2_yocto-zeus/blob/master/doc/first-rpi3-=
build/firstbootdmesg.txt</div><div>Let me know if I can provide additional =
information.</div><div>Thanks&nbsp;</div></div><br></div><div><br></div><di=
v class=3D"ydp2b5c1697signature">Edward Vidal Jr. e-mail develone@sbcglobal=
.net 915-595-1613</div></div>
        <div><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_6107084943" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, December 4, 2019, 1:16:38 AM MST, Quentin=
 Schulz &lt;quentin.schulz@streamunlimited.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>Hi Ed,<br clear=3D"none"><div class=3D"yqt7938880675" =
id=3D"yqtfd42942"><br clear=3D"none">On Wed, Dec 04, 2019 at 12:24:31AM +00=
00, Ed Vidal wrote:<br clear=3D"none">&gt; Hello all,I am testing a zeus rp=
i3.&nbsp; Any and all help is appreciated.<br clear=3D"none">&gt; I created=
 a rpi2 core-image-minimal and built a micro sd card.which booted okay.I th=
en modified the build/conf/local.conf file for a raspberrypi3.<br clear=3D"=
none">&gt; The rpi3 core-image-minimal does not boot to login prompt.This i=
s the output as it is booting[&nbsp; &nbsp; &nbsp;3.27169] lan78xx 1-1.1.1:=
-mdiobus: probed[&nbsp; &nbsp;20.921838] raddom: crng init done[&nbsp; &nbs=
p;20.926490] radom: 3 urandom warning(s) missed due to ratelimiting<br clea=
r=3D"none">&gt; see the jpeg file doc/rpi3fails.jpeg in repo&nbsp;<a shape=
=3D"rect" href=3D"https://github.com/develone/raspberrypi2_yocto-zeus" targ=
et=3D"_blank">https://github.com/develone/raspberrypi2_yocto-zeus</a><br cl=
ear=3D"none">&gt; <a shape=3D"rect" ymailto=3D"mailto:devel@mypi3-15" href=
=3D"mailto:devel@mypi3-15">devel@mypi3-15</a>:~/raspberrypi2_yocto-zeus $ d=
iff raspberrypi2/conf/local.conf raspberrypi3/conf/local.conf&nbsp;39c39&lt=
; MACHINE ??=3D "raspberrypi2"---&gt; MACHINE ??=3D "raspberrypi3"<br clear=
=3D"none">&gt; <a shape=3D"rect" ymailto=3D"mailto:devel@mypi3-15" href=3D"=
mailto:devel@mypi3-15">devel@mypi3-15</a>:~/raspberrypi2_yocto-zeus $ diff =
raspberrypi2/conf/bblayers.conf raspberrypi3/conf/bblayers.conf<br clear=3D=
"none">&gt; Let me know if I can provide any additional information.</div><=
br clear=3D"none"><br clear=3D"none">I think you might be missing `ENABLE_U=
ART =3D "1"`. We have it in<br clear=3D"none">local.conf but I think you sh=
ould be able to put it in your machine conf<br clear=3D"none">file or in yo=
ur distro conf file if you can't modify local.conf<br clear=3D"none">persis=
tently.<br clear=3D"none"><br clear=3D"none">C.f.: <a shape=3D"rect" href=
=3D"http://git.yoctoproject.org/cgit.cgi/meta-raspberrypi/tree/docs/extra-b=
uild-config.md?h=3Dzeus#n228" target=3D"_blank">http://git.yoctoproject.org=
/cgit.cgi/meta-raspberrypi/tree/docs/extra-build-config.md?h=3Dzeus#n228</a=
><br clear=3D"none"><br clear=3D"none">BR<br clear=3D"none">Quentin<div cla=
ss=3D"yqt7938880675" id=3D"yqtfd72054"><br clear=3D"none"></div></div>
            </div>
        </div></body></html>

------=_Part_5714060_463377534.1575467402735--
