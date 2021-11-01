Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C8F4C433EF
	for <webhook@archiver.kernel.org>; Mon,  1 Nov 2021 22:52:20 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web08.1807.1635807139218731180
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Nov 2021 15:52:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SZNtuPCR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id
 j128-20020a1c2386000000b003301a98dd62so363408wmj.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 01 Nov 2021 15:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=BuJaupTCFIvRJgMmebuKtMh+p8m29y5gSkD7iX3VJjI=;
        b=SZNtuPCRfWrgwoKrByS5IWIjpZzeW36R0Q5WvjjTKYjLj4zdzBMC/i/eNWrZE6IQkJ
         tE+saYMqwn1lzXBCurtDL8iQTFLSGX+iAV32Uy3MaFKs/4YY0KIO1FdzuDnld2BEHgbr
         nf0CeGxiADdLmswRDQZpBdmC41SYiJ0dARLis=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=BuJaupTCFIvRJgMmebuKtMh+p8m29y5gSkD7iX3VJjI=;
        b=PR3vtgYxNIA0FaQRg/JjskgVUXDWdiv9VOLwnIHp/n6gSjfvdlYJZjuVpii6lg3TJI
         gkaFkiyUW2WdpT6EoNDBH0k8NZrohIu98V4aYqOP8TjHl5/Tssm7f+I/oU1rZ8H6xPEv
         R2hQkmQJQCmaFOpVgKCz9oUb8CQg5OMt5GEE4VzMaEN66zbXkdifjATpUW3+IvDnguMg
         kY02SW9FBVe7e7Y5MPKg+H8IjFDM0AvzHAIWZPIh3npRB+rZ5vhpb0mWxRkxPn8GfVrV
         XZR/x9EWUGS/zlPVuy+tryjROGEHJzIc/jhSKZPhEZcKOunkAe61WKWYzR5olS6isW0W
         AkWQ==
X-Gm-Message-State: AOAM533r8pm3VjAt9Fq2Zfb5w8ZLGWpDSQPklWlWgSm+UbFBZ1m2ZAaU
	W3e1Mk37X/0tpQJbyfZ+GwyyxA==
X-Google-Smtp-Source: 
 ABdhPJzRD98GV3jmHh4QhQpjSPbPlO6T5c3CuAp+eXTgDHAf+3EiuoUDaw1u2K3UtAYeiA0ILpVMcg==
X-Received: by 2002:a05:600c:24d:: with SMTP id
 13mr1893952wmj.156.1635807137707;
        Mon, 01 Nov 2021 15:52:17 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:e05:60cd:475e:19f5?
 ([2001:8b0:aba:5f3c:e05:60cd:475e:19f5])
        by smtp.gmail.com with ESMTPSA id
 w10sm14861036wrq.88.2021.11.01.15.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 15:52:17 -0700 (PDT)
Message-ID: 
 <af40bae3c3c249771f4d553d8f1754340c192cb0.camel@linuxfoundation.org>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Josef Holzmayr <jester@theyoctojester.info>, jchludzinski
	 <jchludzinski@vivaldi.net>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Date: Mon, 01 Nov 2021 22:52:16 +0000
In-Reply-To: 
 <CAEt6NwqSiEd3wX_6+-1p0V=y5aDGJ8JMv7RVJW3z7KSwU5H90w@mail.gmail.com>
References: <e26334762f4d4b2e7f0f12a0f429da14@vivaldi.net>
	 <CAEt6NwrQjy1fwr-7p+LeXn+rR_TmWS8Zz_EzTi80nvLE_x_xBQ@mail.gmail.com>
	 <7f8785ff1f11dbefb2082e739f20b515@vivaldi.net>
	 <CAEt6NwqSiEd3wX_6+-1p0V=y5aDGJ8JMv7RVJW3z7KSwU5H90w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Nov 2021 22:52:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55206

On Mon, 2021-11-01 at 21:50 +0100, Josef Holzmayr wrote:
> (re-adding list as I messed up)
> 
> Am Mo., 1. Nov. 2021 um 21:45 Uhr schrieb jchludzinski
> <jchludzinski@vivaldi.net>:
> > 
> > I want to build this image for a Raspberry Pi, which means ARM.
> 
> MACHINE = "raspberrypi3"
> (for example, pick your specific one like
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/conf/machine
> )
> 
> > Is that not possible?
> > 
> > That can't be true!
> 
> Building the SDK for an architecture other than x86 is not supported
> at the moment.

Not quite true, aarch64 is supported and tested as an SDKMACHINE value.

>  But again, this is about the SDK. And you probably just
> want to build the image, where the standard procedures apply. Add the
> BSP layer, set MACHINE.

Right, this sounds like MACHINE is wanted for raspberrypi.

Cheers,

Richard


