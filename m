Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web12.10923.1600331075859708408
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 01:24:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@basmevissen.nl header.s=default header.b=pWcEDfk8;
 spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 37A66212021;
	Thu, 17 Sep 2020 10:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basmevissen.nl;
	s=default; t=1600331070; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nlDRmlV7dw6680VbVUUmtFsE4quoO8/fLI3Hxot99/o=;
	b=pWcEDfk8cSrJ0jBg1X00ypd19+91UwIeNPPGa7UvbOxUgCJ6FRDcC/zAmn0li0iHOeWFr5
	BO1JfrW/EHoTpggkEG29O3rscmHDbW1axW5OmadYvsC3KQVFTfDkE9IRvIY6/ZrQjAlFEv
	RaKX3Eb3xIlWbaQ3NZw/+7zem9B0CC90eTakBCN73+noztEilrcFpybGRon74vE4bCBYuC
	DxrTSaT0wDwmItkpBd8ei2tn3RsruoxMXXsbGNdXNnYQ4q/iYA7aSHieX6Qnu08U01EGuA
	LCC9GtPERQquKxZ/d35r3/jG2z4VeQEFXpTEJTKHlGjjalbI/U/1+s/4yk6h1XGazpeBsS
	gicQYFG8tPq34W/46vsOFPAfFWcdEoprHtgAjsFzQ8L++SWESdXOay9VyaiLhbZkgXQWDy
	JSPnYtqY9QaN61423O9Zan9Mr/JTK97a7YTSlm+/1KoMzE82WglCDQEXS2KQWkjjEsQui6
	7OTpJ7xRtG7DMrUbfoCZoV0Jd7b9QTuzaLIe7FN2c6qaQSDbaXavloGVIqh7KFiUWy6vYl
	lvGz8238qCG9X7UFq4hTxjFUaKgugt+UreBBpyPf8f2SM1zdAes9VE/+Ntm0+ge9HMdLYI
	ofX2HCu3LwVYLySztf1tlZpLfqfWm2gfenfYcdPw2LHZ3p7ezYcxs=
MIME-Version: 1.0
Date: Thu, 17 Sep 2020 10:24:30 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] wvdial
In-Reply-To: <CAHwRhWYozz7T9j_8TbpuamuQzOSgXpLRcaEqeHS_BdYeYe2+5g@mail.gmail.com>
References: <CAHwRhWYozz7T9j_8TbpuamuQzOSgXpLRcaEqeHS_BdYeYe2+5g@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.7
Message-ID: <4e6453ce1cb4e056215b5aebf079c4d1@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2020-09-17 10:02, Zoltan Kerenyi Nagy wrote:

> Hi,
>=20
> Here is the error now, all the files are there, it says that=20
> 04_signed_request.diff is not there:
>=20
> WARNING: wvstreams-4.6.1-r0 do_fetch: Failed to fetch URL=20
> file://04_signed_request.diff, attempting MIRRORS if available
> ERROR: wvstreams-4.6.1-r0 do_fetch: Fetcher failure: Unable to find=20
> file file://04_signed_request.diff anywhere. The paths that were=20
> searched were:
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/nodistro
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/nodistro
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/nodistro
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/barix-ipam400
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/barix-ipam400
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/barix-ipam400
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/sun8i
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/sun8i
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/sun8i
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/armv7ve
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/armv7ve
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/armv7ve
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/arm
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/arm
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/arm
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams-4.6.1/
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/wvstreams/
> /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-=
connectivity/wvstreams/files/
> /home/kerenyiz/oe-core/build/downloads
> ERROR: wvstreams-4.6.1-r0 do_fetch: Fetcher failure for URL:=20
> 'file://04_signed_request.diff'. Unable to fetch URL from any source.

It is the first local file on the list, so this hints that it is=20
probably a file location issue and not a file naming one.

> ERROR: wvstreams-4.6.1-r0 do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in:=20
> /home/kerenyiz/oe-core/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-lin=
ux-gnueabi/wvstreams/4.6.1-r0/temp/log.do_fetch.8864
> ERROR: Task=20
> (/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes=
-connectivity/wvstreams/wvstreams_4.6.1.bb:do_fetch)=20
> failed with exit code '1'
>=20
> Here i sthe folder structure:
>=20
> =E2=94=9C=E2=94=80=E2=94=80 file

Here is your problem: this directory should be named "wvstreams"

> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0001-build-fix-parallel-make.pat=
ch
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0001-Check-for-limits.h-during-c=
onfigure.patch
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0001-Forward-port-to-OpenSSL-1.1=
.x.patch
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0002-wvrules.mk-Use-_DEFAULT_SOU=
RCE.patch
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0002-wvtask-Dont-use-ucontext-on=
-non-glibc-systems.patch
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0003-wvtask-Check-for-HAVE_LIBC_=
STACK_END-only-on-glibc-s.patch
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0004-wvcrash-Replace-use-of-base=
name-API.patch
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 0005-check-for-libexecinfo-durin=
g-configure.patch
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 04_signed_request.diff
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 05_gcc.diff
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 06_gcc-4.7.diff
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 07_buildflags.diff
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 argp.patch
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 gcc-6.patch
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 openssl-buildfix.patch
> =E2=94=94=E2=94=80=E2=94=80 wvstreams_4.6.1.bb
>=20
> And this is the recipie file:
>=20
> HOMEPAGE =3D "http://alumnit.ca/wiki/index.php?page=3DWvStreams"
> SUMMARY =3D "WvStreams is a network programming library in C++"
>=20
> LICENSE =3D "LGPLv2"
> LIC_FILES_CHKSUM =3D=20
> "file://LICENSE;md5=3D55ca817ccb7d5b5b66355690e9abc605"
>=20
> DEPENDS =3D "zlib openssl (>=3D 0.9.8) dbus readline"
> DEPENDS_append_libc-musl =3D " argp-standalone libexecinfo"
>=20
> SRC_URI =3D "http://${BPN}.googlecode.com/files/${BP}.tar.gz \
> file://04_signed_request.diff \
> file://05_gcc.diff \
> file://06_gcc-4.7.diff \
> file://07_buildflags.diff \
> file://gcc-6.patch \
> file://argp.patch \
> file://0001-Check-for-limits.h-during-configure.patch \
> file://0002-wvtask-Dont-use-ucontext-on-non-glibc-systems.patch \
> file://0003-wvtask-Check-for-HAVE_LIBC_STACK_END-only-on-glibc-s.patch=
=20
> \
> file://0004-wvcrash-Replace-use-of-basename-API.patch \
> file://0005-check-for-libexecinfo-during-configure.patch \
> file://0001-build-fix-parallel-make.patch \
> file://0002-wvrules.mk-Use-_DEFAULT_SOURCE.patch \
> file://openssl-buildfix.patch \
> file://0001-Forward-port-to-OpenSSL-1.1.x.patch \
> "
>=20
> SRC_URI[md5sum] =3D "2760dac31a43d452a19a3147bfde571c"
> SRC_URI[sha256sum] =3D=20
> "8403f5fbf83aa9ac0c6ce15d97fd85607488152aa84e007b7d0621b8ebc07633"
>=20
> inherit autotools-brokensep pkgconfig
>=20
> TARGET_CFLAGS_append =3D " -fno-tree-dce -fno-optimize-sibling-calls"
>=20
> LDFLAGS_append =3D " -Wl,-rpath-link,${CROSS_DIR}/${TARGET_SYS}/lib"
>=20
> EXTRA_OECONF =3D " --without-tcl --without-qt --without-pam=20
> --without-valgrind"
>=20
> PACKAGES_prepend =3D "libuniconf "
> PACKAGES_prepend =3D "uniconfd "
> PACKAGES_prepend =3D "libwvstreams-base "
> PACKAGES_prepend =3D "libwvstreams-extras "
> PACKAGES_prepend =3D "${PN}-valgrind "
>=20
> RPROVIDES_${PN}-dbg +=3D "libuniconf-dbg uniconfd-dbg=20
> libwvstreams-base-dbg libwvstreams-extras-dbg"
>=20
> FILES_libuniconf     =3D "${libdir}/libuniconf.so.*"
>=20
> FILES_uniconfd     =3D "${sbindir}/uniconfd ${sysconfdir}/uniconf.conf=
=20
> ${localstatedir}/uniconf"
>=20
> FILES_libwvstreams-base     =3D "${libdir}/libwvutils.so.*"
>=20
> FILES_libwvstreams-extras     =3D "${libdir}/libwvbase.so.*=20
> ${libdir}/libwvstreams.so.*"
>=20
> FILES_${PN}-valgrind =3D "${libdir}/valgrind/wvstreams.supp"
> RDEPENDS_${PN} +=3D "perl"
>=20
>=20


