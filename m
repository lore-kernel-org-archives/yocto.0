Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20A24E008D6
	for <yocto@yoctoproject.org>; Mon, 17 Mar 2014 07:13:17 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id b57so3490038eek.7
	for <yocto@yoctoproject.org>; Mon, 17 Mar 2014 07:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=M/SmDXB3fbbDTU5MGygz85ed+PHqdp4DrovjFIsqTIQ=;
	b=pkSzXO4Bqxv+fUUBnnBsmVJsBB60NAMzqUPfjZ7tdLdIcJWufdAqZIgObT28ZJYoxo
	fYoPSdMpwnFWI8SmZbegVMXZGylI2/Roz301ufEE6wUabuwnAW0BuuoLPcCyTfS02NFH
	afAFwx3cMd72jHFtR078MBNS19DvNYHErjB2liYw6lSpqJ6Vp6X4I9QHvzx0iU3AlVTV
	uATCTHYlRO01gC3+2d43PeRDzyfegYk7H6ubm3JpbXY2KH1z1Px91AAXli96MgHaSWqV
	h1dJg31ZiZ3r7LoCkWqOf6lI77sgSO0BEQazZckbzlbn8Vy7mYXc4E1yTaBXGR4bA+YZ
	3Mzg==
X-Received: by 10.14.109.201 with SMTP id s49mr3846258eeg.88.1395065596350;
	Mon, 17 Mar 2014 07:13:16 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	46sm39792475ees.4.2014.03.17.07.13.14 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Mar 2014 07:13:14 -0700 (PDT)
Date: Mon, 17 Mar 2014 15:13:33 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Gustavo Walbon <gustavowalbon@gmail.com>
Message-ID: <20140317141333.GH3725@jama>
References: <CAAU+_hRv_obVU5T4aU+aao8O=3Vj8120g2myxXXqE3=4pdwFbA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAU+_hRv_obVU5T4aU+aao8O=3Vj8120g2myxXXqE3=4pdwFbA@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: Dora vs Dylan: Poppler + Qt 4.8.5
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
X-List-Received-Date: Mon, 17 Mar 2014 14:13:18 -0000
X-Groupsio-MsgNum: 18562
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2xeD/fx0+7k8I/QN"
Content-Disposition: inline

--2xeD/fx0+7k8I/QN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 17, 2014 at 10:18:40AM -0300, Gustavo Walbon wrote:
> Hi,
>=20
> When I tried this recipe for Poppler:

Why don't you use recipe for poppler from meta-oe?

