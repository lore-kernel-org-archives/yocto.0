Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62CCCDB465
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 01:29:34 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web10.198210.1697506169292355577
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 18:29:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=kbsY1iLt;
 spf=pass (domain: mvista.com, ip: 209.85.214.174, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1c5c91bec75so33481485ad.3
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 18:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1697506169; x=1698110969; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p4SMwinTsL8PksdqLcaoI3gGubjpIK55DlouclkUq0Q=;
        b=kbsY1iLtC+EsbZ9ojpcbVBN/eEUKRFp1dqk1l8o1G0ElEvWqMkkSz8b+fuyH9liIiK
         pCffzQXjY4bb+sk3UEePHnBB+s7w/Wot178gccJDMehB2nIdqasDDjCnF910xUbN3iDI
         tzJgrWelzQtL0irmDTgp5lBKllKlHrE6x/w7k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697506169; x=1698110969;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p4SMwinTsL8PksdqLcaoI3gGubjpIK55DlouclkUq0Q=;
        b=wCVzfTUXuPlOdB2l6ghTE3rZTg+lsnrimX4k0dM9cYHmS0mo3xSefJvF+41tcyVopY
         5DA4onK97atU+cO61ivaT1Dsm2MTC62keuvfZSFrZuMQkKjzd5S+t+xUOnjcZgEelIC1
         J+Nlmv+t7us2WlTx4fTBS07RA8KF13DghOQGZx3JxnMY8+mFHVqIhmDRI24BUTO07y+7
         pBkVTIIrh6MLJwgzn8vTbWiGOsjHG6SQ3pHsLvkwfHeRYR8U8vVoEQZIJofiufOsIdDh
         vpXV9NtAZjvCXzgvykqt6A+S1EA8RoqR7Y2oeqmf3PCsppTR9Bqsdr6cSyB9NrvHUDY/
         aMYQ==
X-Gm-Message-State: AOJu0YxnIxSeE6dFSBrwymKhW/py/fgvu8jY6Fc1u7cDbnDj/8TR7QX0
	eZGqsFenK9VVjosMU8GATweWabI5tYeN9bVwTY4=
X-Google-Smtp-Source: AGHT+IHUiqRZnXKxL8Y/JrDo6e3jR/A+55wh5DUbdSWPOu6zoSfDpbtESfvNA5RlSuZi9GkNXXpxow==
X-Received: by 2002:a17:902:e5d2:b0:1c4:56c8:27f8 with SMTP id u18-20020a170902e5d200b001c456c827f8mr950890plf.68.1697506168800;
        Mon, 16 Oct 2023 18:29:28 -0700 (PDT)
Received: from [192.168.1.9] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id z18-20020a170903019200b001bb3beb2bc6sm243653plg.65.2023.10.16.18.29.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 18:29:28 -0700 (PDT)
Message-ID: <4b0e4775-85f9-46b5-bd33-3c60b447eedb@mvista.com>
Date: Mon, 16 Oct 2023 18:29:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-cgl] [PATCH] resource-agents: Fix error when
 do_patch
Content-Language: en-US
To: wangmy@fujitsu.com, yocto@lists.yoctoproject.org
References: <1697502684-3323-1-git-send-email-wangmy@fujitsu.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <1697502684-3323-1-git-send-email-wangmy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 01:29:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61364

Merged, thanks!

On 10/16/2023 5:31 PM, wangmy@fujitsu.com wrote:
> From: Wang Mingyu <wangmy@fujitsu.com>
>
> To fix conflict when do_patch:
> ERROR: resource-agents-4.5.0-r0 do_patch: QA Issue: Fuzz detected:
>
> Applying patch autoconf-2.73.patch
> patching file configure.ac
> Hunk #1 succeeded at 883 with fuzz 2.
>
> Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
> ---
>   .../resource-agents/autoconf-2.73.patch           | 15 ++++++++-------
>   1 file changed, 8 insertions(+), 7 deletions(-)
>
> diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch
> index af188d2..dd3e1d1 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch
> +++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch
> @@ -15,16 +15,17 @@ Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
>    1 file changed, 1 deletion(-)
>   
>   diff --git a/configure.ac b/configure.ac
> -index d682ad780..84444a525 100644
> +index d682ad7..84444a5 100644
>   --- a/configure.ac
>   +++ b/configure.ac
>   @@ -883,7 +883,6 @@ else
> -		-Wno-strict-aliasing
> -		-Wpointer-arith
> -		-Wstrict-prototypes
> + 		-Wno-strict-aliasing
> + 		-Wpointer-arith
> + 		-Wstrict-prototypes
>   -		-Wunsigned-char
> -		-Wwrite-strings"
> -
> + 		-Wwrite-strings"
> +
>    # Additional warnings it might be nice to enable one day
> ---
> +--
>   2.34.1
> +

-- 
Jeremy Puhlman
jpuhlman@mvista.com


