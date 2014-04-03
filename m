Return-Path: <joe@deserted.net>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F9ABE00B78
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 12:06:31 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id x3so2336486qcv.26
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 12:06:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=i8OaE8H+XCzhYyZoRoj8wo8omHv1Ym4o2B9MtBAvlcI=;
	b=l1xryKi2U2wEBb9goMhwDIb5ObxJvXDx+m2naK2LNlHZ3bItm57yDEdRV5h9LSYjUJ
	q+krCBSw50Cm+9yy9DG39Ncvzf6ToMMJn/0WVKBUJEV4SQQz0BqJVsiaIdK8KXkrrf/0
	jx5KH3hExQWIhtVzxZKlHV/bCwvJoLiA0qBkxuj1pyqySXfM3x0fZGtOtBCQoT7UtbC2
	SCaw3oq7JH+gS4khUn1cqKRWKy+w136XG5dizEtFHtOJPEv9d1iT48Gh4L6NL81SBSXz
	G0bFD8y9ye0zQ9w+oJeQZJGBVVYmS4ghL7Z8fDQpHVHXZwZEHnJl+t+8z07MjvcyKqre
	jDlQ==
X-Gm-Message-State: ALoCoQkZr/W+7zAAhfEdP+bqzElSDvipIl9uBBr/LtNCkAPE/UwTkHHP7hn+33g/EqVYuwpssaaQ
X-Received: by 10.140.102.85 with SMTP id v79mr9043553qge.8.1396551990919;
	Thu, 03 Apr 2014 12:06:30 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id x5sm11643657qaj.9.2014.04.03.12.06.29
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 03 Apr 2014 12:06:29 -0700 (PDT)
Date: Thu, 3 Apr 2014 15:06:26 -0400
From: Joe MacDonald <joe@deserted.net>
To: Chong Lu <Chong.Lu@windriver.com>
Message-ID: <20140403190625.GJ4075@deserted.net>
References: <cover.1394503849.git.Chong.Lu@windriver.com>
	<6626e126921cee6e11b53d180f8ba3ceba8ef215.1394503849.git.Chong.Lu@windriver.com>
MIME-Version: 1.0
In-Reply-To: <6626e126921cee6e11b53d180f8ba3ceba8ef215.1394503849.git.Chong.Lu@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 1/1] checkpolicy: Don't link against libfl
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
X-List-Received-Date: Thu, 03 Apr 2014 19:06:31 -0000
X-Groupsio-MsgNum: 18840
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NgG1H2o5aFKkgPy/"
Content-Disposition: inline

--NgG1H2o5aFKkgPy/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux][PATCH 1/1] checkpolicy: Don't link against libfl] O=
n 14.03.11 (Tue 10:13) Chong Lu wrote:

> In policy_scan.l file, we have already removed all references to yywrap by
> adding "%option noyywrap" statements to each flex source file that doesn't
> override yywrap. After this, we no longer need to link against libfl and =
so
> no longer get errors about undefined references to yylex.
>=20
> Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
> ---
>  recipes-security/selinux/checkpolicy.inc           |  2 +
>  .../checkpolicy-Do-not-link-against-libfl.patch    | 44 ++++++++++++++++=
++++++
>  2 files changed, 46 insertions(+)
>  create mode 100644 recipes-security/selinux/checkpolicy/checkpolicy-Do-n=
ot-link-against-libfl.patch
>=20
> diff --git a/recipes-security/selinux/checkpolicy.inc b/recipes-security/=
selinux/checkpolicy.inc
> index 096f938..54edc11 100644
> --- a/recipes-security/selinux/checkpolicy.inc
> +++ b/recipes-security/selinux/checkpolicy.inc
> @@ -13,6 +13,8 @@ LICENSE =3D "GPLv2+"
> =20
>  DEPENDS +=3D "libsepol libselinux bison-native flex-native"
> =20
> +SRC_URI +=3D "file://checkpolicy-Do-not-link-against-libfl.patch"
> +
>  EXTRA_OEMAKE +=3D "PREFIX=3D${D}"=20
>  EXTRA_OEMAKE +=3D "LEX=3D'flex'"
> =20
> diff --git a/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link=
-against-libfl.patch b/recipes-security/selinux/checkpolicy/checkpolicy-Do-=
not-link-against-libfl.patch
> new file mode 100644
> index 0000000..6fcf459
> --- /dev/null
> +++ b/recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-agains=
t-libfl.patch
> @@ -0,0 +1,44 @@
> +checkpolicy: Don't link against libfl
> +
> +In policy_scan.l file, we have already removed all references to yywrap =
by
> +adding "%option noyywrap" statements to each flex source file that doesn=
't
> +override yywrap. After this, we no longer need to link against libfl and=
 so
> +no longer get errors about undefined references to yylex.
> +
> +Upstream-status: Pending
> +
> +Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
> +---
> + Makefile      |    2 +-
> + test/Makefile |    2 +-
> + 2 files changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/Makefile b/Makefile
> +index e5fae3d..14ac70e 100644
> +--- a/Makefile
> ++++ b/Makefile
> +@@ -19,7 +19,7 @@ CHECKOBJS =3D y.tab.o lex.yy.o queue.o module_compiler=
=2Eo parse_util.o \
> + CHECKPOLOBJS =3D $(CHECKOBJS) checkpolicy.o
> + CHECKMODOBJS =3D $(CHECKOBJS) checkmodule.o
> +=20
> +-LDLIBS=3D$(LIBDIR)/libsepol.a -lfl
> ++LDLIBS=3D$(LIBDIR)/libsepol.a
> +=20
> + GENERATED=3Dlex.yy.c y.tab.c y.tab.h
> +=20
> +diff --git a/test/Makefile b/test/Makefile
> +index 63b4d24..0f19a8a 100644
> +--- a/test/Makefile
> ++++ b/test/Makefile
> +@@ -9,7 +9,7 @@ INCLUDEDIR ?=3D $(PREFIX)/include
> + CFLAGS ?=3D -g -Wall -W -Werror -O2 -pipe
> + override CFLAGS +=3D -I$(INCLUDEDIR)
> +=20
> +-LDLIBS=3D-lfl -lselinux $(LIBDIR)/libsepol.a -L$(LIBDIR)
> ++LDLIBS=3D-lselinux $(LIBDIR)/libsepol.a -L$(LIBDIR)
> +=20
> + all: dispol dismod
> +=20
> +--=20
> +1.7.9.5
> +
> --=20
> 1.8.1.2
>=20
--=20
-Joe MacDonald.
:wq

--NgG1H2o5aFKkgPy/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9sTEACgkQwFvcllog0Xz7xACeIwPR8co2a+p3r7ZynWi47fj9
LFwAn3HoSz2XRcO+rJio+LMYOzgEDCXh
=5M/d
-----END PGP SIGNATURE-----

--NgG1H2o5aFKkgPy/--
