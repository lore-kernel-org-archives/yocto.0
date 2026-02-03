Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86AB1E8B385
	for <webhook@archiver.kernel.org>; Tue,  3 Feb 2026 23:23:52 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7511.1770161026565982518
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Feb 2026 15:23:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TLIisKB4;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8c531473fdcso807585885a.3
        for <yocto@lists.yoctoproject.org>; Tue, 03 Feb 2026 15:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770161025; x=1770765825; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H4Oeq/AEiJsLEeq7ea5u0Gix8b8Pf2XGJJjtf+FLOsM=;
        b=TLIisKB4yQtrNrAIXtL+9C2FcDN4Gv9FY/cF2TF4dmoJmk1q1dYhNH3TiKyY8ziOr3
         X3Febkc3cGIIK6GHx+7oUw73lpsu6xiH3FHEQLyBxruGwzAmWUbCmMqzTEcGjoETirQC
         +RbkNLBB/FLgTvFmTL5IafsVvyJ9/WfOok5jkERUMLHZugCBZcX+Zus3GzXdVfuKALZ2
         ppeE29DS2YhmytObBPBr+wDPEmteVWq9jAsEd2+oE3oYJzfPCUeesJ0XLN2guL1R9M1C
         iKC/ymLaAsUyN+WsrVOR24D/PEVJ9xRGZAUthoOcYutlE1yp7rYnVjttpY+TN2DHrr/t
         J/1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770161025; x=1770765825;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H4Oeq/AEiJsLEeq7ea5u0Gix8b8Pf2XGJJjtf+FLOsM=;
        b=dZnd4w3nnSL7NyrExATj4IDxxAc5jje+yiA6shHLa2wbqseBOa9lYTTX6N2q7m/1mX
         jTdrnOSSLB9kz8XY76GaWENEMVv1/M8AmcJAfQPk8Mwyw+UiObu1sK68sDwNhXHGDanx
         xqz9LrRSTLqLk5CXHqS3AD1PbhBOeJf6OrB1y9shqOJq/EnHz0Hx8PW1y/c4JFYvz2dW
         FKfhQaiHhJtK1W2RxF7vLWp+GDPoBfNOkHqUd8aPrlcKgarJaTCHGFahOYeV4Vf+zUTF
         qXdS7rB8dzvA2mzkSm8S7eJnrJ1wI/sXhCY3y/xL4F8AdswgrGELeO8SOuvgPa0vo3mR
         LyoQ==
X-Gm-Message-State: AOJu0YwDLCgEkaEZ1jWqE2ZAjjwLajoE5lYpXBJD/uPt35Y5hCz69OWH
	GGFmSyYZ886F0YJR4jkzAkMVDgHy4nF77neezzQOrT4PT4XcrfqGwjevZw0mvuaTQfE=
X-Gm-Gg: AZuq6aJBqwsgJyzxgNv8wLghGwUNHLaC9+ZlAc+ttwY/sT6D78qIIFIGu4AjQusbSFW
	EhL88EkAafwJoW/BT1S6xLN9ZqC3zkxf1DJQbxhouf7UHLDBA6+nVAKp69D3b1RoCgCGzBv3MNb
	wMVX6QxuVSfX6/kEGJaE9r1RhIfk0k1BXknqUqhMmdkoY9VdiF5buffcYSvQ87x91KfF/DCvlc/
	SS507mgAKGvAxN2Mf/WeWm/M4log714Br+X6jDaTwXeNwf1AjHA424XxPZ9cBDOLMYEt6uim+Nl
	Ar9XQYNTcNs93KfgZgqGYUrbguiZMW/Je0Ew9jT3Qnhj3SFuYo1FkIKQbghtCc0XwhzVI5QPmFn
	O8+3nzCgCr8gm3RsJ3KKEaDD1Ijsp/ehwwb0EyDw8c/T0ifkD8KwYzTaT1SygtzaDy8lRZrSkkc
	AkTBHbk3sbuUYBVukZsYxBhP0To4AK7vYk6Iy0z1jk2JnUnb479im9d286g4t+nXRatNJbIYrIt
	iywg1LOoN5Zq0CPOqqa+qBk
X-Received: by 2002:a05:620a:4614:b0:8c7:a84:d0fa with SMTP id af79cd13be357-8ca2f9b12dbmr152885985a.55.1770161025080;
        Tue, 03 Feb 2026 15:23:45 -0800 (PST)
Received: from gmail.com (pool-174-112-62-108.cpe.net.cable.rogers.com. [174.112.62.108])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89521d27ccbsm7100166d6.48.2026.02.03.15.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 15:23:44 -0800 (PST)
Date: Tue, 3 Feb 2026 18:23:42 -0500
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: yocto@lists.yoctoproject.org, yogesh.tyagi@intel.com
Subject: Re: [yocto] [yocto-kernel-cache][PATCH] media-radio: Remove obsolete
 CONFIG_RADIO_WL1273
Message-ID: <aYKDfqh2wMFAibR_@gmail.com>
References: <20260202073512.2538738-1-yogesh.tyagi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202073512.2538738-1-yogesh.tyagi@intel.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Feb 2026 23:23:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66213

merged.

SRCREV bumps will be out when my next round of stable updates
is ready.

Bruce

In message: [yocto] [yocto-kernel-cache][PATCH] media-radio: Remove obsolete CONFIG_RADIO_WL1273
on 01/02/2026 Yogesh Tyagi via lists.yoctoproject.org wrote:

> The WL1273 FM radio driver was removed from the Linux kernel in
> commit 103b0cfc9ab6 ("media: radio-wl1273: Remove") during the
> 6.18 development cycle, as it was on the unused driver list.
> 
> Remove this obsolete config option to eliminate kernel config warnings:
>   [INFO]: the following symbols were not found in the active configuration:
>     - CONFIG_RADIO_WL1273
> 
> Signed-off-by: Yogesh Tyagi <yogesh.tyagi@intel.com>
> ---
>  features/media/media-radio.cfg | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/features/media/media-radio.cfg b/features/media/media-radio.cfg
> index ca695abf..3154f7c5 100644
> --- a/features/media/media-radio.cfg
> +++ b/features/media/media-radio.cfg
> @@ -18,4 +18,3 @@ CONFIG_USB_KEENE=m
>  CONFIG_RADIO_TEA5764=m
>  CONFIG_RADIO_SAA7706H=m
>  CONFIG_RADIO_TEF6862=m
> -CONFIG_RADIO_WL1273=m
> -- 
> 2.34.1
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66207): https://lists.yoctoproject.org/g/yocto/message/66207
> Mute This Topic: https://lists.yoctoproject.org/mt/117592872/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


