Return-Path: <martin.jansa@gmail.com>
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C4B3E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 06:58:44 -0700 (PDT)
Received: by mail-pd0-f179.google.com with SMTP id x11so2260733pdj.10
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 06:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=UyqBIlrEJQ+ceup3/tqpi/ERvxoGMuh7RXbftCenNWA=;
	b=DyYfq7sLXCVOSt0cDj+xW0gsUFR6+8vvugkXCPWB6rwtUlarfSwXx0zDjqHEP4F8g/
	LtGBINd8Wvl2YrFn3U6eD2t9gAH5fV/p/4F6m6TOXvNNNPBVOnPnu10ImoxyOyyhHyBt
	ziD6seqXQXVLV0OKTksQy66v5PCuoC4fnUbaL1qqMbYLWlnjFw2Seo56TpMTw5xYbXRG
	NFGmN4fJ80Z2ALd5HRmM1ZZxH3C4a7lovb6JGrI4/ODmPbk8At17Pv5wAD26v91nPEVp
	rhZ9kEQZVDG7PN+z9KTNcXK5qtGwbR+KBsirbTlGHl4upW1Vle0/KV/W+7lhA+A/ZNAL
	9PZw==
X-Received: by 10.68.204.169 with SMTP id kz9mr6302866pbc.188.1366379923952;
	Fri, 19 Apr 2013 06:58:43 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id mm9sm13490904pbc.43.2013.04.19.06.58.41
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 19 Apr 2013 06:58:42 -0700 (PDT)
Date: Fri, 19 Apr 2013 15:58:44 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20130419135843.GH2489@jama>
References: <alpine.DEB.2.02.1304190932010.4968@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1304190932010.4968@oneiric>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Fix FILESEXTRAPATHS, dir is "netbase-5.0"
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
X-List-Received-Date: Fri, 19 Apr 2013 13:58:44 -0000
X-Groupsio-MsgNum: 13278
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="o7gdRJTuwFmWapyH"
Content-Disposition: inline

--o7gdRJTuwFmWapyH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2013 at 09:35:18AM -0400, Robert P. J. Day wrote:
>=20
> The actual files subdirectory name is "netbase-5.0", not "netbase".
>=20
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>=20
> ---
>=20
>   same fix was once applied to exactly the same recipe bbappend file
> under meta-ti layer.
>=20
> diff --git a/recipes-core/netbase/netbase_5.0.bbappend b/recipes-core/net=
base/netbase_5.0.bbappend
> index 36432f5..a3fbd33 100644
> --- a/recipes-core/netbase/netbase_5.0.bbappend
> +++ b/recipes-core/netbase/netbase_5.0.bbappend
> @@ -1,3 +1,3 @@
> -FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>  # Don't forget to bump PRINC if you update the extra files.
>  PRINC =3D "1"

that's P or use BP, and fix PRINC when you're there..

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--o7gdRJTuwFmWapyH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFxTZMACgkQN1Ujt2V2gBwdRwCeO9Z1d7zUshTonylFJFICXeJM
CC4AoKiwte+1MTM77qd29DZra8cT2KRq
=OqDL
-----END PGP SIGNATURE-----

--o7gdRJTuwFmWapyH--
