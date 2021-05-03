Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web12.35208.1620055241955322160
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 May 2021 08:20:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ubDYaK0N;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id g24so2520300pji.4
        for <yocto@lists.yoctoproject.org>; Mon, 03 May 2021 08:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XHhs1gjmi491s7ZT7O7NopcAACAOO3xlNUXYgzukKXY=;
        b=ubDYaK0NOXCupYrOqDVnFOkTZCltBUkiYwjoxbs8sUE1UAkRIcmXlA/KPiP9me4ph5
         gReClRRensrlDGmMh1OAudJmsuy8QxtK8sdnUbsLpxtufKbgcb1yYOFhjLV5ITP8QZ0A
         fuLJ9/gA3jim4/4sDmJSPV0a9u/stvb6RodB+11m7Oy96co6hjdvO8etUEcfZvK3IGbc
         6hO+uUWSy0bo8HTQvANSi1nT1tELKMDvGI020CACwZ8WSmx2DmZ9cqAQ2RAKmKwuzv8H
         l0XX9cgajPLq7n69faZZVDKhmAD/ro4F7rlRojBhHqqbHL2hjxe1YJneaqnfyd7ehM6Y
         aArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=XHhs1gjmi491s7ZT7O7NopcAACAOO3xlNUXYgzukKXY=;
        b=E+0b5DzBplkiGXP98bSiyGemIdqmZHkQGNPvme6KvndaO5j3aTfkv9yDhz6fJJBcbB
         vNmlY8PdBYtVrWRgpEr8EHiuQWzaaUEWCFTj5K6Efg2AJpeiMv9jCsjduSn3NhNqtxsP
         Qo2PKOdIKni/UzhIHvXm1fOQT3vgxCKwyBTmuOHLR/erwecDC6dCa0m9gZk9JNflj1mN
         tUYbtCFR2skPDuvLXus4W3Am/thlW3KvuYwuTgwt1dpiqd/SB4p1ea09DNk6FtaNckNL
         PFNxy9Vqfg+4z4CvpZPOMPNclUa4qS6CnY1u3wv36cYNg9RdjgQfU4gkdXGlM174ajR/
         6T9Q==
X-Gm-Message-State: AOAM532gVmCppaEW8W75P6zAIPgfgQT/DnqtYpgXY9tGpS8NkEO4zQjF
	Nuc97pez9JM007Ttu22XOljnFlddvv2/nQ==
X-Google-Smtp-Source: ABdhPJxK1EilF/tBy7tvE/Bnf+JsyWPHlw2jTJW6E1yaAV5pk9vbfrUTiFVKwcGWtKAFZyVz/1BT5Q==
X-Received: by 2002:a17:90b:2409:: with SMTP id nr9mr22267750pjb.198.1620055241286;
        Mon, 03 May 2021 08:20:41 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:6476:16fd:7d5e:850a? ([2601:646:9200:a0f0:6476:16fd:7d5e:850a])
        by smtp.gmail.com with ESMTPSA id v18sm5634223pgl.94.2021.05.03.08.20.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 08:20:40 -0700 (PDT)
Subject: Re: [yocto] [meta-gplv2][PATCH] elfutils: ignore format-truncation and stringop-overflow issues to fix build with gcc-11
To: Martin Jansa <Martin.Jansa@gmail.com>, yocto@lists.yoctoproject.org
References: <20210503064118.1954696-1-Martin.Jansa@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <72415675-0fe3-4fe2-7b9e-ec97de17cdea@gmail.com>
Date: Mon, 3 May 2021 08:20:39 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210503064118.1954696-1-Martin.Jansa@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 5/2/21 11:41 PM, Martin Jansa wrote:
> * works around:
>    http://errors.yoctoproject.org/Errors/Details/580076/
>    elfutils-0.148/src/ar.c:1088:56: error: '%-*ld' directive output may be truncated writing between 6 and 10 bytes into a region of size 7 [-Werror=format-truncation=]
>     1088 |   snprintf (tmpbuf, sizeof (tmpbuf), ofmt ? "%-*lo" : "%-*ld", bufsize, val);
>          |                                                        ^~~~~
>    elfutils-0.148/src/ar.c:1088:55: note: directive argument in the range [0, 4294967295]
>     1088 |   snprintf (tmpbuf, sizeof (tmpbuf), ofmt ? "%-*lo" : "%-*ld", bufsize, val);
>          |                                                       ^~~~~~~
> 
>    http://errors.yoctoproject.org/Errors/Details/580078/
>    elfutils-0.148/tests/addrcfi.c:90:16: error: 'dwarf_frame_register' accessing 96 bytes in a region of size 64 [-Werror=stringop-overflow=]
>       90 |   int result = dwarf_frame_register (stuff->frame, regno, ops_mem, &ops, &nops);
>          |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 

looks ok. Thanks for fixing it

> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>   recipes-devtools/elfutils/elfutils_0.148.bb | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
> index 1f07a28..654a715 100644
> --- a/recipes-devtools/elfutils/elfutils_0.148.bb
> +++ b/recipes-devtools/elfutils/elfutils_0.148.bb
> @@ -61,6 +61,14 @@ inherit autotools gettext
>   # but 0.175 has different license, so to be safe don't backport the fix, just ignore the issue
>   CFLAGS += "-Wno-error=missing-attributes"
>   
> +# There is a fix in 0.171 version (commit b10d7eb74064c5906f031cd17c0f82041c6a4ca1)
> +# but 0.171 has different license, so to be safe don't backport the fix, just ignore the issue
> +CFLAGS += "-Wno-error=format-truncation="
> +
> +# There is a fix in 0.182 version (commit 5621fe5443da23112170235dd5cac161e5c75e65)
> +# but 0.182 has different license, so to be safe don't backport the fix, just ignore the issue
> +CFLAGS += "-Wno-error=stringop-overflow="
> +
>   EXTRA_OECONF = "--program-prefix=eu- --without-lzma"
>   EXTRA_OECONF_append_class-native = " --without-bzlib"
>   EXTRA_OECONF_append_libc-uclibc = " --enable-uclibc"
> 
> 
> 
> 
> 
