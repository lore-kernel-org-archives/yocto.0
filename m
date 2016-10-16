Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14C7CE00C40; Sun, 16 Oct 2016 11:18:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2D86E00C38
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 11:18:33 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id e6so69545664pfk.3
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 11:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=BUCeiMtfY8C8FpEc+Y3Cnoe3qcfqm8HStIBWoDQWQmQ=;
	b=smp+V3tbgfZK2dN3LwK1McFPmqHAp0H13XdmhNBGgNZ8hfFDkHNqBthSkyNYZb2NOz
	mkRo4wsSr8haJFTKRxObyirULyzDqFJTygeqRTPiwXThOOPbeNd6Xffx6wonyuy4Kgk0
	rx3nS5nJa+YmG237MkiaBe5vPHCSuRaR3ksplztmqQaqZDw+1qMWePcwE5xUdL1BgCfS
	yafS+oSbfNtOE6Qijlb7nSRJuRHUS1GgwF5p65h8jm7kw16YWuuPKiwImM/seJVChCpV
	t5aEiYK6+muwunvW9cV7/EZET4Xw8ztYZpDLSfAeYi3MKMqOuEeq4Ufw6vX2sxrFDEEE
	Q3pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=BUCeiMtfY8C8FpEc+Y3Cnoe3qcfqm8HStIBWoDQWQmQ=;
	b=ZYAZfoyTg9PfsChbhZF0csMvNnA9PB7OR78njCHGKqlfq/bvgzW+8Be/J48iFfXeMM
	FKmLXj7M9jy0JgCc3IbVCiRbhNJSs0H3JIxeeIi7aL9ehcjFMAzR2j5+ZD2Ic29eUoVh
	mBAx6UMsxxOeDfQ9tcfB8SLZONJqwGhlnMjhKvYyQPmco5IkkBDkwLxaCGlreiCJ2g60
	e+xhzGwkW147HTElyIvGeASFaZ8vs4RtRjpogehCP3A94oBe/FKWw/sCn7X5cCbdvWZF
	sia4pNXRdzLoBGkJPiNoyjl837yvLierY2T37l4RAYJLcxSUU+nrGgfCkSbC2G7rhvY/
	48uw==
X-Gm-Message-State: AA6/9Rlg2T6lSivCQHcUnLYp5EnytRfN6of17hXktKxdc5VByWFRWxgPVRLrRs8odqGPAw==
X-Received: by 10.99.120.203 with SMTP id t194mr27108531pgc.17.1476641912961; 
	Sun, 16 Oct 2016 11:18:32 -0700 (PDT)
Received: from ?IPv6:2600:1010:b026:70df:d54d:70d9:9262:3840?
	([2600:1010:b026:70df:d54d:70d9:9262:3840])
	by smtp.gmail.com with ESMTPSA id
	188sm42131241pfz.2.2016.10.16.11.18.31
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 16 Oct 2016 11:18:32 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <HE1PR01MB188310BC5F4F9632AC6B5E6192D10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Date: Sun, 16 Oct 2016 11:18:30 -0700
Message-Id: <3C5E1054-2887-41CB-B4EB-3138C75B8851@gmail.com>
References: <HE1PR01MB18830C5B4949FDB8F3A42CBD92D10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<CAMKF1sqHhk5NNfbkGgQ_uRmOM5PVVLEN-c+7kws4x4+6sGMnOQ@mail.gmail.com>
	<HE1PR01MB188310BC5F4F9632AC6B5E6192D10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [raspberrypi3] Failed to build core-image-minimal with Qt5 support (GL/gl.h not found)
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
X-List-Received-Date: Sun, 16 Oct 2016 18:18:35 -0000
X-Groupsio-MsgNum: 32431
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9AAD21A5-0240-4900-A549-6DD438B5D558";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9AAD21A5-0240-4900-A549-6DD438B5D558
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3BC9B8D7-DE26-4A4F-8722-A646EC47F487"

--Apple-Mail=_3BC9B8D7-DE26-4A4F-8722-A646EC47F487
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

you can use bitbake -g <image> to dump the dep graphs in dotty format =
and explore the depchains

