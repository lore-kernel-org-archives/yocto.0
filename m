Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED4AEE00D17; Wed, 27 Feb 2019 09:03:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2234AE0091D
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 09:03:34 -0800 (PST)
Received: by mail-ed1-f66.google.com with SMTP id p27so14518104edc.6
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 09:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=GKeIN1rE8HYaDFdA+bbqbcIJ2RKOExxZQicLsV97hds=;
	b=O3APE9zc8hTnvSj+D8/Rge8TLn9fRxf5kp7mzRiBL0nCq9JhZjWM1pAVcQ8Ao+0MTv
	i7HBKITP1hhi9VpnW+PjVjQM+AdtjZK1YAAMzbAyuB+xHMwaa8geokSzZAnhxCJKZAPZ
	A+lTcmcE8Qc0aAXdu6zXe/eheyulcn/k+dEYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=GKeIN1rE8HYaDFdA+bbqbcIJ2RKOExxZQicLsV97hds=;
	b=WxQ4VSip7S+WBcyLhEDIDpjfA8eJgobJ1HudsmQ9KNNqo+nkKIk7mzXoPqKHIR1W83
	fuHj1MVlQ6ykhPx2G80BSc8ShmWub8CB4DNmV3iG3qtWC8XyNq5zwZdMWeTadI8GFlf3
	jdHjQclDBEiNLQoHqW90O3i0pTKju3ZXLB1l6eTN2Uz53mnkGC/oY2L3IrB1hFQ3y4B2
	WYXzzQ9rcuvtG3jN0D2i56oCnY1taQ8S+VU4TRosP+KsGU3jqg43Bbnm8ljIKh8siGwC
	wHW95oFzZr38TklUzFhgBNzLS6VYZToCDpi3poja/tMFKeu1/TVVPxMDUoC5OHUBfJiA
	JP5g==
X-Gm-Message-State: AHQUAub3LKPEgF9sTuFoYyvtpNNWYYQI7zkYZ+C7ajjnoXu+dd0ouyHS
	7aoZCtspWWQYKScZAhubnsuiI6sqjy4=
X-Google-Smtp-Source: AHgI3IbPdtMydMEVowEldZnPvzXBzoz7QwRE/kWndWYgSLR87UQ12ZdvvLa1aJO3k1XJPyC4+hnoTw==
X-Received: by 2002:a50:be42:: with SMTP id b2mr3149250edi.78.1551287013176;
	Wed, 27 Feb 2019 09:03:33 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-84B8-DE84-7E3B-D376.dyn6.twc.com.
	[2606:a000:1401:880d:84b8:de84:7e3b:d376])
	by smtp.gmail.com with ESMTPSA id
	p47sm4349593eda.31.2019.02.27.09.03.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Feb 2019 09:03:31 -0800 (PST)
Date: Wed, 27 Feb 2019 12:03:28 -0500
From: Tom Rini <trini@konsulko.com>
To: changqing.li@windriver.com
Message-ID: <20190227170328.GU12046@bill-the-cat>
References: <1551256690-116868-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1551256690-116868-1-git-send-email-changqing.li@windriver.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] xmlsec1: add PACKAGECONFIG disable-des
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
X-List-Received-Date: Wed, 27 Feb 2019 17:03:35 -0000
X-Groupsio-MsgNum: 44241
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ItYuPQ2o89VkWXjV"
Content-Disposition: inline

--ItYuPQ2o89VkWXjV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 27, 2019 at 04:38:10PM +0800, changqing.li@windriver.com wrote:

> From: Changqing Li <changqing.li@windriver.com>
>=20
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>  recipes-security/xmlsec1/xmlsec1_1.2.27.bb | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.27.bb b/recipes-securit=
y/xmlsec1/xmlsec1_1.2.27.bb
> index 0cd06c5..76e3976 100644
> --- a/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
> +++ b/recipes-security/xmlsec1/xmlsec1_1.2.27.bb
> @@ -33,6 +33,7 @@ PACKAGECONFIG[gnutls] =3D ",,gnutls"
>  PACKAGECONFIG[libgcrypt] =3D ",,libgcrypt"
>  PACKAGECONFIG[nss] =3D "--with-nss=3D${STAGING_LIBDIR}/../.. --with-nspr=
=3D${STAGING_LIBDIR}/../..,,nss nspr"
>  PACKAGECONFIG[openssl] =3D ",,openssl"
> +PACKAGECONFIG[disable-des] =3D "--disable-des,,,"
> =20
>  # these can be dynamically loaded with xmlSecCryptoDLLoadLibrary()
>  FILES_SOLIBSDEV =3D "${libdir}/libxmlsec1.so"

The same comments about not using "disable-" and making it a positive
option instead apply here as well (and any other layer as well), thanks!

--=20
Tom

--ItYuPQ2o89VkWXjV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcdsLfAAoJEIf59jXTHXZSRbwP/3I27FAldwpbbP6SH6oD5Z7z
WG+42Pq54wKZSQDkjbooXxM3BC/jVLU3rAbxLaN7x/KW3rdDq6TCrZQt8/s9gHDX
ljPMchx0ngy7H42K0WLg93+QFPUh8NbQGwxjdEcKF/3pySrB3hAeyMQ0cxHtt4SG
AhiKI+gvoypctCSrjpxV6MNS9MXTwqUpfbHfzRfW4Q7OGm1z2TyKkjV33XUWjscq
Udrctkiz2X+DsUfLh+06sSyh7avzbFT097EkPw9Zo1I1+uKWv6r05jMuoVNmXu6S
L16rZ/cf3m1wg91MeTLK/sencnEsXwCKEvDWOo+mSHE1bTQGSyQZg8MnGMR5A9EO
OJ0V3fMooTuO5PI7/OZHqmwv04YleZVY9Hq1geLtc/zc/f036P54UBkK7cNWjVn6
3mpfOJLsRvYwjUYPj7YDoGuFwh9203UvXh1unCBOSagm74LnnqF/5ARom2d6yYG/
YASCMa/8GY2fqcopKWWg4HBFD6uIpFRrYkvVO0zNxjGUciLiFFmC2mzh9I7RZyIm
H0WOSjIsPTLC6JHnfMciWCEx08LBpLKP9ri18c9LLbQMogYAvWrYbb/D4ZevhQpx
sv+pLSFd3onAqlMMogZtQYF5JYSfJb3QOctNqmim6niysYYoHDTS9YPygKxY6tx0
b1GTSljCOkJ32dw1pKXd
=Qmti
-----END PGP SIGNATURE-----

--ItYuPQ2o89VkWXjV--
