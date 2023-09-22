Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7B5E6FE46
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 15:06:19 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.23741.1695395169923917160
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Sep 2023 08:06:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PG4KDR2r;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7740aa4b545so115951985a.3
        for <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 08:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695395169; x=1695999969; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VdGTg0g5ardFPeABgffJqaPb1YpxWyGW5Z6BG+y1gAc=;
        b=PG4KDR2rhnuq5Nk+4eYX7bQmgHIT+2HT4P7BG9vp14kP+a6LJ8sCf8UTkaijt843Xd
         dfswz8UaZxJKmQx09VOaP82JlrNDW8J+IUK2WVX0+IbXT2GL3zokuaWpJv58JaqUhy9x
         6TJ+at8IkZznoOHpR0Z1UaNdWzUmoVEYvzsNAtmd3x8bq310GsDNVaeRx+IddiY7xC4j
         k8RY5xmPgl42JWB9rBmHD2OUkqTUYRNhvaqTdJA0GYBn9g2H8JSBu5lpbPzhePk51VOP
         3tWv5wL63Ppw9cN48zJs9HFimQjb6ABnQJQF8PqnLs6pgg+SpdvTAHOmX8eUoE+pEAxB
         Aw/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695395169; x=1695999969;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VdGTg0g5ardFPeABgffJqaPb1YpxWyGW5Z6BG+y1gAc=;
        b=GC1hQOncjqZ3NyBo+ycufWPYTlgNKyFFZcpgplCINPlA+/+YPGRoMl/RsRNvPs49h7
         YBoPg4W9pA4yRVdYKc0R2UpgfRAxdRzMpstP0ehhg0X6z0CpjryqzzkABxhelfMe47Q1
         UOhzF/NAeVxctyNLRXAxYfHbN1RBdea81TNyh218L5icTViGhPfqfeevy4rqLKLuDc+9
         Xa6tY3Icm3jTVjRZ17LfxjjNMiQfsE0IawROlipFpvZlU0E8nIfUgpT4BoKQgAHwkW1Z
         F0uQeSJYPUSQSbI1hMwnznXwW6Cw4HdD/BdMZNFNGG3Uv4D7VFBUZ7c18+54oUt7oS3P
         fKwg==
X-Gm-Message-State: AOJu0YziUAYl9sXFXTuwjkAvRsD8lBZHPIdLCg0pE1YJN/EiTtna89SW
	JbuDUHL2o8zJwZK3jd2hJxA=
X-Google-Smtp-Source: AGHT+IE+j+qO+l1y5ddzKOxkSSfUerejYtuSwUZx/gQrP5p229KuCjMcLWQzM+lz+Y7MYqCFNciijg==
X-Received: by 2002:a0c:ef52:0:b0:656:5337:e7bd with SMTP id t18-20020a0cef52000000b006565337e7bdmr8167051qvs.3.1695395168665;
        Fri, 22 Sep 2023 08:06:08 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y18-20020a0ce052000000b0064f4e0b2089sm1499229qvk.33.2023.09.22.08.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 08:06:07 -0700 (PDT)
Date: Fri, 22 Sep 2023 11:06:05 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] rock5b: add
Message-ID: <20230922150605.GA40347@localhost>
References: <20230922025123.20385-1-twoerner@gmail.com>
 <a9d93ef0-4b40-bfb2-ba34-fe50da0d6f7e@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <a9d93ef0-4b40-bfb2-ba34-fe50da0d6f7e@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 15:06:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61080

On Fri 2023-09-22 @ 04:22:11 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> Looking good :) Thanks for looking into it, will be helpful to me in the
> upcoming weeks/months :)
> 
> On 9/22/23 04:51, Trevor Woerner via lists.yoctoproject.org wrote:
> > Add support for the Radxa Rock 5B
> > https://wiki.radxa.com/Rock5/5b
> > 
> > The device-tree for this board is better in the 6.5 (and later) kernels,
> > therefore set the kernel to linux-yocto-dev for now (eventually this won't be
> > needed as linux-yocto moves forward).
> > 
> > The Trusted Firmware A project (TF-A git://git.trustedfirmware.org/TF-A)
> > does not currently support the rk3588, but patches are in review. For
> > the time-being we're using the binary DDR/TPL initialization blob from
> > https://github.com/rockchip-linux/rkbin. Hopefully this can change if/when
> > TF-A gains support for the rk3588.
> > 
> 
> Because it's closed source, I cannot tell if DDR binary is based off TF-A
> but I would say it's likely not? It's fine like this but not entirely sure
> it's true.

Does this sound like I believe the binary blob is based on TF-A? If so I'll
need to reword. I'm literally trying to say the opposite. I.e. we can't use
TF-A yet so we're stuck using the blob... for now.

> > The rk3588 comes in two variants: rk3588 and rk3588s. The "s" option is a
> > stripped-down version of the rk3588. In the Linux kernel these two SoCs are
> > kept separate, with the rk3588 building on the rk3588s, so we've mimicked that
> > same behaviour here.
> > 
> > Signed-off-by: Quentin Schulz <qschulz@theobroma-systems.com>
> 
> I may have improperly wrote this in the github commit I sent you, but my
> professional mail address is:
> quentin.schulz@theobroma-systems.com
> :)

