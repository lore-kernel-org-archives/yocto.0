Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72774E00D59; Sun, 16 Oct 2016 09:36:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BAY004-OMC2S10.hotmail.com (bay004-omc2s10.hotmail.com
	[65.54.190.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A618E00C1F
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 09:36:44 -0700 (PDT)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com ([65.54.190.124])
	by BAY004-OMC2S10.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Sun, 16 Oct 2016 09:36:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=wDjUI+IYpum4ek14oBAkCP/U8hwoeDOAjRcWZz6ILpk=;
	b=oFAF8AlTMAAdhB0F1PEOdcmM7QzLDBwXxNqQu+gwTRBMCTKYJ3Xk1kK+PQQLqI6W5/5mM1D+I+f25/tDrNwLuwz6ghBal9C9KA2MoGhVhnFGMBmyVuD5AwuhLmtl8vyNjil0hh6O5XcZlrjCC0lg9pNOyXfH2zQo/0SoWmNjqZGl46QokVYKRu+RB7PSO2g5itL7+diWiIz/au6IRb66c9wxKGMQ5BfRmfAEGIyp5aeV32rH7qQ1mK4+4Ai4Paebxsuhg6vkRlmfKyvMq63QACI3O+ctIkrcmQqc0WJuCDlTjhI0I9vjFFF63aY8XVREt64dyVM2QCAWECa48389sA==
Received: from VE1EUR01FT018.eop-EUR01.prod.protection.outlook.com
	(10.152.2.54) by VE1EUR01HT211.eop-EUR01.prod.protection.outlook.com
	(10.152.3.166) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Sun, 16 Oct 2016 16:36:29 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.2.60) by
	VE1EUR01FT018.mail.protection.outlook.com (10.152.2.221) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.669.7 via Frontend Transport; Sun, 16 Oct 2016 16:36:29 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0669.018; Sun, 16 Oct 2016 16:36:29 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] [raspberrypi3] Failed to build core-image-minimal with
	Qt5 support (GL/gl.h not found)
Thread-Index: AQHSJ8tyPfZ6sL3g0E2LRR5oTtvbtw==
Date: Sun, 16 Oct 2016 16:36:29 +0000
Message-ID: <HE1PR01MB1883F6345C1719BA2438FD7892D10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB18830C5B4949FDB8F3A42CBD92D10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
In-Reply-To: <HE1PR01MB18830C5B4949FDB8F3A42CBD92D10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [F3xwzAi4SJVW1UMDlNiz37zOid7G5pRt]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR01HT211;
	6:QwkJmURY7YPinWRAGPY3JLcXWcHLBvRUCfo2/o6pLGKIo+cVDzq1p9tsi7kR1wtDY9gLYWgMPaDYC4ukbiBeArRQ+rVgZP8p1d5BCtELM0ngAroREC+jX1LhO4FlZIP73Wlg1AnIynw0T3mPs64mEzE1maSh+9xanbvaxXE/E1A/Fo41ba1QUzklpYe/mQrB1X+NEU0aBpBrpZSmGgVGM7whYz9BIL6BZW49B1+qh43GkxuQXvqh173bUfI3iXrR2vzBRytLQOot6xcE5RgNCwV3wDTsEfKqRy5q6mtDCec=;
	5:1XWVkd+X6Kd3vpNNQA94p+eEpX+iIEjeNoc6bDIE733JofgBthi8C1qc7anDiQ7DvZWsuX0rdPeAN1+S1BojSkMVm2EhO1D7DDQLF5PghTZqOd0CaBqDhBvLtCvUP9rH;
	24:QxIFXz+nukFyZ/j7e7LLL0/XkCPdWFT5kc1DYBJ9oz3EuqTOxdHp24juUlvBLbDzkVdi72E2rbwun6BQtlMsmHZc+xX2jam0YD5w1hTgCEc=;
	7:4ptWVYWnPVccjuFLAtXDuHtT/6VlrGgGyXc753XO5yXZ1fihOY+PUy+QWSLeDbdY6SRrzf+gLbU9LjY7g2ZB5383V++ARo8Co7HXntKq9A1YbEbPxDdQfyTlavdlWn96+d8eugrQWdowTEZfiu+O1scT3qxgLoh0esMKaSakYPlMVKFp3+KuVa+pcOYAowvH33wj1ZGeW0cCDIaDRb/bIfU1bzoULOGKRMvOUIRp2giss55un2iS4ptIxb+nI4ZZRnQJkzcd+p4VMP6W6QoQ9Vy+s+josbji+u0aZUk2iZi2LVwrTN/LOnsp2PFdx3Mg9I6p1BkLyU+66e8qy64FOw==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR01HT211;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:; 
