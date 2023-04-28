Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F26C77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 12:48:28 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.18652.1682686108133143873
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 05:48:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=G4BJKaVC;
 spf=pass (domain: linaro.org, ip: 209.85.208.182, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2a8b766322bso96122831fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 05:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682686106; x=1685278106;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WUKRQ7w0c4/zD36JEXyIWPutWAvaKn+IJPB8E8z8FWU=;
        b=G4BJKaVCJOUP+ncoA3Dl42RI8fqFnNEbVjMt17yQtDedWFVH6cGOo6kZx15vIFckje
         /VAzkHxQ6Y5UGmqcqg4wVRgxxvc+f11uPOXY+AA6DREq6PArzoUGHIiQmSif76NoIEXn
         syPzArmqZT26ZiAGeMfUlS6POK8vyayCUC1ei+2K9WnBA0awJlbRl4sBnKBZQPUqzix6
         65gHiPDxYzjgllzh2GZUuWrLUOs7WqlTC1Z2f1H3JCRIFScMtJQyBoIFOpNGPgLZ/fsJ
         V7TI7hbweZ0ZusOI6uUiQFu1dBbsa6k+xQ3Tq98Wgbq5oAJrAnbTR+xEVILUNyZYWn+I
         Hhiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682686106; x=1685278106;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WUKRQ7w0c4/zD36JEXyIWPutWAvaKn+IJPB8E8z8FWU=;
        b=iyPogmHVTbtsS8s0wxgsetIvJGTP9lz6/YO8Alpxe9LqUdU6jwk+UuTwowoBF9X3sX
         mxLMPptUd7Ltfw698uuR8MHG3HO6wByQg8AziL0mC8QXl0nwyY4H78Y+i4Rm8WD5B5xj
         82tp+pesDDPbVbN1+ElPkinIDdqL1lRtlONcGURwyjzIDZfneG335RwNhzmCeTecv/mR
         /+SvdwEuxqcP/4xTw19eVwka/7pJr8FVe/8JHN7XQ2ol/leV+dYsZ7AWumpwg0veoIRb
         XA4zJB4YM7dwglJ8p4Pe2ab3QGsQhCLh2Yo/7j7Yk3vAs/QwBQR/UN06/khMUyj3kwjj
         cQSQ==
X-Gm-Message-State: AC+VfDxVyRl1NqYbb/v7eaRRE8mLvPboLaJnkHqAUUJBxB5Gxp0f5V95
	1UPvbVOIdbfE+xpGswcpmAOmJw==
X-Google-Smtp-Source: ACHHUZ5vwBKxZqeQq3SvtK1OdSusyB5BYzaC9o5Guy+RocpZGtADm9AgdjbyJvRLKBSosDGXK5IVVw==
X-Received: by 2002:a2e:9f4b:0:b0:2a8:e670:c3cc with SMTP id v11-20020a2e9f4b000000b002a8e670c3ccmr1571884ljk.16.1682686106252;
        Fri, 28 Apr 2023 05:48:26 -0700 (PDT)
Received: from nuoska (dc7g6tyjby-d304c4945t-3.rev.dnainternet.fi. [2001:14ba:16cb:a800:e107:c77f:6058:ee33])
        by smtp.gmail.com with ESMTPSA id n14-20020a2e82ce000000b002ab309da60fsm1054837ljh.103.2023.04.28.05.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 05:48:25 -0700 (PDT)
Date: Fri, 28 Apr 2023 15:48:23 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Stefan Berger <stefanb@linux.ibm.com>
Cc: yocto@lists.yoctoproject.org, akuster808@gmail.com
Subject: Re: [yocto] [meta-security][PATCH 7/8] linux: overlayfs: Add kernel
 patch resolving a file change notification issue
Message-ID: <ZEvAl09z9fluq3Cr@nuoska>
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
 <20230428122316.521800-8-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230428122316.521800-8-stefanb@linux.ibm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 12:48:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59806

Hi,

On Fri, Apr 28, 2023 at 08:23:15AM -0400, Stefan Berger wrote:
> Add a temporary patch that resolves a file change notification issue
> with overlayfs where IMA did not become aware of the file changes
> since the 'lower' inode's i_version had not changed. The issue will be
> resolved in later kernels with the following patch that builds on
> newly addd feature (support for STATX_CHANGE_COOKIE) in v6.3-rc1:
> 
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459

Would be nice to have Upstream-Status for each patch. I guess status
would be Backport here.

Cheers,

-Mikko

> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
> ---
>  ...Increment-iversion-upon-file-changes.patch | 42 +++++++++++++++++++
>  .../recipes-kernel/linux/linux_ima.inc        |  1 +
>  2 files changed, 43 insertions(+)
>  create mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
> 
> diff --git a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
> new file mode 100644
> index 0000000..d2b5c28
> --- /dev/null
> +++ b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
> @@ -0,0 +1,42 @@
> +From e9ed62e8d1d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 17 00:00:00 2001
> +From: Stefan Berger <stefanb@linux.ibm.com>
> +Date: Thu, 6 Apr 2023 11:27:29 -0400
> +Subject: [PATCH] ovl: Increment iversion upon file changes
> +
> +This is a temporary patch for kernels that do not implement
> +STATX_CHANGE_COOKIE (<= 6.2). The successor patch will be this one:
> +
> +https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> +
> +Increment the lower inode's iversion for IMA to be able to recognize
> +changes to the file.
> +
> +Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
> +---
> + fs/overlayfs/file.c | 3 +++
> + 1 file changed, 3 insertions(+)
> +
> +diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
> +index 6011f955436b..1dfe5e7bfe1c 100644
> +--- a/fs/overlayfs/file.c
> ++++ b/fs/overlayfs/file.c
> +@@ -13,6 +13,7 @@
> + #include <linux/security.h>
> + #include <linux/mm.h>
> + #include <linux/fs.h>
> ++#include <linux/iversion.h>
> + #include "overlayfs.h"
> + 
> + struct ovl_aio_req {
> +@@ -408,6 +409,8 @@ static ssize_t ovl_write_iter(struct kiocb *iocb, struct iov_iter *iter)
> + 		if (ret != -EIOCBQUEUED)
> + 			ovl_aio_cleanup_handler(aio_req);
> + 	}
> ++	if (ret > 0)
> ++		inode_maybe_inc_iversion(inode, false);
> + out:
> + 	revert_creds(old_cred);
> + out_fdput:
> +-- 
> +2.34.1
> +
> diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
> index 0b6f530..9d48e5c 100644
> --- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
> +++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
> @@ -2,6 +2,7 @@ FILESEXTRAPATHS:append := "${THISDIR}/linux:"
>  
>  SRC_URI += " \
>      ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'file://ima.scc', '', d)} \
> +    file://0001-ovl-Increment-iversion-upon-file-changes.patch \
>  "
>  
>  do_configure() {
> -- 
> 2.34.1
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59800): https://lists.yoctoproject.org/g/yocto/message/59800
> Mute This Topic: https://lists.yoctoproject.org/mt/98557297/7159507
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mikko.rapeli@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


