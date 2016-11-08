Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0334E0097C; Tue,  8 Nov 2016 03:28:36 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C8A1E00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 03:28:31 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id u144so21923543wmu.0
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 03:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=JwlGxdPY/5neg4xLxmw0W2zOjvV3qm0ayT222yN4OWk=;
	b=xLSuce7Vs0JWIGsqjoES9W5RkPPba66nndaUT/zIplWT1SAsA18pXRzX8zLPbBmPet
	jw+CzcfHqLgrXmw4BEHeWhkanh1o7qKY+MjoKJr3qJ7tOXpeBGUh5GOw8l1sok/xsCKL
	PDqSMHigZLlR8gXiY2fXOpPz3dEGJXf3OfFlJxwnc2NI+wWN2ZUjSMbgdB6EpkBml8De
	8kgRFxiMdEAXxBxa6dp2GX0SwfuIZXXum+V0N7TnZk+GUoql5VZy3ndyfoGn8AkTvSFm
	NtOgkT+Dh73E+fV6K5tFWfHzfrWj1GBY8WdzAnDO3WJJTyAEkUEv6T1R9Q2AYOM764Qk
	VVeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=JwlGxdPY/5neg4xLxmw0W2zOjvV3qm0ayT222yN4OWk=;
	b=AAXvQ3pFIewduwOHkEGb8f7N4PzxOSP1jNc7p/R7unAEONQvumlTUZU5yexglddJUC
	H8NIyOM0Qg3oA+q+zJC98Zq2AmzbDFHp7Ousz83BidosAQxR4eQaXXCJWvTJjWM+IWSp
	CKcfVs324dAJbnM95qwM5EJmQwuIHZDbPuYA8yOID1FTDosD2STHKMf5BpyhnUGGMB1Y
	Jc8bfbdwxqmFqVvcP3HPBjy7JdEr+yrZA8FdpF4VNrWEMf8Z3D8hdDiXbEtUU9lNyl8Y
	550E/HvQ11k1BfPeuqCjeBqTA5AzwrGA3/q9qXipfajsOo0jRJAFxDopIDJELR0yuXOU
	HEmQ==
X-Gm-Message-State: ABUngvcv04dHoWxlwpMVRfuWO/t7zxrD8CuGPpgYhUqwSiehR5gXMi8R2QHxKix29Vjhtw==
X-Received: by 10.28.66.218 with SMTP id k87mr12561482wmi.79.1478604510604;
	Tue, 08 Nov 2016 03:28:30 -0800 (PST)
Received: from carbonA (adsl-10.109.242.134.tellas.gr. [109.242.134.10])
	by smtp.gmail.com with ESMTPSA id
	o62sm19064041wmg.9.2016.11.08.03.28.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 03:28:30 -0800 (PST)
Date: Tue, 8 Nov 2016 11:28:07 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161108112807.GA19379@carbonA>
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<20161106072515.3505-2-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161106072515.3505-2-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] userland: Bump to latest and add ASNEEDED = ""
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
X-List-Received-Date: Tue, 08 Nov 2016 11:28:36 -0000
X-Groupsio-MsgNum: 32914
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline

