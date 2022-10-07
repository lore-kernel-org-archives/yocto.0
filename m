Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABEBC433F5
	for <webhook@archiver.kernel.org>; Fri,  7 Oct 2022 14:19:45 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.5017.1665152382889395698
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Oct 2022 07:19:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=pvb3+cac;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.181,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f181.google.com with SMTP id d12so1662722qtp.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 07 Oct 2022 07:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SzwT21iKN9AR/eybUxylJSsC4HdwwidzRk49UpjRtno=;
        b=pvb3+cacA2K+8/Ov+srQ2nBdVsgfI69DyKqwnJR5S9W7hVWpG/tlIuG6KFU6LtfboT
         3lxtB2Mdx9hnWA+Pmq5lsr0FOMOm+C7OtwApiArWBTB92vCbYY+6UccuZHTjLwpEvAJO
         fu7dS+ELbhzwBAg+8rRM96DRLXRr3iz/TPNcB1QYFqTo1ks3XiE8tm+JFqtcYCbDBSyo
         C1NmE21gkecASHp22RxA9ax+TL5IbZI19GPGvlZTUGsVESxigjkm9MVmM0cqcmQ/4Ow3
         8LUiBFwSRrlIQwlezWh79oYXmtGPpmO8gc3/zFzNpzHFVSlbW4BKrCirKmjjkQYwFFBt
         cr3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SzwT21iKN9AR/eybUxylJSsC4HdwwidzRk49UpjRtno=;
        b=lVDs6V5KP0qFwumNWSRwx6V6QJkwMlp+1HSqnMIPz6C01jgrVLXw4NdelGRT/7H96+
         2JowvJ+kdWxekH1K2iAlsngJW2cdWjBpwWuKiKH37GQrL0VYiPXISkvVWTOeIGI5xXpc
         VAm8cHecAu5RT/jxqMZ97ATWeCa7nwbyejn1Qbzt1uD8ypFzJ8FaA5zL8aaO2sZOrbBD
         q4GS8jQvyJ08T8Y2ACAHjmyFWTZLss7i+pmrIQlNnN1eykeh67VTizOI6iehLo2uoDUy
         gHN0Dm0uOMV2OCMjSCND8TVFlFZyre1FEgQt+AkY4ewlIx+XFgojnTwrZjM6alQojdu7
         3k+Q==
X-Gm-Message-State: ACrzQf348nf6oh9dLt0rLLyco9vvEqmvo/zMhFJBgDef1EqHkgM3scRJ
	Pa9cWfbWRAZo3JC76X5XAh1tkw==
X-Google-Smtp-Source: 
 AMsMyM57fE7Ihej2KMcHdA4dAs7tP+U5igb/y4Jd9qaaPbqk27sfoTfYSLUBWzLLaJQVoo3QlkDmsQ==
X-Received: by 2002:ac8:5e12:0:b0:35c:bd2e:9ccd with SMTP id
 h18-20020ac85e12000000b0035cbd2e9ccdmr4272101qtx.522.1665152381910;
        Fri, 07 Oct 2022 07:19:41 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id
 f6-20020a05620a408600b006cfa7b944fdsm2339583qko.16.2022.10.07.07.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Oct 2022 07:19:41 -0700 (PDT)
Date: Fri, 7 Oct 2022 10:19:39 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Jon Mason <jon.mason@arm.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-zephyr][PATCH 1/6] zephyr-bsp: add support for
 qemu-cortex-a9
Message-ID: <Y0A1e6PVWB3N8jC2@kudzu.us>
References: <20221007141203.16632-1-jon.mason@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221007141203.16632-1-jon.mason@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Oct 2022 14:19:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58292

FYI, the CI for this series can be seen at
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/660400016

On Fri, Oct 07, 2022 at 10:11:58AM -0400, Jon Mason wrote:
> Signed-off-by: Jon Mason <jon.mason@arm.com>
> ---
>  .gitlab-ci.yml                                |  7 +++++++
>  ci/qemu-cortex-a9.yml                         | 10 ++++++++++
>  .../conf/machine/qemu-cortex-a9.conf          | 20 +++++++++++++++++++
>  3 files changed, 37 insertions(+)
>  create mode 100644 ci/qemu-cortex-a9.yml
>  create mode 100644 meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf
> 
> diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> index 5752254..031b5c5 100644
> --- a/.gitlab-ci.yml
> +++ b/.gitlab-ci.yml
> @@ -90,6 +90,13 @@ qemu-cortex-a53:
>        - TOOLCHAIN: [default, zephyr-toolchain]
>          TESTING: testimage
>  
> +qemu-cortex-a9:
> +  extends: .build
> +  parallel:
> +    matrix:
> +      - TOOLCHAIN: [default, zephyr-toolchain]
> +        TESTING: testimage
> +
>  qemu-cortex-m0:
>    extends: .build
>    parallel:
> diff --git a/ci/qemu-cortex-a9.yml b/ci/qemu-cortex-a9.yml
> new file mode 100644
> index 0000000..cc44730
> --- /dev/null
> +++ b/ci/qemu-cortex-a9.yml
> @@ -0,0 +1,10 @@
> +header:
> +  version: 11
> +  includes:
> +    - ci/base.yml
> +
> +local_conf_header:
> +  failing_tests: |
> +    ZEPHYRTESTS:remove = "common queue"
> +
> +machine: qemu-cortex-a9
> diff --git a/meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf b/meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf
> new file mode 100644
> index 0000000..9dfee42
> --- /dev/null
> +++ b/meta-zephyr-bsp/conf/machine/qemu-cortex-a9.conf
> @@ -0,0 +1,20 @@
> +#@TYPE: Machine
> +#@NAME: qemu-cortex-a9
> +#@DESCRIPTION: Machine for Zephyr BOARD qemu_cortex_a9
> +
> +DEFAULTTUNE ?= "cortexa9"
> +require conf/machine/include/qemu.inc
> +require conf/machine/include/arm/armv7a/tune-cortexa9.inc
> +
> +TCLIBC = "newlib"
> +
> +# For runqemu
> +QB_SYSTEM_NAME = "qemu-system-arm"
> +QB_MACHINE = "-machine xilinx-zynq-a9"
> +QB_CPU = "-cpu cortex-a9"
> +QB_GRAPHICS = "-nographic -vga none"
> +QB_OPT_APPEND = "-icount shift=3,align=off,sleep=off -rtc clock=vm"
> +
> +# Zephyr RTOS settings
> +ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
> +ARCH:qemu-cortex-a9 = "arm"
> -- 
> 2.17.1
> 
> 

