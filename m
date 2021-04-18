Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.9548.1618739961058180691
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Apr 2021 02:59:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SErTsBQ4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id p19so16582425wmq.1
        for <yocto@lists.yoctoproject.org>; Sun, 18 Apr 2021 02:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=9jCdNaBEnm0MlPPDm3XL2mvEHSwgZCM4oPyIPYoIyoo=;
        b=SErTsBQ4kCWbK77/OB1HsZuu8IJIE4T5XSAxClMUhQg1UwB8tz1fN6rCkmDvcTkUO4
         /PrEoVjRgXjU1J5TRwUbUy4HMFns/fuRdlCHngCYzQRSKw/4K2MOvHrE3yvaY9hQ3LOI
         FKO0Wfhvx0X5u49GYCnRbGQPTlrQuN1yPoEjs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=9jCdNaBEnm0MlPPDm3XL2mvEHSwgZCM4oPyIPYoIyoo=;
        b=iJgPk+gu2VrOpZ9CKc2uEWycs+PGH8RvRv4BmR8bggGvb+rEFKVADZUoYJMvvdMehI
         12dG7tgNc/01lqpLopkUcv50cxY5IPbjHf0FqMg4g60IMYuxcHdhC3WQya7rZ+2DZKJM
         Bc/+giB3lnz0ekhLgG5NM11bMhgIotDfpIdEkv/9Bng+yaysv356xnH/LRlsrVkpQG+e
         PuJe4m2g7+J8OJR2Yt346Qad5nK7KiMWP0H2fNoCthWtLsQgG5HvH5/8Y/dWLTNPZx9x
         rValbt7hgY91ff3coBZiYJK8R2Zuand3oimNRSRdmEI2jAPk6x4sRDPtoSMIhhz+Sr/n
         qQyQ==
X-Gm-Message-State: AOAM533kF1R4fuVcVJjx8eECkWSCykkPMnmXt/CO94x3qUkFh018SxZA
	bVesPSnE9o8R/iBbaRH+gpe4uQ==
X-Google-Smtp-Source: ABdhPJwUNckVaZC8CH6V0xe3Wk3fC4nfnA2WEWfea4Hk1wgEeNMR6k8TwikEy7Ye6/c1u/6iI1HQEg==
X-Received: by 2002:a1c:2b03:: with SMTP id r3mr15914663wmr.173.1618739959569;
        Sun, 18 Apr 2021 02:59:19 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:6d3d:a3c6:3e:d74? ([2001:8b0:aba:5f3c:6d3d:a3c6:3e:d74])
        by smtp.gmail.com with ESMTPSA id l9sm17981407wrz.7.2021.04.18.02.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 02:59:19 -0700 (PDT)
Message-ID: <c26ff0ee8f9cc81d0c52cda17381226fc11166c8.camel@linuxfoundation.org>
Subject: Re: [yocto] bitbake controlling memory use
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Gmane Admin <gley-yocto@m.gmane-mx.org>, yocto@lists.yoctoproject.org
Cc: yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X@public.gmane.org
Date: Sun, 18 Apr 2021 10:59:18 +0100
In-Reply-To: <34dccddb-c5c2-16e0-d571-f86f2c6f004b@gmail.com>
References: <s4v495$bak$1@ciao.gmane.io>
	 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
	 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
	 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
	 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
	 <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
	 <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
	 <2f23e846365f9736f925351e8d553c54a9d2782c.camel@linuxfoundation.org>
	 <34dccddb-c5c2-16e0-d571-f86f2c6f004b@gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sun, 2021-04-18 at 00:17 +0200, Gmane Admin wrote:
> Hi,
> Op 14-04-2021 om 06:59 schreef Richard Purdie:
> > On Tue, 2021-04-13 at 21:14 -0400, Randy MacLeod wrote:
> > > On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
> > > > make already has -l option for limiting new instances if load average is
> > > > too high, so it's only natural to add a RAM limiter too.
> > > > 
> > > >     -l [N], --load-average[=N], --max-load[=N]
> > > >                                 Don't start multiple jobs unless load is
> > > > below N.
> > > > 
> > > > In any case, patches welcome :)
> > > 
> > > During today's Yocto technical call (1),
> > > we talked about approaches to limiting the system load and avoiding
> > > swap and/or OOM events. Here's what (little!) i recall from the
> > > discussion, 9 busy hours later.
> > > 
> > > In the short run, instead of independently maintaining changes to
> > > configurations to limit parallelism or xz memory usage, etc, we
> > > could develop an optional common include file where such limits
> > > are shared across the community.
> 
> I tried PARALLEL_MAKE_nodejs = "-j 1" from local.conf but that didn't work.

It would need to be:

PARALLEL_MAKE_pn-nodejs = "-j 1"

> So I watched it run for a while. It compiles with g++ and as at about 
> 0.5GB per thread, which is OK. In the end it does ld taking 4GB and it 
> tries to do 4 in parallel. And then swapping becomes so heavy the 
> desktop becomes unresponsive. Like I mentioned before ssh from another 
> machine allows me to STOP one of them, allowing the remaining to 
> complete. And then CONT the last one.
> 
> I worked around it now, by creating a bbappend for nodejs with only
> PARALLEL_MAKE = "-j 2"
> > 

If that works, the override above should also work. You do need the "pn-" 
prefix to the recipe name though.

Cheers,

Richard

