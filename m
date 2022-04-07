Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03191C47089
	for <webhook@archiver.kernel.org>; Thu,  7 Apr 2022 20:36:09 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
 [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web09.1498.1649352769681245445
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Apr 2022 10:32:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OqlAuiLa;
 spf=pass (domain: gmail.com, ip: 209.85.215.181,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id s137so2801313pgs.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 07 Apr 2022 10:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0dfzCW+i0bTTW65OfmpjWhoEJ23s2AWXNo/HSZlNXr4=;
        b=OqlAuiLaJKCcNLQj4mktYCu6TGA9XGWOwXaW1RkNuFOavCf4yi+Ry8YKCGRubWWw4J
         IwJdjzh0yKNV6CZYQhM4gj7RWV6cTOsIxGc64dwSdHcKM5d7YSycAoeblI89Inv/LHst
         NcA+qGcSVJD7BI/PTY8wDXJEqq5EGYt51w7kPZBnbFALfO+0HW+L5xUKkIAx3m8rVeuF
         MT1ZywnON3wKRNSH/xiEgny/hB+t/a4vmdZuVH+EYFyQBxsFfSK/L6b4Dvjcn2bRHiA+
         7MolpqWBub+kk1P9rUyHbBUedWDsqMIMQXkUHayLSLLI9ERvu4SXXbacvEEWTsYr3ATL
         21aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0dfzCW+i0bTTW65OfmpjWhoEJ23s2AWXNo/HSZlNXr4=;
        b=osQYfe7i+bzKeFFvn95/s+WxUUH/8nSC2aVMmozqtTdThAGGrbZljfhUYbK48IsEOE
         TQuKfeFcgOMNwCZlYKrH+yh9z71ZdWVJBh1RBL41QHMhSmNMIak3hVRudecx8IdvDMkd
         iQ0+QgXH+2Upf7CqLdx2Aw6aZeUskTD1xyzfshZodTUh17XxJtXqDBTDxifMxdI4peux
         9zB0CGFZXIaK+775e2JEj+u+yFPDj/a71a4hoRjvtNQ144XEW5MfHbzbK2Q9z3zCPLMl
         nlYA3+ADA6S3Rkwd9p/qdK7pA3b2p9FrTyK64b2dWcFLPEAsJaV5ys12J6aHXA88MXR/
         YdqQ==
X-Gm-Message-State: AOAM533vPOrxN9M62cb549TGblZPTLouw9qan1yte7gN88egEkYxbGlQ
	RHfx15DmZUvzK7HiA/k8Vqo=
X-Google-Smtp-Source: 
 ABdhPJzGU307CnZhAH/oOOxoyzaNTnllty2bz9z104/MIUC0zji9Hn700mACWh+kZXW1oFc23j8Pow==
X-Received: by 2002:a63:e502:0:b0:399:40fd:1ca7 with SMTP id
 r2-20020a63e502000000b0039940fd1ca7mr12719031pgh.452.1649352769116;
        Thu, 07 Apr 2022 10:32:49 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:ed6e:b8f7:8d66:39f9?
 ([2601:202:4180:a5c0:ed6e:b8f7:8d66:39f9])
        by smtp.gmail.com with ESMTPSA id
 j6-20020aa79286000000b004fdf02851eesm16596668pfa.4.2022.04.07.10.32.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 10:32:48 -0700 (PDT)
Message-ID: <19d53801-e769-7e84-123f-f8631053dd93@gmail.com>
Date: Thu, 7 Apr 2022 10:32:47 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] [meta-security][PATCH] clamav: add COMPATIBLE_HOST to fix
 build error
Content-Language: en-US
To: Davide Gardenal <davidegarde2000@gmail.com>, yocto@lists.yoctoproject.org
Cc: Davide Gardenal <davide.gardenal@huawei.com>
References: <20220404125727.43818-1-davide.gardenal@huawei.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220404125727.43818-1-davide.gardenal@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Apr 2022 20:36:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56685

merged.

thanks
-armin

On 4/4/22 05:57, Davide Gardenal wrote:
> Add COMPATIBLE_HOST to match what is found in glibc
> to avoid build error when using musl
>
> Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>
> ---
>   recipes-scanners/clamav/clamav_0.104.0.bb | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
> index f0889de..ae2d292 100644
> --- a/recipes-scanners/clamav/clamav_0.104.0.bb
> +++ b/recipes-scanners/clamav/clamav_0.104.0.bb
> @@ -6,6 +6,8 @@ LICENSE = "LGPL-2.1"
>   
>   DEPENDS = "glibc llvm libtool db openssl zlib curl libxml2 bison pcre2 json-c libcheck"
>    
> +COMPATIBLE_HOST:libc-musl:class-target = "null"
> +
>   LIC_FILES_CHKSUM = "file://COPYING.txt;beginline=2;endline=3;md5=f7029fbbc5898b273d5902896f7bbe17"
>   
>   # July 27th
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56657): https://lists.yoctoproject.org/g/yocto/message/56657
> Mute This Topic: https://lists.yoctoproject.org/mt/90240805/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


