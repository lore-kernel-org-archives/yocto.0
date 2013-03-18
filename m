Return-Path: <martin.jansa@gmail.com>
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEB06E01465
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 05:05:05 -0700 (PDT)
Received: by mail-qa0-f52.google.com with SMTP id bs12so1578354qab.18
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 05:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=BBlqdUWB2sGH5f2kFxIc7GcPFXGsGLaQYdCLzrblW8o=;
	b=eBBcPXTQVqurtMNKfOARz0icOe1AeQ1WRVtfCxdRBHmYqS4saXO/njuKAwzvBWUuno
	O/ABLlsUHlu1+omxkLbkh0oU8PGF/FW056i2FUjyZleoxjo6eZtXBAtkJ8iasYAvyWdJ
	EiINPJWNBF1lUpete1KZAkILVcmX7yGuVLny1Vof5YsyvnpsN1xHWfE9exFxEbNYet+m
	MvPJ4ytcEoz4JZmGVwRQyLr8J7JnuYUbX4Mcl6P8pfIf2WDOF1tvLQswV6bzluv9ciNP
	/KmpbJ7L8LcZSQxIbFvUkWpxg67zhumiRMcvAuvkPn/y+G4YcsaW/vqgPuigDVG3OjLC
	WLOA==
X-Received: by 10.224.178.12 with SMTP id bk12mr18761204qab.98.1363608305305; 
	Mon, 18 Mar 2013 05:05:05 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id he6sm34582921qab.1.2013.03.18.05.05.03
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 05:05:04 -0700 (PDT)
Date: Mon, 18 Mar 2013 13:04:57 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Simon Egli <simon.egli@tik.ee.ethz.ch>
Message-ID: <20130318120457.GC3195@jama>
References: <5146FD6C.8070803@tik.ee.ethz.ch>
MIME-Version: 1.0
In-Reply-To: <5146FD6C.8070803@tik.ee.ethz.ch>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [META-OE][PATCH] iperf 2.0.5 + fix for minor bug while cross-compiling
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
X-List-Received-Date: Mon, 18 Mar 2013 12:05:06 -0000
X-Groupsio-MsgNum: 12645
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="f+W+jCU1fRNres8c"
Content-Disposition: inline

--f+W+jCU1fRNres8c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 18, 2013 at 12:41:32PM +0100, Simon Egli wrote:
> Please see attached my patch to iperf 2.0.5 + fix
> I hope this may be of use for someone and that it will be integrated in=
=20
> to yocto master

And please read README in meta-oe checkout and send v2 to right ML.

> From 5a46a34945539ac46046bec9534322c09ff0896a Mon Sep 17 00:00:00 2001
> From: Simon Egli <simon.egli@tik.ee.ethz.ch>
> Date: Mon, 18 Mar 2013 12:37:20 +0100
> Subject: [PATCH 1/2] Recipe for iperf 2.0.5
>=20
> Signed-off-by: Simon Egli <simon.egli@tik.ee.ethz.ch>
> ---
>  meta-oe/recipes-benchmark/iperf/iperf_2.0.5.bb |   21 ++++++++++++++++++=
+++
>  1 file changed, 21 insertions(+)
>  create mode 100644 meta-oe/recipes-benchmark/iperf/iperf_2.0.5.bb
>=20
> diff --git a/meta-oe/recipes-benchmark/iperf/iperf_2.0.5.bb b/meta-oe/rec=
ipes-benchmark/iperf/iperf_2.0.5.bb
> new file mode 100644
> index 0000000..3f93ee5
> --- /dev/null
> +++ b/meta-oe/recipes-benchmark/iperf/iperf_2.0.5.bb
> @@ -0,0 +1,21 @@
> +DESCRIPTION =3D "Iperf is a tool to measure maximum TCP bandwidth, allow=
ing the tuning of various parameters and UDP characteristics"
> +HOMEPAGE =3D "http://dast.nlanr.net/Projects/Iperf/"
> +SECTION =3D "console/network"
> +LICENSE =3D "NewBSD"
> +LIC_FILES_CHKSUM =3D "file://COPYING;md5=3De8478eae9f479e39bc34975193360=
298"
> +
> +SRC_URI =3D " \
> +	${SOURCEFORGE_MIRROR}/iperf/iperf-${PV}.tar.gz \
> +	file://0001-Fixing-special-format-bug-with-bitbake.patch \
> +	"
> +
> +
> +SRC_URI[md5sum] =3D "44b5536b67719f4250faed632a3cd016"
> +SRC_URI[sha256sum] =3D "636b4eff0431cea80667ea85a67ce4c68698760a9837e1e9=
d13096d20362265b"
> +
> +inherit autotools
> +
> +S=3D"${WORKDIR}/iperf-${PV}"
> +
> +EXTRA_OECONF =3D "--exec-prefix=3D${STAGING_DIR_HOST}${layout_exec_prefi=
x}"
> +
> --=20
> 1.7.9.5
>=20

