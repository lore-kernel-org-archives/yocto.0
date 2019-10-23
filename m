Return-Path: <clopez@igalia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A297AE00DF0; Wed, 23 Oct 2019 05:31:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 2058 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Oct 2019 05:31:53 PDT
Received: from fanzine.igalia.com (fanzine.igalia.com [178.60.130.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 853B6E00DED;
	Wed, 23 Oct 2019 05:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; 
	h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
	bh=55jadsL0SSZNeNJX9NJudkioCWpMatgtoIIGsI+2910=; 
	b=HDULaf46G/gJXRGMXZgj6SU4nQVroAlTFRS6/oAzLaBcrhQSTpguQOBtj9R2vxo71ylJbyRCsytjIXm+mqd0UUD2ZY8xaPBqtgdSElmIfKzz8OUa4iLu43aZPiUQlqy7yJ2LdhKkCUh7CU319CKenXjQ8w0S4eyUK8Rg9+KSwCP5Qt0i6cCURRJSg8DsJW8OweFAelYKii1I4RwJPhbM9IJpu6uyl0mJiftHY3NLPlt4HjKbTJwJerySXRHTbg4VNo6lmp8a1tWkiTcK8wvl5PSj2iqv/SKEzEgjrc39kmgFKT5cPiTCcgjQ7SN0ywVRU0gx1hRWsO+1bW0bACc8dg==;
Received: from 83.16.165.83.dynamic.reverse-mundo-r.com ([83.165.16.83]
	helo=[192.168.0.11]) by fanzine.igalia.com with esmtpsa 
	(Cipher TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim)
	id 1iNFGg-0002NC-J5; Wed, 23 Oct 2019 13:57:34 +0200
To: Andy Pont <andy.pont@sdcsystems.com>,
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>
References: <em2944f528-f3cb-4055-92d5-6284b7d079eb@andys-imac.leeshillfarm.local>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
	url=http://key.neutrino.es
Autocrypt: addr=clopez@igalia.com; prefer-encrypt=mutual; keydata=
	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
	clOhRuoxQ9cr+zEBVw==
Organization: Igalia S.L.
Mail-Followup-To: Andy Pont <andy.pont@sdcsystems.com>,
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"webkit-wpe@lists.webkit.org" <webkit-wpe@lists.webkit.org>
Message-ID: <5a4df255-cbaf-8753-3c6e-7d45a8086e9a@igalia.com>
Date: Wed, 23 Oct 2019 13:57:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <em2944f528-f3cb-4055-92d5-6284b7d079eb@andys-imac.leeshillfarm.local>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"webkit-wpe@lists.webkit.org" <webkit-wpe@lists.webkit.org>
Subject: Re: [wpe-webkit] Optimising imx6 performance for HTML5 using Cog + WPE WebKit
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
X-List-Received-Date: Wed, 23 Oct 2019 12:31:56 -0000
X-Groupsio-MsgNum: 47026
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature";
	boundary="kRhR8Rfd5k41GXHJqoX9D7s8jLCOYsuU8"

--kRhR8Rfd5k41GXHJqoX9D7s8jLCOYsuU8
Content-Type: multipart/mixed; boundary="v5PsqgSdK3l1ZkA0Fg2nj23AnT81YNxe8";
 protected-headers="v1"
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: Andy Pont <andy.pont@sdcsystems.com>,
 meta-freescale Mailing List <meta-freescale@yoctoproject.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 "webkit-wpe@lists.webkit.org" <webkit-wpe@lists.webkit.org>
Message-ID: <5a4df255-cbaf-8753-3c6e-7d45a8086e9a@igalia.com>
Subject: Re: [wpe-webkit] Optimising imx6 performance for HTML5 using Cog +
 WPE WebKit
References: <em2944f528-f3cb-4055-92d5-6284b7d079eb@andys-imac.leeshillfarm.local>
In-Reply-To: <em2944f528-f3cb-4055-92d5-6284b7d079eb@andys-imac.leeshillfarm.local>

--v5PsqgSdK3l1ZkA0Fg2nj23AnT81YNxe8
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 23/10/2019 13:27, Andy Pont wrote:
> Hello,
>=20
> Broadening this out to the Freescale and Yocto mailing lists to see if
> any one has any answers=E2=80=A6
>=20
> We are using Cog and WPE Webkit on an i.MX6 Solo based board with a use=
r
> interface that is based on HTML5, Javascript and CSS and are having som=
e
> issues with fading and other canvas effects.=C2=A0 The board is running=
 a
> Yocto image with the following in conf/local.conf:
>=20
> PREFERRED_PROVIDER_virtual/wpebackend =3D "wpebackend-rdk"
> PACKAGECONFIG_pn-wpebackend-rdk =3D "imx6"
>=20
> PACKAGECONFIG_append_pn-cairo =3D " glesv2 egl"
> PACKAGECONFIG_append_pn-wpewebkit =3D " 2dcanvas"
>=20
> We start the browser with the following command line:
>=20
> cog --enable-accelerated-2d-canvas=3D1 appui/index.html
>=20

How the performance compares if you disable accelerated-2d-canvas?
It gets worse or its the same?

> Are there any other settings we should be using either in the Yocto
> build or when launching Cog as we are finding the CPU usage is >90%?
>=20
> Is there a definitive way to show that all of the necessary drivers are=

> loaded and Cog is making use of the GPU?
>=20
> I have tried this with Cog 0.3.0 built with WPE WebKit 2.24.1 and Cog
> 0.4.0 built with WPE WebKit 2.26.1 and both give the same dissappointin=
g
> results, as does running on the iMX6Q-SDP board I also have here.
>=20

Usually on the web application side there are different things that can
be optimized to make it perform better on WPE.
I think it would be helpful to understand the problem if you can share a
demo of your web app where the performance problem can be easily reproduc=
ed.


--v5PsqgSdK3l1ZkA0Fg2nj23AnT81YNxe8--

--kRhR8Rfd5k41GXHJqoX9D7s8jLCOYsuU8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIzBAEBCgAdFiEEtdK1C8SOx/HukNmrllCJzmuV+IIFAl2wQCUACgkQllCJzmuV
+IJUAg/+PYzWJGZmLTUnHghyxA8vBOz9376fB4/YGH7TppocSF+k2KSvRyGWQR8C
lzpkOqzh0d/bHR8aDAVGRECtC1kBVuioIzQOVc8DhenWbKJ5e3O/i37ORnQVbyZs
VqLoVh7mkp0VJ40SVE0DmX0rm3Z4QcnywZ5N1ztY25t6oHgZq1Vo9ih+JmEuilDi
Sy3yDWZDKe+ecdemTyNUG+8n13coS5U6MPckkarV9M36K5BXUuf5bP1qHKakQ53A
Z48mbdbQ+pneJKA0GFUthSZShx+kQ3qDuzm9z/4JGgrh7M1HXjBWmWoNMiYw3Lnx
TI5WiEz7LUTtZM3L9IP0gyz74TP32nbIi11f0sc71g1Iu72g5wqmeVP3LPnkNe+d
SmEPoJDhUcy1uOpt0y1Wo3cmt8wZmYu6Wi9LURk4lU1MvAdUbV+YEPQ3vfZrucrJ
8ag9bnU77xXscLse9Iqrh1AOLZhm+rLWiYmaDc4d0ABQj2JwvdK1NMRLlNNhacj4
67+I2yF9SER200O1f3I8jzRwxniULrlaIErKIfVQI409z+heIhhwJcYGObi6J93E
nDB2bcirlvzUFfHEqC81EAQIe/hP4ic8uODyNg2mqFDf3s3mnuonzG4Y+Ooo9ahN
iDhlQfDezXtx3xQT17N5rUJdTUQlHPaiNJOTGegRjWSWVVynm+0=
=6Kg3
-----END PGP SIGNATURE-----

--kRhR8Rfd5k41GXHJqoX9D7s8jLCOYsuU8--
