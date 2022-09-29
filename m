Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE684C433F5
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 14:48:56 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web10.11106.1664462932437052896
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 07:48:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=M8Izlvc9;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.181,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f181.google.com with SMTP id g2so977151qkk.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 07:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=sTvCXtXSYMi65Hm1k465G019ghCVlCWRDDn8lk4jZKM=;
        b=M8Izlvc96A1J38KfjSrVRIu10MYKBn8gb/MYyZy0nrhs6tfM3KkLzaA90Zv5HUhM3k
         Eua880HsnVzxhPXRNxs0sdxZOAOoWKYm1HOsx7CUi7v00E9Q+SU67CYbI1kmtHA48gKc
         bzgjg6Q2AtxIwDDTO/qtgC8jZcLWqaZ5tRbMUKsXES4r0J0Dq5BDWAFOURrSmJoF/o0d
         O/b5BnCGf45ofH1+QY5yAQaf5ciwsuTUcHXXJAhCcyLLl0d8i3986RQrG+6T2WTjXP0m
         cEv6oVsY3PNvqN5qm3V36CdsexgYeUO1XQqzz189EzbrSbZRNJ1jsdn9xvBA7wtLlOsq
         0nzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=sTvCXtXSYMi65Hm1k465G019ghCVlCWRDDn8lk4jZKM=;
        b=ZflNDU60ACM1o5FEm/AP6vlpqdIsfk5/CvUie/tShE4m9iQGmuLlJlmZGG03cdGFTm
         zHEIWfpn8qtguHTAABQqY79T3Xa4rUXa/gSCQPoEO47COiCdCX35Nbx/7P9ssAbTJ7dB
         ql3Sk6oJdkhuGikPJI5qNa4rvJlJ3BY1HnGyGsBhZz/Ox6hu+k7Wq2GioG6tJ1FjXObi
         gJkj4zY4FTHO5gr4mGBDQEcl6YX9Ouid5Cov1QVb3e1W+ZHgAKa3Rb9P+nTc6xSvOqR/
         RamN40O8eWX868mZA/EPtQDeoK/k+1ehhpSQ5MOPcgzgsn7rumIo8q/sBoS9f4P2VfEM
         gM+g==
X-Gm-Message-State: ACrzQf2AofpeUhNwQMUdFZgCWURGBPpqM6hSgBQbz9vf4Tq5h7Yz8WZN
	Zkyi1Sk2K7pUQuRZ2YYmwsdVnKW6qXvEFA==
X-Google-Smtp-Source: 
 AMsMyM5wnRSx8P3L8zqlhf33+fq0r1WiRKo7mP8Me+0MXCJrdS862wAi3VfbCAUc6FMzXNQHZ8vRYQ==
X-Received: by 2002:a05:620a:2954:b0:6cf:9084:f7ab with SMTP id
 n20-20020a05620a295400b006cf9084f7abmr2481313qkp.355.1664462931539;
        Thu, 29 Sep 2022 07:48:51 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id
 x22-20020a05620a0b5600b006b61b2cb1d2sm5954366qkg.46.2022.09.29.07.48.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 07:48:51 -0700 (PDT)
Date: Thu, 29 Sep 2022 10:48:49 -0400
From: Jon Mason <jdmason@kudzu.us>
To: philippe.coval@astrolabe.coop
Cc: yocto@lists.yoctoproject.org,
	philippe.coval.pro+meta-zephyr-lists.yoctoproject.org@gmail.com
Subject: Re: [meta-zephyr][PATCH] frdm-kw41z.conf: Add new machine from NXP
Message-ID: <YzWwUWYMLkirJeq9@kudzu.us>
References: <20220928122726.1374956-1-philippe.coval@astrolabe.coop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220928122726.1374956-1-philippe.coval@astrolabe.coop>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 14:48:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58216

On Wed, Sep 28, 2022 at 02:27:26PM +0200, philippe.coval@astrolabe.coop wrote:
> From: Philippe Coval <philippe.coval@astrolabe.coop>
> 
> It was tested using zephyr-blinky and deployed manually using:
> 
>     udisksctl mount -b  "/dev/disk/by-label'FRDM-KW41ZJ"
> 
> Relate-to: https://gitlab.eclipse.org/pcoval/oniro-presentations/-/wikis/openthread
> Forwarded: https://lists.yoctoproject.org/g/yocto/search?q=posterid:6590488
> Signed-off-by: Philippe Coval <philippe.coval@astrolabe.coop>

Verified in a batch CI job.  See https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/654231304

Tested-by: Jon Mason <jon.mason@arm.com>

> ---
>  .gitlab-ci.yml                               |  3 +++
>  ci/frdm-kw41z.yml                            |  6 ++++++
>  meta-zephyr-bsp/conf/machine/frdm-kw41z.conf | 11 +++++++++++
>  3 files changed, 20 insertions(+)
>  create mode 100644 ci/frdm-kw41z.yml
>  create mode 100755 meta-zephyr-bsp/conf/machine/frdm-kw41z.conf
> 
> diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> index c185477..5752254 100644
> --- a/.gitlab-ci.yml
> +++ b/.gitlab-ci.yml
> @@ -71,6 +71,9 @@ machine-coverage:
>  arduino-nano-33-ble:
>    extends: .build
>  
> +frdm-kw41z:
> +  extends: .build
> +
>  intel-x86-64:
>    extends: .build
>  
> diff --git a/ci/frdm-kw41z.yml b/ci/frdm-kw41z.yml
> new file mode 100644
> index 0000000..cb1ce1f
> --- /dev/null
> +++ b/ci/frdm-kw41z.yml
> @@ -0,0 +1,6 @@
> +header:
> +  version: 11
> +  includes:
> +    - ci/base.yml
> +
> +machine: frdm-kw41z
> diff --git a/meta-zephyr-bsp/conf/machine/frdm-kw41z.conf b/meta-zephyr-bsp/conf/machine/frdm-kw41z.conf
> new file mode 100755
> index 0000000..464e83a
> --- /dev/null
> +++ b/meta-zephyr-bsp/conf/machine/frdm-kw41z.conf
> @@ -0,0 +1,11 @@
> +#@TYPE: Machine
> +#@NAME: frdm-kw41z
> +#@DESCRIPTION: Machine configuration for frdm-kw41z 
> +#
> +# This file was generated using generate-zephyr-machines
> +
> +require conf/machine/include/arm/armv6m/tune-cortexm0plus.inc
> +
> +ARCH:frdm-kw41z = "arm"
> +
> +DEFAULTUNE ?= "cortexm0plus"
> -- 
> 2.34.1
> 
> 

