Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 131A2E0053F
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 10:40:32 -0800 (PST)
Received: by mail-ee0-f42.google.com with SMTP id e53so1639645eek.1
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 10:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=FAZmhADgWPe/n7m4qbrX37IAyQIo4+HfEw6bNDzJ7dk=;
	b=eR0IQjp0vpGF03SuxHV8g918DbuXnFwTa0QQHS4j+AJlSRUUGt3DUJDG9lTiaK3fUj
	ifPxH/iG8jevAf+9LGxacbCtkGIfafuAHqbznw18g88wJc8CcVhbSme00mkv+P3ejDIs
	NdOwbETIWnsgc9IB9/HecLXibNwSPgS3zE9S2mzsS2HGhPsCaoQpmg7onRND1OoFFqbl
	Fa0nBtZVPS+eomwbme/X2kwaqo0iKDNG5dRokyJJE5lm9mtHS76QfjqMSgfnCePTXNKf
	bfkyqDogdUvBXdtYEunjnT7ibSSgTvByDeg3ONPYCAAQwUErkslpWIZ3QjbRHBp+TJZ2
	Am1A==
X-Received: by 10.15.95.72 with SMTP id bc48mr12598596eeb.49.1386182431646;
	Wed, 04 Dec 2013 10:40:31 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107]) by mx.google.com with ESMTPSA id
	b41sm73955264eef.16.2013.12.04.10.40.30 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Dec 2013 10:40:30 -0800 (PST)
Date: Wed, 4 Dec 2013 19:40:42 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20131204184042.GJ3714@jama>
References: <1386180088-27454-1-git-send-email-andrei@gherzan.ro>
	<1386180088-27454-2-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1386180088-27454-2-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] libav: Update to v0.8.8
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
X-List-Received-Date: Wed, 04 Dec 2013 18:40:36 -0000
X-Groupsio-MsgNum: 17437
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FCKy2vjPBX+S/5dE"
Content-Disposition: inline

--FCKy2vjPBX+S/5dE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 04, 2013 at 08:01:28PM +0200, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>

Wrong ML, wrong subject (Update to 0.8.9) and please resend it with -M

