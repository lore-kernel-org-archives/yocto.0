Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBDCCC07E9D
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 19:02:45 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.15133.1664305364079093915
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 12:02:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hxnu0Lsb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.218.51,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ej1-f51.google.com with SMTP id lc7so22788657ejb.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 12:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date;
        bh=3MqPyH0T9xZkusVFNcBpZv+SxAZXcPeZJO1ryhscJJc=;
        b=hxnu0LsbCW6qFGaXUuF5PLD5LIi8X+8Z8UVOYvrbaxQ9VSCMLocilBMv8sus+CP1De
         0dnIiCwkKhwBsjDv/NBQeEmJ45+bANKbGPWKnnqa3cnGKlgCoI0Uuj6BFvmlnv6g/Phl
         CVgt+Y4W3kzKkn0ZmsyDIz+bSKDPA1cajwDKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date;
        bh=3MqPyH0T9xZkusVFNcBpZv+SxAZXcPeZJO1ryhscJJc=;
        b=yVubs4u+S59/9zgHFbMVKAnfqpYZ6Smy7QS/H+PWlJfE+8WK2I8/O41G80TM8DcgiW
         FOKNEj8wa1LsI1ullVgDSmCgOVFmf+vbDM25zTlKZNR2RmLNVg3ITeehMFlIC1D7scdK
         SUL46tUrrIYVHOcBntOcPWSrWj1M3eLXOiUC37eB0W+uNF3rQIKRAgpWy197Z5dVchwd
         aiLHG6lhDpYBjANP63CI0MoSUff7My0kx5NTDmyrkF8KmOt2cYZwUcTG/o60xSSUL0JB
         zdga0Y9gE17E1tFFZwHkAnb8cY0okx8ZA6R/Wl8TBPcXyVwRCSJM/IP7W6kFypZnoQq/
         LWMg==
X-Gm-Message-State: ACrzQf36D/B7ClY7/aVQ6WnvEGV7agLSXkY2Ow09vbE9WRcFsmNxznio
	SFyT9t0z3/01gCE/t29IuL+QrQ==
X-Google-Smtp-Source: 
 AMsMyM6KicvEmlsJSalCTQ6px27bNLrMOAsSCoPL+VS7Y4ebpp/IjWmJ0UPEgql4kFkArzIkE0h6Vg==
X-Received: by 2002:a17:907:a40a:b0:783:afc3:fa34 with SMTP id
 sg10-20020a170907a40a00b00783afc3fa34mr8253707ejc.643.1664305362497;
        Tue, 27 Sep 2022 12:02:42 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d4c9:c3bb:4c2d:18a5?
 ([2001:8b0:aba:5f3c:d4c9:c3bb:4c2d:18a5])
        by smtp.gmail.com with ESMTPSA id
 c2-20020a170906d18200b0073a20469f31sm1201574ejz.41.2022.09.27.12.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 12:02:41 -0700 (PDT)
Message-ID: 
 <0124314022d5ab2c61ecdbe42819b6d5b9f2a950.camel@linuxfoundation.org>
Subject: Re: [yocto] Builing Gcc fails Poky
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: PHIL <heideggm@hotmail.com>, yocto@lists.yoctoproject.org
Date: Tue, 27 Sep 2022 20:02:40 +0100
In-Reply-To: 
 <PH0PR84MB183560163B152E0F72D6CA8EC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
	<PH0PR84MB1835B452A0D3EC6E973596CAC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	 <e7d7e080c94d78f6cf9711aa28ecdf484a9ee491.camel@linuxfoundation.org>
	 <PH0PR84MB183560163B152E0F72D6CA8EC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 19:02:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58189

On Tue, 2022-09-27 at 20:51 +0200, PHIL wrote:
> Am 27. September 2022 20:40:31 MESZ schrieb Richard Purdie
> <richard.purdie@linuxfoundation.org>:
> > On Tue, 2022-09-27 at 18:11 +0200, Edgar Mobile wrote:
> > > Greetings,
> > > Trying to build core-image-weston from current master fails for
> > > gcc
> > > 12.2.0-r0 with lots of linker errors.
> > >=20
> > > Names of missing functions are strange ala gen_cmulvnx16qi3.
> > > In insn-output.o
> > >=20
> > > System is an ubuntu 22.04.1 LTS Build Target is qemuarm64
> > >=20
> >=20
> > We build that regularly on the autobuilder so something seems odd
> > here.
> > Could your machine have memory issues? Do you get the same issue
> > each
> > time you build?
>
> What do you mean with memory issues? Memory broken? Not enough
> memory? The errors are the same on every run of course I don't build
> from scratch I just retype bitbake core-image-weston. Gdb also failed
> so I took that out.=20

I mean that the build system places more stress on the system than many
other workloads and we've sometimes see gcc failures like this as a
sign of failing system memory. Running memtest86 might show that up.

If recipe X is failing and you "bitbake X -c clean" and then "bitbake
X" and it doesn't fail the same way, that would be a sure sign of
memory failure or another hardware issue.

You can see here:

https://autobuilder.yoctoproject.org/typhoon/#/workers

we have Ubuntu 22.04 workers in the autobuilder and we build qemuarm64
here:

https://autobuilder.yoctoproject.org/typhoon/#/builders/42
https://autobuilder.yoctoproject.org/typhoon/#/builders/131
https://autobuilder.yoctoproject.org/typhoon/#/builders/127

so this combination is well tested which is why I suspect something
else is wrong.

Cheers,

Richard

