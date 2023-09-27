Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B3D2E810D2
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 11:29:41 +0000 (UTC)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
 by mx.groups.io with SMTP id smtpd.web10.14882.1695814177137420134
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 04:29:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QeXWg/ew;
 spf=pass (domain: gmail.com, ip: 209.85.217.50, mailfrom: twoerner@gmail.com)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-452749f6c47so4660038137.1
        for <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 04:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695814176; x=1696418976; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hY8NaTsoqtve0UEeZIy32WoTQiNCI+m2vb74YoRAYKw=;
        b=QeXWg/ewzA0ovDv1OzjBCD08RmZrqjt5IqoebiyTRviwlrIaf8aFmCT3raJRq9ASGf
         PfejRGdZnr9EA+BbMQAGWcP46eH/2BtTf2fUNT6u48zhuPZddzo/GLoYBSiLvh+lNz++
         elitcM2tS9K8vDtw47NIY6kniEe1BWJwQvFuiSFc+PQvjP2AjfWBcEOU2kamlFLk3IY1
         oygdPlpWQ4IXxFxJVpQEXiphBpmhKYBYNWddbHb9uT5L610WDmdmd337ZduPIxctvDNH
         y0kyC9k+aNwxMGZ8lU0HhqiwPpVqS9EQ18UzuKRfNcU3t7KRVhvADopwNYuJJzUXSVUV
         CKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695814176; x=1696418976;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hY8NaTsoqtve0UEeZIy32WoTQiNCI+m2vb74YoRAYKw=;
        b=VmnvifrxTn22nAKhy7uOFSsQABtv2XvR18ftyYNdzLzZjWnKWTTJr7qDpmsG+j+TbQ
         1lASLayifojqt9Psxms4Asgcl6Q3ue1O0fpPvoqihhD2Dc4US+Etmexi9EPKavaYgRo5
         8hjNQfCNm8pAF10bF1K+kzCSnBAQnnTkMJy6NYpD/DP2JHiiimw4lELVKHqhBBVOTyd+
         olcDCcInb4UYQtPO3N4sHsp1D+LJusepUH290yZ63FnTk4ogGUBZSn2CJBLdPByXxWc0
         stKYffowHz1YdxPu4dTePEEJCo3OacSL3QSRVNoeB/O7W4+ck2sohtGxs1J0vbvDHwrW
         aTjA==
X-Gm-Message-State: AOJu0YxiIxWitQDkkV93eQysSuHN2XI5xOFEucNV8KD/YGQXMLz4svWF
	jDME5OKoqriuZoHB15IvZJpGIa5LQCTbXQ==
X-Google-Smtp-Source: AGHT+IH7K7tRJxdn+LkvfQL/bmcJE4u9HR8j89JTQdPHZ4YZe0NCx+rNF2PvA8CIAa7TOXo8VrIRiA==
X-Received: by 2002:a05:6102:2d6:b0:44d:4b34:af92 with SMTP id h22-20020a05610202d600b0044d4b34af92mr1719942vsh.7.1695814175925;
        Wed, 27 Sep 2023 04:29:35 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d17-20020a0caa11000000b006583270ea64sm5805666qvb.139.2023.09.27.04.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 04:29:34 -0700 (PDT)
Date: Wed, 27 Sep 2023 07:29:32 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v4 2/2] rock-5b: add
Message-ID: <20230927112932.GA7200@localhost>
References: <20230927024220.17766-1-twoerner@gmail.com>
 <20230927024220.17766-3-twoerner@gmail.com>
 <20cddc6d-e22a-ff65-f911-daea3dde90a5@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20cddc6d-e22a-ff65-f911-daea3dde90a5@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 11:29:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61140

Hi Quentin,

On Wed 2023-09-27 @ 09:59:57 AM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 9/27/23 04:42, Trevor Woerner wrote:
> [...]
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
> > +
> > +addtask deploy after do_install
> > diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> > index 050f55e124d4..f7800625aaf1 100644
> > --- a/recipes-bsp/u-boot/u-boot%.bbappend
> > +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> > @@ -11,6 +11,12 @@ DEPENDS:append = " python3-pyelftools-native"
> >   INIT_FIRMWARE_DEPENDS ??= ""
> > +EXTRA_OEMAKE:append:rk3588s = " \
> > +	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
> > +	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
> > +	"
> > +INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
> > +
> 
> Mmmmmm thinking about this... I think we'll have a difficult time allowing
> rkbin for ddr.bin and upstream trusted-firmware-a from another recipe for
> bl31.elf because both would be installing the same bl31 file in the deploy
> directory. I guess we can postpone this problem until we have to handle it
> though because nothing comes to mind on how to handle this properly right
> now.

If/when that time comes, we could tweak the do_install()s of rockchip-rkbin
and/or tf-a to install or not install various pieces as required by the
specific case.

Thanks for reviewing!

