Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 311C2E00AE4; Thu, 20 Apr 2017 03:56:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58099E00ADD
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 03:56:06 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id l44so6984855wrc.2
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 03:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=W6y+fMvjFCInOV4LUdWDzDc7QkGPviS/tSCubNRPyI4=;
	b=B9XSjVrq0z0NC7uZ77Z3L3NyISEgEXS48Svxtej5xnjS6h1pgLD5W6G0WBPtSvJMdG
	lCRCQqQj+TtWSW61yeDWoNeGTFZcEWzfz7AyB6f1N7yFFmg7Tr+o8eSihFNexjfh6w6k
	sG9c/6P5MJvQGkev59WkiFV9OkwI8ko718Iw6C7W44GZIojjaGHz+C5LQky7kWPdfngh
	H+Zq97upliCveVx/yK1PhUIWhv72vYjVx2DcITzPdAmO2dtahKwCom6zwHQE7WoZnwQz
	Al6X7pAvlpRx1HVdsPabnD2gne3vTfeBHdOB4O6GluG1s/gQXXzc0EBls2Kx9JLYCbXy
	ASjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=W6y+fMvjFCInOV4LUdWDzDc7QkGPviS/tSCubNRPyI4=;
	b=EqupmgHYnYgH6sg4679BwggedQ3YGp/ieEZO6TgaSo5moXOheaiqsWFdzzafJ0Mmst
	LQdzKNo7TExP+F7ZLHs3yfAVxDu/WXbkiWtFDsBj71X++te0olLD8zncCMqF82RNVL1A
	8jtLpqOPivUBvlUUBUJ2FsW4iS/VcicNCTXD24T0O36rDX76ZSsm5yfrx2QYV3NOryob
	vaE6UCvIhGr5KBRMnJwL+6DlZs0qk4PnXWqjWDs0isjEjmVlZz9jzdk03F7Whu3YR+qQ
	z/NarQpkyJp2bQfrc1Rvn86UulV7RIwiqiSZBkWP6mo0a/OZw77/ueanu5ojGhOLYXOC
	aaRw==
X-Gm-Message-State: AN3rC/4tdTfyXWKvuF9e81aWQefIxN+trK5BVt5tADVydxJvbIg1ap9D
	3a62CjSNYKYFT+NpICU=
X-Received: by 10.223.168.8 with SMTP id l8mr2718139wrc.185.1492685765004;
	Thu, 20 Apr 2017 03:56:05 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	v126sm23201554wmd.11.2017.04.20.03.56.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 03:56:04 -0700 (PDT)
Date: Thu, 20 Apr 2017 11:56:02 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20170420105602.GF19325@carbonA>
References: <20170419174103.30981-1-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <20170419174103.30981-1-andrei@gherzan.ro>
User-Agent: Mutt/1.8.0 (2017-02-23)
Subject: Re: [meta-raspberrypi][PATCH v2 1/1] raspberrypi0-wifi.conf: Use a stand alone machine configuration
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
X-List-Received-Date: Thu, 20 Apr 2017 10:56:09 -0000
X-Groupsio-MsgNum: 35692
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="27ZtN5FSuKKSZcBU"
Content-Disposition: inline

--27ZtN5FSuKKSZcBU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 19, 2017 at 06:41:03PM +0100, Andrei Gherzan wrote:
> As well make all the variables assigned in a way that they can be
> overwritten so we can give maximum flexibility to distros.
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/raspberrypi0-wifi.conf | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/conf/machine/raspberrypi0-wifi.conf b/conf/machine/raspberrypi0-wifi.conf
> index 2b7cea4..adb2238 100644
> --- a/conf/machine/raspberrypi0-wifi.conf
> +++ b/conf/machine/raspberrypi0-wifi.conf
> @@ -2,10 +2,14 @@
>  #@NAME: RaspberryPi Zero WiFi Development Board
>  #@DESCRIPTION: Machine configuration for the RaspberryPi Zero  WiFi board (https://www.raspberrypi.org/blog/raspberry-pi-zero-w-joins-family/)
>
> -MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
> -include conf/machine/raspberrypi.conf
> +DEFAULTTUNE ?= "arm1176jzfshf"
> +require conf/machine/include/tune-arm1176jzf-s.inc
> +include conf/machine/include/rpi-base.inc
>
>  MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
>
> -SERIAL_CONSOLE = "115200 ttyS0"
> +SDIMG_KERNELIMAGE ?= "kernel.img"
> +KERNEL_DEFCONFIG ?= "bcmrpi_defconfig"
> +UBOOT_MACHINE ?= "rpi_config"
> +SERIAL_CONSOLE ?= "115200 ttyS0"
>  VC4_CMA_SIZE ?= "cma-128"
> --
> 2.12.2
>

Merged both in master and morty branches.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--27ZtN5FSuKKSZcBU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj4k8IACgkQJrqo2vax
FPa8PA//ajsLch63CpE03mJywE0X46/498NG/hQRVaeilzlKGIawAd9bYIo6JJ0d
CzU79exrP//pWGCB2scRHELC2fUqPjvFfLe/93oZIauJlRl95a1XdCgR3zvWYbIr
egBlZq6Is0A8wTc0RlWt9DWEAV1CNwS2aI6WXlfjxd/9tgzyXNJuUUymDqIX8rlJ
eq3QqB2Vvgq9I61FmvZFDuGCYHRAzgp8CdhcFlnWerUeKF2/4KqLaC39CTo1f/QL
Xv4hgqbc0oYN0vURoGPbfGT7Wqdxh99hZoUQIEIH+quW1vR8c3DEe946QzvWacJw
Mo+Gg1FX658fJGXmPUlQ87KYTU26CSFopytpbqo4v3s/pAAyT9NJCeQ3NJ9A62cC
XXQBUTX+O+KgW3b6wxET7fCfCQ4NgizvH3f9pVxSQGmBzNPMkuoVrcpULiW062rq
6ygkOplw5Wt6i1+cta7XKmqDa6XSW9ayp3lFkSYwwQsOexeyZd8aAYXu94vJu6eM
5MLWukj8nDwJCcG0drp7CWZtWscOaW+zpj7BmoePhR7dWIZEdz8M/W41I/CNOpMI
xOfFYzu4qChau5cI9O74aZOnViAk97ZVCrqfkXBZ+MDFCi32ymzBM/eJT6eGnxFi
RNr07q6oj/gCJ91FC6xQFbMTRfuB7fiLOTAQhxBOpRcv61ZEUAU=
=mIhb
-----END PGP SIGNATURE-----

--27ZtN5FSuKKSZcBU--
