Return-Path: <smcas_m@yahoo.com.mx>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FC8CE00D56; Tue, 29 Sep 2015 18:30:55 -0700 (PDT)
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
	*      [98.138.229.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm33-vm6.bullet.mail.ne1.yahoo.com
	(nm33-vm6.bullet.mail.ne1.yahoo.com [98.138.229.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3790FE00927
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 18:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com.mx; s=s2048;
	t=1443576649; bh=SiTJOYpxZfBNoBHJm39ux2jbrdviLQIhZdkHwqBnfFs=;
	h=Date:From:Subject:To:From:Subject;
	b=WQaIQcHl1zjLbQVKIXOz7nMTRBj8/VgvClfCIYZ5i0jaxizGX5frwoWa2gWeCn0hsznvpN622Ix2zDRB4h5kTk2NZ8E1QuLFrKuHdLIcUOgI90mVb9YUosq9SpgitbDwUHI41GxAVUqq0oqwGKMrDgK0BlYdPgV1ppNU9JIxKycxdkkbImzOoDOGSsoQKeAoRd+7SLFQO43e6BZuHykZXXKB9fz4sScUKlcEFTz6DPH43dmjEn4mel8bNOVzxV1DGzqIDqJwMzTmGX4CygCh9ryNk/OPcfCJUotRcLkVmFbYnZTSoJjBX5Dy43ei4GLdr28kfnHJuj2RkpEidx0TWw==
Received: from [127.0.0.1] by nm33.bullet.mail.ne1.yahoo.com with NNFMP;
	30 Sep 2015 01:30:49 -0000
Received: from [98.138.101.132] by nm33.bullet.mail.ne1.yahoo.com with NNFMP;
	30 Sep 2015 01:28:01 -0000
Received: from [98.139.170.179] by tm20.bullet.mail.ne1.yahoo.com with NNFMP;
	30 Sep 2015 01:28:01 -0000
Received: from [98.139.212.229] by tm22.bullet.mail.bf1.yahoo.com with NNFMP;
	30 Sep 2015 01:28:01 -0000
Received: from [127.0.0.1] by omp1038.mail.bf1.yahoo.com with NNFMP;
	30 Sep 2015 01:28:00 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 997760.55829.bm@omp1038.mail.bf1.yahoo.com
Received: (qmail 75115 invoked by uid 60001); 30 Sep 2015 01:28:00 -0000
X-YMail-OSG: lqfwUs4VM1mP1.v.hsq4akO8fOJE.qCMZUtLMOyI37ZbeQA
	vJTNHIkRV9ekblqjUA0Idci.4Be1Mz_rcC8ndoBUuMah1GHTERGbHOh1xbNC
	k7A7EdUIJm35CoSmN7s8dL6.FM4zvteqRDBcXKBGlLvNmSERBR4UZAOMYACa
	.IOtzGyhLFY.m53dz3d0t8qhAhiNd6vsFHx3zapMzwXQ5EHdLdDeFbpA58KO
	LDaW8FHBjjCxb59oN4w5zT1eDTcy8omdlbVSCBy8oo8FHFIpuovpnGBEHrkm
	sfrKnatz003wA3G6QSr57jwOwVsA2PkoOdSP7p_afDcK7t8ry6CIW2RbsH4w
	0QwO6NLhMgZBlEiTmqK8KHI9TAR9u6aQ_BaDQ9OSF5WhAESrSK2iSimz2c8I
	0TVmq.cfUhoc5jeJzwvirARcafy61jB9ca06oMORfbCjW5LS141z3CW8soXF
	F4Cs99jG11Pq4i8gtLvdS42K6sLBvA4d7uOP_lqYss7DXNxg48Z_3izeM5rZ
	3G_Kd6i2DFa00PofYjGgzlPjw_U8NIINFzShlGis6XBZRGJbDnUDQFJduUDI
	MqfZxO6M-
Received: from [50.242.122.181] by web162601.mail.bf1.yahoo.com via HTTP;
	Tue, 29 Sep 2015 18:28:00 PDT
X-Rocket-MIMEInfo: 002.001,
	SGVsbG8gdG8gYWxsLA0KDQpJIGhhdmUgc2VhcmNoaW5nIGZvciBhIHdheSB0byBpbmNsdWRlIGEgbGlicmFyeS1vbmx5IGluIHlvY3RvLiAgSSBmb3VuZCBjb3VwbGUgbGlua3Mgd2l0aCBzdWdnZXN0aW9ucyBidXQgSSB3YXMgdW5zdWNjZXNzZnVsIGluIHRoZSB0byBwYWNrYWdlIGl0IGluIHRoZSBmaW5hbCBpbWFnZS4gIFJlYWRpbmcgdGhlIHlvY3RvIGRvY3VtZW50YXRpb24sIEkgc2VlIGEgcGFyYWdyYXBoIG1lbnRpb25pbmcgYWJvdXQgc3RhdGljIGxpYnJhcmllcyBidXQgdGhlcmUgaXMgbm8gZXhhbXABMAEBAQE-
X-Mailer: YahooMailBasic/747 YahooMailWebService/0.8.203.817
Message-ID: <1443576480.45410.YahooMailBasic@web162601.mail.bf1.yahoo.com>
Date: Tue, 29 Sep 2015 18:28:00 -0700
From: Simon Castillo <smcas_m@yahoo.com.mx>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Subject: How to create and install a library in yocto -- Hello Library
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
X-List-Received-Date: Wed, 30 Sep 2015 01:30:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello to all,

I have searching for a way to include a library-only in yocto.  I found cou=
ple links with suggestions but I was unsuccessful in the to package it in t=
he final image.  Reading the yocto documentation, I see a paragraph mention=
ing about static libraries but there is no examples.=20

 I will try to be precise with the hopes to find help to tackle this issue.

NOTE:   Couple steps like creating a LICENSE file, crate the layer and upda=
te the local.conf file are omitted

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
The problem:
- Creating a library that it is desired to be part of the final image (for =
example core-image-base, core-image-sato). No application, only a library
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
Test scenario:

Let's say that we desire to create a simple library called simple lib.

The source code is as follows (taken from this link [http://www.adp-gmbh.ch=
/cpp/gcc/create_lib.html], copied here just for convenience)

calc_mean.c
//#include <stdio.h>

double mean(double a, double b) {
  return (a+b) / 2;
}

calc_mean.h
double mean(double, double);

Now we want to create a recipe that can compile, create a library and can b=
e included in the final image (let's assume core-image-base)

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
RECIPE
Recipe name =3D> simplelib_0.1.0.bb
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

DESCRIPTION =3D "Simple Library on yocto"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dc0b0999e102092552f1dfe93fb9b0068=
"

PR =3D "r0"
SRC_URI =3D "file://simplelib.zip"

S =3D "${WORKDIR}/simplelib/"

do_compile(){
        ${CC} -c calc_mean.c -o calc_mean.o
        ${AR} rcs libmean.a calc_mean.o
}

do_install{
        install -d ${D}${libdir}
        install -m 0644 libmean.a ${D}${libdir}
}
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Test results for RECIPE:

$ bitbake simplelib

RUNS without any problem.  The files generated are shown below

=E2=94=9C=E2=94=80=E2=94=80 configure.sstate
=E2=94=9C=E2=94=80=E2=94=80 deploy-ipks
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 cortexa8hf-vfp-neon
=E2=94=82=C2=A0=C2=A0     =E2=94=9C=E2=94=80=E2=94=80 simplelib-dbg_0.1.0-r=
0_cortexa8hf-vfp-neon.ipk
=E2=94=82=C2=A0=C2=A0     =E2=94=9C=E2=94=80=E2=94=80 simplelib-dev_0.1.0-r=
0_cortexa8hf-vfp-neon.ipk
=E2=94=82=C2=A0=C2=A0     =E2=94=94=E2=94=80=E2=94=80 simplelib-staticdev_0=
.1.0-r0_cortexa8hf-vfp-neon.ipk
=E2=94=9C=E2=94=80=E2=94=80 image
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 usr
=E2=94=82=C2=A0=C2=A0     =E2=94=94=E2=94=80=E2=94=80 lib
=E2=94=82=C2=A0=C2=A0         =E2=94=94=E2=94=80=E2=94=80 libmean.a
=E2=94=9C=E2=94=80=E2=94=80 license-destdir
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 simplelib
=E2=94=82=C2=A0=C2=A0     =E2=94=9C=E2=94=80=E2=94=80 generic_GPLv2
=E2=94=82=C2=A0=C2=A0     =E2=94=94=E2=94=80=E2=94=80 LICENSE
=E2=94=9C=E2=94=80=E2=94=80 package
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 usr
=E2=94=82=C2=A0=C2=A0     =E2=94=94=E2=94=80=E2=94=80 lib
=E2=94=82=C2=A0=C2=A0         =E2=94=94=E2=94=80=E2=94=80 libmean.a
=E2=94=9C=E2=94=80=E2=94=80 packages-split
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-dbg
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-dev
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-doc
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 simplelib-locale
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 simplelib-staticdev
=E2=94=82=C2=A0=C2=A0     =E2=94=94=E2=94=80=E2=94=80 usr
=E2=94=82=C2=A0=C2=A0         =E2=94=94=E2=94=80=E2=94=80 lib
=E2=94=82=C2=A0=C2=A0             =E2=94=94=E2=94=80=E2=94=80 libmean.a
=E2=94=9C=E2=94=80=E2=94=80 pkgdata
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 runtime
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dbg
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dbg.packaged
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dev
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dev.packaged
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-doc
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-locale
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-staticdev
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 sim=
plelib-staticdev.packaged
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 runtime-reverse
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dbg -> ../runtime/simplelib-dbg
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sim=
plelib-dev -> ../runtime/simplelib-dev
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 sim=
plelib-staticdev -> ../runtime/simplelib-staticdev
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 runtime-rprovides
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 shlibs2
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 simplelib
=E2=94=9C=E2=94=80=E2=94=80 pseudo
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 files.db
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 logs.db
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 pseudo.lock
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 pseudo.log
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 pseudo.pid
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 pseudo.socket
=E2=94=9C=E2=94=80=E2=94=80 simplelib
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 calc_mean.c
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 calc_mean.h
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 calc_mean.o
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 libmean.a
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 LICENSE
=E2=94=9C=E2=94=80=E2=94=80 sysroot-destdir
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sysroot-providers
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 sim=
plelib
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 usr
=E2=94=82=C2=A0=C2=A0     =E2=94=94=E2=94=80=E2=94=80 lib
=E2=94=82=C2=A0=C2=A0         =E2=94=94=E2=94=80=E2=94=80 libmean.a

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Test result to include library in the image

$ bitbake core-image-base

FAILS,

 * opkg_install_cmd: Cannot install package simplelib.

ERROR: Function failed: do_rootfs

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
TRY ONE,

Change the recipe and add RDEPENDS_${PN}-dev =3D ""  as suggested by https:=
//lists.yoctoproject.org/pipermail/yocto/2014-September/021676.html

FAILS, same error
 * opkg_install_cmd: Cannot install package simplelib.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
TRY TWO

Modify recipe adding below lines (based on http://stackoverflow.com/questio=
ns/28792597/how-to-add-a-new-library-using-yocto)
=20
PACKAGES =3D "${PN} ${PN}-dev ${PN}-dbg ${PN}-staticdev"

FILES_${PN} =3D " \
        ${libdir}/simplelib/ \
"

FAILS, same error
 * opkg_install_cmd: Cannot install package simplelib.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I am sure that it is something simple and common that many have done in the=
 past but unfortunately I can not find an example on how to do it.  Hope so=
mebody could provide a hint on how to fix this problem.

Thanks


