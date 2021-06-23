Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web09.9567.1624462404759887422
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 08:33:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o6gF0maZ;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id d5so2386675qtd.5
        for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 08:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3xNYH6TViQSRVTi/uDPWsTlHNKEQNP1fz69r6u/a9zQ=;
        b=o6gF0maZNzNFH2jzJB3yiWAQQI6FAAHjn4oIQwRTVM4xLsIGVtb7cnEhWE2ymH9do7
         WvoZBRQEkjuPhe5FYf6+GLc/ne5ncM13jnRzf1aJbQ6N1/2e2buroLHgS4z3IkWBPSvJ
         idOGO0DY+iaKipkw65a/5BSs26hewCpXFNaNUI5KaeBFnJtKy+ryLB+3qFrrl9ROMBab
         NdBNguB5dGMeN/DpuWEnG+RXNzXERlewnWNlCZTOH7DDo595mMknB5tN7uY72hL1I5e4
         JxXCexxx64+DpAFRYEdViD0ZiIKO4Un81UvS7zSB0eSAr2t5/FB+JFQE/wxK7TM4Wt8a
         51Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3xNYH6TViQSRVTi/uDPWsTlHNKEQNP1fz69r6u/a9zQ=;
        b=LxGRhQZLjzz/raaB6/9YGQEbVNl9jjYqustAq+pW9HCL1nPdTxGr8+cd34InhJEzCW
         y9WdC+jKiGdm4EsliD+yH4Yc/kvtZuGDXcrZ3jc3o70XQHr5ivvQgsJ8km4/HX63+In6
         ZmzKJeJuWHCNN9gyJsQDtxRBFkDsmie87vAg2EOB/Rpd3DodUZVMeXXm6m+jQ0te0QeD
         WV1MhhCdhi0klWQoKuI2OtK3M6j4lFtGBXrjWT3nOd2PKhbOTJL7dW0E1kBAaXXXQG/R
         cIR+/tVrtX61xSNeHFbsSBJfdQCGXIlghzzZZTImoWHMYGNH4ABH2+9nIp4SYyQD/Rdn
         JOKg==
X-Gm-Message-State: AOAM532k+vCWKBc0XiSb2lW7tho47nrA28lG5kHGrYMLh6tzdlY2q8tL
	6Y5LAMuTQpsEcVF9zfCiBlu4eJMTSbQqCWbM7kM=
X-Google-Smtp-Source: ABdhPJwGDYEMegwicSk+6lOc81MU9iDKUldk0Q0pirmjfdy+8YUxOQ/al49Ndqgyf6TQFmdXuh16GoTaa1a6p326bt4=
X-Received: by 2002:ac8:544:: with SMTP id c4mr434380qth.299.1624462403578;
 Wed, 23 Jun 2021 08:33:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210623152457.35324-1-twoerner@gmail.com>
In-Reply-To: <20210623152457.35324-1-twoerner@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 23 Jun 2021 08:32:57 -0700
Message-ID: <CAMKF1spxfj_RD3p_1yfjLSqTLYYaWrJ0PY1jZfbeMmigpWQ-RQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH 1/4] centralize console settings
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 23, 2021 at 8:25 AM Trevor Woerner <twoerner@gmail.com> wrote:
>
> The console settings (baud and device) are scrambled and spread throughout the
> MACHINE configurations. Consolidate them and set defaults which are then
> overridden only as required.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/nanopi-m4.inc         | 2 --
>  conf/machine/include/rk3066.inc            | 1 +
>  conf/machine/include/rk3188.inc            | 3 +++
>  conf/machine/include/rk3288.inc            | 2 +-
>  conf/machine/include/rk3328.inc            | 2 --
>  conf/machine/include/rk3399.inc            | 2 --
>  conf/machine/include/rock-pi-4.inc         | 2 --
>  conf/machine/include/rockchip-defaults.inc | 3 +++
>  conf/machine/marsboard-rk3066.conf         | 1 -
>  conf/machine/radxarock.conf                | 1 -
>  10 files changed, 8 insertions(+), 11 deletions(-)
>
> diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
> index a14b705..8a7c1d9 100644
> --- a/conf/machine/include/nanopi-m4.inc
> +++ b/conf/machine/include/nanopi-m4.inc
> @@ -21,5 +21,3 @@ WKS_FILE_DEPENDS ?= " \
>  IMAGE_BOOT_FILES ?= "\
>      ${KERNEL_IMAGETYPE} \
>      "
> -
> -SERIAL_CONSOLES = "1500000;ttyS2"
> diff --git a/conf/machine/include/rk3066.inc b/conf/machine/include/rk3066.inc
> index dffbee0..76744ee 100644
> --- a/conf/machine/include/rk3066.inc
> +++ b/conf/machine/include/rk3066.inc
> @@ -7,5 +7,6 @@ require conf/machine/include/tune-cortexa9.inc
>  require conf/machine/include/soc-family.inc
>  require conf/machine/include/rockchip-defaults.inc
>
> +RK_CONSOLE_BAUD = "115200"
>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
>  KERNEL_IMAGETYPE = "zImage"
> diff --git a/conf/machine/include/rk3188.inc b/conf/machine/include/rk3188.inc
> index 59e65d1..e21bbf7 100644
> --- a/conf/machine/include/rk3188.inc
> +++ b/conf/machine/include/rk3188.inc
> @@ -9,3 +9,6 @@ require conf/machine/include/rockchip-defaults.inc
>
>  KBUILD_DEFCONFIG = "multi_v7_defconfig"
>  KERNEL_IMAGETYPE = "zImage"
> +
> +RK_CONSOLE_BAUD = "115200"
> +RK_CONSOLE_DEVICE = "ttyFIQ0"

