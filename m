Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90F4AE009F8; Sun, 19 Feb 2017 04:08:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C57CE0097D
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 04:08:25 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 2BC8368A01C; Sun, 19 Feb 2017 12:08:24 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7A3C168A019;
	Sun, 19 Feb 2017 12:08:23 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 21C2167401E9;
	Sun, 19 Feb 2017 13:08:23 +0100 (CET)
To: yocto@yoctoproject.org
References: <20170219111804.20566-1-paul@paulbarker.me.uk>
	<20170219111804.20566-3-paul@paulbarker.me.uk>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <cecfa9d7-ff31-c84f-f01b-c2569f8d59bf@mlbassoc.com>
Date: Sun, 19 Feb 2017 13:08:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170219111804.20566-3-paul@paulbarker.me.uk>
Subject: Re: [meta-raspberrypi][morty][PATCH 2/2] linux-raspberrypi_4.9.bb: Upgrade to 4.9.10
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
X-List-Received-Date: Sun, 19 Feb 2017 12:08:28 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-19 12:18, Paul Barker wrote:
> From: Khem Raj <raj.khem@gmail.com>
>
> Fix dtbo builds for arm64
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ++++++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  5 ++--
>  2 files changed, 32 insertions(+), 2 deletions(-)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch b/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
> new file mode 100644
> index 0000000..e8bc52e
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
> @@ -0,0 +1,29 @@
> +From 922ce1fd0eb810b713f6ffa9a7ab97c11b6e38cf Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Fri, 10 Feb 2017 17:57:08 -0800
> +Subject: [PATCH] build/arm64: Add rules for .dtbo files for dts overlays
> +
> +We now create overlays as .dtbo files.
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + arch/arm64/Makefile | 3 +++
> + 1 file changed, 3 insertions(+)
> +
> +diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> +index 3635b8662724..822fefeb1cd0 100644
> +--- a/arch/arm64/Makefile
> ++++ b/arch/arm64/Makefile
> +@@ -113,6 +113,9 @@ zinstall install:
> + %.dtb: scripts
> + 	$(Q)$(MAKE) $(build)=$(boot)/dts $(boot)/dts/$@
> +
> ++%.dtbo: | scripts
> ++	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
> ++
> + PHONY += dtbs dtbs_install
> +
> + dtbs: prepare scripts
> +--
> +2.11.1
> +
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> index cffea1a..dcca369 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> @@ -1,8 +1,9 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.9.4"
> +LINUX_VERSION ?= "4.9.10"
>
> -SRCREV = "8b0be887f834e7eccf0de3edf630003880779a5f"
> +SRCREV = "095c4480e1f623bdc8a221a171ef13b2223706b1"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
> +           file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
>  "
>  require linux-raspberrypi.inc
>

+1 since the previous revision has gone walk-about :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

