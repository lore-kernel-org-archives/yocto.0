Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24F49E0077E; Fri, 16 Sep 2016 05:40:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.2.43 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (christrobridge[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from DUB004-OMC3S34.hotmail.com (dub004-omc3s34.hotmail.com
	[157.55.2.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA97DE006B3
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 05:40:36 -0700 (PDT)
Received: from DUB127-W34 ([157.55.2.8]) by DUB004-OMC3S34.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Fri, 16 Sep 2016 05:40:35 -0700
X-TMN: [kx4NgttT3ovHpxg5JNEf7nSyxAapjX1f]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB127-W345DAE7A51AB5AFFFEA9D0DAF30@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 16 Sep 2016 13:40:35 +0100
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 16 Sep 2016 12:40:35.0734 (UTC)
	FILETIME=[8581E360:01D21017]
Subject: QA Host Contamination in autotools/pkconfig based recipe
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
X-List-Received-Date: Fri, 16 Sep 2016 12:40:42 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I raised this back in April but I am back on QA review and I did not manage=
 to sort this at the time.=0A=
=0A=
I have a recipe for pjproject that produces QA host contamination warnings =
for all the library files it installs:=0A=
=0A=
pjproject: /pjproject/usr/lib/*.so.2 is owned by uid 1000=2C which is the s=
ame as the user running bitbake. This may be due to host contamination=0A=
pjproject: /pjproject-staticdev/usr/lib/*.a is owned by uid 1000=2C which i=
s the same as the user running bitbake. This may be due to host contaminati=
on=0A=
=0A=
The install line in the makefile is "cp -af $(APP_LIBXX_FILES) $(DESTDIR)$(=
libdir)/"=2C so I am at a bit of a loss as this should preserve ownership.=
=0A=
=0A=
I've included the recipe I am using.=0A=
=0A=
Regards=2C=0A=
Chris=0A=
=0A=
DESCRIPTION =3D "Open source SIP stack and media stack for presence=2C im/i=
nstant \=0A=
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0messaging=2C and multimedia communication"=
=0A=
SECTION =3D "libs"=0A=
HOMEPAGE =3D "http://www.pjsip.org/"=0A=
LICENSE =3D "GPLv2"=0A=
LIC_FILES_CHKSUM =3D "file://COPYING=3Bmd5=3Db234ee4d69f5fce4486a80fdaf4a42=
63"=0A=
=0A=
DEPENDS =3D "alsa-lib openssl"=0A=
RDEPENDS_${PN} =3D "util-linux-libuuid"=0A=
=0A=
PARALLEL_MAKE =3D ""=0A=
=0A=
SRC_URI =3D "http://www.pjsip.org/release/${PV}/pjproject-${PV}.tar.bz2 "=
=0A=
SRC_URI[md5sum] =3D "183f7144b9aa238884243c0fc52ece36"=0A=
=0A=
S =3D "${WORKDIR}/pjproject-${PV}"=0A=
=0A=
EXTRA_OECONF +=3D "--enable-shared"=0A=
=0A=
DEBUG_FLAGS =3D "-g -feliminate-unused-debug-types"=0A=
=0A=
inherit autotools pkgconfig=0A=
=0A=
B =3D "${S}"=0A=
=0A=
do_configure_prepend() {=0A=
=A0 =A0 LD=3D$CC=0A=
}=0A=
=0A=
 		 	   		  =

