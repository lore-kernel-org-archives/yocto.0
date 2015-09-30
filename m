Return-Path: <smcas_m@yahoo.com.mx>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 916A1E00C02; Wed, 30 Sep 2015 10:14:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (smcas_m[at]yahoo.com.mx)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [67.195.87.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm46-vm9.bullet.mail.gq1.yahoo.com
	(nm46-vm9.bullet.mail.gq1.yahoo.com [67.195.87.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8999E00A26
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 10:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com.mx; s=s2048;
	t=1443633281; bh=yayYXW8QS89L4hpoFtsfD4BT9ez7LN6nDNQelwSEgdo=;
	h=Date:From:Subject:To:Cc:In-Reply-To:From:Subject;
	b=ULQC3RfRSSMlE+FiiiATH7bfgY9R6sNhcpeMpPj42caznlUtvwnhEc6+YckJolEIuB67jJRYDnIlUD/S1qH68ui5GaTV5Ec88CvKxXQt8AVc5y1jR1+d99564zjq2C3NC7Jx/LKiAuUIeXTJJ6fQeerpr771GApWSKLOr7CLlvWwbt28Rc/OJf+t0Zf0FdmagoEaacfazXQpp9nx9JUZ4XPdfWAF9NlJ4szfsJ750EKFc1QWSecmNSYmD3q7Q7700mL+qhCzE7+8evEPmenikPKo/auv+/HE3A2WCaMSz7ekSwOuGKGk3wS01pvAc/EOIeAsv0VRzOLaFYSbi4hBZw==
Received: from [127.0.0.1] by nm46.bullet.mail.gq1.yahoo.com with NNFMP;
	30 Sep 2015 17:14:41 -0000
Received: from [98.137.12.188] by nm46.bullet.mail.gq1.yahoo.com with NNFMP;
	30 Sep 2015 17:11:58 -0000
Received: from [98.139.170.178] by tm9.bullet.mail.gq1.yahoo.com with NNFMP;
	30 Sep 2015 17:11:58 -0000
Received: from [98.139.212.205] by tm21.bullet.mail.bf1.yahoo.com with NNFMP;
	30 Sep 2015 17:11:58 -0000
Received: from [127.0.0.1] by omp1014.mail.bf1.yahoo.com with NNFMP;
	30 Sep 2015 17:11:58 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 107699.26547.bm@omp1014.mail.bf1.yahoo.com
Received: (qmail 87549 invoked by uid 60001); 30 Sep 2015 17:11:58 -0000
X-YMail-OSG: .qlG1qIVM1l6owDgOGL8aw5vJRFSRin3NqsDgAgGGja9keU
	5UWpXG6x7.vU6tEwpfhW7bIoiHhVtv7JXEQArRwYAAk4y2GHxaW6eAs3Mkwc
	BcXYmQvXbzJaVgXCFz_jGz3RsMfUgCEI91gCaprl8P06wbOM33C1vxe3_PZ0
	x7CuUHKUMRVawWbyBneIIcLYvZc9JImbGu1T0CpvD0DRN_R9jxXYvFHeWPv1
	vNkJmA5lKXOiO7mDphIyk1msNPt8_knNIkzJp7Q42U8aMllBXeRxMNn3Hrde
	T4Q00A2bz3MNu_ljjolwYL3tunWw3PeyOvLLAxjvWkNGQzBQvOcHoMsYCGkO
	.XQ0e7X_u5Tq6V9NZ94Ay4W_QYKNKysU2_f_teZJKCS7EpxGjFrQjhOwokp8
	KqZLp7DwjQv7sn4gQ63lZ_bU.fSXfnPZElFZAvCmPGIhDg6kEEl.LE_aILWD
	w3jUa2Y3QbDZ_c5pZszWW_4LZbiXllv93BQVrdYYXHerTjPdPJPVONmD9hER
	SO6VHphwSjf1bM.eGSM9lnkG_biNUkrSMqhmUzLpgUP5L3P1s22CCsWqtZbb
	M2mFcrZkBsfjHAnBeDW4-
Received: from [50.242.122.181] by web162605.mail.bf1.yahoo.com via HTTP;
	Wed, 30 Sep 2015 10:11:57 PDT
X-Rocket-MIMEInfo: 002.001,
	SGkgSnVzc2llLA0KDQpUaGFua3MgZm9yIHlvdXIgaGVscCBhbmQgaGludHMuICBJIHdhcyBhYmxlIHRvIGZpbmQgYSBzb2x1dGlvbi4NCg0KRm9yIHRob3NlIGludGVyZXN0ZWQsIHRoZSByZWNpcGUgaXMgc2hvd24gYmVsb3c6DQoNCiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09DQogDQogUkVDSVBFDQogDQogUmVjaXBlIG5hbWUgPT4gc2ltcGxlbGliXzAuMS4xLmJiDQogDQogPT09PT09PT09PT09PT09PT09PT09PT09PT09DQogREVTQ1JJUFRJT04gPSAiU2ltcGxlIExpYnJhcnkgb24geW9jdG8iDQoBMAEBAQE-
X-Mailer: YahooMailBasic/747 YahooMailWebService/0.8.203.817
Message-ID: <1443633117.82207.YahooMailBasic@web162605.mail.bf1.yahoo.com>
Date: Wed, 30 Sep 2015 10:11:57 -0700
From: Simon Castillo <smcas_m@yahoo.com.mx>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
In-Reply-To: <CAHiDW_Hs_nUQrPzAbK-8rGgrFY5_MGbc6cgtSQeFKrtj=O0c-Q@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to create and install a library in yocto -- Hello Library
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
X-List-Received-Date: Wed, 30 Sep 2015 17:14:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Jussie,

Thanks for your help and hints.  I was able to find a solution.

For those interested, the recipe is shown below:

 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
=20
 RECIPE
=20
 Recipe name =3D> simplelib_0.1.1.bb
=20
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
 DESCRIPTION =3D "Simple Library on yocto"
 LICENSE =3D "GPLv2"
 LIC_FILES_CHKSUM =3D
 "file://LICENSE;md5=3Dc0b0999e102092552f1dfe93fb9b0068"
=20
PR =3D "r0"
=20
 SRC_URI =3D "file://simplelib.zip"
 S =3D "${WORKDIR}/simplelib/"
=20
 PACKAGES =3D "${PN} ${PN}-dev ${PN}-dbg ${PN}-staticdev"

RDEPENDS_${PN}-staticdev =3D ""
RDEPENDS_${PN}-dev =3D ""
RDEPENDS_${PN}-dbg =3D ""
=20
 do_compile(){
=20
         ${CC} -c calc_mean.c -o calc_mean.o
=20
         ${AR} rcs libmean.a calc_mean.o
=20
 }
=20
=20
=20
 do_install{
=20
         install -d ${D}${libdir}
=20
         install -m 0644 libmean.a ${D}${libdir}
=20
 }
=20
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

At local.conf add the library as

IMAGE_INSTALL_append =3D "simplelib-staticdev"

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Again, thanks to Jussie for the help.

Regards!

--------------------------------------------
On Wed, 9/30/15, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

 Subject: Re: [yocto] How to create and install a library in yocto -- Hello=
 Library
 To: "Simon Castillo" <smcas_m@yahoo.com.mx>
 Cc: "Yocto Project" <yocto@yoctoproject.org>
 Date: Wednesday, September 30, 2015, 5:08 AM
=20
=20
=20
 On 30
 September 2015 at 04:28, Simon Castillo <smcas_m@yahoo.com.mx>
 wrote:
 Hello
 to all,
=20
=20
=20
 I have searching for a way to include a library-only in
 yocto.=C2=A0 I found couple links with suggestions but I was
 unsuccessful in the to package it in the final image.=C2=A0
 Reading the yocto documentation, I see a paragraph
 mentioning about static libraries but there is no
 examples.
=20
=20
=20
 =C2=A0I will try to be precise with the hopes to find help to
 tackle this issue.
=20
=20
=20
 NOTE:=C2=A0 =C2=A0Couple steps like creating a LICENSE file, crate
 the layer and update the local.conf file are omitted
=20
=20
=20
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
=20
 The problem:
=20
 - Creating a library that it is desired to be part of the
 final image (for example core-image-base, core-image-sato).
 No application, only a library
=20
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
=20
 Test scenario:
=20
=20
=20
 Let's say that we desire to create a simple library
 called simple lib.
=20
=20
=20
 The source code is as follows (taken from this link [http://www.adp-gmbh.c=
h/cpp/gcc/create_lib.html],
 copied here just for convenience)
=20
=20
=20
 calc_mean.c
=20
 //#include <stdio.h>
=20
=20
=20
 double mean(double a, double b) {
=20
 =C2=A0 return (a+b) / 2;
=20
 }
=20
=20
=20
 calc_mean.h
=20
 double mean(double, double);
=20
=20
=20
 Now we want to create a recipe that can compile, create a
 library and can be included in the final image (let's
 assume core-image-base)
=20
=20
=20
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
=20
 RECIPE
=20
 Recipe name =3D> simplelib_0.1.0.bb
=20
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
=20
=20
=20
 DESCRIPTION =3D "Simple Library on yocto"
=20
 LICENSE =3D "GPLv2"
=20
 LIC_FILES_CHKSUM =3D
 "file://LICENSE;md5=3Dc0b0999e102092552f1dfe93fb9b0068"
=20
=20
=20
 PR =3D "r0"
=20
 SRC_URI =3D "file://simplelib.zip"
=20
=20
=20
 S =3D "${WORKDIR}/simplelib/"
=20
=20
=20
 do_compile(){
=20
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${CC} -c calc_mean.c -o calc_mean.o
=20
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${AR} rcs libmean.a calc_mean.o
=20
 }
=20
=20
=20
 do_install{
=20
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${libdir}
=20
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 libmean.a ${D}${libdir}
=20
 }
=20
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
 Test results for RECIPE:
=20
=20
=20
 $ bitbake simplelib
=20
=20
=20
 RUNS without any problem.=C2=A0 The files generated are shown
 below
=20
=20
=20
 =E2=94=9C=E2=94=80=E2=94=80 configure.sstate
=20
 =E2=94=9C=E2=94=80=E2=94=80 deploy-ipks
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 cortexa8hf-vfp-neon
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80
 simplelib-dbg_0.1.0-r0_cortexa8hf-vfp-neon.ipk
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80
 simplelib-dev_0.1.0-r0_cortexa8hf-vfp-neon.ipk
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80
 simplelib-staticdev_0.1.0-r0_cortexa8hf-vfp-neon.ipk
=20
 =E2=94=9C=E2=94=80=E2=94=80 image
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 usr
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 lib
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=
=E2=94=80 libmean.a
=20
 =E2=94=9C=E2=94=80=E2=94=80 license-destdir
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 simplelib
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 gener=
ic_GPLv2
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 LICEN=
SE
=20
 =E2=94=9C=E2=94=80=E2=94=80 package
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 usr
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 lib
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=
=E2=94=80 libmean.a
=20
 =E2=94=9C=E2=94=80=E2=94=80 packages-split
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-dbg
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-dev
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-doc
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-locale
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 simplelib-staticdev
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 usr
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=
=E2=94=80 lib
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=
=94=94=E2=94=80=E2=94=80 libmean.a
=20
 =E2=94=9C=E2=94=80=E2=94=80
 pkgdata
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 runtime
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 si=
mplelib
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 si=
mplelib-dbg
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 si=
mplelib-dbg.packaged
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 si=
mplelib-dev
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 si=
mplelib-dev.packaged
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 si=
mplelib-doc
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 si=
mplelib-locale
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 si=
mplelib-staticdev
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 si=
mplelib-staticdev.packaged
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 runtime-reverse
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 si=
mplelib-dbg ->
 ../runtime/simplelib-dbg
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 si=
mplelib-dev ->
 ../runtime/simplelib-dev
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 si=
mplelib-staticdev ->
 ../runtime/simplelib-staticdev
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 runtime-rprovides
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 shlibs2
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 simplelib
=20
 =E2=94=9C=E2=94=80=E2=94=80 pseudo
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 files.db
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 logs.db
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 pseudo.lock
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 pseudo.log
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 pseudo.pid
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 pseudo.socket
=20
 =E2=94=9C=E2=94=80=E2=94=80 simplelib
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 calc_mean.c
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 calc_mean.h
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 calc_mean.o
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 libmean.a
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 LICENSE
=20
 =E2=94=9C=E2=94=80=E2=94=80 sysroot-destdir
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sysroot-providers
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 si=
mplelib
=20
 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 usr
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 lib
=20
 =E2=94=82=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=
=E2=94=80 libmean.a
=20
=20
=20
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
 Test result to include library in the image
=20
=20
=20
 $ bitbake core-image-base
=20
=20
=20
 FAILS,
=20
=20
=20
 =C2=A0* opkg_install_cmd: Cannot install package simplelib.
=20
=20
=20
 ERROR: Function failed: do_rootfs
=20
=20
=20
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
 TRY ONE,
=20
=20
=20
 Change the recipe and add RDEPENDS_${PN}-dev =3D
 ""=C2=A0 as suggested by https://lists.yoctoproject.org/pipermail/yocto/20=
14-September/021676.html
=20
=20
=20
 FAILS, same error
=20
 =C2=A0* opkg_install_cmd: Cannot install package simplelib.
=20
=20
 This really
 should help: your problem is probably that the actual
 simplelib package is not created (because there are no files
 to put into it), but the -dev package still RDEPENDS on it
 by default. The log file might give you more details though.
 =C2=A0"grep RDEPENDS pkgdata/runtime/*" in work
 directory should show what the RDEPENDS are.
 How are you adding the library to
 your image? You should be adding the package
 "simplelib-staticdev" to it (assuming you really
 only want a static .a).
 =C2=A0
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
 TRY TWO
=20
=20
=20
 Modify recipe adding below lines (based on http://stackoverflow.com/questi=
ons/28792597/how-to-add-a-new-library-using-yocto)
=20
=20
=20
 PACKAGES =3D "${PN} ${PN}-dev ${PN}-dbg
 ${PN}-staticdev"
=20
=20
=20
 FILES_${PN} =3D " \
=20
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdir}/simplelib/ \
=20
 "=C2=A0
 FAILS, same error
=20
 =C2=A0* opkg_install_cmd: Cannot install package simplelib.
=20
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
 This SO question was fixing a
 slightly different problem: adding any files to=C2=A0FILES_${PN}
 would solve your problem as well (because the ${PN} package
 would then exist) but the files you refer to do not exist so
 nothing is added...=C2=A0
 I am sure that it is something
 simple and common that many have done in the past but
 unfortunately I can not find an example on how to do it.=C2=A0
 Hope somebody could provide a hint on how to fix this
 problem.
=20
=20
 Hope
 that helps,=C2=A0
 Jussi=C2=A0

