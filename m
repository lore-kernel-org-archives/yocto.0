Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BADDFA3744
	for <webhook@archiver.kernel.org>; Thu, 27 Oct 2022 20:49:50 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web09.2532.1666903780966289467
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Oct 2022 13:49:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LeUAUJ5h;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id d25so4301016lfb.7
        for <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 13:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bWKvy9KBsKJi/9MIGfkgL0zxGwls+8QphNwtwZDWnSI=;
        b=LeUAUJ5h9mYX6vNFE/pWYrvFQo1OAAOWFY4Lu4yHYB1u2NZhbqfDisgU9DXPnOopNj
         PU/eJDl5SsdErpHVIUKU6TjF1OCK7Mt8uI7lLPZMOukh/CBwmBbqHheHnwB3DemkCKs1
         19CxL2X4/Ym8gPOY5blHLiw8H/DWDNFT4xmdCfc1mTanP3gy6mByyyHzHou9yGmlElI6
         rzoaJJZ7DGmDjq8EANRpKKrNHXf3mtN5/T6utAFfX/OldK2eucjKvZd0UaFc7WQYEeer
         jxqMH6YDtSSr6KbTbeRn3upZM1fijpDSjHiUljUor62oxR1z2hh4eWPXLOMm7ymv1Y6L
         EBsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bWKvy9KBsKJi/9MIGfkgL0zxGwls+8QphNwtwZDWnSI=;
        b=gScyCfoBdm7JZ183LHlWF2rtZkvYvygC+JjLyffu2CaB+Yio3J87y25jfJq6zv8R8g
         eK9JLIyh9bqBMQPIox8qtA5mpEy1U+34DioHviBNCQEKilNrUlFxITi4LTZY9uE9oVJP
         4JlyBW6fStRn/AqFXrhM+YE0FFxBOhVjWxKty1V9tVVrwbR+973RHYVkrYYwp5TnFvlO
         X4gYvICODsPWHTsbPUZRR5ndePar4ccZi43JioeZdyY1Lwo4AGtSMSG4I4hBZ0G8G1W5
         JcQ6b9obNMyyJHX89wekXnGnMh+qTdIbAKY0FAGvVslxsv8PJd3zS4d/HO2cP98LtqX7
         OWpQ==
X-Gm-Message-State: ACrzQf2QN66hI/+IwhWpcXfwP7QAM/JM8wbbhqV7sXdUM3NpdKQeR77S
	aHaEn0klxoe2p6uBdoFHvTojKpfDXNagELPH3tU=
X-Google-Smtp-Source: AMsMyM6JzexB9I7v43QC7xHtBPBZYApxckmf3hdvlgxEZz11AKnwdkmtDUbmIUQ6Pw3kydeL3eFDg36k7i4FCXWHgbk=
X-Received: by 2002:a05:6512:398d:b0:4a2:7d72:8629 with SMTP id
 j13-20020a056512398d00b004a27d728629mr17955078lfu.445.1666903778999; Thu, 27
 Oct 2022 13:49:38 -0700 (PDT)
MIME-Version: 1.0
References: <LsVs.1666893088601518070.INID@lists.yoctoproject.org>
In-Reply-To: <LsVs.1666893088601518070.INID@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 27 Oct 2022 22:49:27 +0200
Message-ID: <CANNYZj-kF-uECoEEwDB0webSTSji24JgFjnFY9KbP5=4Kty4CQ@mail.gmail.com>
Subject: Re: [yocto] Help with setting up a PREEMPT_RT image for BeagleBone
 Black #yocto
To: mpham20@gmu.edu, Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 20:49:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58428

On Thu, 27 Oct 2022 at 19:51, <mpham20@gmu.edu> wrote:
> linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)

This is the key piece. Beaglebone target only allows a standard non-rt
kernel. Perhaps Bruce can clarify the steps needed to add
linux-yocto-rt? This is not something newcomers are expected to handle
without assistance.

Alex

