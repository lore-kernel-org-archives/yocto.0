Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36549E006DD
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 23:56:29 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eekd49 with SMTP id d49so7979556eek.35
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 23:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=gOnm+iTu3WU1b9M1/bMaOMwhh+Dxr60fBWPSZurYatE=;
	b=x0OwNrDqagTw+faWmLTTUIQ4gijIanjAnPAdp75sY1dUGkRCPtLsDsRxs6zjwfQGv6
	1tPoTgvMnqRfQ3FHDBNuqtQ3Mx9YqkHWO1FVirRW9KRiSns3YI9yOJAzHeoGzfFq+FFp
	JUp7unyMSZFb6FBXM2zR0nuvNCFU1rA7VJkFg=
Received: by 10.14.48.194 with SMTP id v42mr2268311eeb.81.1324454187963;
	Tue, 20 Dec 2011 23:56:27 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id z54sm17621649eeh.5.2011.12.20.23.56.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 20 Dec 2011 23:56:26 -0800 (PST)
Date: Wed, 21 Dec 2011 08:56:25 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: nitin.a.kamble@intel.com
Message-ID: <20111221075624.GC12791@jama.jama.net>
References: <cover.1324452915.git.nitin.a.kamble@intel.com>
	<6bd4afcd3f351bb92e2573d487b135c965fce0aa.1324452915.git.nitin.a.kamble@intel.com>
MIME-Version: 1.0
In-Reply-To: <6bd4afcd3f351bb92e2573d487b135c965fce0aa.1324452915.git.nitin.a.kamble@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [bernard 1/1] binutils-2.21: fix building on suse 11.4
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Dec 2011 07:56:29 -0000
X-Groupsio-MsgNum: 3910
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="YD3LsXFS42OYHhNZ"
Content-Disposition: inline

--YD3LsXFS42OYHhNZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 20, 2011 at 11:37:03PM -0800, nitin.a.kamble@intel.com wrote:
> From: Nitin Kamble <nitin@yocto-hm1.jf.intel.com>
>=20
> x86_64 opensuse 11.4 has bintuils version 2.21, and when this
> binutils_2.21 recipe is built for x86_64 target then, the invocation
> of distro gcc fails with errors like this:
>=20
> | /usr/lib64/gcc/x86_64-suse-linux/4.5/../../../../x86_64-suse-linux/bin/=
as: symbol lookup error: /usr/lib64/gcc/x86_64-suse-linux/4.5/../../../../x=
86_64-suse-linux/bin/as: undefined symbol: concat
> | make[2]: *** [sysinfo.o] Error 1
>=20
> The issue rootcaused as incompatible LD_LIBRARY_PATH while running the di=
stro gcc.
>=20
> This commit fixes the issue by clearing the LD_LIBRARY_PATH for distro gc=
c (CC_FOR_BUILD)
>=20
> This Fixes bug: [YOCTO #1833]

FWIW: I see the same issue with binutils-2.22 and oe-core master when
building qemux86-64 on gentoo.

> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  .../binutils/binutils-cross-canadian_2.21.bb       |    2 +-
>  .../binutils/binutils-crosssdk_2.21.bb             |    2 +-
>  meta/recipes-devtools/binutils/binutils.inc        |    2 +-
>  meta/recipes-devtools/binutils/binutils_2.21.bb    |    2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.=
bb b/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb
> index 7dad2a6..e91e7dc 100644
> --- a/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb
> +++ b/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb
> @@ -1,3 +1,3 @@
>  require binutils_${PV}.bb
>  require binutils-cross-canadian.inc
> -PR =3D "r0"
> +PR =3D "r1"
> diff --git a/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb b/m=
eta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb
> index 0d6efff..21289cd 100644
> --- a/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb
> +++ b/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb
> @@ -4,7 +4,7 @@ inherit crosssdk
> =20
>  PROVIDES =3D "virtual/${TARGET_PREFIX}binutils-crosssdk"
> =20
> -PR =3D "r0"
> +PR =3D "r1"
> =20
>  do_configure_prepend () {
>  	sed -i 's#/usr/local/lib /lib /usr/lib#${SDKPATHNATIVE}/lib ${SDKPATHNA=
TIVE}/usr/lib /usr/local/lib /lib /usr/lib#' ${S}/ld/configure.tgt
> diff --git a/meta/recipes-devtools/binutils/binutils.inc b/meta/recipes-d=
evtools/binutils/binutils.inc
> index d9e859e..1178e0c 100644
> --- a/meta/recipes-devtools/binutils/binutils.inc
> +++ b/meta/recipes-devtools/binutils/binutils.inc
> @@ -71,7 +71,7 @@ export RANLIB_FOR_TARGET =3D "${TARGET_PREFIX}ranlib"
>  export CC_FOR_HOST =3D "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}"
>  export CXX_FOR_HOST =3D "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}"
> =20
> -export CC_FOR_BUILD =3D "${BUILD_CC}"
> +export CC_FOR_BUILD =3D "LD_LIBRARY_PATH=3D ${BUILD_CC}"
>  export CPP_FOR_BUILD =3D "${BUILD_CPP}"
>  export CFLAGS_FOR_BUILD =3D "${BUILD_CFLAGS}"
> =20
> diff --git a/meta/recipes-devtools/binutils/binutils_2.21.bb b/meta/recip=
es-devtools/binutils/binutils_2.21.bb
> index 270c720..f34b69d 100644
> --- a/meta/recipes-devtools/binutils/binutils_2.21.bb
> +++ b/meta/recipes-devtools/binutils/binutils_2.21.bb
> @@ -1,6 +1,6 @@
>  require binutils.inc
> =20
> -PR =3D "r0"
> +PR =3D "r1"
> =20
>  LIC_FILES_CHKSUM=3D"\
>      file://src-release;endline=3D17;md5=3D4830a9ef968f3b18dd5e9f2c00db2d=
35\
> --=20
> 1.7.6.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--YD3LsXFS42OYHhNZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk7xkSgACgkQN1Ujt2V2gBx9TACbBNaeXbgXZJGwrDGUqb4RReLp
DxQAmwY3pcRre9zKkth5tkrp488c5II0
=1lxj
-----END PGP SIGNATURE-----

--YD3LsXFS42OYHhNZ--
