Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A48C5E00C2A; Sun, 16 Oct 2016 08:45:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.34.212 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from COL004-OMC4S10.hotmail.com (col004-omc4s10.hotmail.com
	[65.55.34.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58976E00AB4
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 08:45:53 -0700 (PDT)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com ([65.55.34.201])
	by COL004-OMC4S10.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Sun, 16 Oct 2016 08:45:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=DXvrcVHoGgNDhZaClUXqduYalMqKWSlUxLckYFtXE/c=;
	b=txdK07eKBB2FjH86KDuByS173t1PdKA7y8q0pcejpEThZ2GKIORGAbY0YFb9MY3GxhteI28QgjLNN4b9Raf0Eelt2gOZCywTzQ72TuoQa53w3ixKM1/qDkcRW7gfBEOpFSbbE+nj66k7i40Mv20q71TAziEiUGZJEUMmUrPTMDHPirp2yHLli8dIH0RNLX6bBR4LFGtT/o/y/MLEZBWZl0A+gR4v+7UIUQwFlsRycN3o/Orji5jnBf+rf4X1lNHOMDsv0VrGfl7nCZ7AFcswZHe6AUxuH5/fMzceqpoO/XQDdgQ7BBDqaT/IIDV8gqEqLn//ZP2nVLH1tXJaeoITsg==
Received: from DB5EUR03FT054.eop-EUR03.prod.protection.outlook.com
	(10.152.20.52) by DB5EUR03HT207.eop-EUR03.prod.protection.outlook.com
	(10.152.21.249) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Sun, 16 Oct 2016 15:45:50 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.20.57) by
	DB5EUR03FT054.mail.protection.outlook.com (10.152.20.248) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.669.7 via Frontend Transport; Sun, 16 Oct 2016 15:45:50 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0669.018; Sun, 16 Oct 2016 15:45:50 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto][raspberrypi3] Failed to build core-image-minimal with
	Qt5 support (GL/gl.h not found)
Thread-Index: AQHSJ8RdGlFWLGADnkOvvbsdsaNp6Q==
Date: Sun, 16 Oct 2016 15:45:50 +0000
Message-ID: <HE1PR01MB18830C5B4949FDB8F3A42CBD92D10@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [4Syp3cszBSeprcehbvWmm816CGlkKHLB]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; DB5EUR03HT207;
	6:gFiEm/zzuyIWhNJDnSIpJHo76YXIVvQKHycCTyuV2PPWIF9IBPX13zzaldo8Yl4U11xBBgoCyno26hIno9IWgKA1LMnR8ahAC6bawIubo7bGKu/dQmRQmcZfU0m9qPzwx+U3VPk7KzmF/s87+IX9l+EZq2B+us4Str0AIO8GOEtI4iUQiVh/mWuaA2a6sK5nsYbUf8nmGzXQdLeuRuKqUI0AKrgxzONo8xgtw4G+f2CkBj3UxDjY864xdyz0eNcoq+c63psJSsbSpCk1wO1Yk2UXaazKIgUla88cTeBgZMg=;
	5:cgbYgmjbPSzAg4s6jqlxMDZztkkWtRedTZIyeDwjiPfbTOX9jzacNo2gUZYeWuRpcg9q7OkwbnfwgmXTncF/86oo63pD/MjCZKYxsUiOMet+OAevGyovoH7N6KTzp+dzHQsecsoqDVkmNBJMpzU15A==;
	24:JaMD5v19tu96iqWGvBnWdG9wxvpCqFeXLXzdeL6K6Yz3EZYkOxxbagRC8HosL8V7Rkd0FR1ADVXjWwwnCnbAEa5eA7vvOqa9zpXTuaabrTg=;
	7:tq3ZaDkCccmxMWs5/u8EANnvfRPngWhNXjAo9gzhadw8VrDGxYEvfO3JcQuByNlzHNgcxRwW4I7wvW3Cz/ao5B6MeemfzeOxm0vlG2byc+M9seLCq5xVtPrIEpmAwAP4mIA84HErPFUoSUj5PQC4PbpJ/I1JH1k2gYnNI2TscqGg3Qg0gFjkRbd8jcXYQvlFaDlZDJzm3uy/zBCUn5BGx2ETXH4SLEKnnElfbLP+U8zzghw+ZST540mmAXWNpYfNIWREuyPO1IjUU1JvfCruZjiC8EjLSgPjWlok4tUE3vUBhTMRXC+gVa3ZysnBaPee+p0zYBPasAo+RjJu7e8TeA==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5EUR03HT207;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 2be11c60-3e44-42e9-b054-08d3f5db8111
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:DB5EUR03HT207;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:DB5EUR03HT207; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR03HT207; 
x-forefront-prvs: 00979FCB3A
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2016 15:45:50.0884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT207
X-OriginalArrivalTime: 16 Oct 2016 15:45:52.0915 (UTC)
	FILETIME=[60419630:01D227C4]
Subject: [raspberrypi3] Failed to build core-image-minimal with Qt5 support (GL/gl.h not found)
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
X-List-Received-Date: Sun, 16 Oct 2016 15:45:55 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB18830C5B4949FDB8F3A42CBD92D10HE1PR01MB1883eurp_"

--_000_HE1PR01MB18830C5B4949FDB8F3A42CBD92D10HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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









--_000_HE1PR01MB18830C5B4949FDB8F3A42CBD92D10HE1PR01MB1883eurp_
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
<div><span style=3D"font-size: 12pt;">&quot;</span><br>
</div>
<div><span style=3D"font-size: 12pt;"><br>
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
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 16px;">./tmp/sysroots/raspberrypi3/usr/include/GL/</span>internal/d=
ri_interface.h</span><br>
</div>
<div><br>
</div>
<div>But in the mesa-gl work dir, I can find:</div>
<div><br>
</div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;">./tmp/sysroots/raspberrypi3/usr/include/GL/</span><br>
</div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 16px;">./tmp/sysroots/raspberrypi3/usr/include/GL/GL</span><br>
</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;">./tmp/sysroots/raspberrypi3/usr/include/GL/GLES</span><=
br>
</span></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Noto=
ColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSy=
mbols; font-size: 16px;">./tmp/sysroots/raspberrypi3/usr/include/GL/GLES2</=
span><br>
</span></span></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Noto=
ColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSy=
mbols; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvet=
ica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,=
 NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Em=
ojiSymbols; font-size: 16px;">./tmp/sysroots/raspberrypi3/usr/include/GL/GL=
ES3</span><br>
</span></span></span></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Noto=
ColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSy=
mbols; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvet=
ica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,=
 NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Em=
ojiSymbols; font-size: 16px;">with
 all sub files...</span></span></span></span></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Noto=
ColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSy=
mbols; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvet=
ica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,=
 NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Em=
ojiSymbols; font-size: 16px;"><br>
</span></span></span></span></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Noto=
ColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSy=
mbols; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvet=
ica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,=
 NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Em=
ojiSymbols; font-size: 16px;"><br>
</span></span></span></span></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Noto=
ColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSy=
mbols; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvet=
ica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,=
 NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Em=
ojiSymbols; font-size: 16px;">What's
 wrong with the build ?</span></span></span></span></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColor=
Emoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols=
; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, =
sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Noto=
ColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSy=
mbols; font-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvet=
ica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,=
 NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Em=
ojiSymbols; font-size: 16px;"><br>
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
</body>
</html>

--_000_HE1PR01MB18830C5B4949FDB8F3A42CBD92D10HE1PR01MB1883eurp_--