> On Oct 16, 2016, at 11:15 AM, Karim ATIKI <karim_atiki@hotmail.com> =
wrote:
>=20
> Hi Khem,
>=20
> >it currently have some vc4 support if you want mesa to work then use
> >vc4graphics in machine features.
> You mean, I should add "vc4graphics" in MACHINE_FEATURES ?
>=20
> Actually, I don't specially  want to have mesa. I just want to have =
Qt5 without X11 so I can build my programs with eglfs qpa.
>=20
> >otherwise the headers should come from userland package. Figure out
> >why mesa-gl is being pulled.
>=20
> In the dependecy explorer, I see mesa-gl Runtime Depends =3D =
"mesa-gl-dev mesa-megadriver"
> I don't have any other info <OutlookEmoji-=E2=98=B9.png>
>=20
> De : Khem Raj <raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
> Envoy=C3=A9 : dimanche 16 octobre 2016 19:24
> =C3=80 : Karim ATIKI
> Cc : yocto
> Objet : Re: [yocto] [raspberrypi3] Failed to build core-image-minimal =
with Qt5 support (GL/gl.h not found)
>=20
> On Sun, Oct 16, 2016 at 8:45 AM, Karim ATIKI <karim_atiki@hotmail.com =
<mailto:karim_atiki@hotmail.com>> wrote:
> > Hi all,
> >
> >
> > I'm trying to a build a core-image-minimal for my RaspberryPi3 with =
Qt5
> > support.
> >
> > I'm working with Poky Krogth  and master branches of meta-qt5 and
> > meta-raspberrypi.
> >
> >
> > The build failed at qtbase do_configure().
> >
> > It reports
> >
> >
> > "| checking for OpenGL...
> > | Cannot read
> > =
/home/kai/yocto/build-rpi3-minimal/tmp/work/cortexa7hf-neon-vfpv4-poky-lin=
ux-gnueabi/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0/git/mkspecs/oe-device-ext=
ra.pri:
> > No such file or directory
> > | arm-poky-linux-gnueabi-g++  -march=3Darmv7ve -marm =
-mfpu=3Dneon-vfpv4
> > -mfloat-abi=3Dhard -mcpu=3Dcortex-a7
> > =
--sysroot=3D/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/raspberrypi3 =
-c
> > -pipe  -O2 -pipe -g -feliminate-unused-debug-types
> > =
-fdebug-prefix-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/work/cortexa7h=
f-neon-vfpv4-poky-linux-gnueabi/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0=3D/u=
sr/src/debug/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0
> > =
-fdebug-prefix-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/x86_6=
4-linux=3D
> > =
-fdebug-prefix-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/raspb=
errypi3=3D
> > -fvisibility-inlines-hidden -O2 -Wall -W -fPIC
> > -I../../../../git/config.tests/unix/opengldesktop -I.
> > -I../../../../git/mkspecs/linux-oe-g++ -o opengldesktop.o
> > ../../../../git/config.tests/unix/opengldesktop/opengldesktop.cpp
> >
> > | =
../../../../git/config.tests/unix/opengldesktop/opengldesktop.cpp:43:19:
> > fatal error: GL/gl.h: No such file or directory
> >
> > |  #include <GL/gl.h>
> > "
> >
> > The OpenGL header files are not there.
> > However, I've setup my local.conf as follow:
> >
> > DISTRO_FEATURES_remove =3D " x11 wayland"
> > DISTRO_FEATURES_append =3D " opengl"
> >
> >
> > IMAGE_INSTALL_append =3D "  qtbase \
> >   kernel-modules \
> >   qtdeclarative \
> >   qtmultimedia \
> >   qtsvg \
> >   qtsensors \
> >   qtimageformats \
> >   qtsystems \
> >   qtscript \
> >   qt3d \
> >   qtconnectivity \
> >   qtlocation \
> >   cinematicexperience \
> >   qtgraphicaleffects \
> >   qtquick1 \
> >   qtwebkit \
> >   binutils \
> > "
> >
> > Is there something missing ?
> > In addition, during the build, I saw "mesa-gl" getting installed =
correctly.
>=20
>=20
>=20
>=20
> >
> > But in the sysroot, I have only:
> >
> > ./tmp/sysroots/raspberrypi3/usr/include/GL/
> > ./tmp/sysroots/raspberrypi3/usr/include/GL/internal/dri_interface.h
> >
> > But in the mesa-gl work dir, I can find:
> >
> > ./tmp/sysroots/raspberrypi3/usr/include/GL/
> > ./tmp/sysroots/raspberrypi3/usr/include/GL/GL
> > ./tmp/sysroots/raspberrypi3/usr/include/GL/GLES
> > ./tmp/sysroots/raspberrypi3/usr/include/GL/GLES2
> > ./tmp/sysroots/raspberrypi3/usr/include/GL/GLES3
> > with all sub files...
> >
> >
> > What's wrong with the build ?
> >
> >
> > Cheers,
> >
> > Karim
> >
> >
> >
> >
> >
> >
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
> yocto -- Discussion of all things Yocto Project =
<https://lists.yoctoproject.org/listinfo/yocto>
> lists.yoctoproject.org <http://lists.yoctoproject.org/>
> Discussion of all things about the Yocto Project. Read our Community =
Guidelines or learn more about how to participate in other community =
discussions.
>=20
>=20
> >


