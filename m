Return-Path: <josh@hipro.co.in>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 656C2E0059B
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 23:11:06 -0800 (PST)
Received: by iagz35 with SMTP id z35so2721900iag.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 23:11:05 -0800 (PST)
Received: by 10.50.57.163 with SMTP id j3mr749449igq.3.1328771465701;
	Wed, 08 Feb 2012 23:11:05 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id wn7sm4092844igc.0.2012.02.08.23.11.03
	(version=SSLv3 cipher=OTHER); Wed, 08 Feb 2012 23:11:04 -0800 (PST)
Message-ID: <1328771441.2692.14.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Thu, 09 Feb 2012 12:40:41 +0530
In-Reply-To: <CAEsOVNd5Fi1wtDDgWZFCoOtmbs75WA=nu03+0+P2o3D0ifO6PQ@mail.gmail.com>
References: <1328705392.2662.28.camel@babel.joshhome>
	<1328706791.2662.32.camel@babel.joshhome>
	<CAEsOVNd5Fi1wtDDgWZFCoOtmbs75WA=nu03+0+P2o3D0ifO6PQ@mail.gmail.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQlukGVaRPfHf2SrGLp58LqnK6Z1+nA2hwWc1/dOUc4pI3eRItDuWXlR87XlAXxIhrUmwEbE
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 09 Feb 2012 07:11:06 -0000
X-Groupsio-MsgNum: 4779
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-0cw0Rvdr9GoMtdm45jEI"

--=-0cw0Rvdr9GoMtdm45jEI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello McClintock,

On Wed, 2012-02-08 at 15:44 +0000, McClintock Matthew-B29882 wrote:
> Did you consider taking this patch and adding it to the proper recipe?

The patch is basically for boost.m4. We have the boost package in 'meta'
layer. But, boost.m4 is not a part of boost library, it is maintained
separately. As the boost doesn't support pkgconfig, boost.m4 comes to
the rescue for finding installed boost libraries.

So, this doesn't fit into any existing recipe. Whichever (autotools
build system based) application uses boost library will obviously use
boost.m4 and this patch is for them.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-0cw0Rvdr9GoMtdm45jEI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8zcXEACgkQWw85XwuSFMIRdgCeN1I2afTfxiqnITuaDaE72v6s
WwUAoL8desJYAosCkSzUILq3nB83yMQt
=XRPc
-----END PGP SIGNATURE-----

--=-0cw0Rvdr9GoMtdm45jEI--
