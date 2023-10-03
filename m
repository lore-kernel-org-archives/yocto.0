Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F7BE7AD51
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 13:56:30 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web11.108571.1696341389767426982
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 06:56:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RRPaDz70;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-41517088479so25849681cf.1
        for <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 06:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696341389; x=1696946189; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tgNrzi+si93TkSih2ArrkmJ6Y3kUGN0EkbBQUA0fDP0=;
        b=RRPaDz70ke8PvQsqbBMSaVcrgziyQTCYDsRr+RWhPVMWZ0vbjrFimju7QrJUS9QwwA
         jCRkQT+OWwJAu7DhMOjR7TvXbSdyOnhCkIwXqIzD0w3QZio+ZqRwV81CsIJLbBRkNU37
         cizKVLT7jxD1RafCi9qD/nJbSU+3d74+Hf2mzeRqgoKI/wW5DhzwkiWdHF/0xMu4U5yw
         JocXqLBqLQYHpnZVYShBIalLCvXOb8lM64Y1/ECLXwbzWD1e6J8hs0wfi434J+JNWeg4
         5HjHDVg2/H+osHqYgAeSzynZ2KoJy6RvvATGmaAxuScBl344zZ2t7C2IgHq2JaFOADu6
         XV3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696341389; x=1696946189;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tgNrzi+si93TkSih2ArrkmJ6Y3kUGN0EkbBQUA0fDP0=;
        b=rYuSv0aa0NjYj4aq+U+s7+H4zaXxN+kKL/dDM5FVXusd55lYbLrgmuK5ipaXiOJifN
         j8yOYPXYae4o3USZ+tIWHyw9ate/M4sz/2mF71EuZ6pbyOAea6kTnYR/+B8SWjfzaQtD
         9WPYI7BphIdceTFHaPe/Kp84qwHJNlr5htSoM8gVF6QHMPKxC2LKW2ogBCd7JPXYT0mv
         TUaBI1k1mGRMVGcBLpSX/txQn4KKuHIgd0O91Jpn4iZCG6fohYyCNyN2ZFEKsgDildSD
         5fOEXXoTVeqegICBHY2VRo6fwMlu7yqr+wEQcIjD4rTmkYqJJSAaqlKzRKmZzskJgXIp
         SWFA==
X-Gm-Message-State: AOJu0YwW9FFYqZFG2m9jifugU467UJqEinaVWme2BYOuKl1dMMPRVKsA
	yCl6ZHDyIxb6bXwmscgG2aPfpjjCyb0skg==
X-Google-Smtp-Source: AGHT+IFq2YIUTyEohpKBJsUYbb5sQQmLoxXkYp4OvdXgeZtt62gBQxs6CxzTX90BYY6ZxXy1WocJcA==
X-Received: by 2002:a05:622a:8d:b0:418:2cb:f967 with SMTP id o13-20020a05622a008d00b0041802cbf967mr3265821qtw.11.1696341388578;
        Tue, 03 Oct 2023 06:56:28 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ez12-20020a05622a4c8c00b0041977932fc6sm463857qtb.18.2023.10.03.06.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 06:56:27 -0700 (PDT)
Date: Tue, 3 Oct 2023 09:56:25 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH 3/3] rock-pi-s: add
Message-ID: <20231003135625.GC2234@localhost>
References: <20231001130803.18662-1-twoerner@gmail.com>
 <20231001130803.18662-4-twoerner@gmail.com>
 <2d966caf-f8b7-6200-0adc-d6c434c6c0ec@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2d966caf-f8b7-6200-0adc-d6c434c6c0ec@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 13:56:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61219

