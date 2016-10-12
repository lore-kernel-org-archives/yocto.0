Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C52EAE00DDA; Wed, 12 Oct 2016 16:55:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E00F6E00DC2
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 16:55:23 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id x23so3816876lfi.1
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 16:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=u2qNKzlVPJ7rvvxr4xjSSZ05Iif8WZQj0tqU22hm1jY=;
	b=PnF6OXJhZGQhulTXX/EWVz5uaMoO9Teb9skbDzDdAPKa39PuBVVK5N5bUgfym13YGJ
	imeW5KAvr2h+d6pYBo3FRUt3v9W9J0JoSvLanER+9Dzg/47+wcxF70707la1ezXXgThK
	rckxxikQwdhNP0CuoUruHivq+ESK7aJVTEkq6TyZCBjjwRNd+Qu0y1myRCBTaXqy3Sak
	4/m6xZ98vhJQoLfpbakejscUsWt0rR0ZBLPQmRJxZDKIl81hbN5PSCZ6aaIdcJxsMcGs
	nrGAhL0vMtT8dZDlPs9VGBilmwl3H9f4BqP/3X6h5TXYllNMJtHPg6NRPMATQ6zV9pa6
	Pwuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=u2qNKzlVPJ7rvvxr4xjSSZ05Iif8WZQj0tqU22hm1jY=;
	b=UxA3RAEcmZxggDsZ8If59YqxhbVNQXH26n8OzLupEB3BCjBquVv/kxbbI73MVJZdLb
	2n623J8gCwENW7kjYpxQWlPsIy2QbE5+HUnznvci7G6uDgSp5Vmpc2KwO1zps9y3M6mE
	AdKuujVYIWKU/HX0pAI4RnMjDITGXH3U9W3X2yI/VPsAciHoEea2AeooIe/fGlgesYr8
	WLLbhjEMzeF2VOyrv1a5z1/6w52/Sq5mSSq6wuraAunQrWgDtTHEW273TA15ntkEvCfv
	I1F00LJHAho+4DWkt6nLa0ZR0X3gGRsv09HO3JRF1xt9/nMfTITMzrP/1WpBTu5u+PsS
	iV+w==
X-Gm-Message-State: AA6/9RmjtNmss+A7LpqZbqyPRnFd2WugnNVEl5Gb95bbaI5ZQUtJ51k2S7w9Avrp8mEclg==
X-Received: by 10.194.44.226 with SMTP id h2mr4904267wjm.113.1476316522822;
	Wed, 12 Oct 2016 16:55:22 -0700 (PDT)
Received: from resin (port-83-236-242-106.static.qsc.de. [83.236.242.106])
	by smtp.gmail.com with ESMTPSA id
	y2sm17157174wjx.20.2016.10.12.16.55.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Oct 2016 16:55:22 -0700 (PDT)
Date: Thu, 13 Oct 2016 00:55:03 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161012235407.GA20761@resin>
References: <20161007043946.10158-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161007043946.10158-1-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Add recipes and patches for 4.8 release
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
X-List-Received-Date: Wed, 12 Oct 2016 23:55:26 -0000
X-Groupsio-MsgNum: 32356
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mojUlQ0s9EVzWg2t"
Content-Disposition: inline

