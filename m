Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.3532.1623484061045014404
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Jun 2021 00:47:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=F/IDDMh1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id b145-20020a1c80970000b029019c8c824054so9878550wmd.5
        for <yocto@lists.yoctoproject.org>; Sat, 12 Jun 2021 00:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=CxRvX0Yn/MYzEgzyIwsj2fljazmePKcIn3A+srnm5ZY=;
        b=F/IDDMh1wH1qf+Db8Hm0Qx7Zq4wqkhFylZ9vXQFJ6XoIER8vno2PXZXRlQ+sC4kkuT
         C2vhPKNz2LeF/YaAm+zRGKvAx5n8VCb6VXeqt1Ri/bMnnOUkAjy4xd7qyTEQJNN+5aNK
         4FU4WpmZZnpmZKh5/u/FEr+U4PUoJMeSBVPK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=CxRvX0Yn/MYzEgzyIwsj2fljazmePKcIn3A+srnm5ZY=;
        b=tmwGv4oJi+DPs7gy2DRIqECXDzPofQv5aI3Kh64efoN1FRux5tsypPxqFhiKiFKaU9
         E2qm8u46tFZs3WBm7EGNs+77LeZM8x6pf8E15QK+ndTfmTw8DtAJz/Wkv9CmDv50MSgd
         ichBmEksQl62plikZTw8yFBl2NPety0smo7Ra6zWZRvJG+dgYKArnNcZEhJ7lfWtz0EZ
         +Wy4QxJeYIRL9qoOzk7diCw2pqyZUDbwPSQXN0mWKPTtHNHfWXKqlSO0Esl1piT0FD2r
         xKV5ZxKCqhPfZ/PCOt0F3liivc4eRPDfd3z0OuVs50BfinA40tOjpfG2wD+2ITh/0MHf
         vb2Q==
X-Gm-Message-State: AOAM531qijlAS+WIPfZAJMl3KmP5+byqfbhwXYOklxX5tM2n7hzQJIOo
	3I5UdydQa5YkOiGXRwGVDxz9jg==
X-Google-Smtp-Source: ABdhPJzD28BXFLLyWr7erF91jkfJaHXAxPuj3Recp3FNTwxQ13tMGp3UwpqbA/s0pZ8OPQyrwMsEPQ==
X-Received: by 2002:a05:600c:c9:: with SMTP id u9mr7183188wmm.156.1623484059333;
        Sat, 12 Jun 2021 00:47:39 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:75:ed13:b33:1d5a? ([2001:8b0:aba:5f3c:75:ed13:b33:1d5a])
        by smtp.gmail.com with ESMTPSA id z5sm10010766wrv.67.2021.06.12.00.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 00:47:39 -0700 (PDT)
Message-ID: <14938a84618aa48d76d6a8c15ca5930fc72d957a.camel@linuxfoundation.org>
Subject: Re: [yocto] Extensible SDK of core-image-minimal fails to install
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Hendrik <yocto@h3ndrk.de>, yocto@lists.yoctoproject.org
Date: Sat, 12 Jun 2021 08:47:35 +0100
In-Reply-To: <7d3b564b-d17d-f926-0037-e19ed3e73321@h3ndrk.de>
References: <1686F53371AAAEA1.32444@lists.yoctoproject.org>
	 <7d3b564b-d17d-f926-0037-e19ed3e73321@h3ndrk.de>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2021-06-11 at 22:30 +0200, Hendrik wrote:
> I was able to reproduce the error even with plain poky (without kas):
> 
> ```bash
> git clone -b dunfell https://git.yoctoproject.org/git/poky
> cd poky
> source oe-init-build-env
> bitbake -c populate_sdk_ext core-image-minimal
> ```
> 
> After successful build, copy the `build/tmp/deploy/sdk/poky....sh` to
> another machine (with different OS) and run it there.
> 
> I tried several different installation machines and they fail
> consistently to install the extensible SDK if they run a different OS
> than the build machine (e.g. Debian 10 vs. Ubuntu 18.04 vs. 20.04). See
> the exakt error and complete log output in my previous message.
> 
> What is happening here? Did I use the extensible SDK wrongly? Is it
> expected to be incompatible?

I think it may be this bug:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=14428

We don't have a fix as yet, it looks difficult to solve :(

Cheers,

Richard