On Mon 2023-10-02 @ 06:17:15 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 10/1/23 15:08, Trevor Woerner via lists.yoctoproject.org wrote:
> > ROCK Pi S is a Rockchip RK3308 based SBC from Radxa. It contains a 64-bit
> > quad core processor, USB, ethernet, wireless connectivity, and voice
> > detection engine in 1.7-inches square. The ROCK Pi S comes in two RAM sizes
> > 256MB or 512MB DDR3, and uses sdmmc card for OS and storage. Optionally, some
> > versions of the ROCK Pi S provide on-board storage via 1Gb/2Gb/4Gb/8Gb of
> > SLC NAND flash.
> > 
> > "S" stands for "small square" since the total board size of the rock-pi-s is
> > 1.7-inches square.
> > 
> > This BSP assumes booting from sdmmc, and using ttyS0 for the serial console
> > (similar to Raspberry Pi).
> > 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >   README                                      |  1 +
> >   conf/machine/include/rk3308.inc             | 18 ++++++++++++++++++
> >   conf/machine/rock-pi-s.conf                 | 11 +++++++++++
> >   recipes-bsp/rkbin/rockchip-rkbin_git.bb     | 17 +++++++++++++++++
> >   recipes-bsp/u-boot/u-boot%.bbappend         | 11 +++++++++++
> >   recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
> >   6 files changed, 59 insertions(+)
> >   create mode 100644 conf/machine/include/rk3308.inc
> >   create mode 100644 conf/machine/rock-pi-s.conf
> > 
> > diff --git a/README b/README
> > index d4576d73c636..e815fb47ff5f 100644
> > --- a/README
> > +++ b/README
> > @@ -31,6 +31,7 @@ Status of supported boards:
> >   		firefly-rk3288
> >   		nanopi-r4s
> >   		rock-5b
> > +		rock-pi-s
> >   	builds:
> >   		marsboard-rk3066
> >   		radxarock
> > diff --git a/conf/machine/include/rk3308.inc b/conf/machine/include/rk3308.inc
> > new file mode 100644
> > index 000000000000..19cabafdfac0
> > --- /dev/null
> > +++ b/conf/machine/include/rk3308.inc
> > @@ -0,0 +1,18 @@
> > +SOC_FAMILY = "rk3308"
> > +
> > +DEFAULTTUNE ?= "cortexa35-crypto"
> > +
> > +require conf/machine/include/soc-family.inc
> > +require conf/machine/include/arm/armv8a/tune-cortexa35.inc
> > +require conf/machine/include/rockchip-defaults.inc
> > +require conf/machine/include/rockchip-wic.inc
> > +
> > +SERIAL_CONSOLES = "1500000;ttyS0"
> > +
> > +KBUILD_DEFCONFIG ?= "defconfig"
> > +KERNEL_FEATURES:append:rk3308 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
> 
> I'm starting to wonder if we shouldn't make this a pn-linux-yocto (and other
> flavors) override as well because we would make it difficult for other
> people to NOT include this. e.g. if they have their own recipe where
> KERNEL_FEATURES is used for example. Anyway, not specific to this SoC
> include file so not a blocker.

I'm not 100% sure what you're recommending, but if there's a better way that
is more flexible for the users, it sounds good to me.

> 
> > +KERNEL_CLASSES = "kernel-fitimage"
> > +KERNEL_IMAGETYPE = "fitImage"
> > +
> > +UBOOT_SUFFIX ?= "itb"
> > +UBOOT_ENTRYPOINT ?= "0x06000000"
> > diff --git a/conf/machine/rock-pi-s.conf b/conf/machine/rock-pi-s.conf
> > new file mode 100644
> > index 000000000000..79ea73c6b47e
> > --- /dev/null
> > +++ b/conf/machine/rock-pi-s.conf
> > @@ -0,0 +1,11 @@
> > +#@TYPE: Machine
> > +#@NAME: Radxa Rock Pi S
> > +#@DESCRIPTION: ROCK Pi S is a Rockchip RK3308 based SBC by Radxa. "S" stands for "small square"
> > +#https://wiki.radxa.com/RockpiS
> > +
> > +require conf/machine/include/rk3308.inc
> > +
> > +KERNEL_DEVICETREE = "rockchip/rk3308-rock-pi-s.dtb"
> > +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> > +
> > +UBOOT_MACHINE = "rock-pi-s-rk3308_defconfig"
> > diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > index 7fefb017053b..49e1e682eb7d 100644
> > --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > @@ -1,9 +1,12 @@
> >   DESCRIPTION = "Rockchip Firmware and Tool Binaries"
> >   LICENSE = "Proprietary"
> > +LICENSE:rk3308 = "CLOSED"
> >   LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
> > +LIC_FILES_CHKSUM:rk3308 = "file://README;md5=39cc9df955478b8df26158d489fdcc95"
> >   SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
> >   SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
> > +SRCREV:rk3308 = "e65b97b511f1349156702db40694454c141d8fe2"
> 
> Could you please say a few words about this change? It seems that there are
> still binaries for it in the SRCREV we already point to. I assume newer
> should be better (though it's not always the case), so wondering what's
> prompted this change?
> 
> 
> Oooooooh, there is no TPL with uart0m0 support anymore... honestly not sure
> it's a good idea to stay on a old blob version just for that? I assume you
> should only be missing the uart in TPL but the moment you reach the SPL the
> console should appear, doesn't it?

Exactly, I would prefer to be able to capture all of the console output all in
one place. It's annoying they randomly decided to change uarts for every other
update. As far as I'm concerned one binary blob is a good (or bad) as the
next, and if this one gives me diagnostic info in the console, then it wins
:-)

