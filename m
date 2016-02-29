Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB8A7E0090E; Mon, 29 Feb 2016 13:20:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40C27E00929
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:20:33 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id p65so9192036wmp.1
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ggBmIV0V6ntxqmEDaTvQZ4Gb8ZmyG2wSR9SGmOOEDnc=;
	b=nPJ2tUvB8YKc5uI3EA4h31P6cCFVXd8iL0Ock5SfQPl3QoXcW2mmjigqki/hcioa78
	4KoA0vSX4H7xmWnSfbkMmD0AKAoxO81I59ocxoqsHQqbL2G/5/H2YgcxORsRajZF4qbn
	FKfzlUMeKsY1gBauC4tYArn5HrpFDfTEUXbuAiYEqA9iBHLAejoqQUAd/pGfvAuAEpfX
	I91ll0OCJry6PqYINveNbh3H30TIocuhUEFM42ip0KBHiettbI5MgLuf4zDiLGVreRu+
	ReTd9RlzTC29K11mWM+NS6Gc++8pPz8CCJGHPwXU22Z/qeBh0wmfoPN2bMMlWDjLsGjp
	0rNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ggBmIV0V6ntxqmEDaTvQZ4Gb8ZmyG2wSR9SGmOOEDnc=;
	b=Q49jZyULG90Cept3P5meak5+n2QSPfzaytQ+qC9Z/09M7BUPcHAxl3bbyIRVCaM46m
	DnLlPWoPt/bcH5DmAwnYHjntUwcruUpQrrrfIjdCjOluwFTVYI0OhL1IofSW93CzFzxF
	HwFlOb2yVS3lQc4HWNOFMoWfUm3xOwbwm7Lx9fq5Oud7GA5Bk3gWGcbk0bxHn/54CUZS
	KpndCdRkGAEJcTVVPpDCrdZLVkJifZtAXrIiMtIuxQgaNVk8Ldm8o04dTEuhQvPIZ6ee
	WjN51yJsE4q78B/vz0t0jcSzAiNcwFgLn9et3VHzL7dN5j2CrYEUfo1sGWiEBBRL9uEY
	19Hg==
X-Gm-Message-State: AD7BkJKYBe41Jdnfqj5aG9e4NJ8/tGOEoT073SF4eVntu6lYPrMU1gjHuzDWp2ie/2wMyQ==
X-Received: by 10.28.153.19 with SMTP id b19mr112088wme.14.1456780832781;
	Mon, 29 Feb 2016 13:20:32 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	w136sm18068395wmw.0.2016.02.29.13.20.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Feb 2016 13:20:32 -0800 (PST)
Date: Mon, 29 Feb 2016 22:20:29 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160229212029.GF2087@resin.home>
References: <cover.1456586389.git.raj.khem@gmail.com>
	<e9ada1f78209f622e20f9781c55b1a4893da703c.1456586389.git.raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <e9ada1f78209f622e20f9781c55b1a4893da703c.1456586389.git.raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 08/23] wiringPi: Fix build with musl
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
X-List-Received-Date: Mon, 29 Feb 2016 21:20:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 27, 2016 at 03:26:47PM +0000, Khem Raj wrote:
> Include asm/ioctl.h for _IOC_SIZEBITS
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...de-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch | 58 ++++++++++++++++++++++
>  recipes-devtools/wiringPi/wiringpi_git.bb          |  8 +--
>  2 files changed, 62 insertions(+), 4 deletions(-)
>  create mode 100644 recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch
>
> diff --git a/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch b/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch
> new file mode 100644
> index 0000000..5de5853
> --- /dev/null
> +++ b/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch
> @@ -0,0 +1,58 @@
> +From 7f65eb37a82a6d9b095d9c8f262ad9dd205acd03 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Sat, 30 Jan 2016 16:57:38 -0800
> +Subject: [PATCH] include <asm/ioctl.h> directly for _IOC_SIZEBITS
> +
> +Fixes errors like
> +| wiringPiSPI.c: In function 'wiringPiSPIDataRW':
> +| wiringPiSPI.c:89:35: error: '_IOC_SIZEBITS' undeclared (first use in
> +this function)
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> +Upstream-Status: Submitted
> +
> + wiringPi/wiringPi.c    | 1 +
> + wiringPi/wiringPiI2C.c | 1 +
> + wiringPi/wiringPiSPI.c | 1 +
> + 3 files changed, 3 insertions(+)
> +
> +diff --git a/wiringPi/wiringPi.c b/wiringPi/wiringPi.c
> +index 32e5100..cb5db9d 100644
> +--- a/wiringPi/wiringPi.c
> ++++ b/wiringPi/wiringPi.c
> +@@ -64,6 +64,7 @@
> + #include <time.h>
> + #include <fcntl.h>
> + #include <pthread.h>
> ++#include <asm/ioctl.h>
> + #include <sys/time.h>
> + #include <sys/mman.h>
> + #include <sys/stat.h>
> +diff --git a/wiringPi/wiringPiI2C.c b/wiringPi/wiringPiI2C.c
> +index c787bce..efdf53c 100644
> +--- a/wiringPi/wiringPiI2C.c
> ++++ b/wiringPi/wiringPiI2C.c
> +@@ -52,6 +52,7 @@
> + #include <string.h>
> + #include <fcntl.h>
> + #include <sys/ioctl.h>
> ++#include <asm/ioctl.h>
> +
> + #include "wiringPi.h"
> + #include "wiringPiI2C.h"
> +diff --git a/wiringPi/wiringPiSPI.c b/wiringPi/wiringPiSPI.c
> +index 453df31..ae3c7d9 100644
> +--- a/wiringPi/wiringPiSPI.c
> ++++ b/wiringPi/wiringPiSPI.c
> +@@ -27,6 +27,7 @@
> + #include <fcntl.h>
> + #include <errno.h>
> + #include <string.h>
> ++#include <asm/ioctl.h>
> + #include <sys/ioctl.h>
> + #include <linux/spi/spidev.h>
> +
> +--
> +2.7.0
> +
> diff --git a/recipes-devtools/wiringPi/wiringpi_git.bb b/recipes-devtools/wiringPi/wiringpi_git.bb
> index 4254a0a..9d2206b 100644
> --- a/recipes-devtools/wiringPi/wiringpi_git.bb
> +++ b/recipes-devtools/wiringPi/wiringpi_git.bb
> @@ -9,10 +9,10 @@ SRCREV = "d79506694d7ba1c3da865d095238289d6175057d"
>
>  S = "${WORKDIR}/git"
>
> -SRC_URI = "\
> -          git://git.drogon.net/wiringPi \
> -          file://0001-Add-initial-cross-compile-support.patch \
> -          "
> +SRC_URI = "git://git.drogon.net/wiringPi \
> +           file://0001-Add-initial-cross-compile-support.patch \
> +           file://0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch \
> +           "
>
>  COMPATIBLE_MACHINE = "raspberrypi"
>

Hi Raj! Merged to master. Thank you.

--
Andrei Gherzan

