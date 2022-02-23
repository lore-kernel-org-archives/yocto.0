Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC8E7C433F5
	for <webhook@archiver.kernel.org>; Wed, 23 Feb 2022 17:48:23 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web10.11166.1645638502358992801
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Feb 2022 09:48:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bGxbrrAi;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id bu6so9635510qvb.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 23 Feb 2022 09:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vRlwRpPzUEC/gOlL/vTD3OB4zTYH75JvKUgz+zq4AuQ=;
        b=bGxbrrAiHOF9QlSAx3oQJaeksBIycKtxHxTNealzDwxCQgdqUEZkkPs+LVk9AMjkEy
         rfQ5n6Lfl9uUAnn/vEarajgjpVNDgtySoMAPJp6VF8O/ZRwWyNY6Tn2jw/wteyzx7Tsd
         xreJiH+fiPvBe4da6nTpGzrC67xL8hTR3TcXpnq7D1uHw5EAEP8qpqNcNsGDXT1oGaxp
         /s4jyG8eVWkNRhdG6CH/gqDRsG2s3bzWRPhHhp8wD4lcryd8q4aeWAt76vLmWC1Fo3qb
         6Q+4cmfCukouxbcwXvWy7PC3Kzm44DcWPaB/d+pGbFNOLkNzsGAz0vFgnMfOdMnfEywS
         QSbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vRlwRpPzUEC/gOlL/vTD3OB4zTYH75JvKUgz+zq4AuQ=;
        b=djEFeQ5e+QSdOXVBoF3ZHx2HgUOmqjGxhD0FHh3rEf6yHfttRXYZkWA1D/K4dIkjps
         roEm32Q4+kjc6a+7wQ7C9ziY7iAr2fn+Kbzp/+St9laza/GyJPaoJN0AltGu2GWQdTs6
         q9tv9JrXLx18o4iqVf29BNpJM3t3FBHxGAnrTDHeNNp16lIaZdZnBkE2chj/VFGCw6F+
         pjSvZGxAGPP5WxL3422sTGa5DWPWk7ARO6fo2WC8ZJfv1rfWQfCBRDuEncMd6JXBfwRB
         HNG3FA7TaQZJYAlD2pIt4znBkdI7vxM9ZYhLwtjTvi0yF6L7HNRDhDIsV1pfQ52AI/Ii
         KhJg==
X-Gm-Message-State: AOAM530OjYbWlA6FVLp5Mh/S1M48Kj0Jv4owjXHMxb2LUPJP7Vv2iqK/
	y2vTkCU5oFyQyL2Lfls2TjOtbzn2QOHqYgSsU1hhjYvWAhI=
X-Google-Smtp-Source: 
 ABdhPJywIRZauRiu1i6BrMtI7/my0HosvXDyaVM42fyOp83LM3vrpRCFfo4WvkQ70Zf4RpQWf9xU9Ur2Quh6xowt6EQ=
X-Received: by 2002:ad4:574a:0:b0:42b:ef56:c2a4 with SMTP id
 q10-20020ad4574a000000b0042bef56c2a4mr762508qvx.16.1645638501375; Wed, 23 Feb
 2022 09:48:21 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAMKF1srXi0A=weYdZLq2Bn=y=oZUBvkCiF8nTdJVmw8u2iBf=g@mail.gmail.com>
 <8041.1645600061056533580@lists.yoctoproject.org>
In-Reply-To: <8041.1645600061056533580@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Feb 2022 09:47:55 -0800
Message-ID: 
 <CAMKF1spN+D-B+nQF7ZiaEM2Dd_Hc_=aEoVqp9fQM58o-ub1XFA@mail.gmail.com>
Subject: Re: [yocto] Building Yocto images for RPi CM4
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 17:48:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56268

On Tue, Feb 22, 2022 at 11:07 PM Sourabh Hegde <hrsourabh011@gmail.com> wrote:
>
> Hello Khem,
>
> I agree. But since there is no serial console support available on my IO carrier board, I can't see what it prints.
>
> Is there any other way to debug?
>

if you have a screen connected maybe you can enable verbose options
for kernel and bootloader and see if it prints stuff on
console.

> Kind Regards,
> Sourabh
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56258): https://lists.yoctoproject.org/g/yocto/message/56258
> Unfollow This Topic: https://lists.yoctoproject.org/unft/89328890/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