x-ms-office365-filtering-correlation-id: 4a34bab4-db39-48a7-acbd-08d3f5e294ac
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:VE1EUR01HT211;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR01HT211; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR01HT211; 
x-forefront-prvs: 00979FCB3A
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2016 16:36:29.3849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT211
X-OriginalArrivalTime: 16 Oct 2016 16:36:44.0083 (UTC)
	FILETIME=[7AE4E030:01D227CB]
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
X-List-Received-Date: Sun, 16 Oct 2016 16:36:48 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883F6345C1719BA2438FD7892D10HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883F6345C1719BA2438FD7892D10HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I wrote a mistake in my first post.


I meant:


In the mesa-gl work dir, I can find:

./tmp/work/xxx/mesa-gl-xxx/usr/include/GL/
./tmp/work/xxx/mesa-gl-xxx/usr/include/GL/GL
./tmp/work/xxx/mesa-gl-xxx/usr/include/GL/GLES
./tmp/work/xxx/mesa-gl-xxx/usr/include/GL/GLES2
./tmp/work/xxx/mesa-gl-xxx/usr/include/GL/GLES3
with all sub files...



________________________________
De : yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de la =
part de Karim ATIKI <karim_atiki@hotmail.com>
Envoy=E9 : dimanche 16 octobre 2016 17:45
=C0 : yocto
Objet : [yocto] [raspberrypi3] Failed to build core-image-minimal with Qt5 =
support (GL/gl.h not found)


Hi all,


I'm trying to a build a core-image-minimal for my RaspberryPi3 with Qt5 sup=
port.

I'm working with Poky Krogth  and master branches of meta-qt5 and meta-rasp=
berrypi.


The build failed at qtbase do_configure().

It reports


"| checking for OpenGL...
| Cannot read /home/kai/yocto/build-rpi3-minimal/tmp/work/cortexa7hf-neon-v=
fpv4-poky-linux-gnueabi/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0/git/mkspecs/o=
e-device-extra.pri: No such file or directory
| arm-poky-linux-gnueabi-g++  -march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4  -m=
float-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home/kai/yocto/build-rpi3-m=
inimal/tmp/sysroots/raspberrypi3 -c -pipe  -O2 -pipe -g -feliminate-unused-=
debug-types -fdebug-prefix-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/wor=
k/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/qtbase/5.7.0+gitAUTOINC+69b43e74=
d7-r0=3D/usr/src/debug/qtbase/5.7.0+gitAUTOINC+69b43e74d7-r0 -fdebug-prefix=
-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/x86_64-linux=3D -fde=
bug-prefix-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/raspberryp=
i3=3D  -fvisibility-inlines-hidden -O2 -Wall -W -fPIC  -I../../../../git/co=
nfig.tests/unix/opengldesktop -I. -I../../../../git/mkspecs/linux-oe-g++ -o=
 opengldesktop.o ../../../../git/config.tests/unix/opengldesktop/opengldesk=
top.cpp

| ../../../../git/config.tests/unix/opengldesktop/opengldesktop.cpp:43:19: =
fatal error: GL/gl.h: No such file or directory

|  #include <GL/gl.h>
"

The OpenGL header files are not there.
However, I've setup my local.conf as follow:

DISTRO_FEATURES_remove =3D " x11 wayland"
DISTRO_FEATURES_append =3D " opengl"


