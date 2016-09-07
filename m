Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AADCE00CC1; Wed,  7 Sep 2016 09:49:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 216E3E00A4B
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2016 09:49:29 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id gi6so1142549pac.1
	for <yocto@yoctoproject.org>; Wed, 07 Sep 2016 09:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=PVEKfO9phGLt9FYnbe/HAH4UL+P379YZYg0VwFKpYu4=;
	b=aaIHLjGofcWl5/bLrRzj2+ZodULUolMvAL63hr8Z2rulUxiEuoaBBnHTleXXmikkuQ
	pNYj4eErDb0EhZMSE433SGpwKYZXBwp3sIrX1j9eROzMB9U7uboGPng+XxeJL8io6qEO
	0jK3wy7pBYVztNreiCAg6ohNoC+dRCXYFWRLZ/CFrFv51Czz27am1rs5SToOfLDuH4ml
	s6OhMd/PmYu15dk6D9rYAOwLel2j5fy82GUTtLQDdhllhnegTYS2WsDlqqvAqKYGQBsf
	rkL2dF8sMeuoio3rp9HKwe4DmjCU0dgveb4sRRxgiRO7x76kf6Xf1ee2IcCYaXno0VSE
	p9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=PVEKfO9phGLt9FYnbe/HAH4UL+P379YZYg0VwFKpYu4=;
	b=YdVrx+eM5v7Pj/by6IH0LCDbuWYojSHvd89yiO0AJBazVSq5W5tzYhRvvFxIUq2bce
	W8MobI3Dy25h97GzBDoIkJ+mCBjY2bWApqH3RuzqDdVPEofBOXW+joItJ4PLy6ouQtVB
	osKkhxgQo/Lej35r3/BcRf17xZFOuBxsYvMMYDUyBVYl7LizPap35U76xV4MijZcdkaW
	XcDgdxG2uubWWC9cWqRNaMZ0MAqtvQ+ritnDyiAQt3ZI+Lrtsg7N37QCxI/UkSIwnxmX
	i4a349tfsKZyae+7222KnG2lC9de3/v2dXt9kc6smsd/gllhQCrPood1gg+52KsDS7zF
	bkpA==
X-Gm-Message-State: AE9vXwPOsiDe5VmxC7UjemlIKhHfKjIICz/uu5Fv5smQ957nXuZyDy0m9tF7n6RIBdABAQ==
X-Received: by 10.66.139.110 with SMTP id qx14mr85166238pab.101.1473266969163; 
	Wed, 07 Sep 2016 09:49:29 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:9989:9d3a:10f0:29e7?
	([2601:647:4c00:3edf:9989:9d3a:10f0:29e7])
	by smtp.gmail.com with ESMTPSA id
	f84sm50105484pfd.87.2016.09.07.09.49.27
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 07 Sep 2016 09:49:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1473260047-22303-1-git-send-email-zeenix@gmail.com>
Date: Wed, 7 Sep 2016 09:49:30 -0700
Message-Id: <A964B2AD-AE58-4B6E-A606-1EF2FB113BB9@gmail.com>
References: <1473260047-22303-1-git-send-email-zeenix@gmail.com>
To: Zeeshan Ali <zeenix@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Update Geoclue2
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
X-List-Received-Date: Wed, 07 Sep 2016 16:49:32 -0000
X-Groupsio-MsgNum: 31824
Content-Type: multipart/signed;
	boundary="Apple-Mail=_04673459-71AE-4481-B256-CCC523F13311";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_04673459-71AE-4481-B256-CCC523F13311
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 7, 2016, at 7:54 AM, Zeeshan Ali <zeenix@gmail.com> wrote:
>=20
> From: Zeeshan Ali <zeeshan.ali@pelagicore.com>
>=20
> Also drop redundant and now unusable patch.

Please send this patch to openembedded-devel mailing list.

