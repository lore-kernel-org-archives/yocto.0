Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web10.9561.1584615870689419128
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 04:04:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=b6GaemK7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id f130so485423wmf.4
        for <yocto@lists.yoctoproject.org>; Thu, 19 Mar 2020 04:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=0ttXRtINeTM0dPHbl56JLOzEatYuY6NPGdcRbJYJAZc=;
        b=b6GaemK7cNsZh3q4NFV0jT+mnuPWy0SsjB0/UwoYq0xmcnuAzsbFWrQ/LtbuhjEJFd
         7h2r/rnmTCQbPgZh7QTTK83+rlQu7jEmTwsJvvzPiuBvExen9xwIS1HlfFBcbTZ2S1X+
         MzDh/tL5YD+o+gAiDmSNbv5cG7kHUrFWKrRgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=0ttXRtINeTM0dPHbl56JLOzEatYuY6NPGdcRbJYJAZc=;
        b=PnvT1DHats9/2ShDu/tJ5F4Vu+pBtpXWOGo0NTIgmv/poK9BBfuTZUlVJpq72IGXFQ
         0gmIH5/qWuQqVQsp2JcMGng/pYFfjuQpgzJHooVMTqZdCouF2j0dfibaT1tVzdbtqN/r
         eieKnIOXsL+nO4Vfw0yIUM4ApFewHo0SG9CC+W4nxN42PCJaencJeFurocx133F6x5SZ
         vjqBKG3n7AOWD9xFLlEqF0UC0NICr1i9eY0IWZYc2zRzEQMMUAaX7WcRUUDFC1gGoOzP
         xQRKcaCvR+T/6FukOvL9LQkJHjcfajfe5eIa8b1nhIZvEgSdoCwe+BujScYpOVkJKtB0
         QtiA==
X-Gm-Message-State: ANhLgQ2MiZxPzNxlIwy9W4n7D9McVHdln5LtZ9AmBuDvdPPcbv6ZQR3i
	04jkaOcwc6T8w6zJCY81pZdxqw==
X-Google-Smtp-Source: ADFU+vsm0yYMV07r9jipe421KYNRIkm7wgjpwMwdlRrOBc5s1OpNPpNqmLIng6wYMinzgPD8XsIldw==
X-Received: by 2002:a7b:c456:: with SMTP id l22mr2913851wmi.184.1584615869138;
        Thu, 19 Mar 2020 04:04:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id h12sm1655500wml.12.2020.03.19.04.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 04:04:28 -0700 (PDT)
Message-ID: <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
Subject: Re: [yocto] What are the key factors for yocto build speed?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mikko Rapeli <mikko.rapeli@bmw.de>, ross@burtonini.com
Cc: yocto@lists.yoctoproject.org
Date: Thu, 19 Mar 2020 11:04:26 +0000
In-Reply-To: <20200319080514.GR104502@korppu>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
	 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
	 <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
	 <20200319080514.GR104502@korppu>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-03-19 at 08:05 +0000, Mikko Rapeli wrote:
> Once this is done, IO still happens when anything calls sync() and
> fsync() and worst offenders are package management tools. In yocto
> builds, package manager actions to flush to disk are always useless
> since rootfs images are going to be compressed and original ones
> wiped by rm_work anyway.
> I've tried to hook eatmydata library into the build which makes
> sync() and fsync() calls no-ops but I've still failed to fix all the
> tools and processes called during build from python code. For shell
> based tasks this does it:
> 
> $ export LD_LIBRARY_PATH=/usr/lib/libeatmydata
> $ export LD_PRELOAD=libeatmydata.so
> $ grep -rn LD_PRELOAD conf/local.conf
> conf/local.conf:305:BB_HASHBASE_WHITELIST_append = " LD_PRELOAD"
> conf/local.conf:306:BB_HASHCONFIG_WHITELIST_append = " LD_PRELOAD"

Doesn't pseudo intercept and stop these sync calls already? Its
supposed to so if its not, we should fix that.

> The effect is clearly visible during build time using Performance Co-
> Pilot (pcp) or similar tools to monitor CPU, memory, IO and network
> IO. The usage of RAM as page cache grows until limits are hit and
> only then writes to disk start, except for the python image
> classes... Hints to fix this are welcome!
> 
> To my knowledge of monitoring our builds, there is a lot of
> optimization
> potential to better build times. CPU are under utilized during
> bitbake recipe parsing

Recipe parsing should hit 100% CPU, its one of the few places we can do
that.

> , fetch, configure, package and rootfs tasks. 

Sadly these tasks are much harder.

> Memory is not fully utilized either since IO through sync()/fsync()
> happens everywhere

non-pseudo tasks?

Cheers,

Richard