lol, I was wondering why that bounced.

> 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >   README                                        |  1 +
> >   conf/machine/include/rk3588.inc               |  8 ++
> >   conf/machine/include/rk3588s-base.inc         | 16 ++++
> >   conf/machine/include/rk3588s.inc              |  5 ++
> >   conf/machine/rock5b.conf                      | 12 +++
> >   recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 37 ++++++++
> >   recipes-bsp/u-boot/u-boot%.bbappend           |  5 ++
> >   recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +
> >   .../rockchip/remove-non-rockchip-arch-arm.cfg | 85 +++++++++++++++++++
> >   .../rockchip/remove-non-rockchip-arch-arm.scc |  1 +
> >   .../remove-non-rockchip-arch-arm64.cfg        | 66 ++++++++++++++
> >   .../remove-non-rockchip-arch-arm64.scc        |  1 +
> >   12 files changed, 240 insertions(+)
> >   create mode 100644 conf/machine/include/rk3588.inc
> >   create mode 100644 conf/machine/include/rk3588s-base.inc
> >   create mode 100644 conf/machine/include/rk3588s.inc
> >   create mode 100644 conf/machine/rock5b.conf
> >   create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb
> >   create mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend
> >   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
> >   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
> >   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
> >   create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc
> > 
> > diff --git a/README b/README
> > index 286dafbe1020..032d9bbb6b34 100644
> > --- a/README
> > +++ b/README
> > @@ -30,6 +30,7 @@ Status of supported boards:
> >   		vyasa-rk3288
> >   		firefly-rk3288
> >   		nanopi-r4s
> > +		rock5b
> >   	builds:
> >   		marsboard-rk3066
> >   		radxarock
> > diff --git a/conf/machine/include/rk3588.inc b/conf/machine/include/rk3588.inc
> > new file mode 100644
> > index 000000000000..d358565a904d
> > --- /dev/null
> > +++ b/conf/machine/include/rk3588.inc
> > @@ -0,0 +1,8 @@
> > +# the rk3588s is a "stripped-down" version of the rk3588
> > +# in the kernel's device-tree the rk3588 builds on top of the rk3588s
> > +# so anything that is valid for the rk3588s is valid for the rk3588
> > +MACHINEOVERRIDES =. "rk3588:rk3588s:"
> 
> This is incorrect, this makes rk3588s have precedence over rk3588, which is
> wrong for rk3588-based devices. Why not have MACHINEOVERRIDES for rk3588s in
> rk3588s-base.inc instead?
> 
> > +require conf/machine/include/rk3588s-base.inc
> > +
> > +SOC_FAMILY = "rk3588"
> > +require conf/machine/include/soc-family.inc
> 
> The two lines above actually do MACHINEOVERRIDES =. "rk3588"
> so we don't need to repeat it.
> 
> > diff --git a/conf/machine/include/rk3588s-base.inc b/conf/machine/include/rk3588s-base.inc
> > new file mode 100644
> > index 000000000000..ad74a1895ec0
> > --- /dev/null
> > +++ b/conf/machine/include/rk3588s-base.inc
> > @@ -0,0 +1,16 @@
> > +DEFAULTTUNE ?= "cortexa76-cortexa55-crypto"
> > +
> > +require conf/machine/include/arm/armv8-2a/tune-cortexa76-cortexa55.inc
> > +require conf/machine/include/rockchip-defaults.inc
> > +require conf/machine/include/rockchip-wic.inc
> > +
> > +KBUILD_DEFCONFIG ?= "defconfig"
> > +KERNEL_FEATURES:append:rk3588 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
> > +KERNEL_CLASSES = "kernel-fitimage"
> > +KERNEL_IMAGETYPE = "fitImage"
> > +
> > +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> > +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> > +
> > +UBOOT_SUFFIX ?= "itb"
> > +UBOOT_ENTRYPOINT ?= "0x06000000"
> > diff --git a/conf/machine/include/rk3588s.inc b/conf/machine/include/rk3588s.inc
> > new file mode 100644
> > index 000000000000..a57be507bf5e
> > --- /dev/null
> > +++ b/conf/machine/include/rk3588s.inc
> > @@ -0,0 +1,5 @@
> > +MACHINEOVERRIDES =. "rk3588s:"
> 
> Maybe we could move this directly to the -base.inc so we don't add it in
> rk3588.inc and rk3588s.inc?
> 
> To verify the MACHINEOVERRIDES is correct, I highly suggest to run:
> """
> bitbake-getvar MACHINEOVERRIDES
> """
> 
> this variable is read from right to left, with the highest precedence on the
> right side.
> 
> So we should have something like:
> """
> aarch64:rk3588s:rk3588:rock5b
> aarch64:rk3588s:orangepi5
> """
> for example.

