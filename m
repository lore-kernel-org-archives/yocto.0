Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56602ECAAD4
	for <webhook@archiver.kernel.org>; Wed, 31 Aug 2022 09:42:40 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web09.23500.1661938958004463612
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 02:42:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VuhF0SIA;
 spf=pass (domain: gmail.com, ip: 209.85.208.174,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id bx38so13992534ljb.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 02:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Rj5qPWO8hk+A2T4MiK0pVbXgb2+Up39DIsIqQPh1xvQ=;
        b=VuhF0SIAsdhIG3byzpHQb9Ll+5xjohT3Mn6SfE+chPLA60iiUtBT4uFhgOOlAAMX2S
         zA925ZGALatd5Vg34tyFbPyoSn6QT+teXUgrpRNrx5Lm073d0Z+ik7/PJ9M3xkRAN8jd
         ReMCJhhckuOTPr7c8F6tbTKpEHFBR8T3GAzlztXPbh9Q4OsSQMm/CuvjckUz+8aGzqKC
         Gm9ZnLRZed3dP7xpuhDPBXYtgKhozQ5uRq78W9XP+1oosoZSXODAaGM4hP3aYO55hq3J
         14Dj/uWbNT619o0WEkihk4TQB8AxmDF7l96oU1y/ae9mlDtXNZQ2gw62C8Cqcft4o/JV
         V4/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Rj5qPWO8hk+A2T4MiK0pVbXgb2+Up39DIsIqQPh1xvQ=;
        b=mo0xuQwHhfYXxVzKf5HTwicmgNlvwMyi3BpH/6Aqx99OZIHZu0IpNtU9u+dQHuSrFh
         VCLB3VGVaH6Sa20E+gIecQPgXKX0QiuiwSLpYywkRshpyK5nGO2ZEP6MnWcqLhFclZNW
         rT+fSDx5WuWS/ruTY0C1BQp2AnbOm7aifYDfuxMObUzcZUvS4j2EBiBdv+q/SSKiuUoT
         iqYpVC80r8qFdZmoIcQfs0P04/aDWWO3HvHwHbYrMkoX7Zg2fZKKVAQDOGRo2DgUeJH1
         wXdHwJNKuB9iArOGcibf7HbjvA+G/F76FHAqeuC/kmoUs+hE0UXQqpw261PDlkyHqawk
         SN6A==
X-Gm-Message-State: ACgBeo2bMyiHO2AwJj0SigcSueJs1wZc1zon5MpU7sIinwVneen2Nktm
	o0g1Pl9/YDEqOrSfxIEyEz6NgnmsLjOKHL+rbyw=
X-Google-Smtp-Source: 
 AA6agR7NeveUcjmdr9iyL08jI4eXGGpnpUWvY1fFvk7cb8tzznDTK1lc8TaIGg7pXhZ0xgqgpwE9xo2/8iKO8sndn5s=
X-Received: by 2002:a2e:161d:0:b0:264:87b0:fc7e with SMTP id
 w29-20020a2e161d000000b0026487b0fc7emr4683790ljd.191.1661938956085; Wed, 31
 Aug 2022 02:42:36 -0700 (PDT)
MIME-Version: 1.0
References: <003301d8bc7f$c2feb310$48fc1930$@gmail.com>
 <CANNYZj-NE9s+b9Yny9+5q6MFGY3fT5RpWX76Sx6p-yFRGty1tw@mail.gmail.com>
 <1792b01731d2412c53740470ba7521b68c6a3973.camel@linuxfoundation.org>
In-Reply-To: 
 <1792b01731d2412c53740470ba7521b68c6a3973.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 31 Aug 2022 11:42:24 +0200
Message-ID: 
 <CANNYZj_FAeqixLTiuOwn7Vz1z+E3DT8tDdgFdkSOdoHU-VHD7g@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 30 August 2022 (WW35)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Stephen Jolley <sjolley.yp.pm@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Aug 2022 09:42:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57952

On Tue, 30 Aug 2022 at 22:40, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > > o    perl builds hanging indefinitely: https://bugzilla.yoctoproject.org/show_bug.cgi?id=14902
> >
> > I will look into this. Findings will go into the ticket.
>
> Thanks! We haven't quite found the exact trigger to reproduce it but it
> seems related to rebuilds somehow.

The patch is out.

Alex