--Apple-Mail=_3BC9B8D7-DE26-4A4F-8722-A646EC47F487
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">you can use bitbake -g &lt;image&gt; to dump the dep graphs =
in dotty format and explore the depchains<div class=3D""><br =
class=3D""><div class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 16, 2016, at 11:15 AM, Karim ATIKI &lt;<a =
href=3D"mailto:karim_atiki@hotmail.com" =
class=3D"">karim_atiki@hotmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
id=3D"divtagdefaultwrapper" style=3D"font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; font-size: 12pt; font-family: Calibri, =
Arial, Helvetica, sans-serif;" class=3D""><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D"">Hi Khem,</div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D""><br class=3D""></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><span =
style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, 'Apple =
Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', =
'Android Emoji', EmojiSymbols; font-size: 13.3333px;" class=3D"">&gt;it =
currently have some vc4 support if you want mesa to work then =
use</span><br style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, =
'Segoe UI Symbol', 'Android Emoji', EmojiSymbols; font-size: 13.3333px;" =
class=3D""><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, =
'Segoe UI Symbol', 'Android Emoji', EmojiSymbols; font-size: 13.3333px;" =
class=3D"">&gt;vc4graphics in machine features.</span><br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, =
'Segoe UI Symbol', 'Android Emoji', EmojiSymbols; font-size: 13.3333px;" =
class=3D"">You mean, I should add "vc4graphics" in MACHINE_FEATURES =
?</span></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, =
'Segoe UI Symbol', 'Android Emoji', EmojiSymbols; font-size: 13.3333px;" =
class=3D""><br class=3D""></span></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><span style=3D"font-family: Calibri, =
Arial, Helvetica, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', =
NotoColorEmoji, 'Segoe UI Symbol', 'Android Emoji', EmojiSymbols; =
font-size: 13.3333px;" class=3D"">Actually, I don't specially&nbsp; want =
to have mesa. I just want to have Qt5 without X11 so I can build my =
programs with eglfs qpa.</span></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px;" class=3D""><span style=3D"font-family: Calibri, =
Arial, Helvetica, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', =
NotoColorEmoji, 'Segoe UI Symbol', 'Android Emoji', EmojiSymbols; =
font-size: 13.3333px;" class=3D""><br class=3D""></span></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><span =
style=3D"font-size: 13.3333px;" class=3D"">&gt;otherwise the headers =
should come from userland package. Figure out</span><br =
class=3D""></div><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, =
'Segoe UI Symbol', 'Android Emoji', EmojiSymbols; font-size: 13.3333px;" =
class=3D"">&gt;why mesa-gl is being pulled.</span><div class=3D""><span =
style=3D"font-size: 13.3333px;" class=3D""><br =
class=3D""></span></div><div class=3D""><span style=3D"font-family: =
Calibri, Arial, Helvetica, sans-serif, 'Apple Color Emoji', 'Segoe UI =
Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android Emoji', =
EmojiSymbols;" class=3D""></span><span style=3D"font-size: 13.3333px;" =
class=3D"">In the dependecy explorer, I see mesa-gl Runtime Depends =3D =
"mesa-gl-dev mesa-megadriver"</span></div><div class=3D""><span =
style=3D"font-size: 13.3333px;" class=3D"">I don't have any&nbsp;other =
info<span class=3D"Apple-converted-space">&nbsp;</span><span =
id=3D"cid:741f5e25-8210-467d-a94b-0e6611c9d9a8">&lt;OutlookEmoji-=E2=98=B9=
.png&gt;</span><br class=3D""></span></div><div class=3D""><span =
style=3D"font-size: 13.3333px;" class=3D""><br class=3D""></span><div =
style=3D"" class=3D""><div class=3D""><hr tabindex=3D"-1" =
style=3D"display: inline-block; width: 1079.953125px;" class=3D""><div =
id=3D"x_divRplyFwdMsg" dir=3D"ltr" class=3D""><font face=3D"Calibri, =
sans-serif" style=3D"font-size: 11pt;" class=3D""><b class=3D"">De =
:</b><span class=3D"Apple-converted-space">&nbsp;</span>Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" =
class=3D"">raj.khem@gmail.com</a>&gt;<br class=3D""><b class=3D"">Envoy=C3=
=A9 :</b><span class=3D"Apple-converted-space">&nbsp;</span>dimanche 16 =
octobre 2016 19:24<br class=3D""><b class=3D"">=C3=80 :</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Karim ATIKI<br class=3D""><b =
class=3D"">Cc&nbsp;:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>yocto<br class=3D""><b =
class=3D"">Objet :</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Re: [yocto] [raspberrypi3] =
Failed to build core-image-minimal with Qt5 support (GL/gl.h not =
found)</font><div class=3D"">&nbsp;</div></div></div><font size=3D"2" =
class=3D""><span style=3D"font-size: 10pt;" class=3D""><div =
class=3D"PlainText">On Sun, Oct 16, 2016 at 8:45 AM, Karim ATIKI &lt;<a =
href=3D"mailto:karim_atiki@hotmail.com" =
class=3D"">karim_atiki@hotmail.com</a>&gt; wrote:<br class=3D"">&gt; Hi =
all,<br class=3D"">&gt;<br class=3D"">&gt;<br class=3D"">&gt; I'm trying =
to a build a core-image-minimal for my RaspberryPi3 with Qt5<br =
class=3D"">&gt; support.<br class=3D"">&gt;<br class=3D"">&gt; I'm =
working with Poky Krogth&nbsp; and master branches of meta-qt5 and<br =
class=3D"">&gt; meta-raspberrypi.<br class=3D"">&gt;<br class=3D"">&gt;<br=
 class=3D"">&gt; The build failed at qtbase do_configure().<br =
