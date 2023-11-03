Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B306DC4167D
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 17:36:37 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web10.60345.1699032993717959835
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 10:36:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XK1IKKPK;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-1f03db0a410so1439531fac.1
        for <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 10:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699032993; x=1699637793; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0WCckwZwLJ0vLlwT1jhgBPaNwnNz/4EdcGVZo+oKdLo=;
        b=XK1IKKPKq6EmKckIo4wPyn91QRArLHPjn9VGqqo7q538RXHQB+rqe5N+os0varzJDA
         xwJosHpc7kydvw2SfOhMSP97lz4YzE42GCGbnSKORa+Ukh3q8Br/OocwfCpJhBDV6aSQ
         4U4rUGBrXQxT4X5+tsvBtzZwHfGpfBFTwfV+COz45cyJTNt7FA4NAYrhbV81/76xEKtV
         41NwV5XB+aB/y6F2nR+Lz4PeBSFH0BobFVMqYPgKfA3okejfrWndVnq2ZwxGr8QCiplN
         l7PrskStV4X7jBMef+T2EkVLNnhSoh7sMMUpgCwOCzaWN6dsusvtT5vbwNJaSkoWTRfN
         eI2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699032993; x=1699637793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0WCckwZwLJ0vLlwT1jhgBPaNwnNz/4EdcGVZo+oKdLo=;
        b=S6q3xn6sWVT32L73Wr/19A9twa94JEyyetBd0jJQ0qo3gCK7dmRhI3KYn4LWZYj2jF
         Z1bzVnJEF6bS7Ngd70j633HUJY/A8kU94zrdMQ0Rke6CFaqqpmMVMk/e5DfXA5OTE2XK
         F82ngGbBo4Ngeav4pLcsFw85g2RNQRo8yc2t7KdXFNcUvJPXvLQH7l3mGANHGfhAen3x
         K9HZvrc7ukeOkbu5bk8Qz8jNksfKxxCKpf2e5sqZvCVwd7keG6YuDzQIMVjAPVo8xXNw
         AIdZKcjFfYG5e4hzc3OEEtOUHN04rl5BccgAKvIHcClE9RbRsWQjGj/1vyA39G3HvW21
         AmTw==
X-Gm-Message-State: AOJu0YwHGSBLtBqBGoNeQHPnajJJA6dgTLO6VWMNX8oZn+YfnUbdmFU5
	YdzEM4NXdfoLqv57JQehKScWStCTxbGSDgswtW+hNl93IRc=
X-Google-Smtp-Source: AGHT+IH9CpeSuNh3dCEZhh2TSOm3GkM7q6VUmZYBlW22MPlWbTXGi+XT1ELs3UaDS3W5oEbhw62SI/RF/vnFzcBbYz0=
X-Received: by 2002:a05:6870:3d86:b0:1e9:a70c:1323 with SMTP id
 lm6-20020a0568703d8600b001e9a70c1323mr29046894oab.39.1699032992892; Fri, 03
 Nov 2023 10:36:32 -0700 (PDT)
MIME-Version: 1.0
References: <0e2b4e8a-58ab-4f7b-8548-1fd2011c5485@bootlin.com>
In-Reply-To: <0e2b4e8a-58ab-4f7b-8548-1fd2011c5485@bootlin.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 3 Nov 2023 10:36:07 -0700
Message-ID: <CAMKF1spMQvq2J1CrjzD9VSfv0_VbtZxKRjcxvnDGTY71T0ATSQ@mail.gmail.com>
Subject: Re: [yocto] Package dependencies not generated?
To: michael.opdenacker@bootlin.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	Regan BUSSY-SOCRATE <regan.bussy-socrate@navocap.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 17:36:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61604

On Thu, Nov 2, 2023 at 11:16=E2=80=AFAM Michael Opdenacker via
lists.yoctoproject.org
<michael.opdenacker=3Dbootlin.com@lists.yoctoproject.org> wrote:
>
> Greetings,
>
> I compiled rsyslog from meta-oe:
> bitbake rsyslog
>
> I set up a binary feed ("bitbake package-index") and a webserver to
> serve it, and when I try to install the rsyslog package, I get:
> $ opkg install rsyslog

I see you ran bitbake package-index so thats good. maybe you did but
let me ask did you run opkg update before doing opkg install ?

>   * Solver encountered 1 problem(s):
>   * Problem 1/1:
>   *   - conflicting requests
>   *   - nothing provides libestr0 >=3D 0.1.11 needed by
> rsyslog-8.2306.0-r0.core2-64
>
> Indeed, no "*libestr*" package(s) got generated. Why not?
>
> I checked RDEPENDS:rsyslog and it contains "logrotate" for which a
> package was indeed generated. I thought that shared libraries
> dependencies were automatically detected and added to runtime
> dependencies. That's confirmed by
> https://docs.yoctoproject.org/dev/overview-manual/concepts.html#automatic=
ally-added-runtime-dependencies
> . Why didn't it happen?
>
> I checked that libestr got compiled (it's part of the DEPENDS for
> rsyslog), but I can't find any package for it, even in the working area.
>
> It sounds like a very basic misconception between my keyboard and my
> chair. What did I get wrong?
>
> Thanks in advance for your insights.
>
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61583): https://lists.yoctoproject.org/g/yocto/messag=
e/61583
> Mute This Topic: https://lists.yoctoproject.org/mt/102348862/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

