Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8D05C63797
	for <webhook@archiver.kernel.org>; Sun, 15 Jan 2023 20:13:42 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.149106.1673813615702813140
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Jan 2023 12:13:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=ZW9rJTTr;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.49, mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f49.google.com with SMTP id qb7so18450514qvb.5
        for <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 12:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cwoMotAX4WvfqDCpVLDFhyLo900mgLDeHlWYdVCXWcI=;
        b=ZW9rJTTrhqrYnvuOCBmA71XcMuF4py4G95Us9UUQsriDsD35lNqaj238J4epQs9YiS
         YyzzKTDEz+hBVUkHnWMDf05y4lPN/TkM6mjwEzQJXgRdkCfC3ng42nJPmJOKSfVA9nwO
         WwvRNXRJsoNxctVjgflCQEGtCfou2TAnQ+T2pq3+ApZGIrJgPaKfSy8KIK0cHbJlWl30
         im8AKhDXLYEBKnelqAvd4qfEgKwG+DxazdUoB7y7QuMQCVpfGj0WbeaWc/H8uRIXG6v5
         HgBcwKW0N8S4hlFTacW72LvuhY1TUFGTbKqr97tryDRL/9GiumVnlceNIJKVnZ6G9VaA
         BlMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cwoMotAX4WvfqDCpVLDFhyLo900mgLDeHlWYdVCXWcI=;
        b=v5aAqbV0KoPwa5yDi9VcXSeaM4uyqPKGQlEZfeUvhJyQfcdxQzKoYOtjZgcSesZQdY
         3wjGV7WuXsKTWrvYclUHnc/9lSRUs8HrDF2QfD1zpc4KelXsMrWpijAFF2DLvFNzCb3u
         X8hsVeJ0mdqJB+lFMb5fVIy7ZJyhKChNlX8IzqFFbm2Oifww6avm3uWya2RMGkn3GSUK
         1BUACno4du7kAp5rVS4+A52z2cb7kS4FFLMX46zb+MlZ6F22ai7mtKxFw2nj8ci3FFwq
         xi3BOUHlmyqbwLKUyS8mkFAFMzXcKsKoQpZGeUOrQ9K3bihnG5ywZXpfknKmwVx70c9Z
         J4Ww==
X-Gm-Message-State: AFqh2kp7vjq1PD7EOLRpD5tObwZvuEXjTR5+wF09jGM7dp1bu+d4HAst
	eTMft8pwPzGcfI8FksN0InsKZkK8nwa/CTOr
X-Google-Smtp-Source: AMrXdXs92wuPF+RGGUl3pCpVCs30gzW4YvfnftMZzMMryikO+6otp4tvwrRYKOQA138K8JiHB1Gyrg==
X-Received: by 2002:a0c:e950:0:b0:532:24d8:22bc with SMTP id n16-20020a0ce950000000b0053224d822bcmr42580527qvo.3.1673813614506;
        Sun, 15 Jan 2023 12:13:34 -0800 (PST)
Received: from kudzu.us ([2605:a601:a615:a000::59])
        by smtp.gmail.com with ESMTPSA id u8-20020a37ab08000000b00702311aea78sm16682308qke.82.2023.01.15.12.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 12:13:34 -0800 (PST)
Date: Sun, 15 Jan 2023 15:13:32 -0500
From: Jon Mason <jdmason@kudzu.us>
To: Naveen Saini <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-zephyr][PATCH] layer.conf: update LAYERSERIES_COMPAT for
 mickledore
Message-ID: <Y8RebP7EL7fW+3+L@kudzu.us>
References: <20230104043632.1351038-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230104043632.1351038-1-naveen.kumar.saini@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 20:13:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58991

On Wed, Jan 04, 2023 at 12:36:32PM +0800, Naveen Saini wrote:
> oe-core switched to mickedore in:
> https://git.openembedded.org/openembedded-core/commit/?id=57239d66b933c4313cf331d35d13ec2d0661c38f
> 
> Drop support for old releases.
> 
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>

