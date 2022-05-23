Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61182C433EF
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 15:03:05 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web11.28696.1653318176272970134
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 08:02:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LGe5X8fZ;
 spf=pass (domain: gmail.com, ip: 209.85.214.171,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id q18so13345481pln.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 08:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=3F5WAisHuI7HgSKzVBKbOpIhu/IWIcIt5W6+uyhRq0Q=;
        b=LGe5X8fZOSHAQRaqQnJDz3h+Y93CXtBGhwGaDSfuQvnrB6vUT1GNv73C+9HwablzAX
         7H5JrYRojs6ioent9DAgjSEzDsSx0dJHiWyhqjqoTl2WZvJ6yzFNGy2GeWYBehDFAWBa
         6xXkGMfx0tI8J6i/m4Z3kitNBDjJIorjoPyB2dX0HTTEzWlNIvTZKBANJr1Db3BOL1Jo
         xPuwsjdv36K2YU6fRXCtU8caP8xN+VPzi+Btyy0mquoGqmsWLyWn8hH4NljQ6LUtXJyV
         8/hxwXG4s5SZu4BDGXA5YbzYSNBXJCAg2t1yQ74tS8FiCUtJuJVi0D2A0/wC0jEgHRRy
         A6Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3F5WAisHuI7HgSKzVBKbOpIhu/IWIcIt5W6+uyhRq0Q=;
        b=gxn4Sl4dvjN+lXVHzOLn4KXnXCmluar1ZmsOv5n8yYXDvbmUEhUbcyautqc/FrJzZ7
         VALPlZaBhOQSZTHGgvDMBU8+XyVZsz9eey34PPa84DxZY13+CVuJ38dxqCoJJqnaHCoV
         IAwzp+db+LGAWXDs6vdMYnwsHflPIFV3JtmHkJmGfGUCz8lQtfPnbO0M6yZbuloVcxxo
         pv+/bfNY94JQumrfJ4fzsjsbhhxs6wWSNXx/P7na2voNJDfesnMwexjLXEx82yDSDd51
         elR5J8HdFqwoR3K18G3PiuMaJhLNlHpe3MWcUK7D9Ua+5kWYZFvmTa9568QaF+83H48V
         DcBQ==
X-Gm-Message-State: AOAM533jcW9w2gXzB13px+/dHIAA9buBSjs0RR5o6NtmJiCXWITFGu3z
	WpNfBYbsbKS+uuQTyxWje24=
X-Google-Smtp-Source: 
 ABdhPJxgeIFs2VcdaxfUJvaOmRnqaIrZ2X6gzaYRgxudK4SRDoovXp/NmP7EOVFsjGz0LfH6UQiMZg==
X-Received: by 2002:a17:90b:2483:b0:1df:1805:652f with SMTP id
 nt3-20020a17090b248300b001df1805652fmr26730473pjb.68.1653318175778;
        Mon, 23 May 2022 08:02:55 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:22e0:d3fa:16:d603?
 ([2601:202:4180:a5c0:22e0:d3fa:16:d603])
        by smtp.gmail.com with ESMTPSA id
 k4-20020a636f04000000b003f84815f6bdsm1716522pgc.82.2022.05.23.08.02.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 08:02:54 -0700 (PDT)
Message-ID: <7654a243-a602-17f9-8973-00794ec78d78@gmail.com>
Date: Mon, 23 May 2022 08:02:53 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [meta-security][PATCH] layer.conf: Added BBFILES_DYNAMIC
 for dynamic-layers.
Content-Language: en-US
To: leimaohui <leimaohui@fujitsu.com>, yocto@lists.yoctoproject.org
References: <1652932061-3651-1-git-send-email-leimaohui@fujitsu.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <1652932061-3651-1-git-send-email-leimaohui@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 15:03:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57164

merged,
thanks

On 5/18/22 20:47, leimaohui wrote:
> Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
> ---
>   conf/layer.conf | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 1f83593..0c532fa 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -13,6 +13,13 @@ LAYERSERIES_COMPAT_security = "kirkstone"
>   
>   LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
>   
> +BBFILES_DYNAMIC += " \
> +  perl-layer:${LAYERDIR}/dynamic-layers/meta-perl/recipes-*/*/*.bb \
> +  perl-layer:${LAYERDIR}/dynamic-layers/meta-perl/recipes-*/*/*.bbappend \
> +  meta-python:${LAYERDIR}/dynamic-layers/meta-python/recipes-*/*/*.bb \
> +  meta-python:${LAYERDIR}/dynamic-layers/meta-python/recipes-*/*/*.bbappend \
> +"
> +
>   # Sanity check for meta-security layer.
>   # Setting SKIP_META_SECURITY_SANITY_CHECK to "1" would skip the bbappend files check.
>   INHERIT += "sanity-meta-security"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57137): https://lists.yoctoproject.org/g/yocto/message/57137
> Mute This Topic: https://lists.yoctoproject.org/mt/91201696/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