> ---
>  .../0001-configure-enable-pic-for-AArch64.patch    | 23 ----------------=
------
>  .../0001-configure-enable-pic-for-AArch64.patch    | 23 ++++++++++++++++=
++++++
>  meta/recipes-multimedia/libav/libav_0.8.8.bb       | 18 -----------------
>  meta/recipes-multimedia/libav/libav_0.8.9.bb       | 16 +++++++++++++++
>  4 files changed, 39 insertions(+), 41 deletions(-)
>  delete mode 100644 meta/recipes-multimedia/libav/libav-0.8.8/0001-config=
ure-enable-pic-for-AArch64.patch
>  create mode 100644 meta/recipes-multimedia/libav/libav-0.8.9/0001-config=
ure-enable-pic-for-AArch64.patch
>  delete mode 100644 meta/recipes-multimedia/libav/libav_0.8.8.bb
>  create mode 100644 meta/recipes-multimedia/libav/libav_0.8.9.bb
>=20
> diff --git a/meta/recipes-multimedia/libav/libav-0.8.8/0001-configure-ena=
ble-pic-for-AArch64.patch b/meta/recipes-multimedia/libav/libav-0.8.8/0001-=
configure-enable-pic-for-AArch64.patch
> deleted file mode 100644
> index d9b22b9..0000000
> --- a/meta/recipes-multimedia/libav/libav-0.8.8/0001-configure-enable-pic=
-for-AArch64.patch
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -From 58db99e98f615d79ea90cac8f4bcf11c94e3e7c7 Mon Sep 17 00:00:00 2001
> -From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> -Date: Thu, 10 Jan 2013 12:42:19 +0100
> -Subject: [PATCH] configure: enable pic for AArch64
> -
> -Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> -
> -Upstream-Status: Backport
> ----
> - configure |    2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> ---- git.orig/configure
> -+++ git/configure
> -@@ -2393,7 +2393,7 @@ check_host_cflags -std=3Dc99
> - check_host_cflags -Wall
> -=20
> - case "$arch" in
> --    alpha|ia64|mips|parisc|ppc|sparc)
> -+    alpha|ia64|mips|parisc|ppc|sparc|aarch64)
> -         spic=3D$shared
> -     ;;
> -     x86)
> diff --git a/meta/recipes-multimedia/libav/libav-0.8.9/0001-configure-ena=
ble-pic-for-AArch64.patch b/meta/recipes-multimedia/libav/libav-0.8.9/0001-=
configure-enable-pic-for-AArch64.patch
> new file mode 100644
> index 0000000..d9b22b9
> --- /dev/null
> +++ b/meta/recipes-multimedia/libav/libav-0.8.9/0001-configure-enable-pic=
-for-AArch64.patch
> @@ -0,0 +1,23 @@
> +From 58db99e98f615d79ea90cac8f4bcf11c94e3e7c7 Mon Sep 17 00:00:00 2001
> +From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> +Date: Thu, 10 Jan 2013 12:42:19 +0100
> +Subject: [PATCH] configure: enable pic for AArch64
> +
> +Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> +
> +Upstream-Status: Backport
> +---
> + configure |    2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +--- git.orig/configure
> ++++ git/configure
> +@@ -2393,7 +2393,7 @@ check_host_cflags -std=3Dc99
> + check_host_cflags -Wall
> +=20
> + case "$arch" in
> +-    alpha|ia64|mips|parisc|ppc|sparc)
> ++    alpha|ia64|mips|parisc|ppc|sparc|aarch64)
> +         spic=3D$shared
> +     ;;
> +     x86)
> diff --git a/meta/recipes-multimedia/libav/libav_0.8.8.bb b/meta/recipes-=
multimedia/libav/libav_0.8.8.bb
> deleted file mode 100644
> index 9cb4cf2..0000000
> --- a/meta/recipes-multimedia/libav/libav_0.8.8.bb
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -require libav.inc
> -
> -SRC_URI =3D "http://libav.org/releases/libav-0.8.8.tar.xz \
> -           file://0001-configure-enable-pic-for-AArch64.patch"
> -
> -SRC_URI[md5sum] =3D "34b8f1279a04466386ed67731197efe3"
> -SRC_URI[sha256sum] =3D "e95cf618eb6239177a62c46f15e840c37e02e8308baf9491=
2fc5910ff4aacbf2"
> -
> -LIC_FILES_CHKSUM =3D "file://COPYING.GPLv2;md5=3Db234ee4d69f5fce4486a80f=
daf4a4263 \
> -                    file://COPYING.GPLv3;md5=3Dd32239bcb673463ab874e80d4=
7fae504 \
> -                    file://COPYING.LGPLv2.1;md5=3De344c8fa836c3a41c4cbd7=
9d7bd3a379 \
> -                    file://COPYING.LGPLv3;md5=3De6a600fd5e1d9cbde2d98368=
0233ad02"
> -
> -EXTRA_OECONF +=3D " \
> -    --enable-postproc \
> -"
> -
> -
> diff --git a/meta/recipes-multimedia/libav/libav_0.8.9.bb b/meta/recipes-=
multimedia/libav/libav_0.8.9.bb
> new file mode 100644
> index 0000000..065a6d2
> --- /dev/null
> +++ b/meta/recipes-multimedia/libav/libav_0.8.9.bb
> @@ -0,0 +1,16 @@
> +require libav.inc
> +
> +SRC_URI =3D "http://libav.org/releases/libav-0.8.9.tar.xz \
> +           file://0001-configure-enable-pic-for-AArch64.patch"
> +
> +SRC_URI[md5sum] =3D "7c0e5743cd5c4d4b1bcafd02a2e82e09"
> +SRC_URI[sha256sum] =3D "4f5181164e4007d5b0013bb3cc5e3b7393ab71ac286319c7=
14b7697e2784f77f"
> +
> +LIC_FILES_CHKSUM =3D "file://COPYING.GPLv2;md5=3Db234ee4d69f5fce4486a80f=
daf4a4263 \
> +                    file://COPYING.GPLv3;md5=3Dd32239bcb673463ab874e80d4=
7fae504 \
> +                    file://COPYING.LGPLv2.1;md5=3De344c8fa836c3a41c4cbd7=
9d7bd3a379 \
> +                    file://COPYING.LGPLv3;md5=3De6a600fd5e1d9cbde2d98368=
0233ad02"
> +
> +EXTRA_OECONF +=3D " \
> +    --enable-postproc \
> +"
> --=20
> 1.8.1.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--FCKy2vjPBX+S/5dE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlKfdyoACgkQN1Ujt2V2gByPogCfeA8GL+rMLadgzldO/ufw7+Kg
4NsAnR1meL8DZEe+53FY9RZdPFzC6etO
=YAIS
-----END PGP SIGNATURE-----

--FCKy2vjPBX+S/5dE--
