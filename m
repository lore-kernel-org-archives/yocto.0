Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (turboconrad.planet-school.de
	[194.116.187.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3270E01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:54:41 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 8498BB6A0F0
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 16:54:40 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.3 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from [129.187.155.160] (philipp.lis.ei.tum.de [129.187.155.160])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 352B6B6A0E0
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 16:54:40 +0100 (CET)
Message-ID: <5283A0BB.2010001@philipp-wagner.com>
Date: Wed, 13 Nov 2013 16:54:35 +0100
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
In-Reply-To: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Move patch in inc file
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
X-List-Received-Date: Wed, 13 Nov 2013 15:54:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Am 13.11.2013 16:47, schrieb Andrei Gherzan:
> In order to avoid duplicated code, move sl030raspberrypii2ckernel.patch
> in linux-raspberrypi.inc.

I'm not convinced this is a good idea. Maybe it's the case for this 
patch, but most patches probably don't apply for all kernel versions the 
same. Hopefully this patch goes upstream at some point (what's the 
status of that anyway), and then it's not needed any more.

Philipp


>
> Change-Id: I8c3e7a70224672a8def6518baecd4ef86bbb15c4
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>   recipes-kernel/linux/linux-raspberrypi.inc       | 2 ++
>   recipes-kernel/linux/linux-raspberrypi_3.11.0.bb | 4 +---
>   recipes-kernel/linux/linux-raspberrypi_3.2.27.bb | 4 +---
>   recipes-kernel/linux/linux-raspberrypi_3.6.11.bb | 4 +---
>   recipes-kernel/linux/linux-raspberrypi_3.8.13.bb | 4 +---
>   5 files changed, 6 insertions(+), 12 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index e756b57..3397bcb 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -11,6 +11,8 @@ PV_append = "+git${SRCREV}"
>
>   S = "${WORKDIR}/git"
>
> +SRC_URI += "file://sl030raspberrypii2ckernel.patch"
> +
>   # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
>   KERNEL_DEFCONFIG = "bcmrpi_defconfig"
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
> index 1ae39b2..b197289 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
> @@ -1,6 +1,4 @@
>   SRCREV = "d7474694bdc9836af17f4b4d839509f9aad7ffa7"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y"
>
>   require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
> index cc4ee38..7c593a8 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
> @@ -1,6 +1,4 @@
>   SRCREV = "ada8b4415ff44d535d63e4291a0eca733bc2ad0f"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27 \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27"
>
>   require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> index 5314f5d..5f173f9 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> @@ -1,6 +1,4 @@
>   SRCREV = "cbd6672e7e1b2dc5026f5dc7929a13a9a68f2a62"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y"
>
>   require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> index dc8cf0a..613c172 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> @@ -1,6 +1,4 @@
>   SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y"
>
>   require linux-raspberrypi.inc
>

