Return-Path: <natural_groove@hotmail.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 487A8E0056A; Thu, 10 Jul 2014 02:03:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (natural_groove[at]hotmail.fr)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.55.2.27 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Jul 2014 02:03:14 PDT
Received: from DUB004-OMC3S18.hotmail.com (dub004-omc3s18.hotmail.com
	[157.55.2.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A431EE00559
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 02:03:14 -0700 (PDT)
Received: from DUB128-W3 ([157.55.2.7]) by DUB004-OMC3S18.hotmail.com with
	Microsoft SMTPSVC(7.5.7601.22701); Thu, 10 Jul 2014 02:02:05 -0700
X-TMN: [tXnrMTphrLEscWiaJ+cHTVjx4m6ek1QK]
X-Originating-Email: [natural_groove@hotmail.fr]
Message-ID: <DUB128-W333CD3D967FBE45F67D02920E0@phx.gbl>
From: Natural Groove <natural_groove@hotmail.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 10 Jul 2014 11:02:05 +0200
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 10 Jul 2014 09:02:05.0504 (UTC)
	FILETIME=[9F254C00:01CF9C1D]
Subject: crossbuild for arm :FFPLAY not build
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
X-List-Received-Date: Thu, 10 Jul 2014 09:03:18 -0000
Content-Type: multipart/alternative;
	boundary="_188baffe-1c18-41ef-bfe1-c74bdb3b533c_"

--_188baffe-1c18-41ef-bfe1-c74bdb3b533c_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2C

Im trying to crossbuild ffmpeg for arm (colibri-t20).
I wrote a simplest recipe in order to achieve this=2C but even if ffmpeg=2C=
 ffprobe and ffserver are build=2C ffplay isnt=2C i first thought that i ha=
d forgotten some dependencies but i dont see which could be missing.=20
Any idea why this isnt working?=20

The recipe:=20

SRC_URI =3D "https://www.ffmpeg.org/releases/ffmpeg-2.1.1.tar.gz"
SRC_URI[md5sum] =3D "294749b2ebdd22ef7d9b9d12a70d5b8c"
SRC_URI[sha256sum] =3D "66f521dffefcbb6c09a402f6373e6cef81fbf4284d0a33cdef9=
a19412df1dd18"
inherit autotools pkgconfig
DEPENDS =3D "yasm-native libsdl libx11 zlib libtheora libogg libass libtool=
"
S=3D"${WORKDIR}/ffmpeg-2.1.1"


inherit autotools pkgconfig

CROSS_COMPILE =3D "/home/rick/oe-core/build/out-eglibc/sysroots/i686-linux/=
usr/bin/armv7ahf-vfp-angstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-"

EXTRA_OECONF =3D "--arch=3Darm --enable-cross-compile --cross-prefix=3D${CR=
OSS_COMPILE} --target-os=3Dlinux --enable-gpl --enable-libtheora --enable-l=
ibvorbis --extra-libs=3D"-ldl" --enable-ffplay --enable-shared --enable-pic=
"  =20

do_configure() {
        ./configure ${EXTRA_OECONF}
}


Regards
Ricko

 		 	   		  =

--_188baffe-1c18-41ef-bfe1-c74bdb3b533c_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi=2C<br><br>Im trying to crossb=
uild ffmpeg for arm (colibri-t20).<br>I wrote a simplest recipe in order to=
 achieve this=2C but even if ffmpeg=2C ffprobe and ffserver are build=2C ff=
play isnt=2C i first thought that i had forgotten some dependencies but i d=
ont see which could be missing. <br>Any idea why this isnt working? <br><br=
>The recipe: <br><br>SRC_URI =3D "https://www.ffmpeg.org/releases/ffmpeg-2.=
1.1.tar.gz"<br>SRC_URI[md5sum] =3D "294749b2ebdd22ef7d9b9d12a70d5b8c"<br>SR=
C_URI[sha256sum] =3D "66f521dffefcbb6c09a402f6373e6cef81fbf4284d0a33cdef9a1=
9412df1dd18"<br>inherit autotools pkgconfig<br>DEPENDS =3D "yasm-native lib=
sdl libx11 zlib libtheora libogg libass libtool"<br>S=3D"${WORKDIR}/ffmpeg-=
2.1.1"<br><br><br>inherit autotools pkgconfig<br><br>CROSS_COMPILE =3D "/ho=
me/rick/oe-core/build/out-eglibc/sysroots/i686-linux/usr/bin/armv7ahf-vfp-a=
ngstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-"<br><br>EXTRA_OECONF =3D =
"--arch=3Darm --enable-cross-compile --cross-prefix=3D${CROSS_COMPILE} --ta=
rget-os=3Dlinux --enable-gpl --enable-libtheora --enable-libvorbis --extra-=
libs=3D"-ldl" --enable-ffplay --enable-shared --enable-pic"&nbsp=3B&nbsp=3B=
 <br><br>do_configure() {<br>&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=
=3B&nbsp=3B ./configure ${EXTRA_OECONF}<br>}<br><br><br>Regards<br>Ricko<br=
><br> 		 	   		  </div></body>
</html>=

--_188baffe-1c18-41ef-bfe1-c74bdb3b533c_--
