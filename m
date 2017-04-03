Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBD5CE00BB7; Mon,  3 Apr 2017 06:32:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77D9BE00AD5
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 06:32:11 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id k6so32340110wre.3
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 06:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=zRL+WYS9EMNxpO8W4T0pNToNJW7QcruNAnm7aqneP0U=;
	b=IdoQkXVHjJ7d2V9DPHHS6ayap68mQCShSRStEBQDUp/RvSd5UgGmnG4oCG6IiF5tlQ
	Cr9B3EPN5eQ2j1Wb2mrncKN63aZKiyvCquSuLA4KM/YcM7WSXxewnmRi9OMDU7PBxaxj
	2v9DGYl4FEgQL7vicmDhlAGMsZGW+eXNxgkVmaVwjgLF68Jvc+OD6JLHIt2SRZyMiEOI
	RRyW621ivyGp+g9X/+NUdzy3c/EiVH5ioL0jxmxYP7FP+ZLo5YrCSFcfYrzWxUXKx7VW
	wyGuKQ0T7sjGxKKZbDnqhHKLdz/m9uOJ/QbhJlcnLN90zDO8Uz7ZjGYn2p2ZcwcHZCLz
	yVLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=zRL+WYS9EMNxpO8W4T0pNToNJW7QcruNAnm7aqneP0U=;
	b=OZJpgdxGE+yt3Jkhiq3ml+izlH2prp/aHyDC9xI056DhLF9crRr2Cg2G0DLv9tSmJa
	vDOwxRAuDOMmuPMqmZar+HBZGaA+LH6OEri3THDv1EJ1zXJUhRrDyGyukSQoOp2BxE2o
	2HUNsWkqZ2zHThWGC2OAAFuJleL59lC3q3j3qxW6sUHH6ZdwAOhSaAOyW292/jINwzeW
	pTMgqWsmNR9kU5tPU9Anw+/dj3qET/CPHP4r47BCWrxuKFAE1DxytkdpKGxzueE/RpBl
	FewyNlwkI2g4qXCyW1wM1YicGaUmZwBknPDeuCru2ZHoJrwwJV2uAyOsUIzlbsV/IOTi
	gmxg==
X-Gm-Message-State: AFeK/H38cCH5Cl5hbyM6TEQtsiuz+1tGwn9E/U8NtWyFvYBYRFsw1nli
	fFhjUZ2OkzGGXJSDKMc=
X-Received: by 10.28.125.214 with SMTP id y205mr4265062wmc.60.1491226330812;
	Mon, 03 Apr 2017 06:32:10 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	w10sm14346869wmw.14.2017.04.03.06.32.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Apr 2017 06:32:09 -0700 (PDT)
Date: Mon, 3 Apr 2017 14:32:00 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Rob Woolley <rob.woolley@windriver.com>
Message-ID: <20170403133200.GA27299@carbonA>
References: <20170331181926.8976-1-rob.woolley@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20170331181926.8976-1-rob.woolley@windriver.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] pitft: Add support for pitft35r
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
X-List-Received-Date: Mon, 03 Apr 2017 13:32:13 -0000
X-Groupsio-MsgNum: 35370
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline

