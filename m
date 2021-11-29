Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63851C433F5
	for <webhook@archiver.kernel.org>; Mon, 29 Nov 2021 00:18:29 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.54285.1638145108030529806
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Nov 2021 16:18:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qV6Tt3sP;
 spf=pass (domain: gmail.com, ip: 209.85.216.53,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id x7so11249785pjn.0
        for <yocto@lists.yoctoproject.org>;
 Sun, 28 Nov 2021 16:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Xh2S6uju1aXY/EX8lUtMOil0p+OIRLicpif837hJQwQ=;
        b=qV6Tt3sP0F0LmjImOYqJueh9ry6HdH31xEt9LCu51KOp8ztS2a6oJjMzT/Mg+zewPB
         9kknwKUjUkQNLiaS+GHC/1PfzSV2vLgLAzWYuZ3PcpLRLWCbtliIlSXtBBcWlE6gdCAV
         DggypPeRb5YeAuyXMnU3MR4fhZ1eiPUFfmGa0AUHPe2b9sFAuXnBxLkFpP6kD9Buokem
         M3hlGxWIwdzYLBXsv8YzLnDBf/StiuSMSRWt07E6Z1jAfp3hYNReW1p80D3V2OF8flA4
         +jwjHsM+HJX4xuPOGfiJ4sT4VxQALyhxtBN7HSQ7KXeXQH0usJdllirI5nerjnStvCOD
         CdQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Xh2S6uju1aXY/EX8lUtMOil0p+OIRLicpif837hJQwQ=;
        b=7Pd+1ioFnmaavuwNZCvkv9/AxJMCIk1KTPqGj2KW9u/o0h6CZfJeTqlgqL5vsCrI/8
         rcfe6jlFFd/VN1IpUqw0N++puMfr4elAokV/uE7/3lxmmD26sG7NGiAd6SSTBTyvkFzV
         tov0sJKpWDp+OIIkRcyLO++7FvHYjuFtt5E7v8/PCOhBPeH0FBTNpvIk3IGazDx8Z2oL
         FG8txuC0Zmh47PQ4zP964yGr2XxXm7WMRhp9m1DYhLnInoCDg2sjol4eXxV+tvHrjEEi
         6D+yN8e2z1mbp1S7aveAam5q4N0XdN3GI9hDxgb8uDh4Hg15Vq8Ydx/WL7p7MMJsroou
         cBlw==
X-Gm-Message-State: AOAM530+K8j81qUvhNtNvJyV4xwC/rX0WxmFUy51Sw5DdOw7OWIvCdR3
	vb7YqgB5Sd2TWqTeqRMfaJAbfZfbv4M=
X-Google-Smtp-Source: 
 ABdhPJw0mV633lgj5eBXJ5vAxl+CW/ihsbBZtVLcFmH91Ikq3kffa1Kk9QxpxtA3xnW8dP3mFramQg==
X-Received: by 2002:a17:903:286:b0:142:4abc:88b8 with SMTP id
 j6-20020a170903028600b001424abc88b8mr56198838plr.25.1638145107324;
        Sun, 28 Nov 2021 16:18:27 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:ab2d:45ef:1126:5ad9?
 ([2601:202:4180:a5c0:ab2d:45ef:1126:5ad9])
        by smtp.gmail.com with ESMTPSA id
 ot18sm12906559pjb.14.2021.11.28.16.18.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Nov 2021 16:18:27 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH 2/2] meta-parsec/README.md: fix for
 append operator combined with +=
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20211119151825.530200-1-yi.zhao@windriver.com>
 <20211119151825.530200-2-yi.zhao@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <0a983000-c065-630c-d064-9935616c8de8@gmail.com>
Date: Sun, 28 Nov 2021 16:18:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211119151825.530200-2-yi.zhao@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Nov 2021 00:18:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55438

thanks.

merged.

On 11/19/21 7:18 AM, Yi Zhao wrote:
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  meta-parsec/README.md | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/meta-parsec/README.md b/meta-parsec/README.md
> index c5635d3..bb4c2b9 100644
> --- a/meta-parsec/README.md
> +++ b/meta-parsec/README.md
> @@ -80,7 +80,7 @@ Manual testing with runqemu
>    This layer also contains a recipe for pasec-tool which can be used for
>  manual testing of the Parsec service:
>  
> -    IMAGE_INSTALL:append += " parsec-tools"
> +    IMAGE_INSTALL:append = " parsec-tools"
>  
>    There are a series of Parsec Demo videos showing how to use parsec-tool
>  to test the Parsec service base functionality:
> @@ -104,7 +104,7 @@ enabled. No changes required.
>    The Software HSM can be used for manual testing of the provider by
>  including it into your test image:
>  
> -    IMAGE_INSTALL:append += " softhsm"
> +    IMAGE_INSTALL:append = " softhsm"
>  
>  Inside the running VM:
>  - Stop Parsec
> @@ -135,7 +135,7 @@ systemctl start parsec
>    The IBM Software TPM service can be used for manual testing of the provider by
>  including it into your test image:
>  
> -    IMAGE_INSTALL:append += " ibmswtpm2 tpm2-tools libtss2 libtss2-tcti-mssim"
> +    IMAGE_INSTALL:append = " ibmswtpm2 tpm2-tools libtss2 libtss2-tcti-mssim"
>  
>  Inside the running VM:
>  - Stop Parsec
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55377): https://lists.yoctoproject.org/g/yocto/message/55377
> Mute This Topic: https://lists.yoctoproject.org/mt/87169936/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


