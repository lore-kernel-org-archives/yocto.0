Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A2C9E0071C; Thu, 29 Dec 2016 11:04:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9805DE006E3
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 11:04:09 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id m203so67728039wma.3
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 11:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=LL/qTCfbKpalIv1xRl8EZFpG2HFNWIpXVDQaKzmCGrU=;
	b=ImuaXUSae4QgVrlhs/8bLwltd5pGmHDSgAMtSvb1fLhnUK2p+C/zXTY6WySSx/gzgu
	EBvgNnCkHYc2TNPZZLl4k0LOwCT+qVkE17hkVm+HV/7XRWAzqJPZvdqRjdMCNBiTLkeA
	lhvFlKNZRcP3gVSUnhwf1lG4lqY0LiSvFTjDnLzHal7dER9wyGazdbo1fsfrGA0Jkeme
	7G1sslbaY2OEuROnGW/cnMU7FqtwFWgSq6gJRHXJ3Ai880jDyWoNwGhk1StNHoTD/YsA
	5KauMDMGDw6juZApLvhrz2AOwu+xxS9cAkCZaRBtL+h+Br+8JAbbGOkkVuVK81H0QId/
	oHxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=LL/qTCfbKpalIv1xRl8EZFpG2HFNWIpXVDQaKzmCGrU=;
	b=FGO4TYZsiIZ9neDhffb60kuqP0y2cBZGuDYf5Fke9RrjyeAikpz/x24FANqrSbX8jq
	0g9xsS09kwGYbPZKlGJaDennK0XI2uLub3OXh49JzHKSQ6j1smVJQQdMss4YVl34QtRp
	q3Cgw1j5SXibh7jd0nKEgOE67w44wIvNrvDNpIGt/7bTFT1brcY098nLAk79teHtcHQu
	bkg/a+rsFAq7rDzKQluFe7Gi/omxWgntARwazZpwQuHUkiNavlNXhqpnC0FXGjwx/Lwu
	Cq9Ar8570zm/UcUNNIgNJHilgoamE3BH1lklYOFAEVsd1bwgqggfceWODn0vM2FFxXTo
	f+kA==
X-Gm-Message-State: AIkVDXImIFxWZmD9fiPqHpVxnp+u2lDxydKQSpVdUBxgZ/o+hx2TUxRjBtQchqQGOPAnCg==
X-Received: by 10.28.188.87 with SMTP id m84mr35959299wmf.14.1483038248648;
	Thu, 29 Dec 2016 11:04:08 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	e3sm35008941wjm.12.2016.12.29.11.04.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Dec 2016 11:04:08 -0800 (PST)
Date: Thu, 29 Dec 2016 19:04:05 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Mirza Krak <mirza.krak@gmail.com>
Message-ID: <20161229190405.GI26059@carbonA>
References: <1481282429-27256-1-git-send-email-mirza.krak@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1481282429-27256-1-git-send-email-mirza.krak@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V2] u-boot: drop patch to include lowlevel_init
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
X-List-Received-Date: Thu, 29 Dec 2016 19:04:13 -0000
X-Groupsio-MsgNum: 33600
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wZdghQXYJzyo6AGC"
Content-Disposition: inline

--wZdghQXYJzyo6AGC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 09, 2016 at 12:20:29PM +0100, Mirza Krak wrote:
> From: Mirza Krak <mirza.krak@gmail.com>
>
> The patch 0003-Include-lowlevel_init.o-for-rpi2.patch does not apply on
> 2016.11 and causes an build error.
>
> Patch 0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch
> provides the inclusion of lowlever_init.o.
>
> Signed-off-by: Mirza Krak <mirza.krak@gmail.com>
> ---
>
> Changes in V2:
> - droped changes to patch 0001 and 0002 to perserve the backport tags, based on comments from Paul Barker.
>
>  .../0003-Include-lowlevel_init.o-for-rpi2.patch    | 25 ----------------------
>  recipes-bsp/u-boot/u-boot_%.bbappend               |  1 -
>  2 files changed, 26 deletions(-)
>  delete mode 100644 recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
>
> diff --git a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
> deleted file mode 100644
> index ce0273f..0000000
> --- a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -From 1eb01436bc57ad32519a4567a1c9ec82d52d60a1 Mon Sep 17 00:00:00 2001
> -From: Paul Barker <paul@paulbarker.me.uk>
> -Date: Tue, 29 Nov 2016 19:47:49 +0000
> -Subject: [PATCH] Include lowlevel_init.o for rpi2
> -
> -Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> -Upstream-status: Inappropriate
> -    (not needed upstream as rpi_2 board directory is removed in latest
> -    version)
> ----
> - board/raspberrypi/rpi_2/Makefile | 1 +
> - 1 file changed, 1 insertion(+)
> -
> -diff --git a/board/raspberrypi/rpi_2/Makefile b/board/raspberrypi/rpi_2/Makefile
> -index d82cd21..9f865c5 100644
> ---- a/board/raspberrypi/rpi_2/Makefile
> -+++ b/board/raspberrypi/rpi_2/Makefile
> -@@ -5,3 +5,4 @@
> - #
> -
> - obj-y	:= ../rpi/rpi.o
> -+obj-y	+= ../rpi/lowlevel_init.o
> ---
> -2.1.4
> -
> diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
> index a4545f0..0edc8dc 100644
> --- a/recipes-bsp/u-boot/u-boot_%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
> @@ -3,5 +3,4 @@ RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
>  SRC_URI_append_rpi = " \
>      file://0001-arm-add-save_boot_params-for-ARM1176.patch \
>      file://0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch \
> -    file://0003-Include-lowlevel_init.o-for-rpi2.patch \
>      "
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--wZdghQXYJzyo6AGC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYZV4lAAoJEHO76Gt+erfPQ1cQAIWSSzg7z8nLqdT3nMfOLBzJ
GVF53ow5R/EBoakz28URYjqowHJ/N1Wd1o1YW4W2+eXrWfz1l7BMyDPjEBwXrg3k
dmvlHf0NF0jofBQX79QVLtqN+ApUtZ8kOMOYgtC3oObvO3zMQMau3guAwTaW7bea
yzvJ0ipnCLoPYA04QX8BxiZNUsX9ZIZZNRc936/MWim5sldWTtr68EGJWh8bCHdu
G15/d+VXP+eRsEzhnmz2p8v1dWBwvGfloX+tci6/CwEduC915GI7lO8R5+Pg8/JZ
S3mWvkcT2DUOXTMTMVnDfjJlKef8CB5RctSSyGEK03pVuOMQZXzLB/a33Up1YiR5
Y+4ee7ACZErxLMZqgRcEnLyOiP8v36FCqgYiEcrVDDkuUrgzqGYVTccP5ovFSG21
rBd7YDLElOC5LOQjezX5BeTa/MLo9UySaI8YKFEO+LWUFTZL/jicb1aKdj3PTT7F
I5dIDuaUut7DyoOVOKYVTYxdp1fH1ZwORNOTmNtZoZ5EBbFe4n4tFxKbJm7ZGVQC
G1TX22INyTDabUDujzYagzezE9x6vHJrodybyo3lTp7Yt6A0xKtuKiuQwsE/B7r+
OUsOPHOVpXk36sNpdxWdf8wgeu77NqF1pH1Tl4zxJG9KIDm8i86uNdEsOS2jX5Vk
cfTKVFwfHWMN99HxU0kM
=dvu7
-----END PGP SIGNATURE-----

--wZdghQXYJzyo6AGC--