> From 85fdd92a41626e821c98251ee13a0dd8f280de40 Mon Sep 17 00:00:00 2001
> From: Simon Egli <simon.egli@tik.ee.ethz.ch>
> Date: Mon, 18 Mar 2013 12:37:40 +0100
> Subject: [PATCH 2/2] Fixing special format bug with bitbake
>=20
>     On overo (native) we get HAVE_QUAD_SUPPORT, but don't seem with bitba=
ke.
>     This leads to "iperf -s -u -y c" returning empty bandwith and jitter,
>     because of formatting error.
>     Didn't seem to work with "'CFLAGS +=3D "-HAVE_QUAD_SUPPORT"', because=
 of configure error,
>     so giving iperf HAVE_QUAD_SUPPORT in Locale.c
>=20
> Signed-off-by: Simon Egli <simon.egli@tik.ee.ethz.ch>
> ---
>  ...01-Fixing-special-format-bug-with-bitbake.patch |   31 ++++++++++++++=
++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 meta-oe/recipes-benchmark/iperf/iperf-2.0.5/0001-Fixi=
ng-special-format-bug-with-bitbake.patch
>=20
> diff --git a/meta-oe/recipes-benchmark/iperf/iperf-2.0.5/0001-Fixing-spec=
ial-format-bug-with-bitbake.patch b/meta-oe/recipes-benchmark/iperf/iperf-2=
=2E0.5/0001-Fixing-special-format-bug-with-bitbake.patch
> new file mode 100644
> index 0000000..fb04cd7
> --- /dev/null
> +++ b/meta-oe/recipes-benchmark/iperf/iperf-2.0.5/0001-Fixing-special-for=
mat-bug-with-bitbake.patch
> @@ -0,0 +1,31 @@
> +From 8f359740e9d8b4b18c83873aab6d80b40e36beaf Mon Sep 17 00:00:00 2001
> +From: Simon Egli <simon.egli@tik.ee.ethz.ch>
> +Date: Mon, 18 Mar 2013 12:30:12 +0100
> +Subject: [PATCH] Fixing special format bug with bitbake
> +
> +On overo (native) we get HAVE_QUAD_SUPPORT, but don't seem with bitbake.
> +This leads to "iperf -s -u -y c" returning empty bandwith and jitter,
> +because of formatting error.
> +Didn't seem to work with "'CFLAGS +=3D "-HAVE_QUAD_SUPPORT"', because of=
 configure error,
> +so giving iperf HAVE_QUAD_SUPPORT in Locale.c
> +
> +Signed-off-by: Simon Egli <simon.egli@tik.ee.ethz.ch>
> +---
> + src/Locale.c |    1 +
> + 1 file changed, 1 insertion(+)
> +
> +diff --git a/src/Locale.c b/src/Locale.c
> +index b5d42b1..f0e10b6 100644
> +--- a/src/Locale.c
> ++++ b/src/Locale.c
> +@@ -238,6 +238,7 @@ const char server_reporting[] =3D
> + const char reportCSV_peer[] =3D
> + "%s,%u,%s,%u";
> +=20
> ++#define HAVE_QUAD_SUPPORT
> + #ifdef HAVE_QUAD_SUPPORT
> + #ifdef HAVE_PRINTF_QD
> + const char reportCSV_bw_format[] =3D
> +--=20
> +1.7.9.5
> +
> --=20
> 1.7.9.5
>=20


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--f+W+jCU1fRNres8c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFHAukACgkQN1Ujt2V2gBze3wCeLoj71by6seBNNWysLkLh3aW+
DHkAoLe0s9v39iIg3sXgwwrp8Zl3GkjU
=/u4X
-----END PGP SIGNATURE-----

--f+W+jCU1fRNres8c--
