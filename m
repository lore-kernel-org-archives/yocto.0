Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
 by mx.groups.io with SMTP id smtpd.web11.17133.1603570329047186283
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Oct 2020 13:12:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jmiAOhAG;
 spf=pass (domain: gmail.com, ip: 209.85.210.193, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f193.google.com with SMTP id e15so3818000pfh.6
        for <yocto@lists.yoctoproject.org>; Sat, 24 Oct 2020 13:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=JJWY3q3So2nn2I93n7pp1uN+xJ5zYCrd1vSe5iUcVFw=;
        b=jmiAOhAGMAV+9PhedgzShqi+sb0yC/V/9+1LRO+QkFWWJrTJ7IwH21cnNwtO4eG7iy
         C5ox+Y0+t6U1wlDbdmcxvqexvf9XTg9110k7LDGjJq795c9+RkMmjDEpd1dMW755xjIn
         /QI17ZgCO2XfeCL48j3fdXBpKnXfROIgCPybK0tgKOyrvLrc8G4PsWU72UrA98SMOqap
         lyEjizYvbCdLyGIM5Z6hIs4ev/d3ZsDuoEUZh96dOPTn7ukWFzlkQo1fnOmOQPSqJOra
         XSql0B2gZYMKAQnhmVFHKXa667hq2guSDcNU9waE3IVIP5bT+haoV8CZpJUa+6WRUoRp
         fufg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=JJWY3q3So2nn2I93n7pp1uN+xJ5zYCrd1vSe5iUcVFw=;
        b=cAFc/qskzysmHjnq+qWwte6PIRR5TFFkHSMw02uafYDwuNI+cnX8Z6zlSCxuTD8QfC
         ObOlC/hjKM5onc2dGYRW3jPzj41bnrz4ssbQhzLQbC1CaBlpYdlZKf6V+XNo3Iv3Ez3h
         Ig2cicT19r/t1q/QnUA0N0PpBdOhuiLfeldribFBqDEOahLnvn2gSEsr4aUwLZehMbXf
         rSgnYsee20s+tBXNStMmRP3NoQu2h1BEmpkzcQnzb6ZPKHZBmmzIKHf9Nh96npvqG7Jb
         fJg7sEf0rrHre/31sZIBY7BpbZKE6Y8GMPcAiKeCQmQulA4Vg7eYIdQeM1qa6Tw/i71M
         +Dug==
X-Gm-Message-State: AOAM530/NN1rQ0XdtOwjYqOud/RToYmly6bINSw6o+V/AseHziZ/TNxW
	Zlk8vh42hC6Yk15ChVCdXqYzNLzjIkw=
X-Google-Smtp-Source: ABdhPJy4QzKZHmXE+P/ur2EOlFGXbA+MV4V3f73yr0qTY1xeSNSDf3PJ11N6fIvBI/ktohMjETLo1g==
X-Received: by 2002:a62:be04:0:b029:15d:7423:e320 with SMTP id l4-20020a62be040000b029015d7423e320mr1542619pff.42.1603570328385;
        Sat, 24 Oct 2020 13:12:08 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:701b:4aa7:d15c:d4f6? ([2601:202:4180:a5c0:701b:4aa7:d15c:d4f6])
        by smtp.gmail.com with ESMTPSA id h20sm1525125pgv.23.2020.10.24.13.12.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Oct 2020 13:12:07 -0700 (PDT)
Subject: Re: [meta-security][meta-integrity][PATCH] layer.conf: use += instead of := to update BBFILES
To: Sajjad Ahmed <sajjad_ahmed@mentor.com>, yocto@lists.yoctoproject.org
References: <20201015094139.427487-1-sajjad_ahmed@mentor.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <0a330745-f3c3-707b-19db-f461af746b68@gmail.com>
Date: Sat, 24 Oct 2020 13:12:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201015094139.427487-1-sajjad_ahmed@mentor.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged.

thanks


On 10/15/20 2:41 AM, Sajjad Ahmed wrote:
> Updating BBFILES with := isn't the standard way and can break
> parsing under certain conditions, instead use += which is widely used.
>
> Signed-off-by: Sajjad Ahmed <sajjad_ahmed@mentor.com>
> ---
>  meta-integrity/conf/layer.conf | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
> index f905b0b..6075df9 100644
> --- a/meta-integrity/conf/layer.conf
> +++ b/meta-integrity/conf/layer.conf
> @@ -2,8 +2,7 @@
>  BBPATH =. "${LAYERDIR}:"
>  
>  # We have a packages directory, add to BBFILES
> -BBFILES := "${BBFILES} \
> -            ${LAYERDIR}/recipes-*/*/*.bb \
> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>              ${LAYERDIR}/recipes-*/*/*.bbappend"
>  
>  BBFILE_COLLECTIONS += "integrity"

