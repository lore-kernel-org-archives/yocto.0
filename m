Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C631AC433F5
	for <webhook@archiver.kernel.org>; Fri,  4 Mar 2022 08:10:44 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web09.4844.1646381443565758580
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 00:10:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IAiouibN;
 spf=pass (domain: gmail.com, ip: 209.85.222.180,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id c7so5871762qka.7
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 00:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZLgVTN5J6LrXXwOQzQf2AjWN8cT67uZwc4vYeErE3yQ=;
        b=IAiouibN9VMLdVT05jzRJtlvwkDjJrXayOWgXrEBTQgeCuhx0TxrzLHr9awZvThfCZ
         JTXokOpDeI4/eDrt2mAeUYa/HpRwGPYyzt9Ho1gVzbojDJKVu11eFKknQjm0t+Y1Fn2C
         ZAFJQetGLQBGfRbkqqouuXQEv7Yh6MuMKV2YbAZ7b0nI1tqm4yQki5JVEpGJiz3e5Qg9
         F5VJ0QOGRCqfd2n4CNfotmJJA6w623gOhp2bWMF6eETkMeC6JMaZUhRjX216q8G30h+P
         zVGeu+uXm2ue1ZIRPJROkmCD5/5jO4VElp2D/ubTc54Nyvarn7l1d31it6UXw8L9zZZz
         mdhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZLgVTN5J6LrXXwOQzQf2AjWN8cT67uZwc4vYeErE3yQ=;
        b=4LjxA1IOCqkTFoA/oYa69vCTdnRLL4KrIkTWcRHxNmBnfvryWUfYmGaW6wM7jbk2RG
         dK+9QnJl7FUXDq/i6T2L8yOc3mAtiJ0pj1mcw6tuQVri+V9u8vrydrkWnM3mAEO/kOMN
         oq8YQNxVj7YyCC8k3oDUWcYV2vjRYysvfgkwfW5ZbMdE24sAfo8lStEwZT7s/x40J1lw
         k4zSNtP46ucbP7vmWHEuXjguQaL7uHh+Is4MXm8pI1ulSBhsFHEYwNa/Xq4wiwQF8l4G
         8u/sGwl4/ytVWiVes3KiYotHCfJM/FXrmzGOrBBO6wERw91Dq5umcEDqG3J5mhG2IH6q
         VoEg==
X-Gm-Message-State: AOAM530QK6LuYrPtZTDd0XvY+N4Q3b+xIMyxNRM9TSzyliMbWJ2jAviD
	X0y00yA/pANiuRktMD9z3DE+KVy/7DlIVbZocT4=
X-Google-Smtp-Source: 
 ABdhPJzKHTOWBS4ZeJ7VMJhlfGm4mAc6KaPJq1PMeLvKKaSC6wTKNpZHCC704/yHQMF32y0JC/TWvG4SmT5Lw3YodOE=
X-Received: by 2002:a05:620a:817:b0:648:d856:3fdc with SMTP id
 s23-20020a05620a081700b00648d8563fdcmr1799651qks.180.1646381442628; Fri, 04
 Mar 2022 00:10:42 -0800 (PST)
MIME-Version: 1.0
References: <VWIU.1646381246904220817.zFnA@lists.yoctoproject.org>
In-Reply-To: <VWIU.1646381246904220817.zFnA@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 Mar 2022 00:10:16 -0800
Message-ID: 
 <CAMKF1sqeXvFA1KLzmAsriEDm-rwJR5a6=m0KkWqZ6ji+to7mCQ@mail.gmail.com>
Subject: Re: [yocto] How to build flashable yocto image for amd ryzen 5
 #bitbake
To: Prashant Singh <prashantsingh@dialtronics.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Mar 2022 08:10:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56365

On Fri, Mar 4, 2022 at 12:07 AM <prashantsingh@dialtronics.com> wrote:
>
> Hi Team,
> I'm need to build yocto image for my AMD Ryzen 5 x86 machine.
> I need help to build one haddisk flashable image.
>
> Please assist me regarding this.

Please start by reading this
https://git.yoctoproject.org/meta-amd/tree/README.md

>
> Thanks & Regards.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56364): https://lists.yoctoproject.org/g/yocto/message/56364
> Mute This Topic: https://lists.yoctoproject.org/mt/89545006/1997914
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

