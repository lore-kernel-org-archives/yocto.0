Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web12.40300.1595259039819195103
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 08:30:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VScWsz7i;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id f2so18264440wrp.7
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 08:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=AfH1LTOT5H73vypdWYLRya0Pl8o+yY2iM+tYtsz+j4I=;
        b=VScWsz7idyfI4alOU1x1mLVJEVuWwWVjWGLqBxMGcU3due+aGVVH+NHlScUXRea8+F
         XNtxygZ75oxsPfjj/TZ6HDicXbZEehTBvJb4p/f0X2kCE19jinM9QsbuHL3kEzf/585m
         kXSJiVTblLxqdNzxkKPT8gkIBdkayN4hHWgtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=AfH1LTOT5H73vypdWYLRya0Pl8o+yY2iM+tYtsz+j4I=;
        b=A0Bak6Ov+ZLSOcn0V22F5tEeRZiDKzDE3ain25GveDgtbu34+3jMIrG7PgsfsbAa2F
         pGzhl4XV0fgc/KhRrs8B06crabOF6N+ez57dsklC9fEmn09vwaLywDYozmEjF/SinQLI
         5zLyn53I77kieB9VaQas4LzXwUdyB9IgDm2NSmznkfvCqm/n5HrbD95FzZcGaoLCC9SH
         /FhDKDXINJc/iXAvvAkr3HZZapEnLLthycQ9s4dcLWzav2lE2u5a6tQJxVRzaxSW+EN+
         7LgU7Tn0OPn4KWGEuXeLFFQMCPij9khxI6Q2cmlOaW8JhXYWWEIJzNGWZj6dngPt0bdS
         JHAg==
X-Gm-Message-State: AOAM533OJiNMCOL2UptHh4Ls/oqjvoIh1QpQvmoNJHJH6Giqon6E1wB5
	kvwMuMa+MziY1+g75/QSh3yPtw==
X-Google-Smtp-Source: ABdhPJxYDQdRxhM3BfUHNNFHxRd+ZTj+vCtJywuYbz/egRPhbDpO5SCYuPJF5EIV0jS9wiQSMXVzXw==
X-Received: by 2002:adf:e38b:: with SMTP id e11mr22433496wrm.65.1595259037715;
        Mon, 20 Jul 2020 08:30:37 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1cb0:3078:6c66:aaf5])
        by smtp.gmail.com with ESMTPSA id n14sm32888354wro.81.2020.07.20.08.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 08:30:37 -0700 (PDT)
Message-ID: <8ee586c7f4a0d7dcb4016a34d479f79aa38d9891.camel@linuxfoundation.org>
Subject: Re: [yocto] Adjusting Extensible SDK for build setup
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Mon, 20 Jul 2020 16:30:36 +0100
In-Reply-To: <MADEUP.16237E6420DAF7B2.12894@lists.yoctoproject.org>
References: <MADEUP.16237E6420DAF7B2.12894@lists.yoctoproject.org>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2020-07-20 at 15:06 +0000, Monsees, Steven C (US) wrote:
>  
> I am fairly new to the Yocto SDK build process, and am looking to
> create an extensible SDK for one of our platforms.
>  
> I am currently working with Rocko 2.4.1, in conjunction with
> uninative release 1.9…
>  
> My current build system setup does not follow the standard
> configuration, I use a different environment setup script other than
> “oe-init-build-env”.
>  
> My environment setup script “setup-build-env” is also not located in
> the  ${COREBASE}, i.e. the “poky” directory, but rather at
> “${COREBASE}/../meta-bae/meta-limws”, the meta-limws level has
> multiple architecture sub levels (each an independent build), I am
> only looking to build an SDK for one of these architectures. Each
> architecture’s  bblayers.conf provides the appropriate layers…
>  
> My build directory is expected to reside here:
>   “${COREBASE}/../meta-bae/meta-limws/builds, and there are multiple
> architecture builds under this directory

I think the build directory expectation isn't going to work with the
eSDK.

The eSDK is really designed against one configuration and the build
directory becomes that specific SDK. You therefore can't require some
sub directory of the eSDK become the build directory as that isn't how
its designed to operate.

Cheers,

Richard

