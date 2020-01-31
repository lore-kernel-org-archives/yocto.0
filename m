Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web10.1220.1580457980452921873
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jan 2020 00:06:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PhVGNOaZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f65.google.com with SMTP id f129so7604743wmf.2
        for <yocto@lists.yoctoproject.org>; Fri, 31 Jan 2020 00:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=vPUULnuRpiOJrUrsL/6tO6ftLF3uTnPl3rk+vbYNYjc=;
        b=PhVGNOaZOTyJVCat8KQQde/9mam47PXbd5+0DI99XCvTa/FsXrITD849SQnyiwpaJj
         9O4ch98k6va0v3Y4Ak/bMw6SlfUQd2TN09JeeVQkNe5+xFeXOJEdQavOcal1Kqpk9C1T
         cRnudOf9mTO68GeZNniKTdfcim4TFp0w26jrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=vPUULnuRpiOJrUrsL/6tO6ftLF3uTnPl3rk+vbYNYjc=;
        b=QqNp6CtKTycPRjTU/NzWXQezs5xBBqCZK8tsESSqPkideujtGQQuF7CA/f/DBwh4a/
         IQGnSnN9NjSxxk+WkdxktBTKYe8eLLAKI+TSWXgysi2adlZJdtPad7rIqqWF2kFOchbP
         eGBHj2D/p2HWxgVgfqqJHKs9qncrTqosJ4IAbKjIzg4euW4ThOya69KHyIZqHZjHp95Z
         XNvxER7GCkFQpaSYTlHGRbDrYbK8qca+dXJdFd/LZOSScmcJArfYe22uqLDH7FUKKyUG
         P3l6egtIiJLxvMgf/2wWiYEc0CPLdKc0jV6GbS9hQrw0v5hHhg8RAiTJnrw0L/ecqTcP
         dTdQ==
X-Gm-Message-State: APjAAAWiZRaN8d+TwJmmSGUR6lk+q3sgW8XrdyDy1gNcJREKo0SvxYlF
	0281XyYL4Y0ZtGqR5xoY3keFQA==
X-Google-Smtp-Source: APXvYqyOAJrdllfAsbaBE+PPCZTJBCvTUD0yZSd3GHU/KUtxiMv/MYmA7LMM/lMFZacECY3IcfcXXw==
X-Received: by 2002:a05:600c:34c:: with SMTP id u12mr10225193wmd.187.1580457978940;
        Fri, 31 Jan 2020 00:06:18 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id g2sm10696240wrw.76.2020.01.31.00.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2020 00:06:18 -0800 (PST)
Message-ID: <a5187052e7d98f7035cc03a17d27663b42806112.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] config.py: remove mpc8315-rdb
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: akuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 31 Jan 2020 08:06:17 +0000
In-Reply-To: <20200131001934.30590-1-akuster808@gmail.com>
References: <20200131001934.30590-1-akuster808@gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-01-30 at 16:19 -0800, akuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  config.py | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/config.py b/config.py
> index 7dbd5e7..b210275 100644
> --- a/config.py
> +++ b/config.py
> @@ -51,7 +51,6 @@ trigger_builders_wait_shared = [
>      "qemux86-64", "qemux86-64-alt",
>      "qemux86-64-x32", "qemux86-world",
>      "edgerouter",
> -    "mpc8315e-rdb",
>      "genericx86", "genericx86-alt",
>      "genericx86-64", "genericx86-64-alt",
>      "beaglebone", "beaglebone-alt",
> @@ -70,14 +69,14 @@ trigger_builders_wait_quick = trigger_builders_wait_shared + [
>  ]
>  
>  trigger_builders_wait_full = trigger_builders_wait_shared + [
> -    "qemumips-alt", "edgerouter-alt", "mpc8315e-rdb-alt", "qemuppc-alt", "qemux86-world-alt",
> +    "qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt",
>      "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "oe-selftest-centos",
>      "qemux86-64-ptest", "buildperf-ubuntu1604", "buildperf-centos7", "qemux86-64-ltp",
>      "qemuarm64-ptest", "qemuarm64-ltp", "meta-intel"
>  ]
>  
>  trigger_builders_wait_releases = {
> -    "sumo" : trigger_builders_wait_shared + ["qemumips-alt", "edgerouter-alt", "mpc8315e-rdb-alt", "qemuppc-alt", "qemux86-world-alt",
> +    "sumo" : trigger_builders_wait_shared + ["qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt",
>                                               "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-centos"]
>  }

You can't do that if you still want to build it in older releases...

Cheers,

Richard

