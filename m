Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 073DBC3DA78
	for <webhook@archiver.kernel.org>; Sun, 15 Jan 2023 20:12:43 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web10.149283.1673813558117227577
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Jan 2023 12:12:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=lxrzXIRj;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.180, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f180.google.com with SMTP id o5so2248065qtr.11
        for <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 12:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lTu0g4o7g1/y9ak/1D1IOnpjT0uViEZr2+PwMS9krKw=;
        b=lxrzXIRjuHmA4KDbkQx+293oyM5d8CPzpVMJz6wc/b+uXaac8Se+jW6RposXtOTSjt
         BnRXgCpcTSaKcR5pomOnbAf2FqV8r/xUmtDJma8mRRVAbcfD1oUZ7FbfXaPArdDPAU1m
         7M+rqtw/WRns46JI4/0NupOJvlqvJ5hzV9DELY1elcS8IpF9t+TAN70wzzBL+JNsTplb
         MxOcyzPUzJVmMNzYNrJd0YoRkbbyLfzuWeR+x6q2DzmAoA0rwecOcpbfwm1/dU7giyZn
         OzwkaRNlaSc14oxZSY1zOk+nFBT0Ds5j2RZonJTEqCq9eQcawF0GW2TvRXll+Xlq5e66
         4Pjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lTu0g4o7g1/y9ak/1D1IOnpjT0uViEZr2+PwMS9krKw=;
        b=pfmz3wzUomWfsd4BZflLGbPEDw/aFY9YglOFF2+ee9oJgrfruo1mBS6EpNTGlXsNVK
         xMMOTl+g9hU9f8pq583J6wqxvlUDSFgBzX4TEmG8o8+SUv+wyDuNe731R8uA4sbVE7uh
         6IHZ3kSyxmeVrdKjTTeLd4LOB3oJA2P33+w689E/aotUlq98L2XK6WPikT0gbgtJ/0dO
         zSMmaZia9LtZrZwIyVHEUSgYJPeT5XCvORC1MnBY0eeh9Z4Cr3WhK+2qAUITStOQ2m9q
         p/9qextZjg1HZj6W8thh215FsxGGwnSEeHpx5E5Akfqjbjc/rAWMOqNqnutKD0ca91Eo
         eG2Q==
X-Gm-Message-State: AFqh2kpKfVY1g1Q3S89qOjoR1VDLehbuELGxR5CG8g8q/zy89CBATj7N
	HWo+Zf2chUMSgPfICriq3tirkk8rUHf6LWsB
X-Google-Smtp-Source: AMrXdXvMAcMBJzX5DXj5QsD0DjDcImP2QX7xG50SC7wxWuPgecg33AjYj/aO/68dGLY9/EPuwAk+2A==
X-Received: by 2002:ac8:75c7:0:b0:3a5:24ac:a175 with SMTP id z7-20020ac875c7000000b003a524aca175mr32892586qtq.56.1673813557029;
        Sun, 15 Jan 2023 12:12:37 -0800 (PST)
Received: from kudzu.us ([2605:a601:a615:a000::59])
        by smtp.gmail.com with ESMTPSA id r13-20020ac87eed000000b003b6302f2580sm871701qtc.22.2023.01.15.12.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 12:12:36 -0800 (PST)
Date: Sun, 15 Jan 2023 15:12:34 -0500
From: Jon Mason <jdmason@kudzu.us>
To: Peter Hoyes <peter.hoyes@arm.com>
Cc: yocto@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>,
	Jon Mason <jon.mason@arm.com>
Subject: Re: [meta-zephyr][PATCH 1/5] CI: Add variables needed for k8s runners
Message-ID: <Y8ReMrw6mB29eKxm@kudzu.us>
References: <20221216153723.1522131-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216153723.1522131-1-peter.hoyes@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 20:12:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58990

On Fri, Dec 16, 2022 at 03:37:19PM +0000, Peter Hoyes wrote:
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
master branch) though CI and it passes (with the known qemu a9 poll
issue).  See:
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/747733921

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

