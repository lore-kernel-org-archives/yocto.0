Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 457DDC433F5
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 21:10:24 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web11.2691.1645823423055178392
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 13:10:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a6HNks/H;
 spf=pass (domain: gmail.com, ip: 209.85.222.178,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id d84so5585482qke.8
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 13:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bzyS89wH45STkIlB2gGzbwXVgPsqq80EQf/If/c640Y=;
        b=a6HNks/HQSdspJ5vwgEEC6g14YdQEzTBJUqpYAkTTGQ0ksvCWqV73eYns5997FIOIQ
         W5Gi0yTzroNKsYIPlIYjCh1ipOS5W2ByTadnTzc0zfME94QckbEU86cxoTQQK4RRe4jb
         RlWXmGGgg6XoQcmJ+aVeXBUmUanQmfr/tGl1UZRsJLwNogRrK+s3zgdcffongfjIMNQS
         IcaIcjRAQdNfk6etP5nl9bs/J4JDMOOBGRxan5QNIlI6Y9php5u7F9QmZvXgv/0tlFIH
         F5M1JiF18gIy59SNlBALsWfIga7yn4zEZWdEPwTX39FBZRuwFJ7PJS5xBPh3a1VVqEje
         TdoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bzyS89wH45STkIlB2gGzbwXVgPsqq80EQf/If/c640Y=;
        b=SLEuv3WANt4rZEwu1Wug1her0lWx4exhsPRtu07MRs4drhxoOutOdddIjQEzsNAh+o
         u0UIrUR4kHCtNo7tk46cKbhzerLF4g2LRSGhpcaU62q+BbZE0EpiRYq+FIkX6cmUBED8
         cafuJzmWAuiHIJ5GuVTkBXtoS2key6o3/Uw3lFLNbabqyCFftdbBIa+qRxnO/1ptrZyp
         /LX2EiHPNjvAyjJT6L4fwHTATEm/r8U9LdMtUTn+GZOM/+55QNnKcUCu9PSPkyLiJ5i7
         9dMFJtueTIjQbvot0xMKW9dx51ruwt62U5IA0h1xpqju4hzZ+kjPVa2seEC+hV+MUOXK
         wElw==
X-Gm-Message-State: AOAM530dXA8ak50HRMXHeZYflwPVyWrJesPbxD70VQ7ytqvov1l9619p
	MCp4AxTNeoEmLlG7jy80VOeH7hAFLM9cV2ZWxHzI23qYH7M=
X-Google-Smtp-Source: 
 ABdhPJxda1P9CTp94iAeLhf6DyYqRiz4gNj0/2//U68T335EaHXyWHELbVTFAigkIAfU/SVbLkiBRDGjOjm+YwFfvDA=
X-Received: by 2002:a05:620a:817:b0:648:d856:3fdc with SMTP id
 s23-20020a05620a081700b00648d8563fdcmr5881371qks.180.1645823422101; Fri, 25
 Feb 2022 13:10:22 -0800 (PST)
MIME-Version: 1.0
References: <7bac38ca-d9fd-b019-8d47-4a1a4f2d6a8@crashcourse.ca>
In-Reply-To: <7bac38ca-d9fd-b019-8d47-4a1a4f2d6a8@crashcourse.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Feb 2022 13:09:56 -0800
Message-ID: 
 <CAMKF1sqs1GKQJtMhJcFx6iRmODtDOd5AWMQNOJ7sLkouz4XpKw@mail.gmail.com>
Subject: Re: [yocto] looking to boot core-image-minimal on meta-riscv board
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 21:10:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56290

On Fri, Feb 25, 2022 at 8:36 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>
>   a friend of mine is diving into trying to boot linux on a meta-riscv
> linux starter kit -- he's not using YP, and this is what he's
> targeting:
>
>   https://www.aliexpress.com/item/1005003751298305.html
>
>   since i've wanted to jump into meta-riscv for a while, i figured i'd
> play along and ordered something more substantial:
>
>   https://www.aliexpress.com/item/1005002796061251.html
>
> in any event, here's the story so far.
>
>   as a first pass, i just fired up YP and built for qemuriscv64 to
> establish a baseline, and that seems to work just fine, booting with
> "runqemu nographic." and that at least gives me a bunch of config info
> i can look at later.
>
>   as for my actual target board, i know that the meta-riscv layer
> defines support for two boards, neither of which is the one i will be
> getting, but while i'm waiting for it, i can at least start
> documenting all of the relevant settings and config values i'll want
> to try.
>
>   i know precious little about meta-riscv, so is there a sane way to
> prepare for the eventual arrival of my board? my plan is to get
> familiar with how the meta-riscv layer builds for the two supported
> boards, so i'll have a handle on what i'll need to configure.
>
>   any further advice would be most appreciated.

We should add them to meta-riscv as reference BSPs. I have port
of unmatched locally and have been trying to get the needed changes
into meta-sifive which is still pending.

>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56283): https://lists.yoctoproject.org/g/yocto/message/56283
> Mute This Topic: https://lists.yoctoproject.org/mt/89391983/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

