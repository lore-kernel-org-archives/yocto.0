Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C0BE71D2B
	for <webhook@archiver.kernel.org>; Fri, 29 Sep 2023 13:03:48 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web10.16585.1695992622554705445
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Sep 2023 06:03:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IkSUVNn/;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6515d44b562so84690046d6.3
        for <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 06:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695992621; x=1696597421; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oE5PmiMraCqdlXv866iHqUDrAI2AlTETO03/P73NQ+s=;
        b=IkSUVNn/0ST6fzGEtuZqtP4xtA0nWPFOAoQBArEGy4WYjgSeqF2JfLcM9WlUHweWCq
         D6l5o/D+Eyz+bxh/sEdUSlLNolqxqAgSE8peLfZ9wttyxCJgWR8GK8zhrbEEF3+w0EfZ
         Jq+unFv+yfFRk3/LAw3wKrL39WK5BpLsYWSNj1IjtrVP1JafJxYXWgw+LgGQDNrKxy3/
         dsM1YPwZHv7mqkE8xs8f6OkHDJiGfB5lsKHkO3XwePoN+3WAn1505xftWdqU8TYaCD0n
         oGG2KqxBEPI2HT520q5WwwAk8WpKvNd3w4eNUxaDF3oMBc/GfZJ6PywlF3zDMezLlrDM
         VvUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695992621; x=1696597421;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oE5PmiMraCqdlXv866iHqUDrAI2AlTETO03/P73NQ+s=;
        b=BCSdPqPMsq1weVMvXJHOyurrdRtjuozC1JcfuklaR9SbF2LoUtIU74AqzWXQTYOt6P
         tnYo55KfbEtuQulszZBrUKsNFyoBLr+98F9SqPmoQ4lnTByxdOa+o2j+xqmIj6kwQXxV
         ykgTcDCjDayQE1uSf80dY9CtvS+FXJmFX2oKZAfpLXNvk/X1viPC7aFKtXIzzZB82Ko5
         ScHxAd6MsqvOw6NewxVoyf81wUUyLgf/MZ+Of+278lmZIew9K9mmLI+8r+FOhczp5RwU
         pCMCm4Ir2R+ttlnqiaGTKWslLliWLdWxzS1Us5gCP9AhoCyEJur1iyvG0bIk663ruj44
         XJWg==
X-Gm-Message-State: AOJu0YwyFKv4WTI+rAELRJw42q+AAjoWjJ4bnY5hx26+ufpOKUgemnPt
	b+xO8IK7HyRMGDNRV907SOELvpxN+NY=
X-Google-Smtp-Source: AGHT+IEDzkAD9fJdUENQ+NNrTR2txFiB0gqxBwoHsFZlLaoQQiDEtQkGsXWE1zAVxD04vDmw1/fhTQ==
X-Received: by 2002:a05:6214:510:b0:656:5337:e7bd with SMTP id px16-20020a056214051000b006565337e7bdmr4266958qvb.3.1695992620572;
        Fri, 29 Sep 2023 06:03:40 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id j10-20020a0cf50a000000b0064f57d3100asm4494765qvm.102.2023.09.29.06.03.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 06:03:39 -0700 (PDT)
Date: Fri, 29 Sep 2023 09:03:37 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v4 0/2] rock-5b: add
Message-ID: <20230929130337.GA2348@localhost>
References: <20230927024220.17766-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230927024220.17766-1-twoerner@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 13:03:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61164

On Tue 2023-09-26 @ 10:42:18 PM, Trevor Woerner wrote:
> Version 4 of the patch to add Radxa's Rock 5B.
> 
> v4:
> - add a patch before the "rock 5b: add" patch to rename the U-Boot
>   variables to not be TF-A specific
> - clean up the U-Boot initial binary blob dependency variable name, the
>   EXTRA_OEMAKE handling, and remove the rk3588's dependency on tf-a (which
>   it does not have)
> 
> v3:
> - change name from "rock5b" to "rock-5b", there seem to be more instances
>   of the latter on the manufacturer's website than the former
> - fix the MACHINEOVERRIDE in conf/machine/include/rk3588s.inc to be
>   "rk3588s" and not "rk3588"
> 
> v2:
> - fix the logic behind the MACHINEOVERRIDES to get the content, and
>   ordering, correct
> - improved the commit message around TF-A/rkbin
> - correct Quentin's SoB line
> 
> Trevor Woerner (2):
>   u-boot: rename firmware dependency
>   rock-5b: add
> 
>  README                                        |  1 +
>  conf/machine/include/rk3588.inc               |  6 ++
>  conf/machine/include/rk3588s.inc              | 17 ++++
>  conf/machine/rock-5b.conf                     | 12 +++
>  recipes-bsp/rkbin/rockchip-rkbin_git.bb       | 37 ++++++++
>  recipes-bsp/u-boot/u-boot%.bbappend           | 17 ++--
>  recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +
>  .../rockchip/remove-non-rockchip-arch-arm.cfg | 85 +++++++++++++++++++
>  .../rockchip/remove-non-rockchip-arch-arm.scc |  1 +
>  .../remove-non-rockchip-arch-arm64.cfg        | 66 ++++++++++++++
>  .../remove-non-rockchip-arch-arm64.scc        |  1 +
>  11 files changed, 240 insertions(+), 6 deletions(-)
>  create mode 100644 conf/machine/include/rk3588.inc
>  create mode 100644 conf/machine/include/rk3588s.inc
>  create mode 100644 conf/machine/rock-5b.conf
>  create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb
>  create mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend
>  create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.cfg
>  create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm.scc
>  create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.cfg
>  create mode 100644 recipes-kernel/linux/linux-yocto-dev/rockchip-kmeta/bsp/rockchip/remove-non-rockchip-arch-arm64.scc

Applied to meta-rockchip, master branch.