--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 31, 2017 at 11:19:26AM -0700, Rob Woolley wrote:
> The support for the PiTFT 3.5 inch resistive touchscreen is optional.
> It may be enabled by adding the following line in local.conf:
>
> MACHINE_FEATURES += "pitft pitft35r"
>
> Signed-off-by: Rob Woolley <rob.woolley@windriver.com>
> ---
>  README                                  | 1 +
>  conf/machine/include/rpi-base.inc       | 1 +
>  conf/machine/raspberrypi3-64.conf       | 1 +
>  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
>  4 files changed, 9 insertions(+)
>
> diff --git a/README b/README
> index 65a1e5f..a5c3d38 100644
> --- a/README
> +++ b/README
> @@ -240,6 +240,7 @@ the modelname should be added as a MACHINE_FEATURES in local.conf like below:
>  List of currently supported models:
>      - pitft22
>      - pitft28r
> +    - pitft35r
>
>  3.O. Enable UART
>  ===============
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 092cbeb..9bcb91d 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -31,6 +31,7 @@ KERNEL_DEVICETREE ?= " \
>      overlays/lirc-rpi.dtbo \
>      overlays/pitft22.dtbo \
>      overlays/pitft28-resistive.dtbo \
> +    overlays/pitft35-resistive.dtbo \
>      overlays/pps-gpio.dtbo \
>      overlays/rpi-ft5406.dtbo \
>      overlays/w1-gpio.dtbo \
> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
> index ca10ed9..0efe3ff 100644
> --- a/conf/machine/raspberrypi3-64.conf
> +++ b/conf/machine/raspberrypi3-64.conf
> @@ -23,6 +23,7 @@ KERNEL_DEVICETREE = " \
>      overlays/lirc-rpi.dtbo \
>      overlays/pitft22.dtbo \
>      overlays/pitft28-resistive.dtbo \
> +    overlays/pitft35-resistive.dtbo \
>      overlays/pps-gpio.dtbo \
>      overlays/rpi-ft5406.dtbo \
>      overlays/w1-gpio.dtbo \
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 20ec343..0fd9cea 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -18,6 +18,7 @@ PR = "r5"
>  PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
>  PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
>  PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
> +PITFT35r="${@bb.utils.contains("MACHINE_FEATURES", "pitft35r", "1", "0", d)}"
>
>  VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
>
> @@ -99,6 +100,11 @@ do_deploy() {
>          echo "dtoverlay=pitft28-resistive,rotate=90,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
>
> +    if [ "${PITFT35r}" = "1" ]; then
> +        echo "# Enable PITFT35r display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtoverlay=pitft35-resistive,rotate=90,speed=42000000,fps=20" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
> +
>      # UART support
>      if [ "${ENABLE_UART}" = "1" ]; then
>          echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> --
> 2.11.0
>

This commit looks fine but I would prefer having separate commits:
1. Documentation commit
2. dtbo inclusion
3. and rpi-config changes

Could you resend this commit please?

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljiTtAACgkQJrqo2vax
FPbfNhAAhEdykqIWdMwsKVMpHCVAzHVF6DJW7nrgd5qVaiiYuHdW/oOvgJ7U8cE3
pXT5l8xF/+HP0XJLT4SA4TwVDOQ4x7j5lbKJFsSrPZMvgaQS6we4YK7oJ3FxDqOp
7HZYMzEGcVyvXZg1bdQG9Anf1oHmitJ55qbDtTRDDUTSAaYtVK7y+xxED6BmBARa
rkFbUJXHjO0R6mFAbjKEXVOuGOUOLgd/MEZ+/F9oJdPM1i9IM1CqOh8hChJ62Uaq
L+xn9ZfAzf2ia0RR58RP28VMXaA3tt+p4Kds7yl+RwjXouAlPYj9QSLpJmBEiWUg
soyaX7yJR69AayI60Wp6EbrV90PaL7fpmerAf82Z61n1aVF/bUQ8y9WTbLkbAPDS
/7d5LueVC6kfcFGhO74q6MgRJC0KAXR8/tVy1UQjNPVrao4SmXC0zdUcttT/8Zvw
WY+M7Br1D8x9uE1Wspdt/xirNrBU8+bOc3D9HaMC+R5oebqRmuWaO+fTRyJ5tM70
oAf0han11CSFZhEjTCz6UlaSxCv55wia2WOkcrXjecBeJ0/+1t2nIyhrRAG/aaNA
QQWqLzndrh3Xdku45ocZrrBnxaaopZeI2QZrHEFUqSevqLA2O9+96gAuz1rWWEQV
4ZR6lasLdShEZGezclAu1E3Sv6yhNDmmSB8ZerG3hyH3e6Ly4J8=
=1nTQ
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--
