Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F492C07E9D
	for <webhook@archiver.kernel.org>; Mon, 26 Sep 2022 17:33:08 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web12.914.1664213579309847818
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 10:32:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nPgvSaa1;
 spf=pass (domain: gmail.com, ip: 209.85.208.176,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id b24so8263171ljk.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 10:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=iafZf1CC/zegxQ+jkPGvXWgdGTjZuJ+pBd3/gjpk+98=;
        b=nPgvSaa1pstRg2vc+L7vdIqBHI+v2xenDE/36YBO2n4EJHVXfqcohYteBP/Udqo/Q+
         KZb9X8O3WLP6gl+8FCBwn3lmzP2OL6xkfVS8nWfbSAeK4QYpJg+axOjQ7BPs+g4CxnEp
         yIT7dQXDlaNx5xegrfA9X2I7tHcsyCJXSCbEPiOlvKDuIOS+Q7APIvXRCcn2gkUNtSyD
         wCzql4lGUthVh0FONGji6O0vaxPHywHq5XiJ5Y9Rw/ZH1yu73owk0nhR+sZ8vlARsWUF
         QZNZyjFoFyYyjxp+L06L/59lQIyM5rf0wamTV0ILh/L2JTrSQArm5RXGLyJmdq9ECt9c
         6h0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=iafZf1CC/zegxQ+jkPGvXWgdGTjZuJ+pBd3/gjpk+98=;
        b=lLYZVoHZO7tAiTLHNTqjkZSVB/j0LR1mCMP/S16Pjw/oyM5mXtx/0asjkyOsjUeKfo
         EQTMjGeD0MVSUyXs4yUNdP32wXLlCFDLW3Y22Cw5a9sP9oIgLsW4CX388I7JJHCdnfct
         hj6AvhzuEGlgk6ezjlkhFpDzWe/lNjWtCZoEMo4FDYhPTIUDHGGby3gmMmp9dP3GdTic
         16wFfq/jmzDGb6LP64ERVFPCkkIcGCoaXZZpeUtU+HlcmvJMMmYisBoflgIWFXsI/Ihe
         ALC5wlPA3nVm2Q7UMOZu3WslTg+3V3TBxKqPtqt236EBibB/MEY9Ab+zSPPvogT2iiuE
         oDqw==
X-Gm-Message-State: ACrzQf30195qCiS2EJCJSvC4RKXJu+Q9hcdX+A/WHNHIIzUaJafjB66L
	fn7QffQELw+yK11jmXTfhmGmp7lWxx1NjR+BAFo=
X-Google-Smtp-Source: 
 AMsMyM6eqpar3Pyek6hjTEHuBXBIjXuqDPeiBqCrBmCKh7MdwxGAP5wnwEwVnCyKX71NRh7++cFMCaqetLh3TuL4mUw=
X-Received: by 2002:a2e:b611:0:b0:26d:36a:696b with SMTP id
 r17-20020a2eb611000000b0026d036a696bmr4492765ljn.257.1664213577482; Mon, 26
 Sep 2022 10:32:57 -0700 (PDT)
MIME-Version: 1.0
References: 
 <SA1PR06MB82090DEB3CB78A097AC2EADE86529@SA1PR06MB8209.namprd06.prod.outlook.com>
In-Reply-To: 
 <SA1PR06MB82090DEB3CB78A097AC2EADE86529@SA1PR06MB8209.namprd06.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 26 Sep 2022 19:32:46 +0200
Message-ID: 
 <CANNYZj9_xv98411bGrzH5eQ3X8P6qpay+5UDZUGfkgdDd0N6JQ@mail.gmail.com>
Subject: Re: [yocto] nodejs do_compile eats all resources
To: oliver westermann <oliver.westermann@cognex.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 17:33:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58166

Anything written in C++ tends to consume 1-2 Gb of ram per compiler
process. If that lands you in OOM, you probably should limit that with
PARALLEL_MAKE:pn-nodejs, but otherwise that is the sad reality of C++
builds.

Alex

On Mon, 26 Sept 2022 at 19:20, Oliver Westermann via
lists.yoctoproject.org
<oliver.westermann=3Dcognex.com@lists.yoctoproject.org> wrote:
>
> Hey,
>
> We recently added nodejs to our images and noticed that it's do compile p=
rocess is a real memory hog. Since we planned to update the recipe anyway w=
e didn't pay much attention, but today we updated the recipe to the current=
 version from openembedded-core (16.14.2). Still I see that it consumes nea=
rly all resources it can get, way more than any other package in our build =
process (and crashing some VMs even).
>
> On my build machine (dual Epyc, 256GB of RAM) it manages to produce nearl=
y 100% CPU load AND eats ~90GB of RAM. Some other machines fail the build d=
ue to OOM issues.
>
> I only observed this on the nodejs build, is there a good approach to deb=
ug this (or even a known issue)?
>
> Best regards, Olli
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58165): https://lists.yoctoproject.org/g/yocto/messag=
e/58165
> Mute This Topic: https://lists.yoctoproject.org/mt/93931877/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