--mojUlQ0s9EVzWg2t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 06, 2016 at 09:39:46PM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../0001-fix-dtbo-rules.patch                      | 44 ++++++++++++++++++++++
>  ...835-camera-fix-compilation-warning-werror.patch | 35 +++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_4.8.bb      | 10 +++++
>  3 files changed, 89 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch
> new file mode 100644
> index 0000000..5113e23
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch
> @@ -0,0 +1,44 @@
> +From 13c8784da3dbd977f64cec740eba775b6fab11c2 Mon Sep 17 00:00:00 2001
> +From: Herve Jourdain <herve.jourdain@neuf.fr>
> +Date: Fri, 20 May 2016 16:02:23 +0800
> +Subject: [yocto][meta-raspberrypi][PATCH v4 4/5] linux-raspberrypi_4.4.inc:
> + support for .dtbo files for dtb overlays
> +
> +Upstream-Status: Pending
> +
> +Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
> +Patch the kernel, which has faulty rules to generate .dtbo the way yocto does
> +
> +Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> +---
> + .../0001-fix-dtbo-rules.patch                      | 27 ++++++++++++++++++++++
> + 1 file changed, 27 insertions(+)
> + create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
> +
> +diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> +index a2e7cf7..673c1cb 100644
> +--- a/arch/arm/Makefile
> ++++ b/arch/arm/Makefile
> +@@ -333,6 +333,8 @@ $(INSTALL_TARGETS):
> +
> + %.dtb: | scripts
> + 	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
> ++%.dtbo: | scripts
> ++	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
> +
> + PHONY += dtbs dtbs_install
> +
> +diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> +index 3079c4f..6cc3766 100644
> +--- a/scripts/Makefile.lib
> ++++ b/scripts/Makefile.lib
> +@@ -293,7 +293,8 @@ $(obj)/%.dtb: $(src)/%.dts FORCE
> + 	$(call if_changed_dep,dtc)
> +
> + quiet_cmd_dtco = DTCO    $@
> +-cmd_dtco = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
> ++cmd_dtco = mkdir -p $(dir ${dtc-tmp}) ; \
> ++	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
> + 	$(objtree)/scripts/dtc/dtc -@ -H epapr -O dtb -o $@ -b 0 \
> + 		-i $(dir $<) $(DTC_FLAGS) \
> + 		-d $(depfile).dtc.tmp $(dtc-tmp) ; \
> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch
> new file mode 100644
> index 0000000..ea9778f
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch
> @@ -0,0 +1,35 @@
> +From a8151cbe5d92d7487b7994522cbc83fed04ae1f9 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Thu, 6 Oct 2016 19:42:55 -0700
> +Subject: [PATCH] [media]: bcm2835-camera: fix compilation warning/werror
> +
> +| /a/builder/mnt/build/tmp-glibc/work-shared/raspberrypi3/kernel-source/drivers/media/platform/bcm2835/bcm2835-camera.c:656:17: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types
> +]
> +|   .queue_setup = queue_setup,
> +|                  ^~~~~~~~~~~
> +| /a/builder/mnt/build/tmp-glibc/work-shared/raspberrypi3/kernel-source/drivers/media/platform/bcm2835/bcm28
> +35-camera.c:656:17: note: (near initialization for 'bm2835_mmal_video_qops.queue_setup')
> +
> +use struct device* instead of void*
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + drivers/media/platform/bcm2835/bcm2835-camera.c | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/drivers/media/platform/bcm2835/bcm2835-camera.c b/drivers/media/platform/bcm2835/bcm2835-camera.c
> +index 70f4db2..cb5bab6 100644
> +--- a/drivers/media/platform/bcm2835/bcm2835-camera.c
> ++++ b/drivers/media/platform/bcm2835/bcm2835-camera.c
> +@@ -244,7 +244,7 @@ static struct mmal_fmt *get_format(struct v4l2_format *f)
> +
> + static int queue_setup(struct vb2_queue *vq,
> + 		       unsigned int *nbuffers, unsigned int *nplanes,
> +-		       unsigned int sizes[], void *alloc_ctxs[])
> ++		       unsigned int sizes[], struct device *alloc_ctxs[])
> + {
> + 	struct bm2835_mmal_dev *dev = vb2_get_drv_priv(vq);
> + 	unsigned long size;
> +--
> +2.10.0
> +
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> new file mode 100644
> index 0000000..92a69ad
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> @@ -0,0 +1,10 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> +
> +LINUX_VERSION ?= "4.8.0"
> +
> +SRCREV = "2fb843e0e50b2330e76acea03ff63a5b2b1e411f"

They seem to rebase the repository pretty often and we already have
problems with 4.7 so I'm not sure how should we manage this in the
future. The rebase only happens on `in development` branches.

> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
> +           file://0001-fix-dtbo-rules.patch \
> +           file://0001-media-bcm2835-camera-fix-compilation-warning-werror.patch \
> +"
> +require linux-raspberrypi.inc
> --
> 2.10.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--mojUlQ0s9EVzWg2t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX/s1XAAoJEHO76Gt+erfPCFQQAKyCyhITachtVR54NtvXaDBN
rr1SMHQjaTZOpwFD2F2IEbMg4Qk07z0rpR0FsGc6Gs4woyR077mpssz6o5f3I5Zv
7TIPNFAVWAjACeEK0k0DmDXWajgIB0SfzZacsqygYHSo2Uczq7ljylq+4TeuZf45
L/qqWnFmZS3j3AnsSdjV+mOwUb1Pbs5cK0T75pW3OXO79JNOWHHPeGkc3Z/bLnJn
7SnbzA//fq5SIDeGUl59x13Vizui+mzwp8J+6s4UbXiYVqUPQf6Jt9SePkKJxehW
PAgbjVa3m8ALSdEYvc38/YGwJFTA2a8bU4NPM5EbCtABpVR7bJfZBFv9hYUGPE3S
Y7n93jSvWXbvMJQKRVT/TmeOdLmDf/MUTOsCuDQtpvLTRmGug5SNYCi1c+ZYzQmG
5bAh4666h2A3OYQBMGcYpduJPXHcSimfOQxavZ9ni6QXpQBGot12lZbq70kkQxsu
qh//hjlAA5nwCAhcr6Pd8LSTi9lj6qb4Lyrwf+pn9aRZwEfZRadAQO/IANDrZKco
WILxeJF8RvNob+0UqL1DXIYtcjJykU/pwUjdz4o6p4Zu3JvkMm30dYZ5DPdsi5i4
lnbOTcrBj0senoJrC11GlufQPX/1TwKwgUtqxVdiqJIUXUK3gyW3HQv2dhRPZmjE
0qG37SjotZj9Iz8oT6DJ
=WQWP
-----END PGP SIGNATURE-----

--mojUlQ0s9EVzWg2t--
