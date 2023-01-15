Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01980C3DA78
	for <webhook@archiver.kernel.org>; Sun, 15 Jan 2023 20:17:13 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.149405.1673813830316323307
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Jan 2023 12:17:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=WwpW87Wi;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.54, mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f54.google.com with SMTP id h10so18439526qvq.7
        for <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 12:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nHTvdCG3XaudLyNezwLWxwogFgyq2QOavqb2w+ZWEH4=;
        b=WwpW87WiQWVPhwYwzmNzffbpVnIO6R/aVKRKT0kd5bhyyu2cRA4QU9z47IMMEcHsPl
         rEeGf1ZymYG75tfLcB2Uds2j6Gn5Rulj0MDFAfvL9GbsV8V4/YtKQ/hqhYW4t7Mjx88B
         MUecettdCaMpuUtF+B2p8U7b5ilU/FDQD9yhQpfzEewNlz6mognUQMcTBwnCLy4db7hY
         0vd2gzXARCPZdUlSeKFJjOFLSwgkFdPcemRPyH+uDkDQNRN3z7aMVJ8oPgbS2qfFd020
         EL3tva2jJAYNn2vQvT95cZCNZJ2N97oQQ8tWiTxqw4JEBENQx7DnJG/nbNHJhqF7zqR7
         zrXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nHTvdCG3XaudLyNezwLWxwogFgyq2QOavqb2w+ZWEH4=;
        b=tmnhkh6pAW1qD/eATHLLnMu+XpdJWGt/n6yk/yJcjLZtgSBELdT8I53NveMkASFCQa
         TOwxeUQPpgUolOiBVm3LksJCiPxaddcKM4LulRgv5+aFyXvc0UsQThbK151k+erkLUmO
         ycRkz/qAhhJtMSWGKQ8qLjrWNJqgVh/0p7pfbh0wqP3fNTOugOxGny450p7qa5Q1ST4P
         XwRDgPUiicyZ3Pf/gUf9ZGTMiiRICjTWqh2sIUiMLDPMMwoq2f63LaNKCDVvwlr8Zavf
         9B5ytMUYDOCb+2bhI9ZAUV34Ju/9JeHQ7rcNf4ew/bQR2kRslQWpe04pB60FFXlgZghd
         jixQ==
X-Gm-Message-State: AFqh2kpmLhg8+fiEBbL0PGx/2dFsX4ZIVxD7yBSeIst05K349KdvCQq8
	1X79kLjKFobgCX9wrGcDXK/I+vY6EryV+4DS
X-Google-Smtp-Source: AMrXdXsxHXMm4+6edVOrfcUgcOTnb6lnR5FdHZC2/pFHL242L7XzWcZ+aB3ZWdm2U2mxJAjddO3bag==
X-Received: by 2002:a05:6214:564a:b0:531:e636:e236 with SMTP id mh10-20020a056214564a00b00531e636e236mr25473425qvb.28.1673813829345;
        Sun, 15 Jan 2023 12:17:09 -0800 (PST)
Received: from kudzu.us ([2605:a601:a615:a000::59])
        by smtp.gmail.com with ESMTPSA id v14-20020a05620a0f0e00b006fbb4b98a25sm16964865qkl.109.2023.01.15.12.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 12:17:08 -0800 (PST)
Date: Sun, 15 Jan 2023 15:17:07 -0500
From: Jon Mason <jdmason@kudzu.us>
To: Peter Hoyes <peter.hoyes@arm.com>
Cc: yocto@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>,
	Jon Mason <jon.mason@arm.com>
Subject: Re: [meta-zephyr][PATCH 1/5][langdale] CI: Add variables needed for
 k8s runners
Message-ID: <Y8RfQzR1Xa5fvH6M@kudzu.us>
References: <20221216154147.1524548-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216154147.1524548-1-peter.hoyes@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 20:17:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58993

On Fri, Dec 16, 2022 at 03:41:43PM +0000, Peter Hoyes wrote:
> From: Peter Hoyes <Peter.Hoyes@arm.com>
> 
> The Kas container needs to use the entrypoint as that is where the user
> changes from root to a normal user.
> 
> Also set the KUBERNETES_CPU_REQUEST to the variable CPU_REQUEST as this
> needs to be tuned per-deployment.
> 
> CPU_REQUEST has no value outside of Arm Corp.  Gitlab CI allows for
> variables to be overridden by default.  So, we can give it a default
> value of NULL/empty and have everything work internally and externally
> by default.
> 
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> Signed-off-by: Jon Mason <jon.mason@arm.com>
> Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>

I ran this series (batched with the other patches destined for the
langdale branch) through CI and it passes.  See:
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/747805268


Tested-by: Jon Mason <jon.mason@arm.com>

> ---
>  .gitlab-ci.yml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> index 3f0e319..616626a 100644
> --- a/.gitlab-ci.yml
> +++ b/.gitlab-ci.yml
> @@ -1,5 +1,12 @@
>  image: ghcr.io/siemens/kas/kas:latest-release
>  
> +variables:
> +  CPU_REQUEST: ""
> +  # These are needed as the k8s executor doesn't respect the container
> +  # entrypoint by default
> +  FF_USE_LEGACY_KUBERNETES_EXECUTION_STRATEGY: 0
> +  FF_KUBERNETES_HONOR_ENTRYPOINT: 1
> +
>  stages:
>    - prep
>    - build
> @@ -24,6 +31,8 @@ stages:
>  # Generalised fragment to do a Kas build
>  .build:
>    extends: .setup
> +  variables:
> +    KUBERNETES_CPU_REQUEST: $CPU_REQUEST
>    script:
>      - KASFILES=$(./ci/jobs-to-kas "$CI_JOB_NAME")
>      - kas shell --update --force-checkout $KASFILES -c 'cat conf/*.conf'
> -- 
> 2.25.1
> 
> 