Any idea what the m0 vs m1 stands for?

I'll try the newer ones and see if they work. I fiddled with this quite a bit
between the two rk3308-based boards that I have, and this was the first
combination that worked. I probably just stopped at that point.

> 
> >   PROVIDES += "trusted-firmware-a"
> >   PROVIDES += "optee-os"
> > @@ -14,6 +17,7 @@ S = "${WORKDIR}/git"
> >   COMPATIBLE_MACHINE = ""
> >   COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> > +COMPATIBLE_MACHINE:rk3308 = "rk3308"
> >   PACKAGE_ARCH = "${MACHINE_ARCH}"
> > @@ -26,6 +30,19 @@ PACKAGES = "${PN}"
> >   ALLOW_EMPTY:${PN} = "1"
> >   do_deploy() {
> > +	:
> > +}
> > +
> > +do_deploy:append:rk3308() {
> > +	# Prebuilt TF-A
> > +	install -m 644 ${S}/bin/rk33/rk3308_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3308.elf
> > +	# Prebuilt OPTEE-OS
> > +	install -m 644 ${S}/bin/rk33/rk3308_bl32_v*.bin ${DEPLOYDIR}/tee-rk3308.bin
> > +	# prebuilt tpl
> > +	install -m 644 ${S}/bin/rk33/rk3308_ddr_589MHz_uart0_m0_v*.bin ${DEPLOYDIR}/ddr-rk3308.bin
> > +}
> > +
> > +do_deploy:append:rk3588s() {
> >   	# Prebuilt TF-A
> >   	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> >   	# Prebuilt OPTEE-OS
> > diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> > index e79c471cf5ce..54f0b7406dd7 100644
> > --- a/recipes-bsp/u-boot/u-boot%.bbappend
> > +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> > @@ -1,8 +1,13 @@
> > +SRCREV:rk3308 = "2173c4a990664d8228d4dadd814bd64fdc12948f"
> > +SRC_URI:rk3308 = "git://source.denx.de/u-boot/u-boot.git;protocol=https;branch=master"
> > +
> 
> NACK.
> 
> You have to remember that u-boot%.bbappend applies to ALL u-boot
> **prefixed** recipes, including in other layers. At this point, I would
> suggest to create your own recipe? Or at the very least have a
> u-boot_%.bbappend instead?

I think I suggested the recipe name change last week (perhaps not in a patch
specifically)?

Doesn't the ":rk3308" OVERRIDE protect us here?

> Considering that v2023.10 was released a couple hours ago and it seems to be
> what you're targeting here.... Maybe wait for it to be added to the master
> branch of oe-core or add it yourself? Then no need to do anything in
> meta-rockchip :)

I guess... :-)

> >   # various machines require the pyelftools library for parsing dtb files
> >   DEPENDS:append = " python3-pyelftools-native"
> > +DEPENDS:append:rk3308 = " u-boot-tools-native"
> >   DEPENDS:append:rock-pi-4 = " gnutls-native"
> >   EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> > +EXTRA_OEMAKE:append:rk3308 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf"
> >   EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
> >   EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
> >   EXTRA_OEMAKE:append:rk3588s = " \
> > @@ -12,6 +17,7 @@ EXTRA_OEMAKE:append:rk3588s = " \
> >   INIT_FIRMWARE_DEPENDS ??= ""
> >   INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
> > +INIT_FIRMWARE_DEPENDS:rk3308 = " rockchip-rkbin:do_deploy"
> >   INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
> >   INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
> >   INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
> > @@ -23,3 +29,8 @@ do_compile:append:rock2-square () {
> >   		cp ${B}/spl/${SPL_BINARY} ${B}
> >   	fi
> >   }
> > +
> > +do_compile:append:rk3308() {
> > +	mkimage -n rk3308 -T rksd -d ${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin ${B}/idbloader.img
> > +	cat ${B}/spl/u-boot-spl.bin >> ${B}/idbloader.img
> > +}
> 
> NACK. Same reason as the SRCREV/SRC_URI override.

Doesn't the ":rk3308" protect us here?

> Also... This should be handled by upstream U-Boot already and if it's not,
> we should patch it. I believe what's needed is simply:
> 
> ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin
> 
> added to EXTRA_OEMAKE, the same way it was done for rk3588s?

I'm just following the U-Boot documentation:
https://github.com/u-boot/u-boot/blob/master/doc/README.rockchip#L40

Perhaps the U-Boot build already does the mkimage part, but the cat'ing part
is definitely not done by U-Boot's build and is required to work.

Best regards,
	Trevor