while I appreciate this change, it does have an effect of removing the
users away from
BSP variables that core metadata layers have, e.g. SERIAL_CONSOLES is
a well defined
and documented variable and if we synthesize it then its hidden which
is fine if we document
the new variables equally well although that means every BSP will
invent these kind of
variables so if a person was doing RPI and comes to work on rockchip
boards he has more
learnings to do.

> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
> index 480e250..2715e73 100644
> --- a/conf/machine/include/rk3288.inc
> +++ b/conf/machine/include/rk3288.inc
> @@ -10,7 +10,7 @@ require conf/machine/include/rockchip-defaults.inc
>  KBUILD_DEFCONFIG ?= "multi_v7_defconfig"
>  KERNEL_IMAGETYPE = "zImage"
>
> -SERIAL_CONSOLES = "115200;ttyS2"
> +RK_CONSOLE_BAUD = "115200"
>
>  PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
>  SPL_BINARY ?= "idbloader.img"
> diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
> index a4bbc5d..5b11868 100644
> --- a/conf/machine/include/rk3328.inc
> +++ b/conf/machine/include/rk3328.inc
> @@ -19,7 +19,5 @@ TFA_BUILD_TARGET = "bl31"
>  UBOOT_SUFFIX ?= "itb"
>  UBOOT_ENTRYPOINT ?= "0x06000000"
>
> -SERIAL_CONSOLES = "1500000;ttyS2"
> -
>  PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
>  SPL_BINARY ?= "idbloader.img"
> diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
> index f6b7826..9f9f474 100644
> --- a/conf/machine/include/rk3399.inc
> +++ b/conf/machine/include/rk3399.inc
> @@ -19,8 +19,6 @@ TFA_BUILD_TARGET = "bl31"
>  UBOOT_SUFFIX ?= "itb"
>  UBOOT_ENTRYPOINT ?= "0x06000000"
>
> -SERIAL_CONSOLES = "115200;ttyS2"
> -
>  PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
>  SPL_BINARY ?= "idbloader.img"
>
> diff --git a/conf/machine/include/rock-pi-4.inc b/conf/machine/include/rock-pi-4.inc
> index 9c21084..a3e60c7 100644
> --- a/conf/machine/include/rock-pi-4.inc
> +++ b/conf/machine/include/rock-pi-4.inc
> @@ -17,6 +17,4 @@ IMAGE_BOOT_FILES ?= "\
>      ${KERNEL_IMAGETYPE} \
>      "
>
> -SERIAL_CONSOLES = "1500000;ttyS2"
> -
>  MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
> index a4e2a2c..fe4052e 100644
> --- a/conf/machine/include/rockchip-defaults.inc
> +++ b/conf/machine/include/rockchip-defaults.inc
> @@ -21,6 +21,9 @@ XSERVER = " \
>         "
>
>  # misc
> +RK_CONSOLE_DEVICE ?= "ttyS2"
> +RK_CONSOLE_BAUD ?= "1500000"
> +SERIAL_CONSOLES = "${RK_CONSOLE_BAUD};${RK_CONSOLE_DEVICE}"
>  IMAGE_FSTYPES += "ext4"
>
>  # boot device (sd-card/emmc)
> diff --git a/conf/machine/marsboard-rk3066.conf b/conf/machine/marsboard-rk3066.conf
> index 09414bc..52fd256 100644
> --- a/conf/machine/marsboard-rk3066.conf
> +++ b/conf/machine/marsboard-rk3066.conf
> @@ -8,5 +8,4 @@
>
>  require conf/machine/include/rk3066.inc
>
> -SERIAL_CONSOLES = "115200;ttyS2"
>  KERNEL_DEVICETREE = "rk3066a-marsboard.dtb"
> diff --git a/conf/machine/radxarock.conf b/conf/machine/radxarock.conf
> index 2036f6a..42d8848 100644
> --- a/conf/machine/radxarock.conf
> +++ b/conf/machine/radxarock.conf
> @@ -9,5 +9,4 @@
>
>  require conf/machine/include/rk3188.inc
>
> -SERIAL_CONSOLES = "115200;ttyFIQ0"
>  KERNEL_DEVICETREE = "rk3188-radxarock.dtb"
> --
> 2.30.0.rc0
>
>
> 
>