--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Nov 06, 2016 at 12:25:15AM -0700, Khem Raj wrote:
> ASNEEDED does not work with userland libraries as
> noted in see
> https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.html
>
> Helps with running kodi using gles2
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../userland/0003-wayland-Add-Wayland-example.patch        | 14 +++++++-------
>  recipes-graphics/userland/userland_git.bb                  |  4 +++-
>  2 files changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
> index 49a7872..98f18c8 100644
> --- a/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
> +++ b/recipes-graphics/userland/userland/0003-wayland-Add-Wayland-example.patch
> @@ -1,4 +1,4 @@
> -From 7f52662a4d1965988ee5ada28ce3525c38ebf164 Mon Sep 17 00:00:00 2001
> +From 6ee44bd040bf8e8abf9c5a7be7f6ea4b82d5671a Mon Sep 17 00:00:00 2001
>  From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
>  Date: Tue, 1 Oct 2013 13:19:20 +0200
>  Subject: [PATCH 03/13] wayland: Add Wayland example
> @@ -844,23 +844,23 @@ index 0000000..1a7bfc4
>  +}
>  +
>  diff --git a/host_applications/linux/apps/hello_pi/rebuild.sh b/host_applications/linux/apps/hello_pi/rebuild.sh
> -index fa4539e..37120ac 100755
> +index 8225dd5..0be6ce7 100755
>  --- a/host_applications/linux/apps/hello_pi/rebuild.sh
>  +++ b/host_applications/linux/apps/hello_pi/rebuild.sh
> -@@ -13,6 +13,7 @@ make -C hello_jpeg clean
> - make -C hello_videocube clean
> +@@ -14,6 +14,7 @@ make -C hello_videocube clean
>   make -C hello_teapot clean
>   make -C hello_fft clean
> + make -C hello_mmal_encode clean
>  +make -C hello_wayland clean
>
>   make -C libs/ilclient
>   make -C libs/vgfont
> -@@ -29,4 +30,4 @@ make -C hello_jpeg
> - make -C hello_videocube
> +@@ -31,4 +32,4 @@ make -C hello_videocube
>   make -C hello_teapot
>   make -C hello_fft
> + make -C hello_mmal_encode
>  -
>  +make -C hello_wayland
>  --
> -2.10.0
> +2.10.2
>
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index 7558851..84d6854 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
>
>  SRCBRANCH = "master"
>  SRCFORK = "raspberrypi"
> -SRCREV = "2852d9ff5a9038021f1c22d95e8a9e3aad09893f"
> +SRCREV = "100f8bb3e74e29d04fb99857183cc34aaa712e3f"
>
>  SRC_URI = "\
>      git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
> @@ -38,6 +38,8 @@ S = "${WORKDIR}/git"
>
>  inherit cmake pkgconfig
>
> +ASNEEDED = ""
> +
>  EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed' \
>                   -DVMCS_INSTALL_PREFIX=${exec_prefix} \
>  "
> --
> 2.10.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--IJpNTDwzlM2Ie8A6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIbbHAAoJEHO76Gt+erfPNNwP/RjJw8p0LAonLxu8Fx4lyVmx
iLRzpzvxe/7YLN77hawf4xGufZtCFPsW5UHVLnnowEuLVcVhpiH7JGq2tiVeW94y
3+U+zOhpolNOoNoQZnrS8LZXftJZR0bK4Qa7dw50C9Q90ma0fLVLu7aroW3Lcrxg
dcNIjecvJWdgaRyaYw84vJpyyczf0gyiLRXFukenM2bFtQ3/omheD5yUS99TElQu
nhCwaQcsS6OdsE0b2RircfF6sRIhso8rhw5LBEmF87HR8WuscSWAH13NnXTN8hDp
8hALZj92hJshwh4sHG785Cc0ZKJTeF9BIr/vewrQweji3lGnF5vKVKQAS4Y2TaPi
Tni/9+rup5g6YLd0KJXptFd/Ua5CvtqNfOAL6psR7e0DmyZIdk+xyS0seXgZ3/Bg
F4tWrJ9VJPQYpEMJ9GEaIbhlQqsDGhpZ4fqQ2nG5mpyXh3kcYx/nQmMLFVmZp/+Y
sTYG0MBI8nOVqbdzikg73wT+D+W+2IQDcimiz1AQpptzzirmS4d7Ip6bv2cF5Q4K
Tau+DZySnYPoA5k7yCVf0ulHJNuMBRtE1rvfbCBo0JauB2zgJPhqc13G13BOuAcf
6P+Ug6bN6jFDdGQOBZJZLZ4EdOCvWkUfe6s06JAp0B703TmeCSdqay6OEiC1wXXE
6cyl4cx/gM1OaUtz5VJr
=zm2e
-----END PGP SIGNATURE-----

--IJpNTDwzlM2Ie8A6--
