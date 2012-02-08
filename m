Return-Path: <josh@hipro.co.in>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6999CE01372
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 05:13:21 -0800 (PST)
Received: by ggnr5 with SMTP id r5so201065ggn.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 05:13:20 -0800 (PST)
Received: by 10.50.89.232 with SMTP id br8mr22555997igb.30.1328706800682;
	Wed, 08 Feb 2012 05:13:20 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id or2sm26500510igc.5.2012.02.08.05.13.18
	(version=SSLv3 cipher=OTHER); Wed, 08 Feb 2012 05:13:20 -0800 (PST)
Message-ID: <1328706791.2662.32.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 08 Feb 2012 18:43:11 +0530
In-Reply-To: <1328705392.2662.28.camel@babel.joshhome>
References: <1328705392.2662.28.camel@babel.joshhome>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQlA1c4SdqVDwTZdoJzizCGgKN+fddtenQ08xg2OfiQSQbzbOD68rFlSuz7NKgYraqEeS5b7
Subject: Re: sysroot and boost.m4 library search path problem
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
X-List-Received-Date: Wed, 08 Feb 2012 13:13:21 -0000
X-Groupsio-MsgNum: 4747
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-NYGThq/+hYUxBEiVz2ld"

--=-NYGThq/+hYUxBEiVz2ld
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

On Wed, 2012-02-08 at 18:19 +0530, Joshua Immanuel wrote:
> To address this problem, I've written a patch for boost.m4
> specifically for yocto. I believe this will be helpful to others who
> are using boost libraries. I guess, I have to send a separate patch to
> boost.m4 maintainer using '$with-sysroot' variable.

Forgot to mention, the issue already has been reported for boost.m4 at
https://github.com/tsuna/boost.m4/issues/26=20
I have added my patch (not yocto specific one) there too.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-NYGThq/+hYUxBEiVz2ld
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8ydOcACgkQWw85XwuSFMKL5QCfU9jfx2CU9H2Wk9yirmEy+whC
5UkAoIvoSZ9ipNewimT+c7LBgoiR739j
=fMpv
-----END PGP SIGNATURE-----

--=-NYGThq/+hYUxBEiVz2ld--