I spent quite a while checking MACHINEOVERRIDES and SOC_FAMILY with many
variations until I was able to get exactly what you've just said we should be
getting.

MACHINE="rock5b"
	$ meta-rockchip> bitbake core-image-base -e | grep "^MACHINEOVERRIDES="
	MACHINEOVERRIDES="rk3588:aarch64:armv8-2a:cortexa76-cortexa55:rk3588:rk3588s:rock5b"
	$ meta-rockchip> bitbake core-image-base -e | grep "^SOC_FAMILY="
	SOC_FAMILY="rk3588"

MACHINE="orangepi5"
	$ meta-rockchip> bitbake core-image-base -e | grep "^MACHINEOVERRIDES="
	MACHINEOVERRIDES="rk3588s:aarch64:armv8-2a:cortexa76-cortexa55:rk3588s:orangepi5"
	$ meta-rockchip> bitbake core-image-base -e | grep "^SOC_FAMILY="
	SOC_FAMILY="rk3588s"
> 
> Now also wondering if we shouldn't add "rockchip" to MACHINEOVERRIDES, which
> would make things a bit easier for COMPATIBLE_MACHINE in rockchip-rkbin
> (though not really useful).

I've thought of adding a "rockchip" MACHINEOVERRIDES several times.

> > +require conf/machine/include/rk3588s-base.inc
> > +
> > +SOC_FAMILY = "rk3588s"
> > +require conf/machine/include/soc-family.inc
> > diff --git a/conf/machine/rock5b.conf b/conf/machine/rock5b.conf
> > new file mode 100644
> > index 000000000000..dc31a9f3a4e4
> > --- /dev/null
> > +++ b/conf/machine/rock5b.conf
> > @@ -0,0 +1,12 @@
> > +#@TYPE: Machine
> > +#@NAME: Radxa Rock5b
> > +#@DESCRIPTION: ROCK5 is the 5th generation of SBC designed by Radxa.
> > +#https://wiki.radxa.com/Rock5/5b
> > +
> > +require conf/machine/include/rk3588.inc
> > +
> > +PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
> > +KERNEL_DEVICETREE = "rockchip/rk3588-rock-5b.dtb"
> > +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> > +
> > +UBOOT_MACHINE = "rock5b-rk3588_defconfig"
> > diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > new file mode 100644
> > index 000000000000..7fefb017053b
> > --- /dev/null
> > +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > @@ -0,0 +1,37 @@
> > +DESCRIPTION = "Rockchip Firmware and Tool Binaries"
> > +LICENSE = "Proprietary"
> > +LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
> > +
> > +SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
> > +SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
> > +
> > +PROVIDES += "trusted-firmware-a"
> > +PROVIDES += "optee-os"
> > +
> > +inherit bin_package deploy
> > +
> > +S = "${WORKDIR}/git"
> > +
> > +COMPATIBLE_MACHINE = ""
> > +COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> > +
> > +PACKAGE_ARCH = "${MACHINE_ARCH}"
> > +
> > +do_install() {
> > +	# Nothing in this recipe is useful in a filesystem
> > +	:
> > +}
> > +
> > +PACKAGES = "${PN}"
> > +ALLOW_EMPTY:${PN} = "1"
> > +
> > +do_deploy() {
> > +	# Prebuilt TF-A
> > +	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> > +	# Prebuilt OPTEE-OS
> > +	install -m 644 ${S}/bin/rk35/rk3588_bl32_v*.bin ${DEPLOYDIR}/tee-rk3588.bin
> > +	# Prebuilt U-Boot TPL (DDR init)
> > +	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
> > +}
> > + > +addtask deploy after do_install
> 
> Regarding the topic of adding support for more SoCs you brought up on IRC,
> we either need to have multiple deploy, e.g.
> 
> """
> do_deploy:rk3588s() {
>    install ...
> }
> 
> do_deploy:rk3308() {
>    install ...
> }
> 
> do_deploy() {
>     # Required because addtask needs to be able to run regardless of
> COMPATIBLE_MACHINE I believe?
>     :
> }
> """

