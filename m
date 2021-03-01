Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.532.1614612238031822259
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 07:23:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jhI5M1vP;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5A5BF38C0872
	for <yocto@yoctoproject.org>; Mon,  1 Mar 2021 15:23:57 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id n10so11789173pgl.10
        for <yocto@yoctoproject.org>; Mon, 01 Mar 2021 07:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=eMgaV4evgzXA6MGUHgNoodVl+tgNuvUIXVgajtM46eQ=;
        b=jhI5M1vPlBZGxDt/9vs2SpiZ6LUDggQjGDUeeL7nANbPQoVcA/gBFR6KrMJZk8yZxE
         2FcHfR/k7qmSydVK/7bOksVbjDOIGvjPcBlDLRgaNbXlRqUJN6K7le+KL7a8CNMTrHcp
         DxMonTzhPhqBmElv0gVIUkX6opLAzr9o0Do+0HGGU2FMgGVkKdxMEZBan+WCL5C7LIk0
         GJzUnz0hAJ4QXshBN2r2/jerGMj78ReIJ9T5uEZQceMLrApAf12usVoNlz1ZwPFXEaLP
         IJh0Pp0AVv9w9Yv9GJPutXTllfY1qiZLXjyHpL05Y2THMKciwNqFhW+FuqSxAFeOU1cW
         0d/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=eMgaV4evgzXA6MGUHgNoodVl+tgNuvUIXVgajtM46eQ=;
        b=QW7HeoHqnZ2vxNqZioKNx6AQGonMZNz2D1teGfCnmQH9xD3uvKLEyWfN63HwQsR3XV
         4G3d1D2vi+1U5kT/bgY3KByK/X76rnXf7CXZ9sE6+gjlBgdk0ycKiV1hIfma3/zAjGPX
         OXjPoTq7ggOxMMnKVunGqVjNSl6kQ8vDpvi7/hsZmaqgwzrYC4fTFlATs8V6gwfp+3EG
         JG5fQEnXyrUfAtqXakh4dRRZDTmbUH7pyuAI0JKRKmi1UsEXhyqSSWD9X24rV2xokkrR
         9nsEd9A12fQw1jfkloPsXmC0YZEVORr3h4pv5tQAW0o7BMhKTH/+EJyKwEynQyRRNR/W
         p3hQ==
X-Gm-Message-State: AOAM532d6CU1+O7lp2EiFPSx7Is/QK0x/y7qFbc9hyo8GztUEolTnWQ8
	Uvaj/RZm+RD4ciKzGwoLebTYcEC94G0=
X-Google-Smtp-Source: ABdhPJyCrDEsw9eHiQbCtUBEI3Gg0lWkB55DpwfKQpPI1UXUMxmqFCAEqwn5EfDep91PgFNmaLei6Q==
X-Received: by 2002:a62:10b:0:b029:1ed:d6de:692a with SMTP id 11-20020a62010b0000b02901edd6de692amr15769593pfb.28.1614612236165;
        Mon, 01 Mar 2021 07:23:56 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:dc42:1510:9ce8:1085? ([2601:202:4180:a5c0:dc42:1510:9ce8:1085])
        by smtp.gmail.com with ESMTPSA id h27sm11018799pfq.32.2021.03.01.07.23.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Mar 2021 07:23:55 -0800 (PST)
Subject: Re: [yocto] [PATCH] dev-manual/common-task.rst: Added documentation for debuginfod support
To: Dorinda <dorindabassey@gmail.com>, yocto@yoctoproject.org
References: <20210301144515.22651-1-dorindabassey@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <11561565-caa9-20b8-6658-71c5d822df34@gmail.com>
Date: Mon, 1 Mar 2021 07:23:54 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210301144515.22651-1-dorindabassey@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Dorinda,

Thanks for the patch. Documentation has its own mailing list.
docs@lists.yoctoproject.org

Please resend to that list.

-armin

On 3/1/21 6:45 AM, Dorinda wrote:
> Added documentation on running debuginfod server and using it on the target.
>
> Signed-off-by: Dorinda Bassey <dorindabassey@gmail.com>
> ---
>  documentation/dev-manual/common-tasks.rst | 46 ++++++++++++++++++++++-
>  1 file changed, 45 insertions(+), 1 deletion(-)
>
> diff --git a/documentation/dev-manual/common-tasks.rst b/documentation/dev-manual/common-tasks.rst
> index 65db4aed33..d4a2b2f28d 100644
> --- a/documentation/dev-manual/common-tasks.rst
> +++ b/documentation/dev-manual/common-tasks.rst
> @@ -10023,7 +10023,51 @@ before starting the debugging process. These extra computations place
>  more load on the target system and can alter the characteristics of the
>  program being debugged.
>  
> -To help get past the previously mentioned constraints, you can use
> +To help get past the previously mentioned constraints, they're two
> +methods you can use: running a debuginfod server and using gdbserver.
> +
> +Using the debuginfod server Method
> +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +debuginfod from elfutils is a way to distribute debuginfo files.
> +running a debuginfod server makes debug symbols readily available,
> +which means you don't need to download debugging information
> +and the binaries of the process being debugged. you can just fetch
> +debug symbols from the server.
> +
> +1. To run a debuginfod server, you need to do the following:
> +
> +-  Ensure that this variable is set in your ``local.conf`` file:
> +   ::
> +
> +      PACKAGECONFIG_pn-elfutils-native = "debuginfod libdebuginfod"
> +
> +    This PACKAGECONFIG option enables debuginfod and libdebuginfod for
> +    elfutils-native.
> +
> +-  Run the following commands to set up the debuginfod server:
> +   ::
> +
> +      $ oe-debuginfod
> +2. To use debuginfod on the target, you need the following:
> +
> +-  Ensure that these variable is set in your ``local.conf`` file:
> +   ::
> +
> +      DEBUGINFOD_URLS = "http://localhost:port"
> +
> +   This option does the client configuration by setting DEBUGINFOD_URLS 
> +   to point at the server running debuginfod. Such that for every lookup, 
> +   the debuginfod client will query the server and return the requested information.
> +   ::
> +
> +        PACKAGECONFIG_pn-gdb = "debuginfod"
> +
> +   This PACKAGECONFIG option enables debuginfod for gdb.
> +
> +Using the gdbserver Method
> +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +
>  gdbserver, which runs on the remote target and does not load any
>  debugging information from the debugged process. Instead, a GDB instance
>  processes the debugging information that is run on a remote computer -
>
> 
>