I ran this series (batched with the other patches destined for the
master branch) though CI and it passes (with the known qemu a9 poll
issue).  See:
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/747733921

Tested-by: Jon Mason <jon.mason@arm.com>

> ---
>  meta-zephyr-bsp/conf/layer.conf                             | 4 +---
>  meta-zephyr-bsp/conf/machine/include/tune-corei7-common.inc | 4 ++--
>  meta-zephyr-bsp/conf/machine/qemu-x86.conf                  | 2 +-
>  meta-zephyr-core/conf/layer.conf                            | 4 +---
>  4 files changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/meta-zephyr-bsp/conf/layer.conf b/meta-zephyr-bsp/conf/layer.conf
> index cbbaafe..d809926 100644
> --- a/meta-zephyr-bsp/conf/layer.conf
> +++ b/meta-zephyr-bsp/conf/layer.conf
> @@ -15,6 +15,4 @@ LAYERVERSION_zephyrbsp = "1"
>  
>  LAYERDEPENDS_zephyrbsp = "zephyrcore core meta-python"
>  
> -LAYERSERIES_COMPAT_zephyrbsp = "dunfell gatesgarth hardknott honister kirkstone langdale"
> -
> -X86_TUNE_DIR = "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'honister kirkstone langdale', 'include/x86', 'include', d)}"
> +LAYERSERIES_COMPAT_zephyrbsp = "kirkstone langdale mickledore"
> diff --git a/meta-zephyr-bsp/conf/machine/include/tune-corei7-common.inc b/meta-zephyr-bsp/conf/machine/include/tune-corei7-common.inc
> index b68fc05..6975c50 100644
> --- a/meta-zephyr-bsp/conf/machine/include/tune-corei7-common.inc
> +++ b/meta-zephyr-bsp/conf/machine/include/tune-corei7-common.inc
> @@ -1,6 +1,6 @@
>  DEFAULTTUNE ?= "corei7-64"
> -require conf/machine/${X86_TUNE_DIR}/tune-corei7.inc
> -require conf/machine/${X86_TUNE_DIR}/x86-base.inc
> +require conf/machine/include/x86/tune-corei7.inc
> +require conf/machine/include/x86/x86-base.inc
>  
>  # Add x86 to MACHINEOVERRIDE
>  MACHINEOVERRIDES =. "x86:"
> diff --git a/meta-zephyr-bsp/conf/machine/qemu-x86.conf b/meta-zephyr-bsp/conf/machine/qemu-x86.conf
> index 0333d7c..d21de35 100644
> --- a/meta-zephyr-bsp/conf/machine/qemu-x86.conf
> +++ b/meta-zephyr-bsp/conf/machine/qemu-x86.conf
> @@ -3,7 +3,7 @@
>  #@DESCRIPTION: Machine for Zephyr BOARD qemu_x86
>  
>  require conf/machine/include/qemu.inc
> -require conf/machine/${X86_TUNE_DIR}/tune-i586.inc
> +require conf/machine/include/x86/tune-i586.inc
>  
>  ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
>  
> diff --git a/meta-zephyr-core/conf/layer.conf b/meta-zephyr-core/conf/layer.conf
> index 2b1c821..fdff4f6 100644
> --- a/meta-zephyr-core/conf/layer.conf
> +++ b/meta-zephyr-core/conf/layer.conf
> @@ -15,9 +15,7 @@ LAYERVERSION_zephyrcore = "1"
>  
>  LAYERDEPENDS_zephyrcore = "core meta-python"
>  
> -LAYERSERIES_COMPAT_zephyrcore = "dunfell gatesgarth hardknott honister kirkstone langdale"
> -
> -X86_TUNE_DIR = "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'honister kirkstone langdale', 'include/x86', 'include', d)}"
> +LAYERSERIES_COMPAT_zephyrcore = "kirkstone langdale mickledore"
>  
>  PYTHON3_NATIVE_SITEPACKAGES_DIR = "${libdir_native}/${PYTHON3_DIR}/site-packages"
>  
> -- 
> 2.25.1
> 
> 