Oh, I'll have to test the above. I know that simply doing:

	do_deploy:rk3588() {
	}

by itself doesn't work; causes:

	do_deploy not defined


> or abstract the paths to instlal in variables, e.g.

This is probably what we'll need to do. I'd prefer the do_deploy() overrides,
but we'll have to do this if the other doesn't work.

> 
> """
> 
> RKBIN_BL31:rk3588s = "rk35/rk3588_bl31_v*.elf"
> RKBIN_BL31_INSTALLED:rk3588s = "bl31-rk3588.elf"
> 
> RKBIN_BL31:rk3308 = "rk33/rk3308_bl31_v*.elf"
> RKBIN_BL31_INSTALLED:rk3308 = "bl31-rk3308.elf"
> 
> RKBIN_BL32:rk3588s = "rk35/rk3588_bl32_v*.bin"
> RKBIN_BL32_INSTALLED:rk3588s = "tee-rk3588.bin"
> 
> RKBIN_BL32:rk3308 = "rk33/rk3308_bl32_v*.bin"
> RKBIN_BL32_INSTALLED:rk3308 = "tee-rk3308.bin"
> 
> RKBIN_DDR:rk3588s = "rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin"
> RKBIN_DDR_INSTALLED:rk3588s = "ddr-rk3588.bin"
> 
> RKBIN_DDR:rk3308 = "rk33/rk3308_ddr_589MHz_uart4_m0_v*.bin"
> RKBIN_DDR_INSTALLED:rk3308 = "ddr-rk3308.bin"
> 
> do_deploy() {
> 	# Prebuilt TF-A
> 	install -m 644 ${S}/bin/${RKBIN_BL31} ${DEPLOYDIR}/${RKBIN_BL31_INSTALLED}
> 	# Prebuilt OPTEE-OS
> 	install -m 644 ${S}/bin/${RKBIN_BL32} ${DEPLOYDIR}/${RKBIN_BL32_INSTALLED}
> 	# Prebuilt U-Boot TPL (DDR init)
> 	install -m 644 ${S}/bin/${RKBIN_DDR} ${DEPLOYDIR}/${RKBIN_DDR_INSTALLED}
> }
> """
> 
> we could also simplify it by doing some educated guess:
> 
> """
> 
> # In rkbin, rk3588s uses rk3588-prefixed binaries
> SOC_FAMILY:rk3588s = "rk3588"
> SHORT_SOC_FAMILY = "${@d.getVar("SOC_FAMILY")[:2]}"
> 
> RKBIN_BL31 = "${SHORT_SOC_FAMILY}/${SOC_FAMILY}_bl31_v*.elf"
> RKBIN_BL31_INSTALLED = "bl31-${SOC_FAMILY}.elf"
> RKBIN_BL32 = "${SHORT_SOC_FAMILY}/${SOC_FAMILY}_bl32_v*.bin"
> RKBIN_BL32_INSTALLED = "tee-${SOC_FAMILY}.bin"
> RKBIN_DDR_INSTALLED = "ddr-${SOC_FAMILY}.bin"
> 
> # We only want one match of this glob and they are difficult to guess based
> on SoC only
> RKBIN_DDR:rk3308 = "rk3308_ddr_589MHz_uart4_m0_v*.bin"
> RKBIN_DDR:rk3588s = "rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin"
> 
> do_deploy() {
> 	# Prebuilt TF-A
> 	install -m 644 ${S}/bin/${SHORT_SOC_FAMILY}/${RKBIN_BL31}
> ${DEPLOYDIR}/${RKBIN_BL31_INSTALLED}
> 	# Prebuilt OPTEE-OS
> 	install -m 644 ${S}/bin/${SHORT_SOC_FAMILY}/${RKBIN_BL32}
> ${DEPLOYDIR}/${RKBIN_BL32_INSTALLED}
> 	# Prebuilt U-Boot TPL (DDR init)
> 	install -m 644 ${S}/bin/${SHORT_SOC_FAMILY}/${RKBIN_DDR}
> ${DEPLOYDIR}/${RKBIN_DDR_INSTALLED}
> }
> 
> """
> 
> Cheers,
> Quentin

