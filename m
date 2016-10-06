Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7725EE009CA; Thu,  6 Oct 2016 08:55:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF4EFE00547
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 08:55:06 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id 10so877337ual.1
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 08:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1WldZ+4PcOMfS4N9xfZXBFqkGMcwO/iJdak87xK5yT4=;
	b=hl4I6ADhheTZjPugfUSAW8U3FGIWuOluNUOgkT2YoJF8UXIQGhZRsGKLEmECfVu8BM
	t8DpPyo8LI5+M6FvTrx2+k4csteFyHpn0Qh4AmOX+wQNKpW5GlovpRJwbv0W928o00F7
	3cNUiK68lKCrN/sdQLWQyASsD/LL79kSqBLQJMZXgSfGGT9jDl4ST9/UEKc7im+6bx0Q
	vRylt6qSZeO2n8Zx0YifFX4MQqSRGV+OzJVyA9oTG6GOXVspiUh5WKw4FeQCzOIJ3nLs
	/FQChyGwspTnZhN7xIcNtMqFi4/GEQQxCDbuvXGcKGb0a+bkmcOhKN6U0q+cWsFDWcXA
	FjjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1WldZ+4PcOMfS4N9xfZXBFqkGMcwO/iJdak87xK5yT4=;
	b=j/q5XIvFoMkGlHlG9MeHjBrCO4+qk8lbK+cStEheypgCHTwdQpe3bwUcmqGGrYOskB
	NQ/p6L7/B+sL172qrUY7CghJCdTgL4CJ9teP4lviSMVxuc5p3WtsQAL0XRZKobnPq/fV
	FuTFwLwR6f3YXjJx9tbnpHirAfKsXgsm05sWbo+DA6p2Q1wSxKB30+aZvLkGs+nlsJS1
	eHeLBNIOIE7jx8HQ1edFvEKE373bhMwXU5Iz37GevtpYjpg54IDOjScOS7rBUAsbbKQL
	oE4fAvYwBGLFCudlgqMkdFC2IGRvNt0I5zAL7fm5inbJPemXA3NfUSCDppvSJVXN7o5H
	a7Zg==
X-Gm-Message-State: AA6/9RnfJdtAjt4tURt8jZQ4UXdCPK3h2qQ2Cd+kyEqBD4xDSb88KqtJfVloNbERCpaU8MisjuRVmpQ610IktA==
X-Received: by 10.176.6.74 with SMTP id f68mr11450180uaf.67.1475769305478;
	Thu, 06 Oct 2016 08:55:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Thu, 6 Oct 2016 08:55:05 -0700 (PDT)
In-Reply-To: <20161006122041.5048-1-net147@gmail.com>
References: <20161006122041.5048-1-net147@gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 6 Oct 2016 17:55:05 +0200
Message-ID: <CALbNGRRLJNtQXoQWqL-WmYZ7_QCsRw4yBXkJL3LK-jmMACkfkA@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Remove redundant RPI_KERNEL_VERSION
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
X-List-Received-Date: Thu, 06 Oct 2016 15:55:09 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 6, 2016 at 2:20 PM, Jonathan Liu <net147@gmail.com> wrote:
> The value of the RPI_KERNEL_VERSION can change between None and the
> kernel version which can result in taskhash mismatch errors while
> building images.
>
> The taskhash mismatch errors can be reproduced using:
> bitbake -c cleansstate virtual/kernel core-image-minimal && bitbake core-image-minimal
>
> The get_dts() and split_overlays() functions are modified so that the
> kernel version argument is optional. If the version is not supplied to
> these functions, they will fallback to the Python equivalent of the
> expression used for RPI_KERNEL_VERSION.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  classes/linux-raspberrypi-base.bbclass | 4 ++--
>  classes/sdcard_image-rpi.bbclass       | 8 +++-----
>  2 files changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
> index 930fc44..3a6e33d 100644
> --- a/classes/linux-raspberrypi-base.bbclass
> +++ b/classes/linux-raspberrypi-base.bbclass
> @@ -1,6 +1,6 @@
>  inherit linux-kernel-base
>
> -def get_dts(d, ver):
> +def get_dts(d, ver=None):
>      import re
>
>      staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
> @@ -32,7 +32,7 @@ def get_dts(d, ver):
>      return dts
>
>
> -def split_overlays(d, ver, out):
> +def split_overlays(d, out, ver=None):
>      dts = get_dts(d, ver)
>      if out:
>          overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, d)
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index 2f0daee..0487ef1 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -71,8 +71,6 @@ SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>  # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
>  FATPAYLOAD ?= ""
>
> -RPI_KERNEL_VERSION := "${@get_kernelversion_file('${STAGING_KERNEL_BUILDDIR}')}"
> -
>  IMAGE_CMD_rpi-sdimg () {
>
>         # Align partitions
> @@ -83,7 +81,7 @@ IMAGE_CMD_rpi-sdimg () {
>         echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB and RootFS $ROOTFS_SIZE KiB"
>
>         # Check if we are building with device tree support
> -       DTS="${@get_dts(d, '${RPI_KERNEL_VERSION}')}"
> +       DTS="${@get_dts(d)}"
>
>         # Initialize sdcard image file
>         dd if=/dev/zero of=${SDIMG} bs=1024 count=0 seek=${SDIMG_SIZE}
> @@ -104,8 +102,8 @@ IMAGE_CMD_rpi-sdimg () {
>         mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
>         if test -n "${DTS}"; then
>                 # Device Tree Overlays are assumed to be suffixed by '-overlay.dtb' (4.1.x) or by '.dtbo' (4.4.9+) string and will be put in a dedicated folder
> -               DT_OVERLAYS="${@split_overlays(d, '${RPI_KERNEL_VERSION}', 0)}"
> -               DT_ROOT="${@split_overlays(d, '${RPI_KERNEL_VERSION}', 1)}"
> +               DT_OVERLAYS="${@split_overlays(d, 0)}"
> +               DT_ROOT="${@split_overlays(d, 1)}"
>
>                 # Copy board device trees to root folder
>                 for DTB in ${DT_ROOT}; do
> --
> 2.10.0
>
Yes this makes sense - thanks.

Andreas

