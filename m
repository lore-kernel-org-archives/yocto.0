Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61671C433FE
	for <webhook@archiver.kernel.org>; Thu, 11 Nov 2021 07:45:01 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
 [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web09.7697.1636616700526851940
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Nov 2021 23:45:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WVWNPM5N;
 spf=pass (domain: gmail.com, ip: 209.85.219.176,
 mailfrom: marek.belisko@gmail.com)
Received: by mail-yb1-f176.google.com with SMTP id v64so12987816ybi.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 10 Nov 2021 23:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=m2sMCfthd5BjQX2ZnxJEAbkHd4w7PjeLaFvZI0R3Drk=;
        b=WVWNPM5NDfvbXPQkHW8jNqg8Cv7eV0lh3vxjocByGZOU8T3sv0XjulzSpKYurKeb2d
         xKXvjJf/Yf1/MsBoAq/Bq4d4D2PhThY4rmEnyuva+zBYxKzMItDLNVVLyyMZBFwrqLZB
         4AfRmXmt3D/EtzLwj6FO7b9WIX+QuZnXqlObzgShxHj801n3RgA347w7uloL2OL+tRgM
         DT8Qw08w7wzN2b16H6p4cpHkNB9Ek5tJQzy67+8IwqFoK7qo4lVbC0rnP1NU4uUY5x5W
         c9d8TJiewDj0XtoZhWT795TMPuIjf89Mjibs3FOeJcInPu/UD8LF4xnfnLwV1di3AC4k
         xLQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=m2sMCfthd5BjQX2ZnxJEAbkHd4w7PjeLaFvZI0R3Drk=;
        b=TmrKxXW/qowh6dS2L0l+k7rdYmCzFuf8I+rt9fJJaIeKF1YxrbYnddiGFePFTk/lnX
         D7qVe3M30GYO3GweNZ8YlwB2BlrCRzmIz3M21oA66eUVnvENAVRbVJnEEIDTSMMx14td
         5ll/5eAUoXymgWfFETOYNNXDhaiEwPqxST2Rm5SBrBlK2b4PTPdY7gn1cnwHYeq3oN0m
         dHS+JoAgsie0/SOJ1vKshR8cnTqADTMQPrIPvPXwGdGFaf4s7pSCAPpReKGdyhuTx+XF
         4yzuDwPmnjdL52YJStUiEuSESZWLzBpF0mGIbTFMkaYeOZbPd4vG6rlAUVBRZZjn1JJb
         LnXA==
X-Gm-Message-State: AOAM532V6A32RES5HV46z28DijjimD6h2jd5sgdUdN0C2D/SciS/1QAy
	HO/Le/OTqeZ74RhjL2gh3Poc4Wty/vkSkeDs4KhWBsg8
X-Google-Smtp-Source: 
 ABdhPJxLPzzzWd8qipGlgXAf1NFf/OJNrGKDkXukF3B8NozsZFo1tn2eHohK5tZpTpIe2zfWgEjHJ92LGt9/npJLEoA=
X-Received: by 2002:a05:6902:704:: with SMTP id
 k4mr6654009ybt.201.1636616699383;
 Wed, 10 Nov 2021 23:44:59 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAAfyv36OOxr2XHq6bk=XrA829X+kEdx3pdv2WoQytW5A3SuxCg@mail.gmail.com>
In-Reply-To: 
 <CAAfyv36OOxr2XHq6bk=XrA829X+kEdx3pdv2WoQytW5A3SuxCg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 11 Nov 2021 08:44:48 +0100
Message-ID: 
 <CAAfyv34cx7i5HHiHEOYTK1-2eBywBTRv6jB8RcD86Q5mRQJvRQ@mail.gmail.com>
Subject: [meta-rockchip] dunfell: u-boot build issue when added patch to
 u-boot
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 07:45:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55309

Hello,

I'm trying to integrate mender for tinker-board-s using meta-rockchip
dunfell branch. When added meta-mender which add few patches to
u-boot I'm seeing u-boot compilation issues like:

Error: SPL image is too large (size 0x11000 than 0x8000)
| Error: Bad parameters for image type

Error is clear to me but patches which mender adds are related mostly
to the environment so I'm not sure how SPL can increase size. Any
ideas on how to resolve this issue?

Thanks and regards,

marek


--
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

