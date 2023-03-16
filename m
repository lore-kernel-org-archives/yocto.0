Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3052DC6FD1F
	for <webhook@archiver.kernel.org>; Thu, 16 Mar 2023 12:27:37 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web10.10747.1678969653934413346
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Mar 2023 05:27:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RXsoB7mi;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id r16so1409112qtx.9
        for <yocto@lists.yoctoproject.org>; Thu, 16 Mar 2023 05:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678969653;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VIEl4tpOdycuCI4lG+LoOSiY1bn9xVILYYPupe6L+MM=;
        b=RXsoB7mi/JGypAd5o8eLDVqxCZgF+N7Ec33+/T+GptniGJYeKdIj4iUlYKdP86TnAc
         +4b2vMCkTMdMrJq8kn4MUIxjg+nJVhZVxfaQBC4QrsIfSg3M091BkZqZD2WJ+DRBec5f
         l4wcdB12FZktCpDKzBXQdsAgvI7eaK8HSS+51GxRkyt/fAVFwz4b6IwYqeUBkzBSBPrG
         e3ith14LewubidHtpFUvF3Yf8yMqw+5nI2NI30MmzJmldR8MctXMtxp147R466Aayou4
         xH+QEOUPvinZkL+sp33R6eCrtXS84IOkLUGwwvONiikL7dJx9Lo+QLpuq6RS+994KyZI
         yhAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678969653;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VIEl4tpOdycuCI4lG+LoOSiY1bn9xVILYYPupe6L+MM=;
        b=cVHZDiY1bPMX8XjorqNPXJ10jRxiT+OlMLUeOOgI2g2LVVmDng2E/PByiY5AeqHwnT
         H/7WqUkYCMR4NsZPwsDT4FiZBrYL5Z4uTSqZn78DyeBKMhQaMd/rNV1YRxAmTvqAT7nE
         kTyJktjA2im38KGsywBD6/K0+t22ajdyOHnFiT7M29NyXq/nIdXuW0sIXmHq3pZ527JC
         Ocj6miw0+OvDVzG8s411oqyF45vyDzxyHdqUy7Z4B2Ead45Yt/ZYjc7Tp/jZ2601cHpE
         K4Fk1iyRBCRjhDloBMO4b9U6y2Q6E0/7GneeKIGnfTbaNROsnN75RpMbH/VFEbTmQN55
         DFqg==
X-Gm-Message-State: AO0yUKWIgIRUeKt8C04MrW6/TNXd1hvtz/f+gVGw0Jw/svID1zIzO8as
	4/B+kJYh1hI5LrBWuVnf0t8kCDEB6sc=
X-Google-Smtp-Source: AK7set93AhIe5ItgdSc5VNzcAfwA4yHFlFbPlt4DJ3IGnoQ/jzZqDihylKPByVywxbzTW76hJ4J+1Q==
X-Received: by 2002:a05:622a:188c:b0:3bf:e2ff:4c2f with SMTP id v12-20020a05622a188c00b003bfe2ff4c2fmr5985411qtc.51.1678969652988;
        Thu, 16 Mar 2023 05:27:32 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:6d77:5b42:4248:f526? ([2600:1700:9190:ba10:6d77:5b42:4248:f526])
        by smtp.gmail.com with ESMTPSA id c13-20020ac87dcd000000b003b835e7e283sm5770012qte.44.2023.03.16.05.27.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 05:27:32 -0700 (PDT)
Message-ID: <b852ee83-caeb-986f-76fd-e4f113f871ba@gmail.com>
Date: Thu, 16 Mar 2023 08:27:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [yocto] [meta-security][PATCH] libmhash: fix multilib header
 conflict - mutils/mhash_config.h
Content-Language: en-US
To: Adrian Zaharia <adrian.zaharia@windriver.com>,
 yocto@lists.yoctoproject.org
References: <20230315143005.1112629-1-Adrian.Zaharia@windriver.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230315143005.1112629-1-Adrian.Zaharia@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Mar 2023 12:27:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59439



On 3/15/23 10:30 AM, Adrian Zaharia wrote:
> Header file conflict between 32-bit and 64-bit versions

Thanks. It will be in my next round of builds.

-armin
>
> Signed-off-by: Adrian Zaharia <Adrian.Zaharia@windriver.com>
> ---
>   recipes-security/libmhash/libmhash_0.9.9.9.bb | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
> index 4d1f584..49139d2 100644
> --- a/recipes-security/libmhash/libmhash_0.9.9.9.bb
> +++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
> @@ -23,7 +23,11 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/mhash/mhash-${PV}.tar.bz2 \
>   SRC_URI[md5sum] = "f91c74f9ccab2b574a98be5bc31eb280"
>   SRC_URI[sha256sum] = "56521c52a9033779154432d0ae47ad7198914785265e1f570cee21ab248dfef0"
>   
> -inherit autotools-brokensep ptest
> +inherit autotools-brokensep ptest multilib_header
> +
> +do_install:append() {
> +    oe_multilib_header mutils/mhash_config.h
> +}
>   
>   do_compile_ptest() {
>       if [ ! -d ${S}/demo ]; then mkdir ${S}/demo; fi
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59433): https://lists.yoctoproject.org/g/yocto/message/59433
> Mute This Topic: https://lists.yoctoproject.org/mt/97628630/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


