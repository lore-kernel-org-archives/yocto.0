Return-Path: <haokexin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4A0C54798
	for <webhook@archiver.kernel.org>; Tue,  5 Mar 2024 09:03:13 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web11.17966.1709629387139420149
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Mar 2024 01:03:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=imfEoO7E;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: haokexin@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-5d8ddbac4fbso5195143a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 01:03:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709629385; x=1710234185; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5Y21VddkfixoYxuulvzcwmxYj68EWEL0aqHnXdMzOno=;
        b=imfEoO7EjnSVSGsonO3QOHR9A24wOa1oDNLztqrKZDx4iDccDUgUFSQbU48FPrW9Np
         CZ0k5JeOvx8amT+K4FcwXueOqNbS81fB6nvP7soaf0VygNOX5xtwGNShaXhzM+BnnVGY
         9jFwek64ybStUMy1hX9YvJ22USUIbTYfh+1M8udhFBYppq/Gu0hiTyrgIs7lIzrKtmhA
         XPPgU45rtkrc0Y40ekLrdKXVDoxzUzPvZGGv4pTVOJWCAce0uTHeqbU8AQ6aHcpWNO5u
         uruMT/Ks2bLAJD592cJQ/RVWz8OJDe0xLyIv7avaDgcIbtffNcgPjK/6Q6QWghGW9Tdz
         UTvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709629385; x=1710234185;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Y21VddkfixoYxuulvzcwmxYj68EWEL0aqHnXdMzOno=;
        b=ZpqNcs7LCDI1aZ5tfyGTXeSvDcRIbSiGc1kHTCR+xbTpR/OYrw15wM3ocio1Awykmv
         MBjYYy4OI7lLo6SbqH7AAtXN++/y88HDBZ7VRTMN/m9/NvQP4U5FsEYjTj3T9Q0ascQG
         zOi5uKoo1q5sfJRi72Lvx65jIBSAO51tqxW/zUS79NpK+0dzhpg4KLLnCr0IN271BjYF
         iWeQaNpGKlCsAeoU6lYHXJnBEJ5gZBUAnPc+CvgvNOp3kLcYa0Meucd5l4j3p+BWXVCA
         RBQ4IgSfy4ea61zPe4Rn4iv812FDBROjPilwcZ3h408Dk1Rnh05qlVfLavzZ21XR5DvK
         GKMQ==
X-Gm-Message-State: AOJu0Yz+8JtjPnYLzBHCplu+eONfYd8rIv8Vh72zfAA8HAk4u/cci/z3
	iaG0EY5BdmaO+Tr0W/wbvFZ7Bq2R3UBwwhcZJQ+BiGwlNsMfHiwlwMFTi/CUhyY=
X-Google-Smtp-Source: AGHT+IFoEow5MtiaR+xzEcenNxG1y8UxyKfVchXirmg+AJHXPDZ+lc7nJRJTHv5lJ6Qa2iUHi6OXhg==
X-Received: by 2002:a17:90a:d598:b0:29a:e0bc:4a9b with SMTP id v24-20020a17090ad59800b0029ae0bc4a9bmr9497394pju.16.1709629384983;
        Tue, 05 Mar 2024 01:03:04 -0800 (PST)
Received: from pek-khao-d3 (unknown-105-121.windriver.com. [147.11.105.121])
        by smtp.gmail.com with ESMTPSA id l3-20020a17090ac58300b0029b2e00359esm6151754pjt.36.2024.03.05.01.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 01:03:04 -0800 (PST)
Date: Tue, 5 Mar 2024 17:02:57 +0800
From: Kevin Hao <haokexin@gmail.com>
To: Yocto Project <yocto@lists.yoctoproject.org>
Cc: Armin Kuster <akuster808@gmail.com>
Subject: Re: [meta-security][PATCH] dm-verity-image-initramfs: Zero out the
 IMAGE_ROOTFS_EXTRA_SPACE in initramfs image
Message-ID: <ZebfwbgtE08ONuiM@pek-khao-d3>
References: <20240222100738.919774-1-haokexin@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zAomHEVwOhCUuXAu"
Content-Disposition: inline
In-Reply-To: <20240222100738.919774-1-haokexin@gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 09:03:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62682


--zAomHEVwOhCUuXAu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 22, 2024 at 06:07:38PM +0800, Kevin Hao wrote:
> From: Kevin Hao <kexin.hao@windriver.com>
>=20
> It may trigger the following error if we set a big value to IMAGE_ROOTFS_=
EXTRA_SPACE.
>   ERROR: dm-verity-image-initramfs-1.0-r0 do_image_cpio: The initramfs si=
ze 5308416(K) exceeds INITRAMFS_MAXSIZE: 131072(K)
>=20
> So zero out it for initramfs image to fix this issue. This is also what
> the initramfs images do in oe-core.

Ping.

Thanks,
Kevin

>=20
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  recipes-core/images/dm-verity-image-initramfs.bb | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-c=
ore/images/dm-verity-image-initramfs.bb
> index 78f7b49b27d6..b6d3bdc424d2 100644
> --- a/recipes-core/images/dm-verity-image-initramfs.bb
> +++ b/recipes-core/images/dm-verity-image-initramfs.bb
> @@ -17,6 +17,7 @@ PACKAGE_INSTALL =3D " \
>  # We want a clean, minimal image.
>  IMAGE_FEATURES =3D ""
>  IMAGE_LINGUAS =3D ""
> +IMAGE_ROOTFS_EXTRA_SPACE =3D "0"
> =20
>  # Can we somehow inspect reverse dependencies to avoid these variables?
>  python __anonymous() {
> --=20
> 2.40.1
>=20

--zAomHEVwOhCUuXAu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAmXm38EACgkQk1jtMN6u
sXHijAf/ZD22JZzaubTwrzLmyxtLzoAxnXrQJw0y4+womYeY38YXoRcbcot8b1L2
ve/kIn46HuKwl321zekWaEGg6S3/fSn+qaycPFx6319qDRdd9741bfCYCsexpYFh
ecpPXdVL90ffmjT98dQK+ET+0Lp56RdTPQ2bA0wDSPlQkmLDzJYHU1wexAvx3IbT
TioplgKYk/rYVNhRlIeMvXiJLfIwEtCzpRVnvwSDCUPEUGPYygjfQPbtVhAoeeq4
2EB8ObkB4Zd0qX05e/BEiEL6loAeqOoJho/RBH3UoM8QTh2dilf1D1h0EGP8WAmn
NOCvVSR3ZihKeezAaNK/rZjKkowK8Q==
=dviz
-----END PGP SIGNATURE-----

--zAomHEVwOhCUuXAu--