class=3D"">&gt;<br class=3D"">&gt; It reports<br class=3D"">&gt;<br =
class=3D"">&gt;<br class=3D"">&gt; "| checking for OpenGL...<br =
class=3D"">&gt; | Cannot read<br class=3D"">&gt; =
/home/kai/yocto/build-rpi3-minimal/tmp/work/cortexa7hf-neon-vfpv4-poky-lin=
ux-gnueabi/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0/git/mkspecs/oe-device-ext=
ra.pri:<br class=3D"">&gt; No such file or directory<br class=3D"">&gt; =
| arm-poky-linux-gnueabi-g++&nbsp; -march=3Darmv7ve -marm =
-mfpu=3Dneon-vfpv4<br class=3D"">&gt; -mfloat-abi=3Dhard =
-mcpu=3Dcortex-a7<br class=3D"">&gt; =
--sysroot=3D/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/raspberrypi3 =
-c<br class=3D"">&gt; -pipe&nbsp; -O2 -pipe -g =
-feliminate-unused-debug-types<br class=3D"">&gt; =
-fdebug-prefix-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/work/cortexa7h=
f-neon-vfpv4-poky-linux-gnueabi/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0=3D/u=
sr/src/debug/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0<br class=3D"">&gt; =
-fdebug-prefix-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/x86_6=
4-linux=3D<br class=3D"">&gt; =
-fdebug-prefix-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/raspb=
errypi3=3D<br class=3D"">&gt; -fvisibility-inlines-hidden -O2 -Wall -W =
-fPIC<br class=3D"">&gt; =
-I../../../../git/config.tests/unix/opengldesktop -I.<br class=3D"">&gt; =
-I../../../../git/mkspecs/linux-oe-g++ -o opengldesktop.o<br =
class=3D"">&gt; =
../../../../git/config.tests/unix/opengldesktop/opengldesktop.cpp<br =
class=3D"">&gt;<br class=3D"">&gt; | =
../../../../git/config.tests/unix/opengldesktop/opengldesktop.cpp:43:19:<b=
r class=3D"">&gt; fatal error: GL/gl.h: No such file or directory<br =
class=3D"">&gt;<br class=3D"">&gt; |&nbsp; #include &lt;GL/gl.h&gt;<br =
class=3D"">&gt; "<br class=3D"">&gt;<br class=3D"">&gt; The OpenGL =
header files are not there.<br class=3D"">&gt; However, I've setup my =
local.conf as follow:<br class=3D"">&gt;<br class=3D"">&gt; =
DISTRO_FEATURES_remove =3D " x11 wayland"<br class=3D"">&gt; =
DISTRO_FEATURES_append =3D " opengl"<br class=3D"">&gt;<br =
class=3D"">&gt;<br class=3D"">&gt; IMAGE_INSTALL_append =3D "&nbsp; =
qtbase \<br class=3D"">&gt;&nbsp;&nbsp; kernel-modules \<br =
class=3D"">&gt;&nbsp;&nbsp; qtdeclarative \<br class=3D"">&gt;&nbsp;&nbsp;=
 qtmultimedia \<br class=3D"">&gt;&nbsp;&nbsp; qtsvg \<br =
