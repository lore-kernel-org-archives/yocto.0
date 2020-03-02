Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
 by mx.groups.io with SMTP id smtpd.web09.82.1583174536190311147
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 10:42:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=n3qard3h;
 spf=pass (domain: gmail.com, ip: 209.85.215.195, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f195.google.com with SMTP id y30so221499pga.13
        for <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2020 10:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=MWCXaE8rePZcZIosx/CV2PfytAPfwxqH/jAV1g2R1zk=;
        b=n3qard3hVYccsoWi7YHZA0U2uyWYTF2uZejC4vyuDx9vD8iCz9r02j27PRf1z7zQcG
         9Pvm8r6+iri8idM4L9/dUDcSacvXCLb9WgjlfCLFO9FKICcnn+pjkuz5syPU/cuHfEVn
         U60Uzosf4zrXs1ru0+JiMWsU5kX1pq01bl9hbvfwhZySEwgOm55qaqkCmCl4sMiHZV7x
         Hvrw5l9e/B0p1zEHkfURkiBDFU1CWLufzexErwL6+rmGK7F3CfCkh2ddCjkAs3BbawQQ
         de200I4pU+G+GjZJ/qm/JPxMmXOlQMDkjYYnjq3LGndnp/t5aF+GspAvfjTVlIfkyx93
         UlRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MWCXaE8rePZcZIosx/CV2PfytAPfwxqH/jAV1g2R1zk=;
        b=WKuZT4sFLlOeZdxFAyl47QdeJ323PefB6rRlHv4rXezRfMd+WNfMba5A6d+QLPPM6r
         aXKAxs69XhPnMfk+vxgVMxPJUSAJ975bDaUEZ6qtT15a7YFQst1d5+84NyM0ytmg6JtF
         UjxfpOKiumvLLWH9oaJlG+3CkRFbSn8A2tGYlB3nnDA0WwueH497/F4MWSCEBZf01OEJ
         5ZgWAJu4BwyTWF62+ShTehIsg7slNGeJDyf4CSP4EVLSVmdtf2wQYdJITUvapoRqxhxg
         7zlvx4v68oyAAkf7I7e9ezquZEhAYB1YM/+/c7jaRJNnSQhkSxoVBfiMTHJpebJ4/UV/
         0aCg==
X-Gm-Message-State: ANhLgQ1gOkDC6rmQfe4EUVfWVlY3Jvqy2LiDkqZBSQDBvIrJKjLS0ROX
	BTMzbEAQoE27RCGNxjfNQAkQJ+E8dr4=
X-Google-Smtp-Source: ADFU+vsx3q4qLqTU1etnJLiJ8ZTGgl4jGmKjmoBl0XVUVvMEx5BkxaI4LnogiJfjdy6mNBkN0ulJJw==
X-Received: by 2002:a63:e54b:: with SMTP id z11mr281530pgj.160.1583174534806;
        Mon, 02 Mar 2020 10:42:14 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:8446:2edf:6d4c:9a00? ([2601:646:9200:4e0:8446:2edf:6d4c:9a00])
        by smtp.gmail.com with ESMTPSA id q3sm12457631pgj.92.2020.03.02.10.42.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 10:42:14 -0800 (PST)
Subject: Re: [yocto] [PATCH] gcc-cross-canadian: Enable wildcard expansion support
To: yocto@lists.yoctoproject.org
References: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <9e823c2a-36d2-f2c0-3b52-0e92f86c6a54@gmail.com>
Date: Mon, 2 Mar 2020 10:42:13 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200302173939.106352-1-mark.hatle@kernel.crashing.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 3/2/20 9:39 AM, Mark Hatle wrote:
> In gcc 8, the behavior of GCC changed and expansion of wild cards to calls
> of gcc were disabled by default.  This behavior may be required by some
> (poorly written) makefiles.
> 
> This will allow someone to do:
> 
> gcc *.c -o myoutput
> 
> Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
> ---
>   recipes-devtools/gcc/gcc-cross-canadian_%.bbappend | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> index 9c0d828..e0463c6 100644
> --- a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> +++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
> @@ -1,5 +1,5 @@
>   INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
> -EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
> +EXTRA_OECONF_append_sdkmingw32 = " --disable-nls --enable-mingw-wildcard"

this change is fine. is this the only place we need it ?

>   LDFLAGS_append_sdkmingw32 = " -Wl,-static"
>   EXEEXT_sdkmingw32 = ".exe"
>   ELFUTILS_sdkmingw32 = ""
> 
> 
> 
> 
