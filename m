Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.2631.1579811973429677066
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 12:39:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id C2F1D40BF7;
	Thu, 23 Jan 2020 20:39:32 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHknhpw6I6O9; Thu, 23 Jan 2020 20:39:32 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id A37BD409DE;
	Thu, 23 Jan 2020 20:39:31 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 0AD3A1743AB; Thu, 23 Jan 2020 15:39:31 -0500 (EST)
Date: Thu, 23 Jan 2020 15:39:30 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Joshua Watt <JPEWhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-rockchip][PATCH v2 1/4] arm-trusted-firmware: Add recipe
Message-ID: <20200123203930.GC4735@denix.org>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
 <20200123194645.1240023-1-JPEWhacker@gmail.com>
 <20200123194645.1240023-2-JPEWhacker@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200123194645.1240023-2-JPEWhacker@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Heh, I've been sitting on arm-trusted-firmware recipe in meta-ti for some 
time[1], wondering if I should submit it to oe-core, as it's being used more 
widely among arm64 platforms these days...

I know each SoC/platform has few customizations on top of generic ATF/TF-A, 
but we can probably have a common base in oe-core and then add our own pieces 
on top in each BSP layer.

I already had some preliminary work done in making the recipe more generic, 
but after seeing your version here, I borrowed couple things. Would you mind 
if I submit that to oe-core and we can beef it up as needed to be usable as a 
common base for differen BSPs, if accepted to oe-core?

[Though, I'm not a big fan of vanity copyright banners, but I can add your SoB 
line, if needed.]

Denys

[1] http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/tree/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb

On Thu, Jan 23, 2020 at 01:46:42PM -0600, Joshua Watt wrote:
> Adds a recipe to build Arm Trusted Firmware
> 
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  .../arm-trusted-firmware_2.2.bb               | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
> 
> diff --git a/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
> new file mode 100644
> index 0000000..710336a
> --- /dev/null
> +++ b/recipes-bsp/arm-trusted-firmware/arm-trusted-firmware_2.2.bb
> @@ -0,0 +1,38 @@
> +# Copyright (C) 2019 Garmin Ltd. or its subsidaries
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +SUMMARY = "Arm Trusted Firmware"
> +HOMEPAGE = "https://developer.trustedfirmware.org/"
> +LICENSE = "BSD-3-Clause"
> +LIC_FILES_CHKSUM = "file://docs/license.rst;md5=189505435dbcdcc8caa63c46fe93fa89"
> +
> +PROVIDES = "virtual/atf"
> +
> +BRANCH = "master"
> +SRC_URI = "git://git.trustedfirmware.org/TF-A/trusted-firmware-a.git;protocol=http;branch=${BRANCH}"
> +SRCREV = "a04808c16cfc126d9fe572ae7c4b5a3d39de5796"
> +
> +S = "${WORKDIR}/git"
> +B = "${WORKDIR}/build"
> +
> +inherit deploy
> +
> +ATF_SUFFIX ??= "bin"
> +
> +do_compile() {
> +	unset LDFLAGS
> +	unset CFLAGS
> +	unset CPPFLAGS
> +
> +    oe_runmake -C ${S} BUILD_BASE=${B} DEBUG=0 CROSS_COMPILE=${TARGET_PREFIX} \
> +        PLAT=${ATF_PLATFORM} ${ATF_TARGET}
> +}
> +
> +PACKAGE_ARCH = "${MACHINE_ARCH}"
> +
> +do_deploy() {
> +    install -m 644 ${B}/${ATF_PLATFORM}/release/${ATF_TARGET}/${ATF_TARGET}.${ATF_SUFFIX} \
> +        ${DEPLOYDIR}/${ATF_TARGET}.${ATF_SUFFIX}
> +}
> +addtask deploy after do_compile
> +
> -- 
> 2.24.1
> 

> 

