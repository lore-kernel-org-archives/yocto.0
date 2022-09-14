Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994B5ECAAD3
	for <webhook@archiver.kernel.org>; Wed, 14 Sep 2022 18:53:56 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web08.968.1663181634336519405
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 11:53:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eT3MCdiF;
 spf=pass (domain: gmail.com, ip: 209.85.208.169,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id q17so5516383lji.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 11:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ab4WZIU/EF3UD4Or17CH/ZQnrufxe4a/XrBAH+qf5ec=;
        b=eT3MCdiFSCS+gRhYb2cPQb0CE87wdNdJzI4jbM+LrQYrKtk67T0dxiYWpRfuiUrweM
         /le0BU7hhSIhvXBvzLkegMr/xg+zsEvedBX5IrEg21mWhRqv5E49UO8SBN9+9H/DTY3c
         4ynB8Dgj0gfOIN5ZzZPAaLaWBw993DhDYIaDy3BaLQ5C2GxpNSLlwHYvm6BvogsyqvkA
         1zod1aXfSk4Gg1Xpk0GWSgTnuGDhlIKcUNsCwIOmn2HuBBGJE21wzvib2OsDIV9amga0
         U6qHumXI9Wpi83sGrHoEowkKBoJHO/QQL6YWgI0nCLswI2VkdEPhZVnOvFu5xjjHxkgU
         mFeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ab4WZIU/EF3UD4Or17CH/ZQnrufxe4a/XrBAH+qf5ec=;
        b=Ctuvh8txcwevx2+Bl+1Gu67JSy9Ofn2NoiJY9j669OuB/48c561t7tJFo/Fv+3n7c2
         nRUgizwovsSQ51D+HVkURvg1ft7MiN2XZRDZzf0Wo087YSfdYf46aTTBc32mElZzB3wf
         anYTFdRkD/DRLuHut+Ig5/w9ZCo1GDXermQKkPrtXtfQpBi3k2An5HhH40atyeomz9uu
         mbYhEeAfv8jNAQKRfYiJU3h4clnz+CIQQT888ep/mziPM5PXstjUGN//C8mKkjezMwS1
         LLh9rJPNnv/e5+YvZwWSZG2RxE0rVCIYb9tM70R6pAa1JVIpHVZwJRvenpesFnpcLgaR
         +tbQ==
X-Gm-Message-State: ACgBeo2FrghT/Elvy8PeukRwPQk4aCsV12rE++7+EXiRn6zoqYRdB/Sb
	TW3VMQ6I5Q1NpwSGScsSl6NDDDquSSvAW8yErKU=
X-Google-Smtp-Source: 
 AA6agR5iwIkVblNfgEi1y2k43IZUcPcgedRtE905BVf1obUaVRUPoLseoqFpuESA4jU660KkSg4DjNveliIn9aIYEf0=
X-Received: by 2002:a05:651c:17aa:b0:26c:27cd:3fe3 with SMTP id
 bn42-20020a05651c17aa00b0026c27cd3fe3mr1218518ljb.68.1663181632467; Wed, 14
 Sep 2022 11:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <cZtA.1663177353817106080.nKg8@lists.yoctoproject.org>
 <CANNYZj__GxuzidL4KVuxmtdqp4MK4PVi86+z+-wzmWpmibzJ_Q@mail.gmail.com>
 <CADD-u4vZMwdhCT0HLGLK4thWTn9XMN-nf73yEtV1+6BMXz4aAQ@mail.gmail.com>
In-Reply-To: 
 <CADD-u4vZMwdhCT0HLGLK4thWTn9XMN-nf73yEtV1+6BMXz4aAQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Sep 2022 20:53:41 +0200
Message-ID: 
 <CANNYZj9jCGig5xYa1cUUS+OFe8NpvFKYx-qMnmp5cmPG7xGCnQ@mail.gmail.com>
Subject: Re: [yocto] meta-go dependencies #dunfell #golang
To: Ed Watson <edmundwatson@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Sep 2022 18:53:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58043

Right, I don't think such a dedicated layer exists. You may want to go
over the list of dependencies and type them into
http://layers.openembedded.org/layerindex/branch/master/recipes/ to
see if anything comes up.

Otherwise, you just have to list them one by one in SRC_URI, so
bitbake will compose the source tree in a 'vendored' fashion.

Alex

On Wed, 14 Sept 2022 at 20:05, Ed Watson <edmundwatson@gmail.com> wrote:
>
> Hello
>
> Sure thanks it is https://github.com/aler9/rtsp-simple-server
>
> Ed Watson
>
>
>
>
> On Wed, 14 Sept 2022 at 19:53, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>>
>> It helps if you can name the project. Are the sources public?
>>
>> Alex
>>
>> On Wed 14. Sep 2022 at 18.42, <edmundwatson@gmail.com> wrote:
>>>
>>> Hello,
>>>
>>>
>>> I am trying to include a go project in my yocto build. It has quite a few dependencies. I may have missed something, there is a meta-go around that I have missed? Or a quick way of pulling in multiple dependencies.
>>> Thanks
>>>
>>> Edmund Watson
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#58039): https://lists.yoctoproject.org/g/yocto/message/58039
>>> Mute This Topic: https://lists.yoctoproject.org/mt/93683134/1686489
>>> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
>>> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>

