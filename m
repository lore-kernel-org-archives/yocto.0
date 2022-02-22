Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFC0C433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 21:21:31 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web12.3570.1645564891176943825
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 13:21:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DjMNwKfl;
 spf=pass (domain: gmail.com, ip: 209.85.214.181,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id 4so8188725pll.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 13:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=hggwNwpvHJLftmkFEbVIeAxN6ygiDL+76P1NpARe++U=;
        b=DjMNwKfl8YF8Y5C8FePcbx9M0etEAnsVEiXbhMCcm7Lio9FRmMd+1FWgnvVzytoeuZ
         1cVfoLEuFEQpSHmh5SxRRdxBimSxU88n/YWlw/O+kXRnX8E7a2yyK9Sx7oYD1mjQVPD3
         OgHstcjk5GFd8Cljd8IN/hmwWOTc8eSYEMtJYKmv62vXKDHVNrSCwfAL0iN8QZ1uxoXr
         bVhM8oT6Xg1xxN8z9qdjkKxaYTFddjwkTgjPMEK7MpypsTVMK8j9hFn6xWHf9V9iYcBY
         5HTkdE+EcGPg69roX2CuvFnI6LLyRthzZ37CyJVD/Frj6F7e2Dabb+8Ela8f15JvA4bh
         O8rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hggwNwpvHJLftmkFEbVIeAxN6ygiDL+76P1NpARe++U=;
        b=oClugmwPU8QGKMoAkR5QjJFF2DF8ab0xV1MrTQgo+1Y8lULd3HxFgH+gVJNYKGTR7H
         1bej2VYAatiBZlwH6Y4gg/LWlcNUuNQI6vCv1aJ/xkEs3Z2zR4uFzr+LbYpUGn7l47mS
         NmfAPp7bQ9I5ESy6QuAdDl8IWil4Wjcb3lDcLvXrWQTPxAiGjrpzLzAR0cKIqGs20Ae7
         hhClFyhk9MzkU22ALJIuba5AlvLk6vtpLNW8icoTNxy6yMlWDeu2Lio2Leh+kcdOBa18
         ATKMnC9NZRSS001y7ZTYk4RmRIBT6wfq6kmMB02+Ik7A6m+S646/iB13RXN0FGHevAsZ
         bc9A==
X-Gm-Message-State: AOAM530TZZaELHGf0+ljfIow5nAG/x3kXqXx/lHZSvuEtd0vQ1tg2dfU
	6YDeZUU1o1Xzv6mLR+EOqAWhZqIulZo=
X-Google-Smtp-Source: 
 ABdhPJx/eH1AbjZhdjv2UZSQcuMxy4klpc1nFmiPxjz2RA6vMu5iPWImtZQyY+ciLpgg4R5soeWWdw==
X-Received: by 2002:a17:902:b088:b0:14f:f7e5:bc2 with SMTP id
 p8-20020a170902b08800b0014ff7e50bc2mr321915plr.25.1645564890772;
        Tue, 22 Feb 2022 13:21:30 -0800 (PST)
Received: from ?IPV6:2601:202:4180:a5c0:59de:e569:6a3d:8d74?
 ([2601:202:4180:a5c0:59de:e569:6a3d:8d74])
        by smtp.gmail.com with ESMTPSA id
 ck20sm465353pjb.27.2022.02.22.13.21.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 13:21:30 -0800 (PST)
Message-ID: <cb990aee-d105-2889-2b0f-4f7dfd9148e7@gmail.com>
Date: Tue, 22 Feb 2022 13:21:29 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] [meta-security][PATCH 2/2] recipes: Use new
 CVE_CHECK_IGNORE variable
Content-Language: en-US
To: Christian Eggers <ceggers@arri.de>, yocto@lists.yoctoproject.org
References: <20220222074211.5902-1-ceggers@arri.de>
 <20220222074211.5902-2-ceggers@arri.de>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220222074211.5902-2-ceggers@arri.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 21:21:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56252



On 2/21/22 23:42, Christian Eggers wrote:
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>   recipes-mac/smack/smack_1.3.1.bb | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
> index 79a8f5a0cde5..7a8ca7859d29 100644
> --- a/recipes-mac/smack/smack_1.3.1.bb
> +++ b/recipes-mac/smack/smack_1.3.1.bb
> @@ -14,9 +14,9 @@ SRC_URI = " \
>   PV = "1.3.1"
>   
>   # CVE-2014-0363, CVE-2014-0364, CVE-2016-10027 is valnerble for other product.
> -CVE_CHECK_WHITELIST += "CVE-2014-0363"
> -CVE_CHECK_WHITELIST += "CVE-2014-0364"
> -CVE_CHECK_WHITELIST += "CVE-2016-10027"
> +CVE_CHECK_IGNORE += "CVE-2014-0363"
> +CVE_CHECK_IGNORE += "CVE-2014-0364"
> +CVE_CHECK_IGNORE += "CVE-2016-10027"

A similar patch was submitted earlier in the day. Now in master.

thanks,
Armin
>   
>   inherit autotools update-rc.d pkgconfig ptest
>   inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56232): https://lists.yoctoproject.org/g/yocto/message/56232
> Mute This Topic: https://lists.yoctoproject.org/mt/89312936/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