> ---
> .../geoclue/files/soup-session-fix.patch           | 30 --------------
> .../recipes-navigation/geoclue/geoclue_2.0.0.bb    | 33 =
---------------
> .../recipes-navigation/geoclue/geoclue_2.4.4.bb    | 47 =
++++++++++++++++++++++
> 3 files changed, 47 insertions(+), 63 deletions(-)
> delete mode 100644 =
meta-oe/recipes-navigation/geoclue/files/soup-session-fix.patch
> delete mode 100644 meta-oe/recipes-navigation/geoclue/geoclue_2.0.0.bb
> create mode 100644 meta-oe/recipes-navigation/geoclue/geoclue_2.4.4.bb
>=20
> diff --git =
a/meta-oe/recipes-navigation/geoclue/files/soup-session-fix.patch =
b/meta-oe/recipes-navigation/geoclue/files/soup-session-fix.patch
> deleted file mode 100644
> index 70fe3f5..0000000
> --- a/meta-oe/recipes-navigation/geoclue/files/soup-session-fix.patch
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -Upstream-Status: Upstream-Status: Inappropriate [poky 9.0 has older =
libsoup]
> -
> -Signed-off-by: Felipe F. Tonello <eu@felipetonello.com>
> -
> -diff --git a/src/gclue-ipclient.c b/src/gclue-ipclient.c
> -index 09add30..1771d5c 100644
> ---- a/src/gclue-ipclient.c
> -+++ b/src/gclue-ipclient.c
> -@@ -83,7 +83,7 @@ gclue_ipclient_init (GClueIpclient *ipclient)
> - {
> -         ipclient->priv =3D G_TYPE_INSTANCE_GET_PRIVATE ((ipclient), =
GCLUE_TYPE_IPCLIENT, GClueIpclientPrivate);
> -
> --        ipclient->priv->soup_session =3D soup_session_new ();
> -+        ipclient->priv->soup_session =3D soup_session_sync_new ();
> - }
> -
> - /**
> -diff --git a/src/geoip-server/geoip-update.c =
b/src/geoip-server/geoip-update.c
> -index 6cce7b2..ef672ba 100644
> ---- a/src/geoip-server/geoip-update.c
> -+++ b/src/geoip-server/geoip-update.c
> -@@ -214,7 +214,7 @@ main (int argc, char **argv)
> -                         path =3D GEOIP_DATABASE_PATH;
> -         }
> -
> --        session =3D soup_session_new ();
> -+        session =3D soup_session_sync_new ();
> -
> -         for (i =3D 0; i < G_N_ELEMENTS (db_info_map); i++) {
> -                 SoupMessage *msg =3D NULL;
> diff --git a/meta-oe/recipes-navigation/geoclue/geoclue_2.0.0.bb =
b/meta-oe/recipes-navigation/geoclue/geoclue_2.0.0.bb
> deleted file mode 100644
> index 90e8533..0000000
> --- a/meta-oe/recipes-navigation/geoclue/geoclue_2.0.0.bb
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -SUMMARY =3D "The Geolocation Service"
> -DESCRIPTION =3D "Geoclue is a D-Bus service that provides location =
information. \
> -The primary goal of the Geoclue project is to make creating =
location-aware applications \
> -as simple as possible, while the secondary goal is to ensure that no =
application \
> -can access location information without explicit permission from =
user."
> -LICENSE =3D "GPLv2.0+"
> -SECTION =3D "console/network"
> -
> -LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D8114b83a0435d8136b47bd70111ce5cd"
> -
> -DEPENDS =3D "glib-2.0 dbus dbus-glib json-glib libsoup-2.4 =
intltool-native"
> -
> -inherit autotools pkgconfig gtk-doc
> -
> -SRC_URI =3D " \
> -    =
http://www.freedesktop.org/software/geoclue/releases/2.0/geoclue-${PV}.tar=
.xz \
> -    file://soup-session-fix.patch \
> -"
> -
> -SRC_URI[md5sum] =3D "401ff99d530b177c62afacef0a33efd9"
> -SRC_URI[sha256sum] =3D =
"4a82f184e55a163d86e0ad69bbe1bba9960bb5094220fe1f01350bceda8c67a1"
> -
> -PACKAGECONFIG[geoip] =3D =
"--enable-geoip-server,--disable-geoip-server,geoip"
> -
> -EXTRA_OECONF +=3D " \
> -    --with-dbus-service-user=3Droot \
> -    --with-dbus-sys-dir=3D${sysconfdir}/dbus-1/system.d \
> -"
> -
> -FILES_${PN} +=3D " \
> -    =
${datadir}/dbus-1/system-services/org.freedesktop.GeoClue2.service \
> -    ${datadir}/geoclue-2.0/geoclue-interface.xml \
> -"
> diff --git a/meta-oe/recipes-navigation/geoclue/geoclue_2.4.4.bb =
b/meta-oe/recipes-navigation/geoclue/geoclue_2.4.4.bb
> new file mode 100644
> index 0000000..64f0546
> --- /dev/null
> +++ b/meta-oe/recipes-navigation/geoclue/geoclue_2.4.4.bb
> @@ -0,0 +1,47 @@
> +SUMMARY =3D "The Geolocation Service"
> +DESCRIPTION =3D "Geoclue is a D-Bus service that provides location =
information. \
> +The primary goal of the Geoclue project is to make creating =
location-aware applications \
> +as simple as possible, while the secondary goal is to ensure that no =
application \
> +can access location information without explicit permission from =
user."
> +LICENSE =3D "GPLv2.0+"
> +SECTION =3D "console/network"
> +
> +LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D8114b83a0435d8136b47bd70111ce5cd"
> +
> +DEPENDS =3D "glib-2.0 dbus json-glib libsoup-2.4 intltool-native"
> +
> +inherit autotools pkgconfig gtk-doc
> +
> +SRC_URI =3D " \
> +	=
http://www.freedesktop.org/software/geoclue/releases/2.4/geoclue-${PV}.tar=
.xz \
> +"
> +
> +SRC_URI[md5sum] =3D "d2a5b05f4bad032673fe23afbce27926"
> +SRC_URI[sha256sum] =3D =
"9c43fb9d0c12067ea64400500abb0640194947d4c2c55e38545afe5d9c5c315c"
> +
> +export BUILD_SYS
> +export HOST_SYS
> +export STAGING_INCDIR
> +export STAGING_LIBDIR
> +
> +# Without this line, package is delcared a library and named =
libgeoclue*
> +AUTO_LIBNAME_PKGS =3D ""
> +
> +PACKAGECONFIG ??=3D "3g modem-gps cdma nmea lib"
> +PACKAGECONFIG[3g] =3D =
"--enable-3g-source,--disable-3g-source,modemmanager"
> +PACKAGECONFIG[modem-gps] =3D =
"--enable-modem-gps-source,--disable-modem-gps-source,modemmanager"
> +PACKAGECONFIG[cdma] =3D =
"--enable-cdma-source,--disable-cdma-source,modemmanager"
> +PACKAGECONFIG[nmea] =3D =
"--enable-nmea-source,--disable-nmea-source,avahi"
> +PACKAGECONFIG[lib] =3D =
"--enable-libgeoclue,--disable-libgeoclue,gobject-introspection"
> +
> +EXTRA_OECONF +=3D " \
> +    --with-dbus-service-user=3Droot \
> +    --with-dbus-sys-dir=3D${sysconfdir}/dbus-1/system.d \
> +    --enable-demo-agent=3Dno \
> +"
> +
> +FILES_${PN} +=3D " \
> +    =
${datadir}/dbus-1/system-services/org.freedesktop.GeoClue2.service \
> +    ${datadir}/dbus-1/interfaces/org.freedesktop.GeoClue2.xml \
> +    ${prefix}/libexec \
> +"
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_04673459-71AE-4481-B256-CCC523F13311
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfQRR4ACgkQuwUzVZGdMxRkcgCdH9AluQC3566/nHmKV9PWwHvN
d64AmwRwgRgh/zVE4evfhFN2oA+JJLjU
=YaWo
-----END PGP SIGNATURE-----

--Apple-Mail=_04673459-71AE-4481-B256-CCC523F13311--
