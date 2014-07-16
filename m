Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A645BE00746; Tue, 15 Jul 2014 19:11:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FC4FE006C4
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 19:11:04 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id rl12so230590iec.29
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 19:11:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=H+w7tZsAVZv2FgPWs+grBg1cXpV9lY6rHImdvrNufQQ=;
	b=hqyDEKfFTPccQhMyEEhqcqGZd7oXjuySrsLnnsGdapYFawNRxxqo6iFcP9+jvTLfEF
	Q/ys4pg3JJ1F3J7aRP/lgbvFNJSXpXYdp8cf/ni2jS6ciKyMYiq0HO+oqMrCPEcnzhKJ
	lbDWr/f7spaOQm8qiAtH0tQx1V68ctEQQp/D7nVC2bNI6KHTPkw8+7ai3imCvdAoYU8J
	aAdHRowY0Xp3gbjvSof3Y9gTae2S/s/TfrjZb7eXs8IKdl7DKyAAaSoUqJJ4CwmYS8lL
	cIqh1CrcnIptaf/8eQZCIsEsn3cCXQUnezxJiGCpZysJdUUUR5aQyOHTVmezyHrN4Afc
	19cg==
X-Gm-Message-State: ALoCoQmiCEG8Yu9IO3wVt+Cxs9U6ZWo9A2sAtT1UM98ya1jrsPYH8Jwu/fiH74Tsk2G6DVPxjXVU
X-Received: by 10.50.25.71 with SMTP id a7mr11385153igg.17.1405476663834;
	Tue, 15 Jul 2014 19:11:03 -0700 (PDT)
Received: from skynet (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id z12sm2460093igu.11.2014.07.15.19.11.02
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Jul 2014 19:11:03 -0700 (PDT)
Received: by skynet (Postfix, from userid 1000)
	id D6F241685E4; Tue, 15 Jul 2014 22:11:01 -0400 (EDT)
Date: Tue, 15 Jul 2014 22:11:01 -0400
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Message-ID: <20140716021100.GA13248@deserted.net>
References: <1405476199-7759-1-git-send-email-joe_macdonald@mentor.com>
MIME-Version: 1.0
In-Reply-To: <1405476199-7759-1-git-send-email-joe_macdonald@mentor.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [meta-selinux][PATCH] swig: use pkg-config for pcre detection.
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
X-List-Received-Date: Wed, 16 Jul 2014 02:11:07 -0000
X-Groupsio-MsgNum: 20555
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline

--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[meta-selinux][PATCH] swig: use pkg-config for pcre detection.] On 14.07.1=
5 (Tue 22:03) Joe MacDonald wrote:

> Adapted from the original patch submitted to meta-oe for swig 2.0.12.
>=20
>    OE-core commit 5870bd272b0b077d0826fb900b251884c1c05061 sabotaged the
>    binconfig way.
>=20
> Signed-off-by: Koen Kooi <koen.kooi@linaro.org>

Ugh.  I didn't mean to include this in the commit log since this is my
mangled version of the original patch.  If I push this, I'll indent the
above s-o-b line to indicate it applies to the original patch and not
necessarily to what I've created.

-J.

> Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> ---
>=20
> Building swig-native has been broken for about the last month, the medium=
-term
> corrective action would probably be to update swig, but that involves more
> testing than I have time for right now.  The long-term corrective action =
is
> probably to drop swig from meta-selinux, since the one in meta-oe is more
> actively maintained.  This is the immediate, tactical solution, port Koen=
's
> patch from meta-oe.  core-image-selinux builds happily for me again.
>=20
>  ...nfigure-use-pkg-config-for-pcre-detection.patch |   68 ++++++++++++++=
++++++
>  recipes-devtools/swig/swig_2.0.10.bb               |    4 +-
>  2 files changed, 71 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-devtools/swig/swig/0001-configure-use-pkg-con=
fig-for-pcre-detection.patch
>=20
> diff --git a/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for=
-pcre-detection.patch b/recipes-devtools/swig/swig/0001-configure-use-pkg-c=
onfig-for-pcre-detection.patch
> new file mode 100644
> index 0000000..158be36
> --- /dev/null
> +++ b/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-d=
etection.patch
> @@ -0,0 +1,68 @@
> +From 35cf4ae2fea9a5b4638f7ea4de8044cea53ce302 Mon Sep 17 00:00:00 2001
> +From: Joe MacDonald <joe_macdonald@mentor.com>
> +Date: Tue, 15 Jul 2014 21:38:57 -0400
> +Subject: [PATCH] configure: use pkg-config for pcre detection
> +
> +Based on the meta-oe swig patch by Koen Kooi, simple backport to the swig
> +version in meta-selinux.
> +
> +Upstream-Status: Backport
> +
> +Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> +---
> + configure.ac |   38 +++++++-------------------------------
> + 1 file changed, 7 insertions(+), 31 deletions(-)
> +
> +diff --git a/configure.ac b/configure.ac
> +index c94c2e9..40fe0d0 100644
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -70,38 +70,14 @@ AC_MSG_RESULT([$with_pcre])
> +=20
> + dnl To make configuring easier, check for a locally built PCRE using th=
e Tools/pcre-build.sh script
> + if test x"${with_pcre}" =3D xyes ; then=20
> +-  AC_MSG_CHECKING([whether to use local PCRE])
> +-  local_pcre_config=3Dno
> +-  if test -z $PCRE_CONFIG; then
> +-    if test -f `pwd`/pcre/pcre-swig-install/bin/pcre-config; then
> +-      PCRE_CONFIG=3D`pwd`/pcre/pcre-swig-install/bin/pcre-config
> +-      local_pcre_config=3D$PCRE_CONFIG
> +-    fi
> +-  fi
> +-  AC_MSG_RESULT([$local_pcre_config])
> +-fi
> +-AS_IF([test "x$with_pcre" !=3D xno],
> +-  [AX_PATH_GENERIC([pcre],
> +-    [], dnl Minimal version of PCRE we need -- accept any
> +-    [], dnl custom sed script for version parsing is not needed
> +-    [AC_DEFINE([HAVE_PCRE], [1], [Define if you have PCRE library])
> +-     LIBS=3D"$LIBS $PCRE_LIBS"
> +-     CPPFLAGS=3D"$CPPFLAGS $PCRE_CFLAGS"
> +-    ],
> +-    [AC_MSG_FAILURE([
> +-        Cannot find pcre-config script from PCRE (Perl Compatible Regul=
ar Expressions)
> +-        library package. This dependency is needed for configure to com=
plete,
> +-        Either:
> +-        - Install the PCRE developer package on your system (preferred =
approach).
> +-        - Download the PCRE source tarball, build and install on your s=
ystem
> +-          as you would for any package built from source distribution.
> +-        - Use the Tools/pcre-build.sh script to build PCRE just for SWI=
G to statically
> +-          link against. Run 'Tools/pcre-build.sh --help' for instructio=
ns.
> +-          (quite easy and does not require privileges to install PCRE o=
n your system)
> +-        - Use configure --without-pcre to disable regular expressions s=
upport in SWIG
> +-          (not recommended).])
> +-    ])
> ++  PKG_CHECK_MODULES([PCRE], [libpcre], [
> ++    AC_DEFINE([HAVE_PCRE], [1], [Define if you have PCRE library])
> ++    LIBS=3D"$LIBS $PCRE_LIBS"
> ++    CPPFLAGS=3D"$CPPFLAGS $PCRE_CFLAGS"
> ++  ], [
> ++    AC_MSG_WARN([$PCRE_PKG_ERRORS])
> +   ])
> ++fi
> +=20
> +=20
> + dnl CCache
> +--=20
> +1.7.9.5
> +
> diff --git a/recipes-devtools/swig/swig_2.0.10.bb b/recipes-devtools/swig=
/swig_2.0.10.bb
> index 312ce11..5f1ff59 100644
> --- a/recipes-devtools/swig/swig_2.0.10.bb
> +++ b/recipes-devtools/swig/swig_2.0.10.bb
> @@ -2,7 +2,9 @@ require ${BPN}.inc
> =20
>  PR =3D "${INC_PR}.0"
> =20
> -SRC_URI +=3D "file://0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win3=
2-plat.patch"
> +SRC_URI +=3D "file://0001-Use-proc-self-exe-for-swig-swiglib-on-non-Win3=
2-plat.patch \
> +            file://0001-configure-use-pkg-config-for-pcre-detection.patc=
h \
> +           "
> =20
>  SRC_URI[md5sum] =3D "6d5e7ad05b4a404e5e85db9befb70c9a"
>  SRC_URI[sha256sum] =3D "d1eef329e867124ce60838b5ad07c763146b6c8f250dd22a=
861ead7406f78e63"
--=20
-Joe MacDonald.
:wq

--lrZ03NoBR/3+SXJZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlPF3xYACgkQwFvcllog0XyelgCfQUvAwm2oTMjXP+ufC4+SlJZd
3z4AoIQ+HtsQPSajQBl5uhhp0Q66u7qN
=hc0S
-----END PGP SIGNATURE-----

--lrZ03NoBR/3+SXJZ--