IMAGE_INSTALL_append =3D "  qtbase \
  kernel-modules \
  qtdeclarative \
  qtmultimedia \
  qtsvg \
  qtsensors \
  qtimageformats \
  qtsystems \
  qtscript \
  qt3d \
  qtconnectivity \
  qtlocation \
  cinematicexperience \
  qtgraphicaleffects \
  qtquick1 \
  qtwebkit \
  binutils \
"

Is there something missing ?
In addition, during the build, I saw "mesa-gl" getting installed correctly.

But in the sysroot, I have only:

./tmp/sysroots/raspberrypi3/usr/include/GL/
./tmp/sysroots/raspberrypi3/usr/include/GL/internal/dri_interface.h

But in the mesa-gl work dir, I can find:

./tmp/sysroots/raspberrypi3/usr/include/GL/
./tmp/sysroots/raspberrypi3/usr/include/GL/GL
./tmp/sysroots/raspberrypi3/usr/include/GL/GLES
./tmp/sysroots/raspberrypi3/usr/include/GL/GLES2
./tmp/sysroots/raspberrypi3/usr/include/GL/GLES3
with all sub files...


What's wrong with the build ?


Cheers,

Karim









--_000_HE1PR01MB1883F6345C1719BA2438FD7892D10HE1PR01MB1883eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I wrote a mistake in my first post.</p>
<p><br>
</p>
<p>I meant:</p>
<p><br>
</p>
<p></p>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<i>In the mesa-gl work dir, I can find:</i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<i><br>
</i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<i><font face=3D"Calibri,Arial,Helvetica,sans-serif,Apple Color Emoji,Segoe=
 UI Emoji,NotoColorEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=
=3D"2"><span style=3D"font-size: 16px;">./tmp/work/xxx/mesa-gl-xxx/usr/incl=
ude/GL/</span></font><br>
</i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<i><font face=3D"Calibri,Arial,Helvetica,sans-serif,Apple Color Emoji,Segoe=
 UI Emoji,NotoColorEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=
=3D"2"><span style=3D"font-size: 16px;"><span style=3D"font-family: Calibri=
, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe =
UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android =
Emoji&quot;, EmojiSymbols; font-size: 16px;">./tmp/</span><span style=3D"fo=
nt-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&q=
uot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quo=
t;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">work/xxx/mes=
a-gl-xxx</span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;">/</span>usr/include/GL/GL</span></font><font face=3D"Ca=
libri,Arial,Helvetica,sans-serif,Apple Color Emoji,Segoe UI Emoji,NotoColor=
Emoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=3D"2"><span style=3D=
"font-size: 16px;"><br>
</span></font></i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<i><font face=3D"Calibri,Arial,Helvetica,sans-serif,Apple Color Emoji,Segoe=
 UI Emoji,NotoColorEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=
=3D"2"><span style=3D"font-size: 16px;"><span style=3D"font-family: Calibri=
, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe =
UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android =
Emoji&quot;, EmojiSymbols; font-size: 16px;">./tmp/</span><span style=3D"fo=
nt-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&q=
uot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quo=
t;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">work/xxx/mes=
a-gl-xxx</span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;">/</span>usr/include/GL/GLES</span></font><font face=3D"=
Calibri,Arial,Helvetica,sans-serif,Apple Color Emoji,Segoe UI Emoji,NotoCol=
orEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=3D"2"><span style=
=3D"font-size: 16px;"><br>
</span></font></i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<i><font face=3D"Calibri,Arial,Helvetica,sans-serif,Apple Color Emoji,Segoe=
 UI Emoji,NotoColorEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=
=3D"2"><span style=3D"font-size: 16px;"><span style=3D"font-family: Calibri=
, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe =
UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android =
Emoji&quot;, EmojiSymbols; font-size: 16px;">./tmp/</span><span style=3D"fo=
nt-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&q=
uot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quo=
t;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">work/xxx/mes=
a-gl-xxx</span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;">/</span>usr/include/GL/GLES2</span></font><font face=3D=
"Calibri,Arial,Helvetica,sans-serif,Apple Color Emoji,Segoe UI Emoji,NotoCo=
lorEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=3D"2"><span style=
=3D"font-size: 16px;"><br>
</span></font></i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<i><font face=3D"Calibri,Arial,Helvetica,sans-serif,Apple Color Emoji,Segoe=
 UI Emoji,NotoColorEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=
