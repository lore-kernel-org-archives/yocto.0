Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83B84C433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Sep 2021 23:30:43 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web08.1995.1632871842592010161
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 16:30:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZB1SSCl6;
 spf=pass (domain: gmail.com, ip: 209.85.216.45,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id r7so226846pjo.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 16:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=RrmIJpEeIWrv9E4BgWicrBWepi1ZsqLjU8CYKsO/E4E=;
        b=ZB1SSCl6Qko5wE1UTMLwJOYSW/vM8j7Y6Hq0GpFQbPzaBQgymPYznNhcblJjlZ2C3u
         bn2iQxij9fRfCjN0geGKXBsYlTrdGeY5gxo2FVviMOyCFSHNHG6zxGQvb/smpfKNQRit
         yQ8I68eylOe2rNwvjx92FMYop1B4wEZyEzDaoOjhoTef9vBt4aiDQyGE9HxDcSrp3cRu
         gDp1OHvA2VG6/KkGotGDB3YtJYgTiulXn76B0geba3k4lYkafP/+9sGYSH8hYioLf+di
         6G4O4pKXYCyEVelC9hsV29yWtjhKG5NhKyeq2dw+QnjsCrm4kWFlcgfMkTQYlA5TCu75
         VXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=RrmIJpEeIWrv9E4BgWicrBWepi1ZsqLjU8CYKsO/E4E=;
        b=tnAfTuYygh0mHlTH6BVOvYCzsDBWiIKl7i7F683yj8F9pNe4K5k+3ax/DN4btFgQSy
         p18AnGWAfjbRK+TvaW3QB0fJzNRtZzRH9SBg4LudgZY/jEok+Hdl1kq48a5wBOVPNPqy
         V5y6AQbrIt//XUCuWtxUYKd/JYIVI+unyDug9QG+CqZjwmEw8D8T4mKF4Ot0/mXCNo0w
         KNX51Ww7gSW/gWZbDZ1FX1WLwOrE46UUWQj7l9HbJaUtJvEtbRE1/UNJSkZrKSdzAmTR
         mDgoWFToEJuwRBAHCg+6uddq7DHbRrKXfNY91bimUj8BHgVT+b0AWNY3YWy5SAMhl04n
         o8Cw==
X-Gm-Message-State: AOAM532N4redEktwJf/syNPfWSYPvsv9MJcp+mfOROYLoylwyl5mkP6n
	ThmPJQyQLdsXsISHuBhcr/lB++qErsk=
X-Google-Smtp-Source: 
 ABdhPJzt79pwLIRWlolzNVRm+oG67a8R7TQ14pjMr3ChB7hrJRDlACegPVwCstUjm9xaKvEQ3DqTNA==
X-Received: by 2002:a17:90a:e2d2:: with SMTP id
 fr18mr2819385pjb.24.1632871841838;
        Tue, 28 Sep 2021 16:30:41 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:b669:1b22:84ea:4511?
 ([2601:202:4180:a5c0:b669:1b22:84ea:4511])
        by smtp.gmail.com with ESMTPSA id w11sm246350pgf.5.2021.09.28.16.30.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 16:30:41 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] libtpm: update to 0.8.7
To: kristian@klausen.dk, yocto@lists.yoctoproject.org
References: <20210927110703.31806-1-kristian@klausen.dk>
From: akuster808 <akuster808@gmail.com>
Message-ID: <e044dffd-5636-d483-a162-7df1d4de1d40@gmail.com>
Date: Tue, 28 Sep 2021 16:30:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210927110703.31806-1-kristian@klausen.dk>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Sep 2021 23:30:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54895

merged

On 9/27/21 4:07 AM, Kristian Klausen via lists.yoctoproject.org wrote:
> Signed-off-by: Kristian Klausen <kristian@klausen.dk>
> ---
>  .../recipes-tpm/libtpm/{libtpm_0.8.2.bb => libtpm_0.8.7.bb}     | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>  rename meta-tpm/recipes-tpm/libtpm/{libtpm_0.8.2.bb => libtpm_0.8.7.bb} (88%)
>
> diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.7.bb
> similarity index 88%
> rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb
> rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.8.7.bb
> index 9784aa1..95ba5c5 100644
> --- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.2.bb
> +++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.7.bb
> @@ -2,7 +2,7 @@ SUMMARY = "LIBPM - Software TPM Library"
>  LICENSE = "BSD-3-Clause"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=e73f0786a936da3814896df06ad225a9"
>  
> -SRCREV = "f66a719eda0b492ea3ec7852421a9d98db0a0621"
> +SRCREV = "f6dd8f55eab4910131ec6a6a570dcd7951bd10e4"
>  SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.8"
>  
>  PE = "1"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54875): https://lists.yoctoproject.org/g/yocto/message/54875
> Mute This Topic: https://lists.yoctoproject.org/mt/85897588/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