> *DESCRIPTION =3D "Poppler is a PDF rendering library based on the xpdf-3.0
> code base."*
> *HOMEPAGE =3D "http://poppler.freedesktop.org
> <http://poppler.freedesktop.org>"*
>=20
> *LICENSE =3D "GPLv2"*
> *LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D751419260aa954499f7abaabaa882=
bbe"*
> *PR =3D "r3"*
>=20
>  *SECTION =3D "x11/libs"*
>=20
> *DEPENDS =3D "qt4-x11-free jpeg zlib cairo pth libassuan libksba"*
> *RDEPENDS_${PN} =3D "poppler-data"*
>=20
> *SRC_URI =3D "http://poppler.freedesktop.org/${BPN}-${PV}.tar.gz
> <http://poppler.freedesktop.org/${BPN}-${PV}.tar.gz>"*
>=20
> *SRC_URI[md5sum] =3D "a61e3b844061f5324512a16d6d16984c" *
> *SRC_URI[sha256sum] =3D
> "b4620f645319f4a8790465730bc472d5745155d0780809406fb29c62316d49a8"*
>=20
> *inherit autotools pkgconfig*
>=20
> *EXTRA_OECONF =3D " --enable-xpdf-headers \*
> * --disable-gtk-test \*
> * --disable-qt4-test \*
> * --disable-qt-test \*
> * --enable-zlib \*
> *       "*
> *def get_poppler_fpu_setting(bb, d):*
> *    if d.getVar('TARGET_FPU', 1) in [ 'soft' ]:*
> *        return "--enable-fixedpoint"*
> *    return ""*
>=20
> *#check for TARGET_FPU=3Dsoft and inform configure of the result so it can
> disable some floating points*
> *EXTRA_OECONF +=3D "${@get_poppler_fpu_setting(bb, d)}"*
>=20
> *The error from bitbake was:*
>=20
> *| make  all-am*
> *| make[4]: Entering directory
> `/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi=
/poppler/0.20.1-r3/poppler-0.20.1/qt4/src'*
> *| ../../arm-projectos-linux-gnueabi-libtool  --tag=3DCXX   --mode=3Dlink
> arm-projectos-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork
> -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9
> --sysroot=3D/project/dora/build/tmp/sysroots/imx6qsabrelite
> -Dpoppler_qt4_EXPORTS -Wall -Woverloaded-virtual -Wnon-virtual-dtor
> -Wcast-align -fno-exceptions -fno-check-new -fno-common  -O2 -pipe -g
> -feliminate-unused-debug-types -fpermissive -fvisibility-inlines-hidden
> -ansi -version-info 4:0:0   -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o
> libpoppler-qt4.la <http://libpoppler-qt4.la> -rpath /usr/lib
> libpoppler_qt4_la-poppler-document.lo libpoppler_qt4_la-poppler-page.lo
> libpoppler_qt4_la-poppler-fontinfo.lo
> libpoppler_qt4_la-poppler-embeddedfile.lo
> libpoppler_qt4_la-poppler-textbox.lo libpoppler_qt4_la-poppler-link.lo
> libpoppler_qt4_la-poppler-annotation.lo
> libpoppler_qt4_la-poppler-link-extractor.lo
> libpoppler_qt4_la-poppler-optcontent.lo
> libpoppler_qt4_la-poppler-page-transition.lo
> libpoppler_qt4_la-poppler-sound.lo libpoppler_qt4_la-poppler-form.lo
> libpoppler_qt4_la-poppler-base-converter.lo
> libpoppler_qt4_la-poppler-ps-converter.lo
> libpoppler_qt4_la-poppler-pdf-converter.lo
> libpoppler_qt4_la-poppler-qiodeviceoutstream.lo
> libpoppler_qt4_la-poppler-private.lo libpoppler_qt4_la-poppler-movie.lo
> libpoppler_qt4_la-poppler-media.lo ../../poppler/libpoppler.la
> <http://libpoppler.la> ../../poppler/libpoppler-arthur.la
> <http://libpoppler-arthur.la> -lfontconfig  -lQtGui -lQtXml -lQtCore  -lz
> -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed*
> *| arm-projectos-linux-gnueabi-libtool: link: cannot find the library `' =
or
> unhandled argument `-DLINUX=3D1'*
> *| make[4]: *** [libpoppler-qt4.la <http://libpoppler-qt4.la>] Error 1*
> *| make[4]: Leaving directory
> `/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi=
/poppler/0.20.1-r3/poppler-0.20.1/qt4/src'*
> *| make[3]: *** [all] Error 2*
> *| make[3]: Leaving directory
> `/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi=
/poppler/0.20.1-r3/poppler-0.20.1/qt4/src'*
> *| make[2]: *** [all-recursive] Error 1*
> *| make[2]: Leaving directory
> `/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi=
/poppler/0.20.1-r3/poppler-0.20.1/qt4'*
> *| make[1]: *** [all-recursive] Error 1*
> *| make[1]: Leaving directory
> `/project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi=
/poppler/0.20.1-r3/poppler-0.20.1'*
> *| make: *** [all] Error 2*
> *| ERROR: oe_runmake failed*
> *| WARNING: exit code 1 from a shell command.*
> *| ERROR: Function failed: do_compile (log file is located at
> /project/dora/build/tmp/work/cortexa9hf-vfp-neon-projectos-linux-gnueabi/=
poppler/0.20.1-r3/temp/log.do_compile.19063)*
> *ERROR: Task 6
> (/project/dora/meta-omnimed/common/recipes-libs/poppler/poppler_0.20.1.bb
> <http://poppler_0.20.1.bb>, do_compile) failed with exit code '1'*
> *NOTE: Tasks Summary: Attempted 2274 tasks of which 2273 didn't need to be
> rerun and 1 failed.*
> *No currently running tasks (1704 of 2281)*
>=20
> *Summary: 1 task failed:*
> *  /project/dora/meta-omnimed/common/recipes-libs/poppler/poppler_0.20.1.=
bb
> <http://poppler_0.20.1.bb>, do_compile*
> *Summary: There was 1 ERROR message shown, returning a non-zero exit code=
=2E*
>=20
>=20
> In Dylan Branch this not happened, but in Dora Branch is the same recipe
> and version of Poppler.
>=20
> My application using Poppler + Qt.
>=20
>=20
>=20
> Thanks

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--2xeD/fx0+7k8I/QN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlMnAw0ACgkQN1Ujt2V2gBxIDgCfaDwk4AYN+9uDNGFxWC+sDzjj
GbkAnR//mOhy3DHTIvUrL1RI/eA1RHlm
=0XD1
-----END PGP SIGNATURE-----

--2xeD/fx0+7k8I/QN--
