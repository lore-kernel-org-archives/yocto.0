Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web12.8699.1618376364139515015
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 21:59:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=d0LBjp8P;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id a4so18537056wrr.2
        for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 21:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=qd5exNR2Snen3hBf6gVC9vanV7TJjqdxkjysICjJHG4=;
        b=d0LBjp8PP/fnWgb1LhV6W/+ofdeFD+9VgsLXg9EPWfLOKPD9n+nxmSoDYBSruFS/Pm
         x6wm1YkP41RwsLH6tSqe1EqeyAfunkxxn7W5ZhbQHx3GNldT1q0ViTsY5uqwsR7FltIU
         hh9/DFhg9wh8u09nWAq7kxLav3v5YbusKnjh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=qd5exNR2Snen3hBf6gVC9vanV7TJjqdxkjysICjJHG4=;
        b=LgXKkXz+vr3ODs8aUi83JZOjGIiNw3iUeOoh/gyGO7E2wkuBCG44VrOrdS4+uAHrEp
         VQjo6BzgC21+/9UDYVJRW/xbsXj90mWjAx/AJTgCphD6GJkzGa8iH6iD2qVaBLoTLqBe
         k9tiZjptwpPoDsBTbDVPFYrC6mbhI2SGJvJniNlYNZ0p6S4Y8JTNYn8QwuHfQ7h2njz+
         8jI6k29ewssvopxpo1/ogdorhrCeQcCmnt6f1w3AKlAANu+Wpr4fJcR/+MFgBcjkCh8K
         yVlryL91TXF9TuNeCymgDdqfOp4+7W3WjM0C80a0lhNTJaci+oTx7qXiuUBm4H1H2owU
         CALA==
X-Gm-Message-State: AOAM531GnJudrKKlSUDt2so0eHsEddltaOOytC51ICV8OXnXD6qk7AnJ
	9u3c15tIMeN9yzJfQpSgOvsobg==
X-Google-Smtp-Source: ABdhPJyPZSJ2hDD1+aMJo93VHSyv7Eb7Wp4e3xaBYdUFfnn/KMndt1FXy8ZEVhXrRtrleo+0OzIfjQ==
X-Received: by 2002:adf:cd0a:: with SMTP id w10mr17085913wrm.195.1618376362448;
        Tue, 13 Apr 2021 21:59:22 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:92c8:89c8:3615:b078? ([2001:8b0:aba:5f3c:92c8:89c8:3615:b078])
        by smtp.gmail.com with ESMTPSA id a22sm13534013wrc.59.2021.04.13.21.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 21:59:22 -0700 (PDT)
Message-ID: <2f23e846365f9736f925351e8d553c54a9d2782c.camel@linuxfoundation.org>
Subject: Re: [yocto] bitbake controlling memory use
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Randy MacLeod <randy.macleod@windriver.com>, Alexander Kanavin
 <alex.kanavin@gmail.com>, Gmane Admin <gley-yocto@m.gmane-mx.org>, "Li,
 Changqing" <changqing.li@windriver.com>, Ross Burton <ross@burtonini.com>,
 Joshua Watt <JPEWhacker@gmail.com>, Trevor Woerner <twoerner@gmail.com>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Date: Wed, 14 Apr 2021 05:59:18 +0100
In-Reply-To: <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
References: <s4v495$bak$1@ciao.gmane.io>
	 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
	 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
	 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
	 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
	 <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
	 <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-04-13 at 21:14 -0400, Randy MacLeod wrote:
> On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
> > make already has -l option for limiting new instances if load average is 
> > too high, so it's only natural to add a RAM limiter too.
> > 
> >    -l [N], --load-average[=N], --max-load[=N]
> >                                Don't start multiple jobs unless load is 
> > below N.
> > 
> > In any case, patches welcome :)
> 
> During today's Yocto technical call (1),
> we talked about approaches to limiting the system load and avoiding
> swap and/or OOM events. Here's what (little!) i recall from the
> discussion, 9 busy hours later.
> 
> In the short run, instead of independently maintaining changes to
> configurations to limit parallelism or xz memory usage, etc, we
> could develop an optional common include file where such limits
> are shared across the community.
> 
> In the longer run, changes to how bitbake schedules work may be needed.
> 
> Richard says that there was a make/build server idea and maybe even a
> patch from a while ago. It may be in one of his poky-contrib branches.
> I took a few minutes to look but nothing popped up. A set of keywords to
> search for might help me find it.

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/wipqueue4&id=d66a327fb6189db5de8bc489859235dcba306237

Cheers,

Richard