=3D"2"><span style=3D"font-size: 16px;"><span style=3D"font-family: Calibri=
, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe =
UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android =
Emoji&quot;, EmojiSymbols; font-size: 16px;">./tmp/</span><span style=3D"fo=
nt-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&q=
uot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quo=
t;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">work/xxx/mes=
a-gl-xxx</span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;">/</span>usr/include/GL/GLES3</span></font><font face=3D=
"Calibri,Arial,Helvetica,sans-serif,Apple Color Emoji,Segoe UI Emoji,NotoCo=
lorEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=3D"2"><span style=
=3D"font-size: 16px;"><br>
</span></font></i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<font face=3D"Calibri,Arial,Helvetica,sans-serif,Apple Color Emoji,Segoe UI=
 Emoji,NotoColorEmoji,Segoe UI Symbol,Android Emoji,EmojiSymbols" size=3D"2=
"><span style=3D"font-size: 16px;"><i>with all sub files...</i></span></fon=
t></div>
<br>
<p></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> yocto-bounces@yoctopro=
ject.org &lt;yocto-bounces@yoctoproject.org&gt; de la part de Karim ATIKI &=
lt;karim_atiki@hotmail.com&gt;<br>
<b>Envoy=E9 :</b> dimanche 16 octobre 2016 17:45<br>
<b>=C0 :</b> yocto<br>
<b>Objet :</b> [yocto] [raspberrypi3] Failed to build core-image-minimal wi=
th Qt5 support (GL/gl.h not found)</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; fo=
nt-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi all,</p>
<p><br>
</p>
<p>I'm trying to a build a core-image-minimal for my RaspberryPi3 with Qt5 =
support.</p>
<p>I'm working with Poky Krogth &nbsp;and master branches of meta-qt5 and m=
eta-raspberrypi.</p>
<p><br>
</p>
<p>The build failed at qtbase do_configure().&nbsp;</p>
<p>It reports</p>
<p><br>
</p>
<div>&quot;| checking for OpenGL...</div>
<div>| Cannot read /home/kai/yocto/build-rpi3-minimal/tmp/work/cortexa7hf-n=
eon-vfpv4-poky-linux-gnueabi/qtbase/5.7.0&#43;gitAUTOINC&#43;69b43e74d7-r0/=
git/mkspecs/oe-device-extra.pri: No such file or directory</div>
<div>| arm-poky-linux-gnueabi-g&#43;&#43; &nbsp;-march=3Darmv7ve -marm -mfp=
u=3Dneon-vfpv4 &nbsp;-mfloat-abi=3Dhard -mcpu=3Dcortex-a7 --sysroot=3D/home=
/kai/yocto/build-rpi3-minimal/tmp/sysroots/raspberrypi3 -c -pipe &nbsp;-O2 =
-pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/kai/yoct=
o/build-rpi3-minimal/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/qtba=
se/5.7.0&#43;gitAUTOINC&#43;69b43e74d7-r0=3D/usr/src/debug/qtbase/5.7.0&#43=
;gitAUTOINC&#43;69b43e74d7-r0
 -fdebug-prefix-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/sysroots/x86_6=
4-linux=3D -fdebug-prefix-map=3D/home/kai/yocto/build-rpi3-minimal/tmp/sysr=
oots/raspberrypi3=3D &nbsp;-fvisibility-inlines-hidden -O2 -Wall -W -fPIC &=
nbsp;-I../../../../git/config.tests/unix/opengldesktop
 -I. -I../../../../git/mkspecs/linux-oe-g&#43;&#43; -o opengldesktop.o ../.=
