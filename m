Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E947E006D9
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 23:35:56 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so2806267wgb.11
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 23:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=V5PCAZBsEfBB71ItieKDAfNkmRyGhnONpz5S6eWnMd4=;
	b=0zGBJJch1boz0ogxy7J1bDL9JTQlYC6fudAFn1CtTtYqQEWY6S7YSCP/79mcVpCD0u
	h7rWRQa3vMHP5PhpWG9s+TQXhzKHW7sfyFBBjxmofF9j1aefc8Snr2NHt1840BzGJv+Z
	KrPBSWLJjjAyrQh+h6plsyawcyhBMATi3wYrafMivv4BuhxEVysTKIxarhZ/58eBjqN+
	FM7cDfdxIFT/DhvBKFrbnGHiDcoiikcQgo+cVL8sTiHD9fmwDuxPVGSbvp3ktqDWba5w
	ei7HpPPRr3sJfQzlbHz/dBf9PRGZEkhjUtPxv281ELp4+ABuK2geaQaAYkgcASrZ6nu/
	KxIA==
Received: by 10.180.109.194 with SMTP id hu2mr9644782wib.0.1339828555702;
	Fri, 15 Jun 2012 23:35:55 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id e20sm8208908wiv.7.2012.06.15.23.35.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Jun 2012 23:35:54 -0700 (PDT)
Date: Sat, 16 Jun 2012 08:36:15 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20120616063615.GZ3140@jama.jama.net>
References: <cover.1338305162.git.Martin.Jansa@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1338305162.git.Martin.Jansa@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [opkg-utils][PATCH 0/2] opkg-utils fix for python-2.6 and fix for missing getopts
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
X-List-Received-Date: Sat, 16 Jun 2012 06:35:57 -0000
X-Groupsio-MsgNum: 7257
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yrEcvySKR+fOA8iz"
Content-Disposition: inline

--yrEcvySKR+fOA8iz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 29, 2012 at 05:34:13PM +0200, Martin Jansa wrote:
> The following changes since commit 44df9dd3dc411ca1255cb4b23bde7eb71aed47=
78:
>=20
>   opkg-make-index: disable filelist by default (2012-04-26 11:39:42 +0100)

ping?

>=20
> are available in the git repository at:
>   git://github.com/shr-project/opkg-utils jansa/pull
>   https://github.com/shr-project/opkg-utils/tree/jansa/pull
>=20
> Chris Diamand (1):
>   Changed call to subprocess.check_output which isn't compatible with
>     Python 2.6
>=20
> Ondics Githubler (1):
>   Option "C" ist shown in usage() and implemented, but was missing in
>     getopts. Added "C".
>=20
>  opkg-build      |    2 +-
>  opkg-make-index |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> --=20
> 1.7.8.6
>=20

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--yrEcvySKR+fOA8iz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk/cKV8ACgkQN1Ujt2V2gBxWDgCfXxx36pl0a2FL4cepxKXUprEW
e5wAnjZcPRJ+VADUDOsomF3tlFOXybUQ
=OdTN
-----END PGP SIGNATURE-----

--yrEcvySKR+fOA8iz--
