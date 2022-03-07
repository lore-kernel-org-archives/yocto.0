Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42E27C433F5
	for <webhook@archiver.kernel.org>; Mon,  7 Mar 2022 19:19:11 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web08.2260.1646680750072472655
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 11:19:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=BZf5J0nO;
 spf=pass (domain: mvista.com, ip: 209.85.160.171,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-qt1-f171.google.com with SMTP id 11so14139955qtt.9
        for <yocto@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 11:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=QqYWfiXgJIeYUft4VNaFu8ulomMatLN/QUbD5hRUdU4=;
        b=BZf5J0nOd8G5N/djbUEPzFgtt5LDbY4FRbEL/AfNPx80YRwNGt0PBvVsrFKclW6mMY
         9c7CYplfzWxBmiajPV7zkkWUs8e06ulhv8OYjls0rvagT2xMK8JR/OVmtBm6I484MoZE
         LnIXRtSPDgd+BlD+7f6OusQu2tdoje/wteYEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QqYWfiXgJIeYUft4VNaFu8ulomMatLN/QUbD5hRUdU4=;
        b=UNyAz3bIXldp3W56aWNztf1wQQC1tdkRDvwhphFh+bDPuBp5mQCtL7rsKTqYV+lqX3
         jF99qV1w2rTtCx0hOP6RjS6z3UurShooj9R08d/qs5OYaPDMeoCO9Ijiuf80Iz0zORV6
         bQnyV3+LW4gjqxpd3mnmQGvNDp2f9A0pKc11oSn0sjLtTEZg0FiLFEbyT8sMNRTuZVJ0
         QeNAp+YPU3uEL+z4rUdYTrUlUSYjSRNO6H4JZ4vKGTkBwfIa7pySK3qF+IIVGSFQVjvj
         qeLbsD9GGJQqX+vdyNTR6NQ0Vf6FnwQLpuXcQEyrKYuIgNflGKxmhqX1rscojcRZjP/N
         jB5g==
X-Gm-Message-State: AOAM530hc5MPvcfths3wvWaC5dTPQ4FZMxE+mXonwCvGLd7f5CIuDJic
	JWsePYvPwPIwWVKDgFifhGertg==
X-Google-Smtp-Source: 
 ABdhPJyt/R0DGn9TLQvbpF5Xy2P9Y/sx/uRHX1BHZPT1DrQ8Nkd25xvNnbLyQbhPPfj75xFKbpqM8w==
X-Received: by 2002:a05:622a:590:b0:2de:93aa:4ff1 with SMTP id
 c16-20020a05622a059000b002de93aa4ff1mr10806027qtb.204.1646680748943;
        Mon, 07 Mar 2022 11:19:08 -0800 (PST)
Received: from [192.168.1.31] (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 141-20020a370a93000000b0067b009288bdsm3158125qkk.87.2022.03.07.11.19.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 11:19:08 -0800 (PST)
Message-ID: <1a7e4e5c-3e59-4c08-c993-69ad10d9a720@mvista.com>
Date: Mon, 7 Mar 2022 11:19:06 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [yocto] [meta-cgl][PATCH] libsocket6-perl: set precise BSD
 license
Content-Language: en-US
To: "Yu, Mingli" <mingli.yu@windriver.com>, yocto@lists.yoctoproject.org
References: <20220307085950.3157376-1-mingli.yu@windriver.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <20220307085950.3157376-1-mingli.yu@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Mar 2022 19:19:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56383

Merged.

On 3/7/2022 12:59 AM, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
>
> "BSD" is ambiguous, use the precise license BSD-3-Clause to fix
> the below warning:
> WARNING: libsocket6-perl-0.29-r2 do_populate_lic: QA Issue: libsocket6-perl: No generic license file exists for: BSD in any provider [license-exists]
>
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> index 9f38380..004efe2 100644
> --- a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> +++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
> @@ -1,7 +1,7 @@
>   DESCRIPTION = "Perl extensions for IPv6"
>   HOMEPAGE = "https://metacpan.org/release/Socket6"
>   SECTION = "libs"
> -LICENSE = "BSD"
> +LICENSE = "BSD-3-Clause"
>   LIC_FILES_CHKSUM = "file://README;beginline=43;md5=b2bfcdf2de2e951c8e4ed544e942d8e1"
>   PR = "r2"
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56379): https://lists.yoctoproject.org/g/yocto/message/56379
> Mute This Topic: https://lists.yoctoproject.org/mt/89608007/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


