Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF568C4725D
	for <webhook@archiver.kernel.org>; Mon, 22 Jan 2024 14:19:01 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.75036.1705933136794722388
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 06:18:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SJ5TFq6i;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7831806c527so295888085a.3
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 06:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705933136; x=1706537936; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mERt2/6ADXChDIrCVr6wuiRmg7+8K8gJc1gFGoOExeI=;
        b=SJ5TFq6icbm3S/4E79vUF36Mbnl42ZBMBjfmbi/VMWdnAKPS3TFBX5De9jbu7WNTJ7
         an4wuES65L29lQWa7MgniR38CFU1jCBMH5Gjf5OM7iE3OjZzOIMoAVv8Vri2atdhuslj
         0HpvOnIkXhvs1qIBc2/2UvJriot5zshmtxhu5ZjTti3b0XTBHo4bzo/aU1tqRC+KOIob
         s7O291zlLzalfKHRknGz2wXTj3xxv3pZC9KTo+yUxJ6akyj4Nk8XaQ3SltCt34Mcn1iz
         loup3jKSdaeacqDOu0qAdz43QmybgtFd20g8KKD/BEpbw4oZmhYOBfxx5uLHL8wvdDbp
         cFEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705933136; x=1706537936;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mERt2/6ADXChDIrCVr6wuiRmg7+8K8gJc1gFGoOExeI=;
        b=NC296+/n4YZUmrMDRV8OB0gaHKvDm4R3bZWl2f3VKhWEdQf1nl5OnFTFWZe4RYyRuU
         y5sr/E6Q+0rTTZOPtgJort4vTu1g/iXD/qjk3S6mVEhCXxERwe/BgcW6YB+f+1YYL2T4
         OD8G+VeOkJf2rEDMjCq9UYNhFTmwXPGo0B6VpAlUofylQLjAJFNgWoAG4JY39nC6048R
         UumLmmkD1AndV+qFiCpbP9geDrIlUYTlEGyAp7E8Ug0aHcPi6cuQQxrIQsBKmj1//T6O
         OZ1IVjB/HdtiiAsZqA6G4Gm8IJOKe0CWr9AjSvGvdkmgkvFTox5VBYa+oQtVK1P7eEgl
         yVeQ==
X-Gm-Message-State: AOJu0Yw85234hqsUvbIdLsvCIHQza/VA9Co13VKXeKeZne2FC+0zYh81
	qlhoHSu9hmeflejpXposj3okx9kBZEkdElZ6+Gs+y1P5DnwpSoZS
X-Google-Smtp-Source: AGHT+IFz1LZPzmNs5pFQvkWQB6Fm1xWcHHoxS6M7NcL6SriNIaWgwk0z/UKLeOwMd+ZM1ulze4wLmg==
X-Received: by 2002:a0c:cd12:0:b0:681:9b7c:dae1 with SMTP id b18-20020a0ccd12000000b006819b7cdae1mr4389404qvm.34.1705933135769;
        Mon, 22 Jan 2024 06:18:55 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id nf3-20020a0562143b8300b00685ad9090basm2206616qvb.97.2024.01.22.06.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 06:18:54 -0800 (PST)
Date: Mon, 22 Jan 2024 09:18:52 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Stephen Chen <stephen@radxa.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip] [PATCH] machines: correct
 rk3066/rk3188/rk3288 kernel devicetree path
Message-ID: <20240122141852.GA29426@localhost>
References: <20240121045243.GA32674@localhost>
 <9257.1705830707849294512@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9257.1705830707849294512@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 14:19:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62222

On Sun 2024-01-21 @ 01:51:47 AM, Stephen Chen wrote:
> Hi
> 
> > 
> > Perhaps also take a look the email thread here:
> > https://lists.yoctoproject.org/g/yocto/topic/101728482#61210
> 
> This patch fixes kernel build error like this.
> 
> Run command "MACHINE=rock2-square bitbake linux-yocto" and get the error.
> 
> |   SYNC    include/config/auto.conf
> |   GEN     Makefile
> | make[2]: *** No rule to make target 'arch/arm/boot/dts/rk3288-rock2-square.dtb'.  Stop.
> 
> You can run "MACHINE=tinker-board bitbake linux-yocto" to test it.

If you would have read the email thread which I linked above, you would have
noticed that I submitted a patch to do the same thing in the beginning of
November, and you would have seen why it wasn't applied then.

> 
> > 
> > When I build I get:
> > 
> > |
> > /opt/oe/configs/z/build-master/tinker-board/layers/openembedded-core/scripts/lib/wic/engine.py:362:
> > SyntaxWarning: invalid escape sequence '\/'
> > | abs_path = re.sub('\/\/+', '/', path)
> > | INFO: Creating image(s)...
> > |
> > | ERROR: _exec_cmd: install -m 0644 -D
> > /z/build-master/tinker-board/build/tmp-glibc/deploy/images/tinker-board/rockchip/rk3288-tinker.dtb
> > /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/tmp-wic/boot.6/rockchip/rk3288-tinker.dtb
> > returned '1' instead of 0
> > | output: install: cannot stat
> > '/z/build-master/tinker-board/build/tmp-glibc/deploy/images/tinker-board/rockchip/rk3288-tinker.dtb':
> > No such file or directory
> > |
> > | WARNING:
> > /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449:160
> > exit 1 from 'BUILDDIR="/z/build-master/tinker-board/build" PSEUDO_UNLOAD=1
> > wic create "$wks" --vars
> > "/z/build-master/tinker-board/build/tmp-glibc/sysroots/tinker-board/imgdata/"
> > -e "core-image-base" -o "$build_wic/" -w "$tmp_wic"'
> > | WARNING: Backtrace (BB generated script):
> > | #1: do_image_wic,
> > /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449,
> > line 160
> > | #2: main,
> > /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449,
> > line 177
> > ERROR: Task
> > (/opt/oe/configs/z/build-master/tinker-board/layers/openembedded-core/meta/recipes-core/images/core-image-base.bb:do_image_wic)
> > failed with exit code '1'
> 
> I think another patch would fix it.

As a courtesy, in the future please test your patches before sending them.

> 
> > 
> > diff --git a/conf/machine/include/rockchip-wic.inc
> > b/conf/machine/include/rockchip-wic.inc
> > index 635288c..b4f4226 100644
> > --- a/conf/machine/include/rockchip-wic.inc
> > +++ b/conf/machine/include/rockchip-wic.inc
> > @@ -13,7 +13,7 @@ WKS_FILE_DEPENDS ?= " \
> > "
> > IMAGE_BOOT_FILES = " \
> > ${KERNEL_IMAGETYPE} \
> > -       ${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '',
> > '${KERNEL_DEVICETREE}', d)} \
> > +       ${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '',
> > '${SOC_FAMILY}*.dtb', d)} \
> > "
> > 
> > # use the first-defined <baud>;<device> pair in SERIAL_CONSOLES

