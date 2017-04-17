Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D945E00BD6; Sun, 16 Apr 2017 18:29:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D83FBE00BCC
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:29:27 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id z129so4183879wmb.1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=L6glsft4ZvYfgPwEsSKV6o/a1Lol/hioZGnb7e83Qhw=;
	b=GDZegTU2jZjCOFEkq7t+IbAfcRmwE+VU1q5INDWfwYXUAGfF3pdIa+oY0KA69v3GyC
	suOg1Qi0h1ylmUn5WA+lJnARewqGjFhw+ektKhSJB5gnLY0+j5AyFGvSW19PD9uoDmQR
	aTNKemA67SPHInRvOyxU6eyEGInQ+EOicy6/rcCv+QM5vVy2BsvbxTyDtXZS08QTzJ+o
	2saP4ysBHkhBfYBk2SScrevBbUYOEL+5niH2Vu6goGHGSyN1rXd3LHbaGekwI+CwFOI5
	tC7gYrvgaXGNXaiJFklK7cY2HmuT5xQTowNTaCLkfXX5G1mfauQX2JajPDKGRS/t3L5K
	bqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=L6glsft4ZvYfgPwEsSKV6o/a1Lol/hioZGnb7e83Qhw=;
	b=EVz+BHlGJ3jXVt+nmruAPY4m7xq3Zx6ZXjI2ndJs/AySt0HNUyehzYmWWiw1QGBuGF
	m954nTXM+MwUtQVaNgKfi6Zi+iUiJvPijOcgGmCAzdZ3NIOtdCcdQ6r4WRrYh+I2uty3
	fcb2CIwHEXV9Qx5/QnIVEjqP8ZXxMJyhol4xacZbYMtykbwqvTQ0CcV9FIcm80X3M17Y
	h0Zi3Eh3g/5dQ3Wjr0EiaCvlOC65ELtEgZnRQa16n002QdN6Yplnq2p7UJEzSOgmP8xO
	mzpa1dQOXy+DTMrJVRs9x5zxOq6Ojg1NQnqutCaw9QMxM3nk8iweSeETCSZ04Ta5b3i+
	igbQ==
X-Gm-Message-State: AN3rC/6LEIOExSpzInuGrjYbGv37A+HKNLhV/BS+qYPpRd2gFN5CjWhf
	C7Dvk+2UfCU5vw==
X-Received: by 10.28.107.129 with SMTP id a1mr7166757wmi.47.1492392567181;
	Sun, 16 Apr 2017 18:29:27 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	k13sm8430849wmi.28.2017.04.16.18.29.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:29:26 -0700 (PDT)
Date: Mon, 17 Apr 2017 02:29:24 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170417012924.GF16624@carbonA>
References: <20170414162035.23522-1-raj.khem@gmail.com>
	<20170414162035.23522-5-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170414162035.23522-5-raj.khem@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 5/5] firmware: Update to 1.20170405 release
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
X-List-Received-Date: Mon, 17 Apr 2017 01:29:29 -0000
X-Groupsio-MsgNum: 35595
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0rSojgWGcpz+ezC3"
Content-Disposition: inline

--0rSojgWGcpz+ezC3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 14, 2017 at 09:20:35AM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-bsp/common/firmware.inc | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index 53c469e..1c3a911 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,10 +1,10 @@
> -RPIFW_DATE ?= "20170303"
> +RPIFW_DATE ?= "20170405"
>  RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
>  RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
>
>  SRC_URI = "${RPIFW_SRC_URI}"
> -SRC_URI[md5sum] = "c87bc1bffbb8f254fc739e34baa03b02"
> -SRC_URI[sha256sum] = "ee8758d7e63c8fea7c8b7b476ff1c09f9591c74349b7751036a78ae5b88eca36"
> +SRC_URI[md5sum] = "ea82d14a7cd8cfae9b78e00d4e56bc71"
> +SRC_URI[sha256sum] = "2f4e5bddbac1372590db203002c35cbba3fb9d6172a93c314ee27bf05ae13bff"
>
>  PV = "${RPIFW_DATE}"
>
> --
> 2.12.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged a similar patch.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--0rSojgWGcpz+ezC3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0GnQACgkQJrqo2vax
FPZHpg/6AxpZvkS+PFhUYXQXXkLJuqNZIUwPLaGd6T8/ahb7eO3NcqJ3PMBgMeX0
61xZQaTLV0KyNoJqeYXR2bzGmlOd1/jVXUcy8+Vi/8ojz9EJ5qxrcCRkvzKPTrND
9Ie0DXSnnTs4ElqfHvpKuWP6Jecqq3wSsTuReS5eDIQh7OIeVmBySANaC5vJc227
FfDo84RkF6vanIzofd0mzPnAtX20WhFxGYEjWZk9XkejcYvvVq3+rZ515YsLN61V
2EYOY8fI5gGBvuhpzE/TYQByBbkxACIDcV+AV62T6WtBsMxQv5y5kGlV7MC3tQN9
sftvIA530LjRp/0Jj+xpgmDkcSN+L5RMttrTbhm39DI/GpEdi8izU/GLlXopI1Ed
RNPjwrR543Ecl1czI1wyc8AwGGEV1ZM3NmW6zLFrAd80Dy6g9cWIL5sKt7+sXOnE
aAYf/oyT3/2cq7HpaDhR3KYIhbBcONwGqjbNb1vk/VUuO8k72lqkQTaVCw9xh/+M
sYfNomZGLIkMIY5oZgPbsQzEDmB5Jz/0J73AaZNPDleED0KdRVlHCq/sWcl7npRk
hSt7QcfIr0FTx1WS5qWFJ0uvwRsp/2WsG9Jx2xLlbrK/LlDD96n3kPav91IearfN
NeWg4YbuJG3jh/VyumfLQCpXpcoEiJqt1lOdnmHmWwNfzNDOTFw=
=g4hF
-----END PGP SIGNATURE-----

--0rSojgWGcpz+ezC3--
