Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 051DCC433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 10:49:41 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.23570.1647427780080104488
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 03:49:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fbbmAcOV;
 spf=pass (domain: gmail.com, ip: 209.85.208.47,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id w25so2158113edi.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 03:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FifAax3+62RnA+eVIC0uHNQqgUrd2U5ygl/L117iZ/4=;
        b=fbbmAcOVTinMQd0SdEpZ838UInNXy/kZ62QqB8Mt+wTuX3RiH08YBHY/1A6Pc++PDV
         dEr36sS2cksfIaUPbjOVfl4Gljysw3WtSVZQroiPC2Au08qhYsbSqrFEni4hTcEynUCz
         XDko0W+XKdS7uZHMxcAXrfXAU4zNh79cxeAhHGci14v+XJ+o9idt6LtsNWZmMiG+m8tB
         Pgbr7E2NiqPGt+KX5z4kcvn6R4tvZgR/IiCFoAt87VRVRH0sLz1+i6Tp7k75ZBjE3lZd
         NeixsHcR823vtcBmeaV62FIk2zg/y8jrgO1/sKq1C8JufMQ0XHuKXDLaUcxn7ln8+mAi
         o50g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FifAax3+62RnA+eVIC0uHNQqgUrd2U5ygl/L117iZ/4=;
        b=o5aYRkbBxhmJTsoMH76rCWE1mezVIm5kEbP/T7CPTLl2vzpsLXIlFg8TjTHyYuQqOC
         bHSofnMGRGRY2WzuW4y1yfQf2LtQNrKSE5l/TK32iRyTUQj+50SDevZzTFjS1Q8g+LHZ
         Np3DrrVJwRjcch1u3Bnwcd36mSMbtI2oqsiS5Mj+Y0s/oZYOoFsSjiS3vFK7uWy+MQJv
         +p/6fsMk6lMEpvecljQDhoTh5ZkU7DfvdEzUp+W24U54n3u+xPKLVa9ZkuwbvBNBn8yo
         dPK7kYDRYWSivkwWcSgqWzk5YLrEwqyfN2CaJ6u2Q2CI8uuLnOxuOaj7+2qQw1g8K+Wh
         cFnQ==
X-Gm-Message-State: AOAM533pOHKC6lG/pSHACmP3MMirFpANRQb6SeaisGOLp/yA5EqSV640
	x+pPKyXh0kiJVvI2oC7zHYSs8AUh8Z8gdVJoepc=
X-Google-Smtp-Source: 
 ABdhPJy38W0/GSAXAlApKOo7eEj0PBs38q6kCAbvYcaU32eWoPXeAv18ma0ws+GB9jeDkVA/ruVjT+Tp7vAD5A/KSq8=
X-Received: by 2002:a05:6402:484:b0:415:d931:cb2f with SMTP id
 k4-20020a056402048400b00415d931cb2fmr29138610edv.287.1647427778247; Wed, 16
 Mar 2022 03:49:38 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj8C+A31qXXsy01eKO8V6uYnTP1fye8nfOK8xGhU7bwk+g@mail.gmail.com>
 <18958.1647426721935429314@lists.yoctoproject.org>
In-Reply-To: <18958.1647426721935429314@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 16 Mar 2022 11:49:26 +0100
Message-ID: 
 <CANNYZj80x0ctmqN2pKgythw2NOYChYdmY69wsUkheL63Txv60g@mail.gmail.com>
Subject: Re: [yocto] How to manage disk space while working with Yocto?
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 10:49:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56463

On Wed, 16 Mar 2022 at 11:32, Sourabh Hegde <hrsourabh011@gmail.com> wrote:
> Even after deleting build/tmp and build/sstate-cache and setting `INHERIT += "rm_work"` in the build/conf/local.conf.
> But still I am facing same issue.
>
> Is there any way to allocate more space to user in ubuntu?
>
> I don't have any CI build servers.

Can you show the output of 'df' please?

Alex

