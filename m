Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1060FE00546; Sun, 16 Apr 2017 18:27:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FABBE003E1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:27:29 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id o21so18740810wrb.3
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=XuZwLwKYfsd4+cwmiXz9vw1W2akNK2uxCQEoPp1k+98=;
	b=tvJoMp3faMMNODS68PjNM05rJSzCVHiASkx4okMqz/fwvfWMGR6hThQzkpVZvkTHev
	8o0r78E+rRQi7CC81lI+1wsJIl0a6gKAkX58vZ0PSwFZxylt1Drgyg9Lyve2z2df0uNJ
	eWpShgQkz2X/qC89cEboA37GUobTnBrlXG4KGXnUGOvqB++LmOzGq4FvSdsdxj0bWUN9
	YCBpc8FW5WV+qyALlKoB0741qio/bOgHjOqnZJ49+x+Dh5VE3+YzW50B4LjegJrlxTUv
	/1X13dmKnQjDFwnkocgPFTYcGScKkcpmoHnf9fMslCYRVwjZEq44soLUR/rvRhbLt1Ox
	MMtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=XuZwLwKYfsd4+cwmiXz9vw1W2akNK2uxCQEoPp1k+98=;
	b=Nn8/cPST2O0fg3yNmVxj+35K9d8fSrAj8NaUlRbtCHCqD4LR04NPt5NbG/AucdIwd4
	gEQR1ffmXVYaSV9765HMmCeSH8h8+ShJm/866rxLaGWmkL1DsQq8mi9Tt1mWRvNMKhjx
	YX4uqWnaAteCum6SfM6ptg3GLtGaz61CDU8glE4MDEkpTTVWyNSPpGZHloYzzR1/a+mD
	qkSXQRqTTmQhxWNSbU3MRBoE+deNqvPbfzFcPOhnwMKFR6xebzdW6FZ63PWse8gsqJVr
	WuY+hXGFVdjFIhwUqGzZDqwJcEJw926P8oY0rRY93WJfrXcGm8iy96i7OlYQ8DSj1ajN
	6Dvg==
X-Gm-Message-State: AN3rC/6nwCbDAttw2qu2wG9mmNwOhSE+8A6iRBx/xAfQ2mXLkegtwP0M
	e6N3XwQHlcqfbnVzCuM=
X-Received: by 10.223.177.157 with SMTP id q29mr16240922wra.67.1492392447975; 
	Sun, 16 Apr 2017 18:27:27 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	s82sm8434040wmb.33.2017.04.16.18.27.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:27:27 -0700 (PDT)
Date: Mon, 17 Apr 2017 02:27:25 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20170417012725.GD16624@carbonA>
References: <20170414201313.3138-1-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <20170414201313.3138-1-andrei@gherzan.ro>
User-Agent: Mutt/1.8.0 (2017-02-23)
Subject: Re: [meta-raspberrypi][PATCH 1/7] rpi-gpio: Update to v0.6.2
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
X-List-Received-Date: Mon, 17 Apr 2017 01:27:31 -0000
X-Groupsio-MsgNum: 35593
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BI5RvnYi6R4T2M87"
Content-Disposition: inline

--BI5RvnYi6R4T2M87
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 14, 2017 at 09:13:07PM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-devtools/python/{rpi-gpio_0.6.1.bb => rpi-gpio_0.6.2.bb} | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>  rename recipes-devtools/python/{rpi-gpio_0.6.1.bb => rpi-gpio_0.6.2.bb} (78%)
>
> diff --git a/recipes-devtools/python/rpi-gpio_0.6.1.bb b/recipes-devtools/python/rpi-gpio_0.6.2.bb
> similarity index 78%
> rename from recipes-devtools/python/rpi-gpio_0.6.1.bb
> rename to recipes-devtools/python/rpi-gpio_0.6.2.bb
> index 89f601b..a08ea98 100644
> --- a/recipes-devtools/python/rpi-gpio_0.6.1.bb
> +++ b/recipes-devtools/python/rpi-gpio_0.6.2.bb
> @@ -10,8 +10,8 @@ SRC_URI = "\
>            http://pypi.python.org/packages/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz \
>            file://0001-Remove-nested-functions.patch \
>            "
> -SRC_URI[md5sum] = "254d0443a436eb241367c487274e7197"
> -SRC_URI[sha256sum] = "54e5fb06d9ea1a1389a497fb5a06dfa950c86303b0f4ba89b68c55999d1df064"
> +SRC_URI[md5sum] = "9db86fd5f3bae872de9dbb068ee0b096"
> +SRC_URI[sha256sum] = "82acff0ef6bbe3cdf6f4dbdd73d96add5294bb94baf7f51c1d901861af3c2392"
>
>  S = "${WORKDIR}/${SRCNAME}-${PV}"
>
> --
> 2.12.1
>

Merged entire patch set to master.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--BI5RvnYi6R4T2M87
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0Gf0ACgkQJrqo2vax
FPYo+Q//eYfLT00GOyL/ynGpNPCEVuOeWUa1rxUi6IDbYe+gxL5YpdFV4BiUuIRg
VLj9XXYmrPXqhX6DZ3tobTmlDPhxBxZWq2zjbJpALq1/pmdMmbzoAYssxLLoTUXe
hitYalhKtXek3gGQy1pjgrjE+2+oRAnOwHAgODjL2ycrmKXNZ0qpyQILYXB6S4iE
kkF3KsyloJiu8jRclP/r9RIEvIzaKLVWOsrdA+8tR0wtGMWz2QVrNN0VpfmwkceM
lym/fii1sVFgLaK2Qf22QClDgju7HlqpVm/14TRhnt0f9zSQPjegKqbIWZPWVaD6
mjU4VCR5gjMZbQYfh9OjdM1cZ4JvOkpMLj0NZvwyJglkIjBOq58LQ81vvmDoMnED
opxT9EJMxD1BRrAETge3flRKinlxlcqk8pYefvD4uPHE1RBEjf3aj3+nrzZk5Gfv
c8aDO6YvfJO2zjiCPOu/N8kr64FxrCLPtQNetg6Sc3yHchhEvgEsa1HsBcberq5T
vfi3K7Og88ro15F9VfBXoTWMiZxhJYPiLmnH3ubXESfEEViNHV8yyHLcNNYl0uqv
GsNezkP42qsdrsf7WtZxZLB7aBe6y3SIy+uHI92LSZwOqify+Se0Wr9xvM6kUOEh
Gkowp7oyLtlQVS5P9XZCYvWqZsK49eZsN6kFOaY/OErN9XQQeEM=
=hw4u
-----END PGP SIGNATURE-----

--BI5RvnYi6R4T2M87--
