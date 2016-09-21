Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39E5DE00509; Wed, 21 Sep 2016 09:42:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2761FE00404
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 09:42:03 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id l132so9566847wmf.1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 09:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=RALmmpIz7TwfOCXn5FEvJlrjM0vMvP7kav323XmEI2k=;
	b=ShhDzX+egi/gnKF5V9KVw9SUYDaSNURKVwVBjpzPHG4PX2r+TSW9Viovz/PhNaUO/S
	BztasL7A9yozQmyvXoLep16w5uTZNEEpgg3JG8ZyxwLXN4vHU1HMIZWKdNAbz6kpkZpC
	+NBg7UiQW7uIAnSYxuM23CYwOIbt0oxx8QYVSEAzFMyCxJHtWz8x//srBrAiLP2w611F
	7FxKtRQV5dUHj+ThsF9p3zGqwhVT4kV1abT4ObZ2f/dVNJjUFUq/i0ECcBa+PbTFXqi3
	kgXU8QaGJ1SSOVf4IOnyvojytWaM7v5v6Ipa4Qa8VRPMREvVArpVmnCLvdEUxfpcqDZn
	FYRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=RALmmpIz7TwfOCXn5FEvJlrjM0vMvP7kav323XmEI2k=;
	b=P3sB9qgZFjv4VpJ4bUVUmYRrCIF/gXD2I6Lk6u0Yq7mE5gDH+331cUUA19TI2PdsvJ
	7gVbcukD3ITyVuT5ZYeIsnkOLlbob9yMWl2qLx0RHQKyeSSjnLAgvu72V60/F9G4H6gt
	bpM+UeSvf3sfnEnGDhsk3y9YRvtGJa3tGsjNsGOsRbbX9hwg5ExqnmLGLDXWdOveTZEb
	z+CQnVJpqN/zxH3l3ZSiFL2aETNiE6X/mb1H3qUns5nAvb2lqrlyjkXgkBYHF96LVDFi
	pgrK9hNUNZkx2InTizUi6E4vLy44OfTjPQ6qjRJBmkUEvkB7F2HXiiO4aUcNO7us7Asz
	kSBQ==
X-Gm-Message-State: AE9vXwOLjsWuIQFGniOvPB158xB2DABFonbztn+pFdwe97pKF71UmflFXexX2qAppatcWQ==
X-Received: by 10.28.174.81 with SMTP id x78mr3905944wme.109.1474476122695;
	Wed, 21 Sep 2016 09:42:02 -0700 (PDT)
Received: from resin (host86-179-71-51.range86-179.btcentralplus.com.
	[86.179.71.51]) by smtp.gmail.com with ESMTPSA id
	bk7sm34459571wjc.36.2016.09.21.09.42.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 09:42:01 -0700 (PDT)
Date: Wed, 21 Sep 2016 17:41:59 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160921164159.GC32726@resin>
References: <20160812010608.31182-1-raj.khem@gmail.com>
	<20160812010608.31182-17-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20160812010608.31182-17-raj.khem@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 17/23] linux-raspberrypi_4.4: upgrade to 4.4.16
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
X-List-Received-Date: Wed, 21 Sep 2016 16:42:06 -0000
X-Groupsio-MsgNum: 32026
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hYooF8G/hrfVAmum"
Content-Disposition: inline

--hYooF8G/hrfVAmum
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 11, 2016 at 06:06:02PM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kern=
el/linux/linux-raspberrypi_4.4.bb
> index 8fe5330..9a49dc1 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?=3D "4.4.13"
> +LINUX_VERSION ?=3D "4.4.16"
>
> -SRCREV =3D "680be5e27a9593cf26079c6e5744a04cc2809d13"
> +SRCREV =3D "cff67c7e03f4333149f2a8f6eafd3bc44475114a"
>  SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branc=
h=3Drpi-4.4.y \
>             file://0001-fix-dtbo-rules.patch \
>             file://0002-vc4-ioctl-rendering-allow.patch \
> --
> 2.9.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged paches 17-24 form this set. All the rest where already in master
=66rom previous merged. Thanks.

--
Andrei Gherzan

--hYooF8G/hrfVAmum
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX4rhXAAoJEHO76Gt+erfP2AcQAI7cPfIyQeNHY7Z+9O/Z7DxM
USP9VXbuQH928O4p3LJJWeASAiQwEBX/Lf5vonNhfBtD2/iefYw4r05pn5SDPMZ8
qcrMwgXZPeRbiM8Sbh9Z3oHm2ey4/WPs87cj8HHdWOZjsv+OrlNB9ryKi+PCaNij
c1od6//YJhEGSMtwAEYh2EJHdPPKYAAa1cxEbac59SBU83AF9xPa+h5D3lyUqyGa
UXMZnv3j1P5TC23j5gjbs2jc+nf7QCc4NhdHVLmcuDga+5W5O7L5xB0ba/0bPcRE
MkxXhklr0JY2lUBsmdiwVeRa+naYNK4OORKSaEJrA/+ApHvKGwVD3Xd+x/IIpY6y
ihM5U++RxDmcHHlW9pAzQN8ILicrVUWOg6sSkFj7YLAOwHw7QZ2kflJWH250xNGD
qybXhr4Nn+OFV0KevpSUzkdrh6FSJuypN+gVk+YUHy7L0rxlx3wcDfF4xkGhd57/
5tKNRUJEmPdZ6wyh0u4pSkRkHtomyPDJXeWos0gt5jc6SHZ6Cysd/L5nhWVLQG2W
GlIFpXljHSZT7/mTjd8qUWSD2fnZ8dGu4rR2REMT3HVsRohpuczacP58QFGcFVeT
Upxfi0H6mWfWHvcWo7b6BNseujxeELYi0Ys6+pc30PD336wOx+Kr1J1sozH3roO8
1xouWZNrwQm9yoqc7Htz
=g3bo
-----END PGP SIGNATURE-----

--hYooF8G/hrfVAmum--
