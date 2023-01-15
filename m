Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EED13C63797
	for <webhook@archiver.kernel.org>; Sun, 15 Jan 2023 20:17:42 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web11.149218.1673813855434953232
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Jan 2023 12:17:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=HXFf7qsZ;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.181, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f181.google.com with SMTP id x7so13144399qtv.13
        for <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 12:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9lL75OCVQ3CXC4Cl8/TmGcdyqiut1mDttcWpg8GX+uQ=;
        b=HXFf7qsZQIlTwOPAzuZIA8srbUS9iKFcvHW2jnNNjKLuNkyJOdgvig9yqAICs6Wn/k
         rkU4ddjQpr5Htvt7Z6IfuQT9P2SJ8ZShT0ks9hAK0adPsgC/81OZ0yQEVfZ6OClpz245
         A13tnICIor0Biu1L2OXOtPUhLR7yTkxyk7RaqLSsIEJ1Eex7cePt3A+zgHGniNz5+eCD
         dlnM/CrFJqgllvT6sZUMJ7oghIZOEG3QjNF0LcYDukWfrwkuNi5AbOqSLLiLtxctn8Go
         c7hE+AM+2IozUj+RtmAJuE76Rcow65EeqFrSbcvm22aJp7tvUxYKxlsIk0HDDJezk6vu
         odmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9lL75OCVQ3CXC4Cl8/TmGcdyqiut1mDttcWpg8GX+uQ=;
        b=th05MkwcFyd4xBNh2O3RaLyinnHi94poA+INjQHDVt/8Uv8m9kaoxu3z+HJA2DqQCa
         hpJdy+jJbsZmMiglMn8qiaAVSH6h//g0qf6lgFj+1En+5//aXFa1XecAe8e6MVJtcr7x
         eQXdGY+uWXO81q4jFzzLh8vOnxC2y9kQq1umYg0MuxzN/Sp0uFtrF8Vx+uE8hkhKRbBQ
         SBwVNDdL7iTxiwUE5N+kFXLXGYqKYqXNeqX53kWgIWTvfofCQHxKzP+3YVC8I9TECJLc
         dYx257IZPXyxC9nbB96gU2EtuTDPs4JkVm3kxlmtGvoz+fpTpAmKljznk35TZtrZjjyP
         gQkw==
X-Gm-Message-State: AFqh2kp+fQLoesKBXGy77jnt6XqbvTOoknVjogq4+jpQFx6ua7057Wxw
	LXn6hJX1NZdgvmb5SO2+pBQkog==
X-Google-Smtp-Source: AMrXdXtCWm0A0C5eMZnPo5DpvO7hCdwN9m/gSwqmymg11wkcMaTSVmoBgabLzAdzno/wQ5BRQbZmnw==
X-Received: by 2002:ac8:70d8:0:b0:3af:93c3:96b0 with SMTP id g24-20020ac870d8000000b003af93c396b0mr28178142qtp.17.1673813854417;
        Sun, 15 Jan 2023 12:17:34 -0800 (PST)
Received: from kudzu.us ([2605:a601:a615:a000::59])
        by smtp.gmail.com with ESMTPSA id b24-20020ac86798000000b0039cc944ebdasm13694380qtp.54.2023.01.15.12.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 12:17:33 -0800 (PST)
Date: Sun, 15 Jan 2023 15:17:32 -0500
From: Jon Mason <jdmason@kudzu.us>
To: Peter Hoyes <peter.hoyes@arm.com>
Cc: yocto@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>,
	Jon Mason <jon.mason@arm.com>
Subject: Re: [meta-zephyr][PATCH 1/2][kirkstone] CI: Add variables needed for
 k8s runners
Message-ID: <Y8RfXMRFFZMpRQSd@kudzu.us>
References: <20221216154423.1525796-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216154423.1525796-1-peter.hoyes@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 15 Jan 2023 20:17:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58994

On Fri, Dec 16, 2022 at 03:44:22PM +0000, Peter Hoyes wrote:
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

I ran this series through CI and it passes.  See:
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/747732461

Tested-by: Jon Mason <jon.mason@arm.com>

> ---
>  .gitlab-ci.yml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> index 8d22654..03bd9c9 100644
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

