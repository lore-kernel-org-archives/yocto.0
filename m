Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5053DC25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 14:44:27 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.358.1716475460723190419
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 May 2024 07:44:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ck2y+zCa;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51fc01b6fe7so6822436e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 07:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716475459; x=1717080259; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CkFjJiwRZM4+tLbCxfnynVPk/Rr1zPMIz9q8xBgMgh8=;
        b=Ck2y+zCas/5L4eZtXfcP/J4AFZXPvLIYSUbiI8BC27jya3yZDqOe2HZ6/37he+xN0C
         vFB1DKT/30dNpR7JSdr7OANtq3yBiR5dxi+vDa7Ndcgf8lvP3SftxI3F7YSf2HEWYZ9Y
         enRwTRUXB8X59uF4TzFshiAJH4s9dX8hJgE6MsdQWlphy+zfqm7M6sQv/z0QTRfYlPzg
         C2PIGQ4L4UfMTa8/6NkDFfUqZxpCK+Ptn+6nPsq1nRoSgk22Vt1oSkfOcpnNbmcjtt1m
         /ozT2pCzQ53AoLLGrAhuJ6SMPpo8ZoRvyCCrMv4GTTIOuZTV5qih03Ugp3HBuOqL0B8f
         I27A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716475459; x=1717080259;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CkFjJiwRZM4+tLbCxfnynVPk/Rr1zPMIz9q8xBgMgh8=;
        b=kTcrrJuAhVPgE5qTURnHIuUyXMLqlMR+0W7BB6BAkeyz7yCMRCVaRgu7st15IyFbUx
         sBuxunnerhHD6fO15JDV0xglWMd5bSPap3FfyEVv/65CRTzLOQkGIn36A24rOKyHj8uW
         gtQ84//yLorDhWX4HhslsPsBBM4TickpsASrbXHGLbnRwVt3ovxS6jXJYlq57FS+QUCZ
         q7VySEb575Fv+GttpYiCbgjTqJc3P3C52zeiYXUEGYEI5eZ54bEfS4S8B01C8jy7NoDN
         jZYKdgzyA7la27Mz/4ZygR09BMxQVJ2u+zv45G+RfBUmtgjeiQhzC/5mD6lmgKRmdpa2
         zGEg==
X-Gm-Message-State: AOJu0YzijoStcmYxMHt2kH8akYKUPyzJx2HdTqA30yCVSpJkLBOyPxop
	XQDsgFYsxDfKg3JMCeqedk7thdNRGA44sXrLYeHtxUAv2FWynx3jPoN5aIhK7M13sXyEw53jde/
	XppexwH8u+rc63btuUAXX3KmskvL69w==
X-Google-Smtp-Source: AGHT+IGWhLTNuvA2CIZsc956ELULe+Qr908RvQetKKv4N+RHvtZlCfx5rLxX3lmpUYnkvwLa//CtN5I4T+MRhozUsRE=
X-Received: by 2002:a19:6915:0:b0:520:b0fe:6548 with SMTP id
 2adb3069b0e04-526bf546086mr3114330e87.64.1716475458572; Thu, 23 May 2024
 07:44:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ0N1+TrPu5Yfrr3zVqMP4UZC-R9=C-hE2Cv2zUH=y=4mVr-NA@mail.gmail.com>
In-Reply-To: <CAJ0N1+TrPu5Yfrr3zVqMP4UZC-R9=C-hE2Cv2zUH=y=4mVr-NA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 May 2024 16:44:06 +0200
Message-ID: <CANNYZj9mokexRqpZ2qJS1u-M8kuMHC3JCnX97bOjYx5aa9Y2dQ@mail.gmail.com>
Subject: Re: [yocto] Run a post-processing step after image generation
To: yocto@lists.yoctoproject.org, jmeyron@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 14:44:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63185

One option is to install the files into sysroot-destdir/ (there's a
way to extend what gets copied there beyond the standard set of
headers/libraries) in addition to packaging them, then make a new
recipe that DEPENDS on all the recipes that do that sysroot
installation, and then it will have the aggregated set in its own
recipe-sysroot/.

Alex

On Thu, 23 May 2024 at 16:36, Jocelyn Meyron via
lists.yoctoproject.org <jmeyron=gmail.com@lists.yoctoproject.org>
wrote:
>
> Hi everyone,
>
> I'm wondering if there is a canonical way in Yocto to "aggregate" files installed by recipes and running a post processing step on them.
>
> Let me go into a bit more details by mimicking my use case:
>
> 1. Let's say I have some of my recipes in my image which install some HTML files BUT not in my rootfs (you can imagine they end up in ${PN}-doc packages)
> 2. After my image is built, I want to run a script on all those HTML files to post process them, like building a full website out of a template I have on my computer/git repository.
>
> Does anyone have a "not-so-dirty" solution for that?
>
> Thanks in advance,
> Jocelyn Meyron.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63184): https://lists.yoctoproject.org/g/yocto/message/63184
> Mute This Topic: https://lists.yoctoproject.org/mt/106263443/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

