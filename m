Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C893C77B7D
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 08:44:31 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.83546.1684140264850008043
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 01:44:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=JQsx8+34;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-4eed764a10cso14133368e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 01:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684140263; x=1686732263;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hlBrkVyYejSyXAkyn2zL1EPC2UPuHWRggD/+KYx4swE=;
        b=JQsx8+34YPeNh42Y/zS8S5Fg56tvymRyeumqFxdunSUCOVEXVgf2qTShUzSam6ef01
         RrGpEbm0LANyAgx9qejK9StGHqpD1/ahDR5utPkXkyYVmlocuvsWcOWFaZxzkFnM/s7M
         rFxU44xZhvnboAp9A2PsbvVCbO+Zi8YGs16l/79476rbs8AR9MvE+uf6dZnRsxOFqdta
         BH+60ul8n3xOKG9iALsM7niwX/dZxIwA6ix6+mc9KArmP/JZP1Uw7mYxX1lFwvCalMjQ
         +IELtRbbgfpZfjA/Ac/FngkvAJ6y0rDr91NAxrCPIG8vk/b7nTlx+mptWdmGgw+UBRuG
         OMdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684140263; x=1686732263;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hlBrkVyYejSyXAkyn2zL1EPC2UPuHWRggD/+KYx4swE=;
        b=jrt1wtK1o/obIrpKowClX5yyesIvoSPch6+Y8Bao9fvZLj5BhgHhdubhZJYHUNb/UE
         rixkgq1/VjCRuY4RkHQbih1/+dX1PtZr/H2ZaB2ZflMj2Nn+/nOy01mRmJ6BAQGnxwaZ
         n5JUR3rsoxqAGI7fWDmJITi6MBnDqc6RHvoJLNSES+3Jc3e++TfrPgv96eettfy6jOrh
         UzeFzhiyvTxU4P1bn/bL4iFooEIBQMQvn7YsV4UKcRFkjwIPXvA4bEeR1/vk/058TeYt
         rzWaAvuaAfkuqRQJZD1jHdHGLaVnTywQL3OCKfLifi6GEBCNw9YSSZ3JHe3SpuzUVKNN
         HVtw==
X-Gm-Message-State: AC+VfDxA9RuZUEj6OwkWEp6DGlQHLXcY2dTOWDXXKui7cd2zDBEwIYZG
	j2+nT5zvHVaXRM5KrQGIWtQg1dQI9BiT7gB5k/1d5v8m
X-Google-Smtp-Source: ACHHUZ52Wf87CiujoNKZWKhDP0mHY8u3EGc/NiWDp1ouHfgNhXA0mnvClyCcSr9SXZ78AgVnnfZqvOw/uxfA233/y48=
X-Received: by 2002:ac2:5ddc:0:b0:4ee:5aeb:e2f2 with SMTP id
 x28-20020ac25ddc000000b004ee5aebe2f2mr5871754lfq.38.1684140262799; Mon, 15
 May 2023 01:44:22 -0700 (PDT)
MIME-Version: 1.0
References: <CA+EiEZJrnJYYY7NMF521HemwaGKTFotkUdxC56w-qgYvm_j_Ng@mail.gmail.com>
In-Reply-To: <CA+EiEZJrnJYYY7NMF521HemwaGKTFotkUdxC56w-qgYvm_j_Ng@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 15 May 2023 10:44:11 +0200
Message-ID: <CANNYZj8LAkR1pmenJz20jrP0EL-Jac7vcSUx8xjQq6p79QxWBA@mail.gmail.com>
Subject: Re: [yocto] LTS EOLs
To: Tom Isaacson <tom.isaacson@teknique.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 08:44:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60020

Regardless of the current situation with EOL dates, the point of
upgrading is not that, but one's ability to fulfil current and future
business requirements and keep products secure. This is always easier
with a more recent stack for the target and tooling on the build host.

Alex

On Mon, 15 May 2023 at 01:55, Tom Isaacson <tom.isaacson@teknique.com> wrote:
>
> I was just looking up the Yocto LTS and I found
> https://endoflife.date/yocto. It says:
> 3.1 'Dunfell' (LTS) Ends in 10 months (01 Apr 2024)
> 4.0 'Kirkstone' (LTS) Ends in 11 months (27 Apr 2024)
>
> Are these dates correct? If so, what's the point of the later LTS
> going EOL the same month as the previous one? There's not much point
> in upgrading.
>
> Is a new LTS planned?
>
> Thanks.
>
> Tom Isaacson
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60011): https://lists.yoctoproject.org/g/yocto/message/60011
> Mute This Topic: https://lists.yoctoproject.org/mt/98893130/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