class=3D"">&gt;&nbsp;&nbsp; qtsensors \<br class=3D"">&gt;&nbsp;&nbsp; =
qtimageformats \<br class=3D"">&gt;&nbsp;&nbsp; qtsystems \<br =
class=3D"">&gt;&nbsp;&nbsp; qtscript \<br class=3D"">&gt;&nbsp;&nbsp; =
qt3d \<br class=3D"">&gt;&nbsp;&nbsp; qtconnectivity \<br =
class=3D"">&gt;&nbsp;&nbsp; qtlocation \<br class=3D"">&gt;&nbsp;&nbsp; =
cinematicexperience \<br class=3D"">&gt;&nbsp;&nbsp; qtgraphicaleffects =
\<br class=3D"">&gt;&nbsp;&nbsp; qtquick1 \<br class=3D"">&gt;&nbsp;&nbsp;=
 qtwebkit \<br class=3D"">&gt;&nbsp;&nbsp; binutils \<br class=3D"">&gt; =
"<br class=3D"">&gt;<br class=3D"">&gt; Is there something missing ?<br =
class=3D"">&gt; In addition, during the build, I saw "mesa-gl" getting =
installed correctly.<br class=3D""><br class=3D""><br class=3D""><br =
class=3D""><br class=3D"">&gt;<br class=3D"">&gt; But in the sysroot, I =
have only:<br class=3D"">&gt;<br class=3D"">&gt; =
./tmp/sysroots/raspberrypi3/usr/include/GL/<br class=3D"">&gt; =
./tmp/sysroots/raspberrypi3/usr/include/GL/internal/dri_interface.h<br =
class=3D"">&gt;<br class=3D"">&gt; But in the mesa-gl work dir, I can =
find:<br class=3D"">&gt;<br class=3D"">&gt; =
./tmp/sysroots/raspberrypi3/usr/include/GL/<br class=3D"">&gt; =
./tmp/sysroots/raspberrypi3/usr/include/GL/GL<br class=3D"">&gt; =
./tmp/sysroots/raspberrypi3/usr/include/GL/GLES<br class=3D"">&gt; =
./tmp/sysroots/raspberrypi3/usr/include/GL/GLES2<br class=3D"">&gt; =
./tmp/sysroots/raspberrypi3/usr/include/GL/GLES3<br class=3D"">&gt; with =
all sub files...<br class=3D"">&gt;<br class=3D"">&gt;<br class=3D"">&gt; =
What's wrong with the build ?<br class=3D"">&gt;<br class=3D"">&gt;<br =
class=3D"">&gt; Cheers,<br class=3D"">&gt;<br class=3D"">&gt; Karim<br =
class=3D"">&gt;<br class=3D"">&gt;<br class=3D"">&gt;<br =
class=3D"">&gt;<br class=3D"">&gt;<br class=3D"">&gt;<br =
class=3D"">&gt;<br class=3D"">&gt;<br class=3D"">&gt;<br class=3D"">&gt; =
--<br class=3D"">&gt; _______________________________________________<br =
class=3D"">&gt; yocto mailing list<br class=3D"">&gt;<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">&gt;<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk755686" =
previewremoved=3D"true" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><div =
id=3D"LPBorder_GT_14766630658260.4439176826090434" style=3D"margin-bottom:=
 20px; overflow: auto; width: 1102px; text-indent: 0px;" class=3D""><table=
 id=3D"LPContainer_14766630658240.15804449771012608" cellspacing=3D"0" =
