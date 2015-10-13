Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DAA2E00C45; Tue, 13 Oct 2015 14:17:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0972DE009B8
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 14:17:33 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so205838879wic.1
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 14:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=hO+c4dvS+RVXwUHQXpsDO4vnqMicrM16k6nOeFnuSkw=;
	b=Y3lwMcCL5jwM0iM+zmhgi5uehFQ8UHck0ZWCm2+JwE4ahpKicMFlwV14IgIeYuzJ3T
	Jam7oJz/p2uVt4cToMicEidTnFaK4KeVyBt3ydtgUYuhnOVbNK1Upt0jKhpexiwqDpTv
	3mwT+QvSXdC+hVKQ3HkSXfuBHu8SKrvgfpOI67q3yzhg3AzurmNj9qcpNCuqd8vQomC8
	HY5W7jlJ055vhJhX9MJ0TufSQbT0li3oqfN+E+AULHJVSn/vU3XJBCfU5HBrc6LExEaR
	TY+zU7Qh282RGvbayF0kDN0qeSTFRB3Hljb0D2pco0B09j8RSNqmnynCuqbfPoO1Ok3G
	gOUw==
X-Received: by 10.194.179.137 with SMTP id dg9mr39416974wjc.55.1444771052893; 
	Tue, 13 Oct 2015 14:17:32 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	nf15sm4364912wic.22.2015.10.13.14.17.31
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Oct 2015 14:17:31 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 13 Oct 2015 23:17:37 +0200
To: Jens Rehsack <rehsack@gmail.com>
Message-ID: <20151013211737.GI2396@jama>
References: <879F0FCD-B2D4-4767-ADB4-6E479A42B25A@gmail.com>
MIME-Version: 1.0
In-Reply-To: <879F0FCD-B2D4-4767-ADB4-6E479A42B25A@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org, Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [PATCH 1/6][meta-openembedded] llvm: update 3.5.2 to have a sane ARM JIT for OpenJDK-8
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
X-List-Received-Date: Tue, 13 Oct 2015 21:17:36 -0000
X-Groupsio-MsgNum: 26816
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sl5MdczEF/OU2Miu"
Content-Disposition: inline

--sl5MdczEF/OU2Miu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 13, 2015 at 10:27:54PM +0200, Jens Rehsack wrote:
>=20
> llvm introduced new JIT technology MCJIT with llvm 3.4 and fixes ARM in 3=
=2E5
> (see http://llvm.org/releases/3.5.2/docs/ReleaseNotes.html#changes-to-the=
-arm-backend).
>=20
> Ensure JIT is built with llvm
>=20
> Signed-off-by: Jens Rehsack <sno@netbsd.org>
> ---
>  meta-oe/recipes-core/llvm/llvm.inc                 |  8 +---
>  ...r-output-from-configure-if-CFLAGS-is-set-.patch | 52 ----------------=
------
>  .../{llvm3.3 =3D> llvm3.5}/arm_fenv_uclibc.patch     |  0
>  .../llvm/{llvm3.3_3.3.bb =3D> llvm3.5_3.5.2.bb}      | 11 +++--
>  4 files changed, 9 insertions(+), 62 deletions(-)
>  delete mode 100644 meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output=
-from-configure-if-CFLAGS-is-set-.patch
>  rename meta-oe/recipes-core/llvm/{llvm3.3 =3D> llvm3.5}/arm_fenv_uclibc.=
patch (100%)
>  rename meta-oe/recipes-core/llvm/{llvm3.3_3.3.bb =3D> llvm3.5_3.5.2.bb} =
(71%)
>=20
> diff --git a/meta-oe/recipes-core/llvm/llvm.inc b/meta-oe/recipes-core/ll=
vm/llvm.inc
> index 0597be1..cc45ca7 100644
> --- a/meta-oe/recipes-core/llvm/llvm.inc
> +++ b/meta-oe/recipes-core/llvm/llvm.inc
> @@ -20,11 +20,6 @@
>  DESCRIPTION =3D "The Low Level Virtual Machine"
>  HOMEPAGE =3D "http://llvm.org"
> =20
> -# 3-clause BSD-like
> -# University of Illinois/NCSA Open Source License
> -LICENSE =3D "NCSA"
> -LIC_FILES_CHKSUM =3D "file://LICENSE.TXT;md5=3Dd0a3ef0d3e0e8f5cf59e5ffc2=
73ab1f8"
> -

Why do you move this?

Still wrong ML. Should go to openembedded-devel with [meta-oe] in
subject - the same for other patches in this set.