./../../git/config.tests/unix/opengldesktop/opengldesktop.cpp</div>
<div><br>
</div>
<div>| ../../../../git/config.tests/unix/opengldesktop/opengldesktop.cpp:43=
:19: fatal error: GL/gl.h: No such file or directory</div>
<div><br>
</div>
<div>| &nbsp;#include &lt;GL/gl.h&gt;</div>
<div><span style=3D"font-size:12pt">&quot;</span><br>
</div>
<div><span style=3D"font-size:12pt"><br>
</span></div>
<div>The OpenGL header files are not there.</div>
<div>However, I've setup my local.conf as follow:</div>
<div><br>
</div>
<div>
<div>DISTRO_FEATURES_remove =3D &quot; x11 wayland&quot;</div>
<div>DISTRO_FEATURES_append =3D &quot; opengl&quot;</div>
<div><br>
</div>
<div><br>
</div>
<div>IMAGE_INSTALL_append =3D &quot; &nbsp;qtbase \</div>
<div>&nbsp; kernel-modules \</div>
<div>&nbsp; qtdeclarative \</div>
<div>&nbsp; qtmultimedia \</div>
<div>&nbsp; qtsvg \</div>
<div>&nbsp; qtsensors \</div>
<div>&nbsp; qtimageformats \</div>
<div>&nbsp; qtsystems \</div>
<div>&nbsp; qtscript \</div>
<div>&nbsp; qt3d \</div>
<div>&nbsp; qtconnectivity \</div>
<div>&nbsp; qtlocation \</div>
<div>&nbsp; cinematicexperience \</div>
<div>&nbsp; qtgraphicaleffects \</div>
<div>&nbsp; qtquick1 \</div>
<div>&nbsp; qtwebkit \</div>
<div>&nbsp; binutils \</div>
<div>&quot;</div>
<div><br>
</div>
<div>Is there something missing ?</div>
<div>In addition, during the build, I saw &quot;mesa-gl&quot; getting insta=
lled correctly.</div>
<div><br>
</div>
<div>But in the sysroot, I have only:</div>
<div><br>
</div>
<div>
<div>./tmp/sysroots/raspberrypi3/usr/include/GL/</div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">./tmp/sys=
roots/raspberrypi3/usr/include/GL/</span>internal/dri_interface.h</span><br=
>
</div>
<div><br>
</div>
<div>But in the mesa-gl work dir, I can find:</div>
<div><br>
</div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">./=
tmp/sysroots/raspberrypi3/usr/include/GL/</span><br>
</div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">./tmp/sys=
roots/raspberrypi3/usr/include/GL/GL</span><br>
</span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">./tmp/sysroots/r=
aspberrypi3/usr/include/GL/GLES</span><br>
</span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"f=
ont-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;=
,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quo=
t;Android Emoji&quot;,EmojiSymbols; font-size:16px">./tmp/sysroots/raspberr=
ypi3/usr/include/GL/GLES2</span><br>
</span></span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"f=
ont-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;=
,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quo=
t;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;=
Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Andro=
id Emoji&quot;,EmojiSymbols; font-size:16px">./tmp/sysroots/raspberrypi3/us=
r/include/GL/GLES3</span><br>
</span></span></span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"f=
ont-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;=
,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quo=
t;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;=
Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Andro=
id Emoji&quot;,EmojiSymbols; font-size:16px">with
 all sub files...</span></span></span></span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"f=
ont-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;=
,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quo=
t;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;=
Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Andro=
id Emoji&quot;,EmojiSymbols; font-size:16px"><br>
</span></span></span></span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"f=
ont-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;=
,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quo=
t;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;=
Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Andro=
id Emoji&quot;,EmojiSymbols; font-size:16px"><br>
</span></span></span></span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"f=
ont-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;=
,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quo=
t;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;=
Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Andro=
id Emoji&quot;,EmojiSymbols; font-size:16px">What's
 wrong with the build ?</span></span></span></span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"f=
ont-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;=
,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quo=
t;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoji&quot;,&quot;=
Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Andro=
id Emoji&quot;,EmojiSymbols; font-size:16px"><br>
</span></span></span></span></span></div>
<div><br>
</div>
<div>Cheers,</div>
<div><br>
</div>
<div>Karim</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<br>
</div>
<div><br>
</div>
<div><br>
</div>
<br>
</div>
<p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB1883F6345C1719BA2438FD7892D10HE1PR01MB1883eurp_--