style=3D"width: 991px; background-color: rgb(255, 255, 255); position: =
relative; overflow: auto; padding-top: 20px; padding-bottom: 20px; =
margin-top: 20px; border-top-width: 1px; border-top-style: dotted; =
border-top-color: rgb(200, 200, 200); border-bottom-width: 1px; =
border-bottom-style: dotted; border-bottom-color: rgb(200, 200, 200);" =
class=3D""><tbody class=3D""><tr valign=3D"top" style=3D"border-spacing: =
0px;" class=3D""><td id=3D"TextCell_14766630658250.21839854966584005" =
colspan=3D"2" style=3D"vertical-align: top; position: relative; padding: =
0px; display: table-cell;" class=3D""><div =
id=3D"LPRemovePreviewContainer_14766630658250.6335215426314478" =
class=3D""></div><div id=3D"LPTitle_14766630658250.49243987005592205" =
style=3D"top: 0px; color: rgb(0, 120, 215); font-weight: normal; =
font-size: 21px; font-family: wf_segoe-ui_light, 'Segoe UI Light', =
'Segoe WP Light', 'Segoe UI', 'Segoe WP', Tahoma, Arial, sans-serif; =
line-height: 21px;" class=3D""><a =
id=3D"LPUrlAnchor_14766630658250.6025815342093976" =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank" =
style=3D"text-decoration: none;" class=3D"">yocto -- Discussion of all =
things Yocto Project</a></div><div =
id=3D"LPMetadata_14766630658260.6439724341123638" style=3D"margin: 10px =
0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: =
wf_segoe-ui_normal, 'Segoe UI', 'Segoe WP', Tahoma, Arial, sans-serif; =
font-size: 14px; line-height: 14px;" class=3D""><a =
href=3D"http://lists.yoctoproject.org/" =
class=3D"">lists.yoctoproject.org</a></div><div =
id=3D"LPDescription_14766630658260.4859172475096143" style=3D"display: =
block; color: rgb(102, 102, 102); font-weight: normal; font-family: =
wf_segoe-ui_normal, 'Segoe UI', 'Segoe WP', Tahoma, Arial, sans-serif; =
font-size: 14px; line-height: 20px; max-height: 100px; overflow: =
hidden;" class=3D"">Discussion of all things about the Yocto Project. =
Read our Community Guidelines or learn more about how to participate in =
other community discussions.</div></td></tr></tbody></table></div><br =
class=3D""><br =
class=3D"">&gt;</div></span></font></div></div></div></div></blockquote></=
div><br class=3D""></div></div></body></html>=

--Apple-Mail=_3BC9B8D7-DE26-4A4F-8722-A646EC47F487--

--Apple-Mail=_9AAD21A5-0240-4900-A549-6DD438B5D558
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgDxHYACgkQuwUzVZGdMxT8HQCbBffdvz9P6hZLz9zyIDIaeZMt
T2kAn2DNGyS62r3LoKtzpsBqIDtsEusj
=EOp8
-----END PGP SIGNATURE-----

--Apple-Mail=_9AAD21A5-0240-4900-A549-6DD438B5D558--
