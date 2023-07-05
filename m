Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DE9EB64DA
	for <webhook@archiver.kernel.org>; Wed,  5 Jul 2023 22:29:56 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.8537.1688596195817119794
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jul 2023 15:29:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=CSSGtKv8;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-40292285362so820411cf.3
        for <yocto@lists.yoctoproject.org>; Wed, 05 Jul 2023 15:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688596195; x=1691188195;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uqF5ijNo2NmAar1TLpipUUFKFAghGk2UTjAXLgV4b0M=;
        b=CSSGtKv88QRzcFih2UmjQOi6fL0Hj83ajbO7OPqJy+hVRPRyPnJriznnX5Qh0sQOzz
         Gbf4rdkepDQQHr7hqv5fPsPJ6pnA/9OECVY2OR4HHuduMrQGZTMsauJhdm0Sm+fNgyWO
         4OV88nVGuYmxjoewXcVLrxK2mv5dI9Wy0rrSrinHSPi3gKPSc4Sp7SV/EIrvukf8fTIC
         vsftBwAdLwUcdnu/ho3j+DJyK2FjEqNCyKAO+lcSwJO776B+wSkzeNm/eSGFZ72sMoqV
         7/Ity6ZR06Pq0kJwEvDmuPiiPQ7sAA7UEQhFiYNi0M1izuPW4v/31ZhasZdd5D1NdHOX
         9SpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688596195; x=1691188195;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uqF5ijNo2NmAar1TLpipUUFKFAghGk2UTjAXLgV4b0M=;
        b=XAh2t2kRMaP2Crj0eD/V/TaH3EMBXFsonRHDbnSYTlTgZjmr55pWwmms7EkYZn44qR
         YpR//DYRjnSk0pnpttqMDsN3ua1KUrVDE2nKg0TeHwPEla+Pq6ANMo99BQSygZkC4QEF
         1A/+UD4LZ0WIFEK5PP6atJBOdRDjWp+YotJCXzVtlTXPtz+QfzNLiUu93C2HVSabMf4/
         z8s1KTfGQddNvmFfbtbjs7XI1WR59eEkmdL9WC3Dpb+ziprXD3RBh8EmUH2Wflb5moXO
         0RiNnJ31ESKC4ZsMXNSen5T3kZ+rwwbKMqoXn6PIR6Vkds6dmDkN68TJ/SfYaA8b7tO7
         GaDw==
X-Gm-Message-State: ABy/qLaWwl6z4Jbp8JNVX1x3Eb/chEsJ8cYw/Cg/yF8zLdzGDBPOQmG/
	b+75elqw6x0ezwHEDvy0XeY=
X-Google-Smtp-Source: APBJJlHBuIxrq7uT8vd7/ivnLTc9PV9y4wZlT0MVvzs6LVMjF5mWrcRL9NsHXEcCRnE+wIvjYt/WkA==
X-Received: by 2002:a05:622a:15ca:b0:401:dff1:75fe with SMTP id d10-20020a05622a15ca00b00401dff175femr232972qty.12.1688596194844;
        Wed, 05 Jul 2023 15:29:54 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id r15-20020ac85e8f000000b00403214e8862sm9691466qtx.33.2023.07.05.15.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 15:29:54 -0700 (PDT)
Date: Wed, 5 Jul 2023 18:29:52 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Martin Jansa <Martin.Jansa@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip] [PATCH] trusted-firmware-a: add
 Upstream-Status to .patch file
Message-ID: <20230705222952.GA7571@localhost>
References: <20230626190720.2565542-1-Martin.Jansa@gmail.com>
 <CAMKF1srH_AjqP0KYLFeDDSyQz0LFaSJ0amBviu0cwCOTGuEVSw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMKF1srH_AjqP0KYLFeDDSyQz0LFaSJ0amBviu0cwCOTGuEVSw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jul 2023 22:29:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60520

On Sun 2023-07-02 @ 09:39:50 PM, Khem Raj wrote:
> I sent a similar fix few weeks ago

Sorry, I saw the patch, but then forgot about it :-(

I gave both of you credit and applied it on master. Does it need to go
anywhere else?

Thank you, both, for the patches!

> 
> https://lists.yoctoproject.org/g/yocto/topic/meta_rockchip_patch/99688580?p=,,,100,0,0,0::recentpostdate/sticky,,,100,2,0,99688580,previd%3D1688329845307017082,nextid%3D1686842669287400371&previd=1688329845307017082&nextid=1686842669287400371
> 
> On Mon, Jun 26, 2023 at 12:07 PM Martin Jansa <Martin.Jansa@gmail.com> wrote:
> >
> > Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> > ---
> >  .../files/0001-dram-Fix-build-with-gcc-11.patch                  | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch b/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
> > index 14defed..94ca8e2 100644
> > --- a/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
> > +++ b/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-11.patch
> > @@ -12,6 +12,7 @@ plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c:781:11: error: explicitly a
> >                  ~~~~~~~ ^ ~~~~~~~
> >
> >  Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > +Upstream-Status: Pending
> >  ---
> >   plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > --
> > 2.41.0
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#60451): https://lists.yoctoproject.org/g/yocto/message/60451
> > Mute This Topic: https://lists.yoctoproject.org/mt/99795035/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