>  DEPENDS =3D "libffi libxml2-native llvm-common"
> =20
>  inherit perlnative pythonnative autotools
> @@ -32,7 +27,7 @@ inherit perlnative pythonnative autotools
>  LLVM_RELEASE =3D "${PV}"
>  LLVM_DIR =3D "llvm${LLVM_RELEASE}"
> =20
> -SRC_URI =3D "http://llvm.org/releases/${PV}/llvm-${PV}.src.tar.gz"
> +SRC_URI =3D "http://llvm.org/releases/${PV}/llvm-${PV}.src.tar.xz"
>  S =3D "${WORKDIR}/llvm-${PV}.src"
> =20
>  LLVM_BUILD_DIR =3D "${WORKDIR}/llvm-${PV}.build"
> @@ -42,6 +37,7 @@ EXTRA_OECONF +=3D "--disable-assertions \
>                   --enable-debug-runtime \
>                   --disable-expensive-checks \
>                   --enable-bindings=3Dnone \
> +                 --enable-jit \
>                   --enable-keep-symbols \
>                   --enable-libffi \
>                   --enable-optimized \
> diff --git a/meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output-from-c=
onfigure-if-CFLAGS-is-set-.patch b/meta-oe/recipes-core/llvm/llvm3.3/Remove=
-error-output-from-configure-if-CFLAGS-is-set-.patch
> deleted file mode 100644
> index 44387e8..0000000
> --- a/meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output-from-configur=
e-if-CFLAGS-is-set-.patch
> +++ /dev/null
> @@ -1,52 +0,0 @@
> -From d4bf7a3853dab12c11cbfc8088fd76f548a8d017 Mon Sep 17 00:00:00 2001
> -From: Patrik Hagglund <patrik.h.hagglund@ericsson.com>
> -Date: Tue, 24 Sep 2013 11:38:45 +0000
> -Subject: [PATCH] Remove error output from configure if CFLAGS is set (r1=
74313).
> -
> -This fixes PR16724.
> -
> -git-svn-id: https://llvm.org/svn/llvm-project/llvm/trunk@191289 91177308=
-0d34-0410-b5e6-96231b3b80d8
> -
> -https://github.com/llvm-mirror/llvm/commit/d4bf7a3853dab12c11cbfc8088fd7=
6f548a8d017
> -
> -Upstream-Status: Backport
> -
> -Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
> ----
> - autoconf/configure.ac | 4 ++--
> - configure             | 4 ++--
> - 2 files changed, 4 insertions(+), 4 deletions(-)
> -
> -diff --git a/autoconf/configure.ac b/autoconf/configure.ac
> -index f9c365c..45f2fe4 100644
> ---- a/autoconf/configure.ac
> -+++ b/autoconf/configure.ac
> -@@ -61,8 +61,8 @@ fi
> -=20
> - dnl Default to empty (i.e. assigning the null string to) CFLAGS and CXX=
FLAGS,
> - dnl instead of the autoconf default (for example, '-g -O2' for CC=3Dgcc=
).
> --${CFLAGS=3D}
> --${CXXFLAGS=3D}
> -+: ${CFLAGS=3D}
> -+: ${CXXFLAGS=3D}
> -=20
> - dnl We need to check for the compiler up here to avoid anything else
> - dnl starting with a different one.
> -diff --git a/configure b/configure
> -index f3a6594..9090cda 100755
> ---- a/configure
> -+++ b/configure
> -@@ -1992,8 +1992,8 @@ echo "$as_me: error: Already configured in ${srcdi=
r}" >&2;}
> -   fi
> - fi
> -=20
> --${CFLAGS=3D}
> --${CXXFLAGS=3D}
> -+: ${CFLAGS=3D}
> -+: ${CXXFLAGS=3D}
> -=20
> - ac_ext=3Dc
> - ac_cpp=3D'$CPP $CPPFLAGS'
> ---=20
> -1.9.1
> -
> diff --git a/meta-oe/recipes-core/llvm/llvm3.3/arm_fenv_uclibc.patch b/me=
ta-oe/recipes-core/llvm/llvm3.5/arm_fenv_uclibc.patch
> similarity index 100%
> rename from meta-oe/recipes-core/llvm/llvm3.3/arm_fenv_uclibc.patch
> rename to meta-oe/recipes-core/llvm/llvm3.5/arm_fenv_uclibc.patch
> diff --git a/meta-oe/recipes-core/llvm/llvm3.3_3.3.bb b/meta-oe/recipes-c=
ore/llvm/llvm3.5_3.5.2.bb
> similarity index 71%
> rename from meta-oe/recipes-core/llvm/llvm3.3_3.3.bb
> rename to meta-oe/recipes-core/llvm/llvm3.5_3.5.2.bb
> index 60a2221..7289b81 100644
> --- a/meta-oe/recipes-core/llvm/llvm3.3_3.3.bb
> +++ b/meta-oe/recipes-core/llvm/llvm3.5_3.5.2.bb
> @@ -1,14 +1,17 @@
>  require llvm.inc
> =20
> +# 3-clause BSD-like
> +# University of Illinois/NCSA Open Source License
> +LICENSE =3D "NCSA"
> +LIC_FILES_CHKSUM =3D "file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098bd=
7814d1d"
> +
>  DEPENDS +=3D "zlib"
>  EXTRA_OECONF +=3D "--enable-zlib"
> =20
> -SRC_URI +=3D "file://Remove-error-output-from-configure-if-CFLAGS-is-set=
-.patch"
> -
>  SRC_URI_append_libc-uclibc =3D " file://arm_fenv_uclibc.patch "
> =20
> -SRC_URI[md5sum] =3D "40564e1dc390f9844f1711c08b08e391"
> -SRC_URI[sha256sum] =3D "68766b1e70d05a25e2f502e997a3cb3937187a3296595cf6=
e0977d5cd6727578"
> +SRC_URI[md5sum] =3D "f5a4dc595f7e8bd23397684d0906d014"
> +SRC_URI[sha256sum] =3D "44196156d5749eb4b4224fe471a29cc3984df92570a4a89f=
a859f7394fc0c575"
> =20
>  PACKAGECONFIG ??=3D ""
>  PACKAGECONFIG[r600] =3D "--enable-experimental-targets=3DR600,,,"
> --=20
> 1.9.1
>=20
> This patch is required to apply meta-java my updates for OpenJDK 8.
>=20
> --=20
> Jens Rehsack - rehsack@gmail.com
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--sl5MdczEF/OU2Miu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlYddPAACgkQN1Ujt2V2gBweDgCgsXS9TvCCfCunER5TNO86xjiZ
AysAnjCGGOrp3t/32J4d34rXu8skPHJn
=iIV2
-----END PGP SIGNATURE-----

--sl5MdczEF/OU2Miu--
