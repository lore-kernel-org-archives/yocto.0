Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66653E00E0D; Mon, 31 Oct 2016 07:10:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C348AE00D1C
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:10:19 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id c17so18608131wmc.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=AjFYQKE9gRUj0yTySd+oxs7PRIotPrIJQtY3aIODw14=;
	b=Dr3WGKFtLWNdEwtvsVX87vYrTF3mlvjDwJuazz8hb/cnsbVLcJgbMoighfNvA4VENK
	sHeEgZgiegN7ExwekwX/5Ck+yY8c33frhIoWiZAN2ldJZRQ3zoX4UjP13CmJf/9vSDdQ
	gMw+iibAcZqsBTU6UYaqWrhU1/1RBB3ZunPc2vsVBj+RmK8KL296Weym9buq/EIskQ77
	KrPB0xRXXv86EfmU9QtdXrW1DlehlJk2LCsKyIpZ4WpIDMNf38xtR4NuIl06i0cByVKD
	gDba/qVzsQ5hwaS2flaitr1k0bT0CCiWcbaM/LyZwqWVsHAeL8rp8wtyLvtOcX/EefKN
	mfvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=AjFYQKE9gRUj0yTySd+oxs7PRIotPrIJQtY3aIODw14=;
	b=P3kcDtvx+eY1Pm5Cgnay6z/knlM7ifuBHWuxAK9n+t73o6RJ1WrpPI15QxXes1lKUo
	h+3e9IuuPGR4palX8mxPkCZdtBnCr1Fb2PDEOvub+R9FbHry5EY1xBL17eYbuGFHn6tP
	KNWQmQ7l1zxP+iqyboUQquZLdPEwUmQAHukEU4cSViHQd7g6jpTVcKMP0z/Zd1D2nOHI
	fdOKe4vS9ArG2LiToOfU2awLtBRFvsAQgSgUsVUEB/8otjzmqi9LLNdYuCHmPPjBO+Sm
	IQxu0gjf4mZ8kLdl4FTBOfz3zwj1vqXna8IzEToyeIZuuAbpDorJlY5y81Gb8qP2YHT5
	W1mQ==
X-Gm-Message-State: ABUngvfBPDrDhFZgVx5vUtPnL3T+rYdXZKQtiLKA/46TXwIYQ/9rLBCVQOvRvy633amulg==
X-Received: by 10.28.48.203 with SMTP id w194mr12016431wmw.115.1477923017907; 
	Mon, 31 Oct 2016 07:10:17 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	gk6sm30160359wjc.21.2016.10.31.07.10.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 07:10:17 -0700 (PDT)
Date: Mon, 31 Oct 2016 14:10:11 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20161031141011.GA9939@carbonA>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
	<1474523274-3883-7-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <1474523274-3883-7-git-send-email-schnitzeltony@googlemail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 6/6] rpi-base.inc: build vc4-fkms-v3d.dtbo
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
X-List-Received-Date: Mon, 31 Oct 2016 14:10:21 -0000
X-Groupsio-MsgNum: 32685
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline

--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 22, 2016 at 07:47:54AM +0200, Andreas M=FCller wrote:
> For those who want to run closed source driver with mesa. See further det=
ails
> at [1]
>
> [1] http://anholt.livejournal.com/47717.html
>
> Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
> ---
>  conf/machine/include/rpi-base.inc | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi=
-base.inc
> index 69774f4..737e842 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -38,6 +38,7 @@ KERNEL_DEVICETREE ?=3D " \
>      overlays/w1-gpio-pullup.dtbo \
>      overlays/pi3-miniuart-bt.dtbo \
>      overlays/vc4-kms-v3d.dtbo \
> +    overlays/vc4-fkms-v3d.dtbo

There is a problem with this change. It seems like this dtb overlay is
not availble in kernel version above 4.4. Don't know exactly why.

>      "
>  KERNEL_IMAGETYPE ?=3D "Image"
>
> --
> 2.5.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--envbJBWh7q8WU6mo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF1DAAAoJEHO76Gt+erfPPSoQAI+G4H+pryUHRDWM3K3IlElJ
McD4JlLDYHleqhEly8E7XeGbPntuRF4u0jxaCHpZeu7dOdcffOHtt/ZaQ/phAy0V
SlO5Nc++eXZuLb8S5ua5KEUeWiUDkY54rFWwL1F2GBpRJG3dIxnOLoWQY5iKo0Ut
H1x2jqcHQTmijr0EnO9NPtn6wHHoc8lqowbxVyGxq+rxspfDhRjQyKLYDmhHFMM9
RXoj2hAV0AuzOK8qa95AiZY5PxED63OOTWy2Hm2eM/hPShU7Ttm6LeQatRcJVAop
hmLIBez33Pzms61NI00pA3wMTmxP6smnUKWTTA0w5Oi6CLMwpeiw1yhZpafykvMa
crim7sYw6ZZUHuMZm9abGeSdvHKna1GEN0K8i3IE3AsJwLADP0HPBo3NZ0EFhwHk
hbyzmimoVOc0L+FEkh/StwulWcCQzCWUM/ZujKxF54TteSUD6QPhoditDvpvT7jT
+HJzWo64zhMCEtNQSIIWuz0exbjNPvt6B9kCvakIZH2KXKLw3hpnpVckJPEm/pM+
pvZ36KuQTtoETvB9UcM+1widC3tcwgkNdWYVgBheLe3HtvPskNoaQ4CC6O0Yt2hs
hbodHdTvNfCb2KCWzWzkwaD2wan2YBSON+rQG0nd08qEGjQSTEjEuovTtj/5IRr9
+F5P0c/CshTL42Mj4FBM
=w7uS
-----END PGP SIGNATURE-----

--envbJBWh7q8WU6mo--
