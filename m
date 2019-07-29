Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D408E00A49; Mon, 29 Jul 2019 02:49:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7026E00927
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 02:49:11 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id p74so53181754wme.4
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 02:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=lpclUqqDp49mmwFzIDgEwrZLSV38xBTBt2lm34fIDL8=;
	b=pE/5xhXZkZn91hCxSnONDxt1v8z8NhoZCgEtg9gBeK2uK91SSSZSzGTobirXIljqHc
	QQw/yzMoUliB82IEgojE0UGo6ksXEVUX77dN1OioCVly2Gj72HlMy782mWmLrOwQifEL
	FZM7ly3oSO0AXAC/Nvp6ktLevv+IRJzpumM9s5QCsgTwIWG8gucJ6W9Ar/z1kI+EZQLF
	GWlNcI6PgUPq2qqRBEHxqyI40X8hMgGynz0zrGVYqeiI33GeUX932Paeh2I4+wIxzdYM
	kXYuYNfA1uw62GGQ39WsfkK/479i5ojpvlpZlyfvTS32go2xvlh+J7hnETRhqf6ZzspX
	GUWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=lpclUqqDp49mmwFzIDgEwrZLSV38xBTBt2lm34fIDL8=;
	b=Y0x1OxkF3zFw2IGU8nGHhA1OD5EQJdNDNdEg3Sj08XAFiwO+C7/9qUtCgFR8GDA/Lj
	QCUVI7EHz/O3uQuiNcBfMP5GP+KK1vsFpceuxVMVINQ8pxlbY6fIubcqkNj2+ZapVyRg
	tZwv5LltmBJzAQk7Eb8zSXWsGXcp0d6v8V1xrQ6AMlbG74OWe3QxX+ks1MQHm+9vyaBq
	3AjpRw7CH2WVMdsoae0KWJxyLcHxrIRlO5tv4M/1dvCxHG5YMJVf/O3UmG0qCCxL2CfJ
	kH3n4LKq3AB3oG18Bdc7pwBUR6mNUfQxBZ6lUA3l21YTxJWK1mJv92TexSuUMalPGcjR
	JPRw==
X-Gm-Message-State: APjAAAUjmnBaKBqxHfkA79aMNB1QRlcLKIDolfal17SRFm8QQaUIkH51
	2DTMqpw2qzq1K02u1uWZQEw=
X-Google-Smtp-Source: APXvYqzoUiN+l3T637lAX7K/14chRiRjJM3YAwxsjtRIa0HguwBZqYRK2XIMwNWDmuzzqOuRKBor/Q==
X-Received: by 2002:a7b:cd8e:: with SMTP id y14mr98436952wmj.155.1564393750801;
	Mon, 29 Jul 2019 02:49:10 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id
	x83sm67263050wmb.42.2019.07.29.02.49.09
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 29 Jul 2019 02:49:09 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 29 Jul 2019 11:49:26 +0200
To: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
Message-ID: <20190729094926.GA10147@jama>
References: <20190724112326.960-1-dmitry_eremin-solenikov@mentor.com>
MIME-Version: 1.0
In-Reply-To: <20190724112326.960-1-dmitry_eremin-solenikov@mentor.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-integrity][PATCH 1/3] layer.conf: add dependency on meta-security
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
X-List-Received-Date: Mon, 29 Jul 2019 09:49:12 -0000
X-Groupsio-MsgNum: 46115
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="W/nzBZO5zC0uMSeA"
Content-Disposition: inline

--W/nzBZO5zC0uMSeA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2019 at 02:23:24PM +0300, Dmitry Eremin-Solenikov wrote:
> ima-evm-utils recipe depends on keyutils recipe which is a part of
> meta-security layer.
>=20
> Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.co=
m>
> ---
>  meta-integrity/conf/layer.conf | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.c=
onf
> index 2f696cf7c332..917aa86e11d7 100644
> --- a/meta-integrity/conf/layer.conf
> +++ b/meta-integrity/conf/layer.conf
> @@ -22,3 +22,5 @@ IMA_EVM_BASE :=3D '${LAYERDIR}'
>  OE_TERMINAL_EXPORTS +=3D "IMA_EVM_BASE"
> =20
>  LAYERSERIES_COMPAT_integrity =3D "warrior"
> +# ima-evm-utils depends on keyutils from meta-security
> +LAYERDEPENDS_integrity =3D "core security"

keyutils are now in meta-oe:
http://git.openembedded.org/meta-openembedded/commit/?id=3D415e213ad75ec9a9=
3171c963395a1c4b92c6233b

> --=20
> 2.20.1
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--W/nzBZO5zC0uMSeA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXT7BJQAKCRA3VSO3ZXaA
HC/mAJ9wZqAiXeq9nmH0AuVsu8zaEVHvJwCdEJ5GiA456niwztuYQAOzmTvL3o0=
=lYDZ
-----END PGP SIGNATURE-----

--W/nzBZO5zC0uMSeA--
