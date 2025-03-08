Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED7F5C282EC
	for <webhook@archiver.kernel.org>; Sat,  8 Mar 2025 19:19:24 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.1974.1741461563023517899
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Mar 2025 11:19:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LOUL0eF5;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43bd5644de8so31886785e9.3
        for <yocto@lists.yoctoproject.org>; Sat, 08 Mar 2025 11:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741461561; x=1742066361; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B/MChdhseHeQgLBRDfn9RXVHIkffJBtlqimx8amBKGU=;
        b=LOUL0eF5egHYAFRbLKJEkFF1IVaBgq6Rmj5BrNLRMSOFeIgosKKg5fInhx/PnyWh88
         1yliz4DoCKRZowXwLNYY8Z0D3nJ+oGNQBH17Da0P4exUJyl3BnaaS2ZgrHxbyX1jVZDr
         VInhFt7B+dvKfLxuiKY47XU09Pb8hx7NURmQWIP9wOLbAYr0VkVpQq/SMO69Bid3Kg6T
         zPvuF+N8oe3B37B9S5aS94jq50eev3yRT0Vd3e/I0s/K5jm63YGGqwPCn1o3xGgQG0xW
         +OogHUq/C0yPPfKRRCfCdtR/F0gt2SDVpCdRfPhe2yuWIym2ae2tm5rquWdOJXg0EYhX
         +WFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741461561; x=1742066361;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B/MChdhseHeQgLBRDfn9RXVHIkffJBtlqimx8amBKGU=;
        b=He9U6pzQwwFvIc1vpl7rlmJ3DsIY2564OmKGlX7qx1VNfd0hRaPif2gFYuNQVgAu6D
         +BaQ1n3FixhDbZ2ITa0EZ8mxZlxvkYQgblfb0tE0ZnVDZj7BK2Fmke+1dc+6Vtl79CRa
         nSf0V6ImgDEv1LdlCF2wmqIklm4XlQV1WZwXbKXhQR46zOjpg5eBvcU7+/LYhod4uWXR
         Lcizdk51ZuxVkuooRFDLM6B3CUvauZypdftCvXZzLsrYjYY5pLlMchsQ+XP+fMPtc198
         VF3enptJXwICiq+tBoW0NzRWkyIeIx3QkY6YAaNLT6KCuDX33yT473jOYthU8zJoMuLM
         3ybg==
X-Gm-Message-State: AOJu0Yz0GFQcD+uvLRl5qRTwj6d3PdjLdwQztVFYfRttR7pUpRpumcMx
	8Y0A+aGMMuHMtb/neIwTRemRRSHF+hmEoWkW/DzBoub+lkz2K2aH6SzF4Q==
X-Gm-Gg: ASbGncu2k+MTK2QrYL/FCbGauqRBT2IwXEbzPSVF45bSxmrpzoQJql5H654HZD/sM2B
	EfIbTbHTNcyRBdmp6ZRxKeOQJAjE5gYCyKZFQtzs0PgXTT1PMcYCjQoneA42fOYJJz4fufewH90
	iT+lr+vV7xyp11SFOOYnOBsT1lRkdtl3WJMQi5eMmqste/QTd4po6HKJdIy4t8ntlv9HAty592R
	1V0E9v8Z5fcHCaNkxrRej72Wpbp3G+dcxrF/FvChEgXBgqFWBwvwT3D8m1enGu0MYz9f3WzrQrY
	kJam++/OLDA19lK9h1rcW5VmRphT2f0QCM4jAQZGDytcZRwiy4aA
X-Google-Smtp-Source: AGHT+IG0EoHaR0fvDwGHNO9Q/KlZInC0NUmnpLrTH2NeoTQAI2a/Ybmh6xAy1TGBmDtwoc5pFtzXYg==
X-Received: by 2002:a05:600c:19d0:b0:43b:a397:345f with SMTP id 5b1f17b1804b1-43c5ce45df0mr80366315e9.11.1741461561071;
        Sat, 08 Mar 2025 11:19:21 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bd42c5b33sm126718125e9.22.2025.03.08.11.19.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 11:19:20 -0800 (PST)
Message-ID: <24c41f4c-6ea7-48ea-83ee-e3501044504a@gmail.com>
Date: Sat, 8 Mar 2025 20:19:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Fakeroot fails with externalsrc
To: yocto@lists.yoctoproject.org, kfa@deif.com
References: <Og1U.1741378092435763581.EjNi@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <Og1U.1741378092435763581.EjNi@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Mar 2025 19:19:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64931

Pseudo ignores the source- and build-dirs[1] (and everything that's
inside them), via the PSEUDO_IGNORE_PATHS variable.
E.g. When you set "/userdata/codesys-runtimes" as EXTERNALSRC, that
becomes ${S} - every path that starts with this prefix will be outside
of fakeroot.
You need to change this folder structure in a way that the EXTERNALSRC
path doesn't clash with your Yocto build-dir - build-dir can contain the
source-dir, but the source-dir shouldn't contain the build-dir.

[1]: https://git.yoctoproject.org/poky/tree/meta/conf/bitbake.conf#n754

On 07.03.25 21:08, Kjeld Flarup via lists.yoctoproject.org wrote:
> Hi
>  
> I'm trying to make a CI/CD Yocto build in a git repository which is
> used in a recipe. 
>  
> I have made an include file
>  meta-codesys/recipes-codesys/codesys-src.inc which normally contains.
>
>     SRC_URI =
>     "gitsm://gitlab.deif.com/codesys/codesys-runtimes.git;protocol=https;branch=master"
>     SRCREV = "927fe8fa0b9e6537b3d7ec9f2231e13c4b367a61"
>
>  
> When building in the codesys-runtimes repository I clone the Yocto
> project and replaces codesys-src.inc with
>
>     inherit externalsrc
>     EXTERNALSRC = "/userdata/codesys-runtimes"
>     EXTERNALSRC_BUILD = "/userdata/codesys-runtimes/build"
>
> And then I run bitbake where I get this error
>
>      *** 0418:            os.lchown(path, uid, gid)
>          0419:
>          0420:    # Return a list of configuration files based on
>     either the default
>          0421:    # files/fs-perms.txt or the contents of
>     FILESYSTEM_PERMS_TABLES
>          0422:    # paths are resolved via BBPATH
>     Exception: PermissionError: [Errno 1] Operation not permitted:
>     '/userdata/codesys-runtimes/yocto/tmp-glibc/work/cortexa53-crypto-oe-linux/codesys-runtime/1.0-r0/package/usr'
>
>     ERROR: Logfile of failure stored in:
>     /userdata/codesys-runtimes/yocto/tmp-glibc/work/cortexa53-crypto-oe-linux/codesys-runtime/1.0-r0/temp/log.do_package.59961
>     ERROR: Task
>     (/userdata/codesys-runtimes/yocto/meta-codesys/recipes-codesys/codesys-runtime/codesys-runtime.bb:do_package)
>     failed with exit code '1'
>
>  
> The problem is that do_package tries to set uid to root, but that is
> not allowed, unless fakeroot is used.
> Why does this fail when externalsrc is used?
>  
> Just for the record, if I do not change codesys-src.inc it builds.
>  
> --
> --
> Regards 
> Kjeld Flarup
> DEIF A/S
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64930): https://lists.yoctoproject.org/g/yocto/message/64930
> Mute This Topic: https://lists.yoctoproject.org/mt/111574850/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

