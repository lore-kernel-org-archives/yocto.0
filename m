Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E656EE4993
	for <webhook@archiver.kernel.org>; Sat, 19 Aug 2023 10:07:30 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web11.6580.1692439642413016082
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Aug 2023 03:07:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=QNa0G5yv;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-4ff9b389677so2526292e87.3
        for <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 03:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692439640; x=1693044440;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yXMpZwJJOf1pNWzqavTVlXZN6SwDo9143CFHpOaqlAo=;
        b=QNa0G5yvmipAEE7vENiSfZTrzA3R5btp2yhMppefX5k1TGpfE8mT0bANwIqZs0Fthd
         6Ioj7yx8zm1EaI0PtwOIwik2An2E0r4xLccRDYV0AON1fDtsgTyjwx2Z0MwzRTm9S/fJ
         89jqvKes4gMbFjHbChmTgTRSh+MWBts6aCKpkgxOB2W+3w6YeNVFcZVr5/K8mfzJ/msX
         cIJXW706sHhV/FVMl0bUN5lXdHkv3lelvJd0qQrUm/iP1eq0waAWvKNsTEmC/bN1DJ+7
         xmu6lop46dysClE8xwY+4YTyaUKGx3v4KLkHhpvAZVw04PQpPg/4/jpt3nHEN8CegUup
         0YWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692439640; x=1693044440;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yXMpZwJJOf1pNWzqavTVlXZN6SwDo9143CFHpOaqlAo=;
        b=Wa0qZJVNpeDuGlnOAphbk0JWDu4ga6xRHrBOQba9zGiAINOamkXnSaCUhPI2dsPKmH
         W9x7ve6YYrdHarYjAlqsL+IsMxPjH7WngnrmFnOnT3cVOIufpbiupYR/+6kTVqRz2ZLH
         HfaOMu+Xi1DjCydm6sCgRMF49hDPghx2JFluF9jGbTOKnOI8q4fGv/pH3hl9q+i+4Tys
         Ak+h1zZGqfNsbwB60jkrbB/7nVABgvhuSSlmY25tQYeJ6lKNdqyJwYdzxpTFXHpkw50m
         OUAz6I6tQsQeenZ6SmsBZWOYEnVJPu56LYwSkG0w/fF3HksIMy6hRYEODKpURU3b9728
         PA/Q==
X-Gm-Message-State: AOJu0Yx4dfR5ui6pQqjWyvmS6GmRtHGgqQ2iB+V2xeKfo+haeNbca039
	ncx93lsZGo4EDItM+v88VcXFyIaetCWu2CbVVjCqyg6I
X-Google-Smtp-Source: AGHT+IFLeco2vZqgccXwho7UPBRNF+tmeuJkVvUuBM5HMT6lWd/9JaYmyzxF/XVlhMMif4675tlJkJDbPdIoBjnkYG4=
X-Received: by 2002:a05:6512:45c:b0:4fa:6d62:9219 with SMTP id
 y28-20020a056512045c00b004fa6d629219mr1014901lfk.62.1692439640040; Sat, 19
 Aug 2023 03:07:20 -0700 (PDT)
MIME-Version: 1.0
References: <ZN9m5Edu4sszrpcx@insidem2ms-MacBook-Pro.local>
 <CANNYZj969r-C5WBSHmCweE_WB_Xwxgc-0jhXTZ+ECDWvYoyXCg@mail.gmail.com> <ZN_VfdJcE28H6sFX@insidem2ms-MacBook-Pro.local>
In-Reply-To: <ZN_VfdJcE28H6sFX@insidem2ms-MacBook-Pro.local>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 19 Aug 2023 12:07:08 +0200
Message-ID: <CANNYZj_5nKJkGbE78=gmd4gpknJAHSQEokN_SUALEwM0LJi-Dg@mail.gmail.com>
Subject: Re: [yocto] Pick up ${PV} dynamically from environment or file or filename
To: konstantin.kletschke@inside-m2m.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 10:07:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60829

On Fri, 18 Aug 2023 at 22:33, Konstantin Kletschke via
lists.yoctoproject.org
<konstantin.kletschke=inside-m2m.de@lists.yoctoproject.org> wrote:
> What happens before is that inedependently from the yocto build is that
> my colleauges are running a maven build which provides java jar files.
>
> And I do not know on my side what version they are doing. It could
> happen even that it alternates between X.Y.Z and X.Y.Z-SNAPSHOT.
>
> Then my yocto comes and is picking those jars up and integrates them into
> the rootfs to be started there by java. They are not processed or
> executed or compiled, they are copied into the rootfs, symlinkd and
> integrated into a systemd start.
>
> Colleauges maven build: Their git tree.
> Yocto build: My git tree.

I think the easiest would be to run a shell script prior to starting
bitbake, which would check what jar needs to be used, and write the
SRC_URI with the name and the checksum into a .inc file in the
meta-layer. Then there's a static .bb file that would include the
.inc, and do the installation/packaging. Changes to .inc would then be
under version control and thus reproducible.

Alex

