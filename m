Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07C37E00DA4; Tue, 30 Jan 2018 23:05:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85DDCE00971
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 Jan 2018 23:05:44 -0800 (PST)
Received: by mail-vk0-f65.google.com with SMTP id w201so8420885vkw.0
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 Jan 2018 23:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/9+BNcq1AVaJDhqH4SNAjjk6hvBP1ln9U+RioJYskzs=;
	b=d50856BcafGNdvmYP/oVVHAZvKwYL7wO7swd7otNc+vCxO47XLJshq8EsiuT6+9iA6
	3nZTiu59BTUJbCJ5GAsPHrP0xrB+XQSl/hGwJOSVgdYs60OIf7eDZ5jfrS4zUV0cUsmT
	enOddSansd8RmmF6YhpnpFIpVeou+nfrsdZFhZjvXDAn3/S9XJtOkWww2BswKe8Nq/z/
	RGBt9bYwzeINXyxivcuLwOI/AROgaxDj1G3Auqegb6JcvHei9GX9CNkrQg8c49kRwPf5
	DESmOV9EzMFI/D69k2nIxn8o4kty0+Z3lL9/Q1VZFGq2NBbO3jkTpVOaFcwwgF1XRiOX
	WPeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/9+BNcq1AVaJDhqH4SNAjjk6hvBP1ln9U+RioJYskzs=;
	b=ILdHcuI8WSWdtjZib3Rko99XH2Y22AxK+bjuhjlW3sd2X1GaclegIeiQ3Cob/VpWeH
	7sBpMiglbHAFnMPaaN+Uvmp+sl1tqP1vmVoAntZXmZhG6iik40qEkFeL5LzVhoXkXWP+
	q9LOxYkJUzZo7gNFI6DEIqbt5Tyoy1TxVkIuSU4omPKyPKoEQpUfltR01ciBmGF+ke2I
	x8aJV/YorCVADrlbKN2hk52mYFb4xE8Pl4qXgQKlCqxElKoLo9hfWk4l2qLzAPohFj0k
	Blrix3v3HJvaBWnzqUT0KVoOtX/haOM3uv38A2r9T3ElR/h0ch5Lb0N3GeNDOpZbIcK7
	6s9Q==
X-Gm-Message-State: AKwxytcQNVoU7wgcXa7fhLcHyDGiiXGjZLQ8B6y+z4fk0XUi42HSnjz7
	KWnGqqM0pU/1kjJn+ZQHKipWV7DvWx2lAFwxugU=
X-Google-Smtp-Source: AH8x227cIghGZdEudEwRYbx5M9XiHS7CTC2HiCUt2vLu3NyUz/e6oOY98NATs2NsN+x6kU1Lc2vg5e+c+exEJtKu9bs=
X-Received: by 10.31.11.210 with SMTP id 201mr23594156vkl.61.1517382343272;
	Tue, 30 Jan 2018 23:05:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.77.169 with HTTP; Tue, 30 Jan 2018 23:05:42 -0800 (PST)
In-Reply-To: <20180130133100.1288-1-Martin.Jansa@gmail.com>
References: <20180130133100.1288-1-Martin.Jansa@gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 31 Jan 2018 08:05:42 +0100
Message-ID: <CAC+thW0L-wC2hcD=mu1jK1V3BLy2=BKWmKwzoqJnOuHCVn8Etw@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] recipes: use oe.utils.conditional instead of deprecated base_conditional
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
X-List-Received-Date: Wed, 31 Jan 2018 07:05:45 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

On Tue, Jan 30, 2018 at 2:31 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index df3a3d7..a1c4e52 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -22,10 +22,10 @@ KBUILD_DEFCONFIG_raspberrypi3-64 ?= "bcmrpi3_defconfig"
>  CMDLINE ?= "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
>
>  # Add the kernel debugger over console kernel command line option if enabled
> -CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
> +CMDLINE_append = ' ${@oe.utils.conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
>
>  # Disable rpi logo on boot
> -CMDLINE_append += ' ${@base_conditional("DISABLE_RPI_BOOT_LOGO", "1", "logo.nologo", "", d)}'
> +CMDLINE_append += ' ${@oe.utils.conditional("DISABLE_RPI_BOOT_LOGO", "1", "logo.nologo", "", d)}'
>
>  # You can define CMDLINE_DEBUG as "debug" in your local.conf or distro.conf
>  # to enable kernel debugging.
> @@ -124,7 +124,7 @@ do_configure_prepend() {
>          kernel_configure_variable ROOT_NFS y
>          kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
>      fi
> -    if [ "${@base_conditional('INITRAMFS_IMAGE_BUNDLE', '1', 'True', 'False', d)}" ]; then
> +    if [ "${@oe.utils.conditional('INITRAMFS_IMAGE_BUNDLE', '1', 'True', 'False', d)}" ]; then
>          kernel_configure_variable BLK_DEV_INITRD y
>          kernel_configure_variable INITRAMFS_SOURCE ""
>          kernel_configure_variable RD_GZIP y
> --
> 2.15.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Although it's trivial, this one doesn't look to apply neither to
current master nor to any object in the index of meta-raspberrypi
repo...

$ git show df3a3d7
fatal: ambiguous argument 'df3a3d7': unknown revision or path not in
the working tree.

