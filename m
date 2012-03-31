Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A9D6E00596
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 00:57:13 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so1022231wgb.11
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 00:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=EnX/O7GQqVwOI4K5zlRkl15Zqww7nscgqbB/xk0PuMw=;
	b=ALE6qOqj8OiCp2osolHkM68awtok8738sVwsO3/KnaMibFXpCdEKi5QMCVHDKHjzdQ
	yid4UkZ/EoXGxK95LXBw+goO9r9gPQi4XXGdCEK6EoV68vc+nbTeYN9gC+uyZ2qR22w2
	3lDscpsmTlN8Kb5Loy9gzoN6xDohp9WcESLgdVrp0UDW5IDEFuZXC3gcL6QWfhKPkIi/
	Zk21ih2RwPR7G7/BE6OCiIwP9cqStP0x+3zcZJWU1TFalg68oZrGzTQJzucg/WJStJtb
	goh3Lsia4/0umlBUwrPDDvie2Oepap28c8mIUDsBQ9KKCEnFBCyJj2bzTnvohIanLdwW
	AmIw==
Received: by 10.180.102.3 with SMTP id fk3mr4284972wib.9.1333180632931;
	Sat, 31 Mar 2012 00:57:12 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id 6sm13574928wiz.1.2012.03.31.00.57.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 31 Mar 2012 00:57:11 -0700 (PDT)
Date: Sat, 31 Mar 2012 09:57:15 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: nitin.a.kamble@intel.com
Message-ID: <20120331075715.GA3950@jama.jama.net>
References: <cover.1333145263.git.nitin.a.kamble@intel.com>
	<0f8cf941e9e7d9c25cd882bae083b536b715cd17.1333145263.git.nitin.a.kamble@intel.com>
MIME-Version: 1.0
In-Reply-To: <0f8cf941e9e7d9c25cd882bae083b536b715cd17.1333145263.git.nitin.a.kamble@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] cross-canadian.bbclass: fix rpath for sdk executables
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
X-List-Received-Date: Sat, 31 Mar 2012 07:57:14 -0000
X-Groupsio-MsgNum: 5720
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline

--0F1p//8PRICkK4MW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 30, 2012 at 03:52:05PM -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>=20
> This makes the libraries located in places like this findable:
> /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/lib
>=20
> Which avoids linking cross canadian sdk executables with host libraries l=
ike this:
>=20
> $ ldd /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/x86_64=
-oe-linux/x86_64-oe-linux-gdb
>         linux-vdso.so.1 =3D>  (0x00007fffb7fff000)
>         libreadline.so.6 =3D> /usr/local/oecore-x86_64/sysroots/x86_64-oe=
sdk-linux/usr/lib/x86_64-oe-linux/../libreadline.so.6 (0x00007fbfb5511000)
>         libdl.so.2 =3D> /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-li=
nux/lib/libdl.so.2 (0x00007fbfb530c000)
>         libncurses.so.5 =3D> /usr/local/oecore-x86_64/sysroots/x86_64-oes=
dk-linux/lib/libncurses.so.5 (0x00007fbfb50e9000)
>         libtinfo.so.5 =3D> /usr/local/oecore-x86_64/sysroots/x86_64-oesdk=
-linux/lib/libtinfo.so.5 (0x00007fbfb4ec2000)
>         libz.so.1 =3D> /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-lin=
ux/usr/lib/x86_64-oe-linux/../libz.so.1 (0x00007fbfb4cac000)
>         libm.so.6 =3D> /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-lin=
ux/lib/libm.so.6 (0x00007fbfb4a2a000)
>         libpthread.so.0 =3D> /usr/local/oecore-x86_64/sysroots/x86_64-oes=
dk-linux/lib/libpthread.so.0 (0x00007fbfb480d000)
>         libutil.so.1 =3D> /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-=
linux/lib/libutil.so.1 (0x00007fbfb4609000)
>         libexpat.so.1 =3D> /usr/local/oecore-x86_64/sysroots/x86_64-oesdk=
-linux/usr/lib/x86_64-oe-linux/../libexpat.so.1 (0x00007fbfb43e0000)
>         libc.so.6 =3D> /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-lin=
ux/lib/libc.so.6 (0x00007fbfb4059000)
>         /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/lib/ld-linux=
-x86-64.so.2 =3D> /lib64/ld-linux-x86-64.so.2 (0x0000003f05000000)
>=20
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  meta/classes/cross-canadian.bbclass |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)
>=20
> diff --git a/meta/classes/cross-canadian.bbclass b/meta/classes/cross-can=
adian.bbclass
> index e187b88..4ff092c 100644
> --- a/meta/classes/cross-canadian.bbclass
> +++ b/meta/classes/cross-canadian.bbclass
> @@ -48,7 +48,9 @@ DPKG_ARCH =3D "${SDK_ARCH}"
>  CPPFLAGS =3D "${BUILDSDK_CPPFLAGS}"
>  CFLAGS =3D "${BUILDSDK_CFLAGS}"
>  CXXFLAGS =3D "${BUILDSDK_CFLAGS}"
> -LDFLAGS =3D "${BUILDSDK_LDFLAGS}"
> +LDFLAGS =3D "${BUILDSDK_LDFLAGS} \
> +	-Wl,-rpath-link,${STAGING_LIBDIR}/.. \
> +	 -Wl,-rpath,${libdir}/.. "

https://wiki.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide#White_Space=
_Management

says you should use spaces for indentation (except shell functions and
some but not all python functions e.g populate_packages)

Maybe someone should write vim-syntax file for .bb and .bbclass :).

Cheers,

> =20
>  DEPENDS_GETTEXT =3D "gettext-native gettext-nativesdk"
> =20
> --=20
> 1.7.6.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--0F1p//8PRICkK4MW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk92uNsACgkQN1Ujt2V2gBybUACghxJWwh5R7eeToxLIH1Eeo14V
Rb4Anj/WxZfmKx32L2jmnZAYaOe41qBy
=6oDk
-----END PGP SIGNATURE-----

--0F1p//8PRICkK4MW--
