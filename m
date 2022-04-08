Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2ECC3A59D
	for <webhook@archiver.kernel.org>; Fri,  8 Apr 2022 17:09:36 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web08.4190.1649413068824452051
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 03:17:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nz9YYjK4;
 spf=pass (domain: gmail.com, ip: 209.85.210.178,
 mailfrom: mans.zigher@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id b15so7997686pfm.5
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 03:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lGQcIX+OtbFbSng6pSTQH5HxIBFL7cYCwNDGY3zNgA8=;
        b=nz9YYjK4EXZ797pR5Q42ChyqNVXAYnfBQ3kDZz2fKerHU3LS1AOgSvK+JW3JMkhSaa
         Gfej8U2XRlGyBdLr3J8/ZBONGc9sUgAgkq5EqRd/ZAQuq6auaYlixGv3QfPOOk084gWf
         friYyr/oqbNVysdIdDv1qijeQmhPkS/6P5/2xzesScih/B9ZfFESg3enVy4njseMT6+T
         +4hUAtbCYk8e0lFNHGt4cUPUDU1mLWVrSxUzNmCGgNQnIQFq5AA2MTnbNySN09mgqigX
         EghbVIF6qkH6UfIT0Cl/TBbqC2/AGZX3vcaB5Gh150Q3+G7BdbqsYIlmsoE1c1OtJyWv
         7d2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lGQcIX+OtbFbSng6pSTQH5HxIBFL7cYCwNDGY3zNgA8=;
        b=2oCEEvhARQjlPqqaRsVG82dsrMqKJJoPu8LSsii5IwTQbnAhtNImII1M8k9CtFwEpn
         2OLx4asN09JCjdy+fjMxe02gXnoYRMXbaM1QIXbxldVaDQnO2jv5TGAGrDDJbwAZfvmh
         ePUIrHhYBqX45oOxKpnAr1+KvvOURCwhocewPRRSgjbykNfb9qY6jRRdC2pIIux1c8H9
         idbbtxrW8+zFY5a1CAMFTkUtMRDnOgA2nJvPbVH8a3fCBUkOf0iTIr/JbbryUYv24450
         NVdf0H3OM/Sbn3Pr4v+z/KKGmMqE65CapighCIVaYsfPyfk5BGNfc43nEFxAZYrmrUPI
         o6+A==
X-Gm-Message-State: AOAM533qZ3wPqHWwNc7/kyGvWQU1mMT3bHaUycMwfEsCFFT44nYUXDbQ
	EQ6UOI4MV+FfLicg806zhXiWoboAIZEkvUCfvhA=
X-Google-Smtp-Source: 
 ABdhPJxk4OAxIaNQ6eJljTgjNvViSRTS5Ug+uQn2dHZDSzr5iOeJd2qIdHrf/EJCx4+cl+kPT+STGjxY/8j3HjM1JTg=
X-Received: by 2002:a05:6a00:1683:b0:4f7:e497:6a55 with SMTP id
 k3-20020a056a00168300b004f7e4976a55mr18619291pfc.21.1649413068220; Fri, 08
 Apr 2022 03:17:48 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CAAnfSTvP+aHDxBSSSNVLejxhMPr9NJ4FuYLXDTmaPifBKmGL3w@mail.gmail.com>
 <CAEhQi8=Fem0HnTbhK7evENES4qpcC2-pbRicW52YrvwHbegj_Q@mail.gmail.com>
 <Yk/zLteq+VWQon7V@korppu>
 <CANNYZj-emTizDFCCHL51HDL5Crjsb-SHu7DTO3kxjhA6DLELKQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-emTizDFCCHL51HDL5Crjsb-SHu7DTO3kxjhA6DLELKQ@mail.gmail.com>
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Fri, 8 Apr 2022 12:17:37 +0200
Message-ID: 
 <CAEhQi8=jurXd+3MaoQJdrrpvQ2WJPTHvvhJBsi+UrpTu-sQgTg@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Mikko Rapeli <mikko.rapeli@bmw.de>, Ross Burton <ross@burtonini.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Apr 2022 17:09:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56696

Yes I did something similar initially using BBMASK to minimize the
build and in the end requesting them to supply a more minimal build
setup. The end result was not a pure BSP layer because we needed some
other things to be able to use other parts of the HW. We could
probably have done that our self but did not really have the time to
set up our own solution for it.

Mans

Den fre 8 apr. 2022 kl 11:22 skrev Alexander Kanavin <alex.kanavin@gmail.com>:
>
> On Fri, 8 Apr 2022 at 10:32, Mikko Rapeli <mikko.rapeli@bmw.de> wrote:
> > Qualcomm, I know that one :( As integrator for a product
> > you must minimize the impact of the BSP SW delivery and thus allow only
> > bootloader, kernel and low level libraries to be compiled using the
> > BSP vendor delivery, e.g. their meta layers. I BBMASK away most of their
> > high level SW changes, e.g. systemd and other odd patches which I don't need.
>
> At Daimler, I put my foot down, and forced them to cleanly rewrite the
> BSP into an actual BSP layer before we would set up official builds
> with it. It took several months, but eventually we got there.
>
> Alex

