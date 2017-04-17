Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A899E00546; Sun, 16 Apr 2017 19:09:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C16A0E003E1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 19:09:24 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id z129so4253809wmb.1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 19:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=0EvD7bmHfuHJVF5hya/GfNSI8D19p8YZlFP68JWSzE4=;
	b=bdllSMzyiPkJk3i26KdFI42xKU++tFndvPowoV1JJg64gLBGmvzeHQfgyH1hUHLQPf
	Aj85i9qVQiPapNWrouiv7dXmc4cj6vV7IjTsCTQBWl1ka7bDbWXhVmNNZrFtEAuvW7a6
	tDQHgQJYmCYGpZ131n5NH3a3DzlUZuHSbw7y8/RXuFcOAbBX9nVLbvuG7FY5XHJ+kYg6
	AvwtwULd23jrs4eSWc5TmF/avSGad6aZWmVlAo6izHMcdMFQdOaZq4I0n4PC4F6/NQYC
	5gyzzlKZ2HDz+CqyfSmYlnqnuKNVtx7fcwfmdgf8WcWw0a27ZeNys/L4wEyjW1UYNtg9
	xbEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=0EvD7bmHfuHJVF5hya/GfNSI8D19p8YZlFP68JWSzE4=;
	b=Vo9pDsBHqRqGVLl9tf5t4erm/ARD5GcWaEaT5zTf1srbwfuo562Sl/KC7Tc+Rp2FVi
	9d+uhaBKUHQC3a74himC6tdp7NLXspqwGb276FBGddTF2P6AEqOklDKC/S/dpsrX8LiK
	srkwdp6D6eNuvhUA1jID3O1YS/FHzol0kNXw5QKOsTHZz9wz93fteneZp0DtKGRLGlga
	tO7vPScHRCbRWOxlEQ5neJUjMaAB8gtdA0zBUbvR/pW3ZvVZdbsxCa5m+nSeOwHgIuJs
	L4Y2XiQgVUOLTJ+WtQOU4rw3yHHThRl0xJTK/4gyXUbd+H3igo4RbktYUouSXZgTvUKy
	JLdg==
X-Gm-Message-State: AN3rC/5q/hXw5ZWOC7XJvR1KQdYZLu9FJAJLaausCV2T5joQ7XObbsip
	PyMTzFe6GYDlQw==
X-Received: by 10.28.197.135 with SMTP id v129mr7357556wmf.55.1492394963536;
	Sun, 16 Apr 2017 19:09:23 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	e12sm4559647wrc.43.2017.04.16.19.09.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 19:09:22 -0700 (PDT)
Date: Mon, 17 Apr 2017 03:09:20 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170417020920.GL16624@carbonA>
References: <20170417011206.29137-1-andrei@resin.io>
	<20170417011206.29137-2-andrei@resin.io>
	<CAMKF1srqpcaGHKCgZW=Dqx+obGvFdc5qmke04x6sOynGRb6PsQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srqpcaGHKCgZW=Dqx+obGvFdc5qmke04x6sOynGRb6PsQ@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei@resin.io>
Subject: Re: [meta-raspberrypi][PATCH 2/2] x264: Fix build for armv6 RaspberryPi boards
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
X-List-Received-Date: Mon, 17 Apr 2017 02:09:28 -0000
X-Groupsio-MsgNum: 35603
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="37cJpJlYZwAfNbm5"
Content-Disposition: inline

--37cJpJlYZwAfNbm5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 17, 2017 at 02:00:20AM +0000, Khem Raj wrote:
> On Sun, Apr 16, 2017 at 6:14 PM Andrei Gherzan <andrei@resin.io> wrote:
>
> > quant-a.S uses rbit thumb instruction unconditionally even though only
> > from ARMV6T2 this is available (which is not the case for RPI1, RPI0
> > etc). Avoid this by disabling asm.
>
>
> It would be bette to control it in component's own build system how much do
> we lose in performance if any do you know
>

I haven't tested myself but I know people who did and reported a 10%
performance hit.

Now I see two more options - other than this one:
1. Deactivate in configure ASM if not HAVE_ARMV6T2 - don't see any
fuctional difference
2. emulate rbit if not HAVE_ARMV6T2 - do you have any ideas on how to do
this? I'd like this solution as rbit is the only instruction failing so
we could take advantage of the other optimisations.

PS: in the meanwhile i merged it to unblock the builds.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--37cJpJlYZwAfNbm5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0I9AACgkQJrqo2vax
FPb0kQ/9EQ6GaEOnejteiaudjnqS3eZOqQRbyPYDv/lCgE0Hlj30JLr0e+6DkbXK
CCIJAItZpHO1U+uXTS1F1bZIgTRDqpPjkCgMWoeifzow7DaqI0g0zOcJKOBX/frq
bMERR4YPB3xi2eswzpvHQdQb8R6AajrwFC9lN8HZOb5WqOAf2AP+Tu+uDbx7rPY9
NZnPeKRjhjBvIQwgqyF3PXyNObHdtFMg1u5pe1KCFlFajDbzF5Qqi+YZV80Y7zOn
gx74aDNUILxy45lZu/AST3WsHhbPDv2s/nCfVr4kE8rV+3Pt7deNdI3eei7X+REJ
y4do4Kxb06V5iJPYzxe1s993zCR+R2369UFVkByj/07f4w0Iixr1P/Hfh+LoTe/E
olQcXuPrIEWqGMFBh54yKnaIZjeEEgDY2koRL4+1dC/yTiU7nNEhZLzzT9Av4KPf
l7/lWj9Zyc0asnvWYtIiMaSb7u2y0K+MIi8ixkAmTA8P62lSLU40DzhvMiI4LSkb
HQxYmZ2Tfzwh2NayCvovZ2AzK8ZuU6ARg9A6pJwc4MlxWWH3lJuhoMgmxAhH8SqU
VRRyryInjcWCTzH7nhbwfM4Q5lwO2Xr8nkJcYHHFHjGjsg+j4nQGWVf+kEtQYXbH
kC6yUVmGHfXMz4Y5aNpsicOCx5iv8DoI1FzUIh9sZlLrhYWtfHs=
=hINq
-----END PGP SIGNATURE-----

--37cJpJlYZwAfNbm5--
