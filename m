Return-Path: <josh@hipro.co.in>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBA37E0044C
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 23:52:57 -0800 (PST)
Received: by pbcxa12 with SMTP id xa12so591833pbc.35
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2012 23:52:57 -0800 (PST)
Received: by 10.68.189.106 with SMTP id gh10mr10741918pbc.127.1329378777716;
	Wed, 15 Feb 2012 23:52:57 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id q8sm13277250pbi.1.2012.02.15.23.52.55
	(version=SSLv3 cipher=OTHER); Wed, 15 Feb 2012 23:52:56 -0800 (PST)
Message-ID: <1329378772.2747.24.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Autif Khan <autif.mlist@gmail.com>
Date: Thu, 16 Feb 2012 13:22:52 +0530
In-Reply-To: <1329368164.2747.9.camel@babel.joshhome>
References: <1329290581.3039.18.camel@babel.joshhome>
	<CAMKF1soCVQ9bKYdhMAHfkM-xcrqYrwMS-kUMR3g1-1fJro-__Q@mail.gmail.com>
	<1329321197.30001.6.camel@babel.joshhome>
	<CADzUK1+rXrSNS91NURP9=T_SoKm1a3xg4tmijoU134wUmQhnOg@mail.gmail.com>
	<1329368164.2747.9.camel@babel.joshhome>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQnubhVabxDLG8gl/Tp1bOaDNwAsa+pf1jiczt+CcacPSs7NUxKWdGyjRtuhGvau5oXQRl4n
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RDEPENDS fails to find an existing package
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
X-List-Received-Date: Thu, 16 Feb 2012 07:52:58 -0000
X-Groupsio-MsgNum: 4847
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-OPBG1Aaskde4tAQ9iR93"

--=-OPBG1Aaskde4tAQ9iR93
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, 2012-02-16 at 10:26 +0530, Joshua Immanuel wrote:
> Can you please explain little bit more on what INSANE_SKIP_${PN} =3D
> "dev-so" does. I don't find any documentation on it.=20

I guess, it suppresses the warnings stating that an non-dev package
contains symlink. This is the warning I got, when I packaged protobuf
for yocto=20

> WARNING: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so:=
=20
> protobuf path '/work/core2-poky-linux/protobuf-2.4.1-r1/packages-split/pr=
otobuf/usr/lib/libprotobuf.so'
> WARNING: QA Issue: protobuf: /work/core2-poky-linux/protobuf-2.4.1-r1/pac=
kages-split/protobuf/usr/lib/libprotobuf.so=20
> contains probably-redundant RPATH /usr/lib

Adding the line INSANE_SKIP_${PN} =3D "dev-so" suppressed the above
warnings.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-OPBG1Aaskde4tAQ9iR93
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk88tdQACgkQWw85XwuSFMJGcgCgvy3qbasR+kdn1Vjz5Z0LAR0X
r8UAn2dPsVSkHqO4gzv9MmWBl+B47b7e
=Buke
-----END PGP SIGNATURE-----

--=-OPBG1Aaskde4tAQ9iR93--
