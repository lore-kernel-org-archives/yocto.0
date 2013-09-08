Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 131F5E00405
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2013 03:24:37 -0700 (PDT)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id A2E00B6A0C0;
	Sun,  8 Sep 2013 12:24:34 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.1 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from poweramy.site (ppp-188-174-11-106.dynamic.mnet-online.de
	[188.174.11.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 5A877B6A0BE; 
	Sun,  8 Sep 2013 12:24:34 +0200 (CEST)
Message-ID: <522C5052.8080600@philipp-wagner.com>
Date: Sun, 08 Sep 2013 12:24:18 +0200
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>, 
	Yocto Project <yocto@yoctoproject.org>
References: <1378211205-4866-1-git-send-email-paul@paulbarker.me.uk>
	<1378211205-4866-2-git-send-email-paul@paulbarker.me.uk>
In-Reply-To: <1378211205-4866-2-git-send-email-paul@paulbarker.me.uk>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.8.13
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
X-List-Received-Date: Sun, 08 Sep 2013 10:24:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

a general question to start: 3.11.0 is out now as well (and it works, at
least in my tests), should we add that as well?

Am 03.09.2013 14:26, Paul Barker wrote:
> Upstream commit d996a1b91b2bf3dc06f4f4f822a56f4496457aa1, dated 2013-08-07.
> 
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  recipes-kernel/linux/linux-raspberrypi_3.8.13.bb | 35 ++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> new file mode 100644
> index 0000000..b482939
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> @@ -0,0 +1,35 @@
> +require linux.inc
> +
> +DESCRIPTION = "Linux kernel for the RaspberryPi board"
> +COMPATIBLE_MACHINE = "raspberrypi"
> +
> +PR = "r6"

I guess this does not matter, but would r1 not be more natural?

> +PV_append = "+git${SRCREV}"
> +
> +SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
> +           file://sl030raspberrypii2ckernel.patch \
> +          "
> +S = "${WORKDIR}/git"
> +
> +# NOTE: For now we pull in the default config from the RPi kernel GIT tree.
> +KERNEL_DEFCONFIG = "bcmrpi_defconfig"
> +
> +# CMDLINE for raspberrypi
> +CMDLINE_raspberrypi = "dwc_otg.lpm_enable=0 console=ttyAMA0,115200 kgdboc=ttyAMA0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
> +
> +UDEV_GE_141 ?= "1"

This is already part of linux.inc, is it necessary here again?

> +
> +do_configure_prepend() {
> +	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
> +}
> +
> +do_install_prepend() {
> +	install -d ${D}/lib/firmware
> +}
> +
> +do_deploy_append() {
> +	# Deploy cmdline.txt
> +	install -d ${DEPLOYDIR}/bcm2835-bootfiles
> +	echo "${CMDLINE}" > ${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
> +}
> 

