Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4589C433EF
	for <webhook@archiver.kernel.org>; Tue,  3 May 2022 20:10:01 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web08.400.1651608596693442219
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 13:09:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=S1rsarII;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id
 c190-20020a1c35c7000000b0038e37907b5bso2050491wma.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 13:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=x+g0giOjk4zLI5IM8BjTqz4JvKT2W2/r2JzCCuRaffc=;
        b=S1rsarIIYtCJ6ry1tc/hNUJKs66TA1hxDS5ZEJdmc+Z1aJNjvMUrP5jEHRRHv2i9wj
         g2D87OrKyxO27wgJxErRAqlHHmeB83VuGrs/alVx/sy8rKXPbzOfFpxF1qgj1w9rKPSg
         5yXbYJWEON5CbkSKb28LH7kHDeQiSlL776mwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=x+g0giOjk4zLI5IM8BjTqz4JvKT2W2/r2JzCCuRaffc=;
        b=0YZFvG6tkS/IWg3rELBG3ZMmndIdmrXsAoSY/Exg2ehQShGZ/wDHCN2+mMFwitQQMQ
         JdJkBLJPGkdGrh9osOm8u9M9sZOYu28m+0n5hIs0BIaViZA1/1H1iAG7niq+nTskfbtI
         jVp6SDlzhMVaQSgSxMGv7E3Oq/tzcRLaoxENiBC7HBkPDzZDuoLS2D4pyTgi6xzOml1o
         YYFQ+tsTKqvW6K2RNrH520yQdMQaC+ExAMi6B01+PnJAGDFogLFcraZjZ9RWgw1C3u2p
         AkyHZ7BleGFSfeXiIHLbedq7xq4h9uay1l3ZvTKF0IwZ49pK7dBLtq5g3piWWDZWL/2t
         7gWg==
X-Gm-Message-State: AOAM530LSM5+f2hds4w2Key3FxxXQkAZ0v9l6Ciponbc3Yy7F2F2PSD+
	D8FMH7MU+L0Mop4m3MItH5afzw==
X-Google-Smtp-Source: 
 ABdhPJzZ0GuQjsbAgJICV2Cs+0hc3movCzVzMkdfe/ZGNhTUkibTFboToZYhxk7g/mp1Qju6g4EPNQ==
X-Received: by 2002:a05:600c:3545:b0:394:39b6:b848 with SMTP id
 i5-20020a05600c354500b0039439b6b848mr4723766wmq.181.1651608595022;
        Tue, 03 May 2022 13:09:55 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d387:a418:2b62:bd29?
 ([2001:8b0:aba:5f3c:d387:a418:2b62:bd29])
        by smtp.gmail.com with ESMTPSA id
 e2-20020adfa742000000b0020c5253d922sm10020165wrd.110.2022.05.03.13.09.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 May 2022 13:09:54 -0700 (PDT)
Message-ID: 
 <d0d3963e7dfc901943b8d39135dc012d90bffdb0.camel@linuxfoundation.org>
Subject: Re: Maintaining ABI Compatibility for LTS branch
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, Paul Eggleton
	 <bluelightning@bluelightning.org>, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Date: Tue, 03 May 2022 21:09:53 +0100
In-Reply-To: <184135f1-502d-8105-9269-dcbb67ec98e3@kernel.org>
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
	 <7c96d7c727b9f7c4e18995d22501059e35c20942.camel@linuxfoundation.org>
	 <058e253b-b2b8-230b-2af5-c3cb4e93b743@kernel.org>
	 <1077615858f490216857759e0440dd4f618fd798.camel@linuxfoundation.org>
	 <7e00bad7-2244-42b5-cd06-b15ef4ca055b@kernel.org>
	 <f1e7b4732ea04ed7f591a2ea38198ca282bf38f0.camel@linuxfoundation.org>
	 <184135f1-502d-8105-9269-dcbb67ec98e3@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 May 2022 20:10:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56986

On Mon, 2022-05-02 at 17:44 -0400, Sinan Kaya wrote:
> On 2/9/2022 4:38 PM, Richard Purdie wrote:
> > This probably does need a discussion on the architecture list and we need some
> > discussion and decisions about where/what buildhistory could/should do. Adding
> > this to buildhistory is all well and good but we don't have a meaningful
> > integration/monitoring of existing buildhistory issues in our
> > autobuilder/workflow today even before adding new things.
> 
> I was hoping for free cycles. I didn't get one. This will be an intern
> project.
> 
> The way I'm thinking is to have the ABI compat XML be part of the state
> cache tgz file and come up with a CVE check kind of hook maybe called
> "ABI check" that will start flagging problems.
> 
> Would this be a better architecture?

I'm not sure it would.

Shared state works by computing inputs into a checksum and then using that
checksum to access the cache. Finding a "previous version" or a history to
compare to therefore isn't a good fit for it.

Buildhistory does fit much better but isn't scaling in a controlled way and I
think we need the architecture discussion and an agreed plan rather than trying
to tack things onto it. That does mean someone stepping back and considering the
various needs users have rather than just an isolated use case.

Cheers,

Richard



