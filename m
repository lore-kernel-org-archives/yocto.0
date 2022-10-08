Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B107C433F5
	for <webhook@archiver.kernel.org>; Sat,  8 Oct 2022 20:39:55 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web08.7688.1665261593931783974
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Oct 2022 13:39:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=M/a6+pM7;
 spf=pass (domain: gmail.com, ip: 209.85.167.175,
 mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id m81so9167598oia.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 08 Oct 2022 13:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/4k8bcDb+rnQ7gLefEKqUEfqpV3ErtJ/BZimt2YkZBU=;
        b=M/a6+pM7r6EmmvDuLEA6zd6dTRbodEw39hvatHOCCAnpxiMZuIo+avDEGcjkR+3E3V
         Zm0CZdC8yLv0HlwJ4/WjuEmABMzMz5RA2Pl54FFKCnnQNp+2O73eq6PzrQdJy0cpvf2P
         FLDUcJqzGoM+dkmodnKNVgx+nMVqnboA2KWgNntk15I3xmZi0X7dWYY+0XPidX3F+Dhg
         enWxENysxNkcstQiKf62F0zUvfGcGF5tyU2GAdZqaYdoogOG7+ru+9fSJLWdC3Dm3WUZ
         /SOG4HiKPQ5NkTg0PE6YDvxy8DFiHdj2v0el0sPYhgPyYC1zUGQ7WET3wfTU7hMtvoo4
         9quA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/4k8bcDb+rnQ7gLefEKqUEfqpV3ErtJ/BZimt2YkZBU=;
        b=RV6bo757gyRH63LtXgn8i/YNLoncm8T180wLo42Chm+23hKxq6gLiTaB9ncdiKhA53
         S/EVHlgYPq41h9YttVeMw0FtB042DqCfyLfOEIlqAYgAnwkiLLlU0mrwRLJaMGF+rSnY
         Sdp5B4rRUudR0QIvQx/0m+fY9/6Jj6XoFZ0bW/QjXr5qydaUzSRDajTkCR9ckWid2QFX
         NCB8FMRhHnfFA0IeDlAFePMUiv7DE6nVZGUGDW1wCif4FG+DpDsx7XbqWAW2yVyMi3ri
         X1cprLv4jTy+9bmT/inOU47YAvR/uwzhuwB2+cNhH1EbEQl4xfKImuZoyemfxi2LKSgU
         IJVA==
X-Gm-Message-State: ACrzQf13YOv64qaDq1G9eIhceih2iZSDu4V/5NT59Vz3IpveqlgeX1dj
	h2MuntMyAMSqoCcpye9IuIjjEHqwxu7F33nh6r8=
X-Google-Smtp-Source: 
 AMsMyM4kw3vD/KbK9hIVFdU9qUK31DefynhqsLIGYwxT0mV+9Z0V1USPqPkZxHdbznIJYm4ERpeeWTJAvD+Ac8BKN54=
X-Received: by 2002:a05:6808:1910:b0:354:c2b:67e4 with SMTP id
 bf16-20020a056808191000b003540c2b67e4mr8118300oib.55.1665261592991; Sat, 08
 Oct 2022 13:39:52 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAD7aZ34WijQFsY_=znbZ+0RToxEYnfZY=p-wuqnKwz+GsTdUrw@mail.gmail.com>
 <CAMKF1sq8RCkV=LCYjRxCueOLQzY+eLK4Z+=dn_BEPQSytJy=nw@mail.gmail.com>
 <CAD7aZ34LZYzdWT6yst_jNuTp+=HDeJgmD5NreLmqTE17rTLEOA@mail.gmail.com>
In-Reply-To: 
 <CAD7aZ34LZYzdWT6yst_jNuTp+=HDeJgmD5NreLmqTE17rTLEOA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 8 Oct 2022 13:39:26 -0700
Message-ID: 
 <CAMKF1soMBYm+OUzPOyhuMkPXFxA3_XqcEh9qZ9P6Dz04-JHRTA@mail.gmail.com>
Subject: Re: [yocto] Problem with download files during CMake configure phase
To: Jan Kubalek <janmkubalek@gmail.com>
Cc: yocto@lists.yoctoproject.org, Jakub Trubka <jakub.trubka@bringauto.com>,
	"martin.hofbauer@bringauto.com" <martin.hofbauer@bringauto.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Oct 2022 20:39:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58296

On Sat, Oct 8, 2022 at 12:39 PM Jan Kubalek <janmkubalek@gmail.com> wrote:
>
> Hello,
>
> Thanks for a prompt reply.
>
> Can you point me to the correct loc. in documentation? I cannot find it :(.
> (just for the future that so I can read a doc properly... :) )
>
https://docs.yoctoproject.org/migration-guides/migration-4.0.html?highlight=network#fetching-changes

https://git.yoctoproject.org/poky/commit/?id=23ac8859f4f336dead2264f320a382d696b48370

> Thanks a lot
> John
>
> On Sat, 8 Oct 2022 at 21:35, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Sat, Oct 8, 2022 at 12:25 PM Jan Kubalek <janmkubalek@gmail.com> wrote:
>> >
>> > Hi,
>> >
>> > We have a C++ projects configured by CMake.
>> >
>> > Our CMake files download some dependencies from our git by standard "git clone" command during configure phase.
>> >
>> > If I add our project as a recipe to Yocto the git command always fails with exit code 128 (resource unavailable - no internet connection, protocol not supported etc.).
>> >
>> > What's wrong? How Can I solve this problem? In a standard env the configure proceeds without problems.
>> >
>> > We use
>> > - Yocto >= 4,
>> > - Bitbake >= 2,
>> > - Ubuntu 20.04 as a host system
>> >
>> > Src URI spec:
>> >
>> > SRCREV = "<commit_id>"
>> > SRC_URI = gitsm://<path_to_git>;protocol=ssh;nobranch=1
>> >
>> >
>> >
>> > Thanks a lot for your advice :)
>>
>> yes cmake has the downloader module which perhaps is good from
>> development point of view, however, with yocto where one goal is about
>> reproducibility its important to have
>> sourcecode immutable and ensure that all of it is available before
>> system goes ahead with building it. Therefore recently bitbake has
>> started disabling network access after fetching
>> task is finished, just so that it does not get modified under it
>> without notice. One approach is to use git submodules in your project
>> instead of doing it with cmake then use gitsm fetcher
>> in yocto and you have best of both worlds.
>>
>> > John
>> >
>> > -=-=-=-=-=-=-=-=-=-=-=-
>> > Links: You receive all messages sent to this group.
>> > You automatically follow any topics you start or reply to.
>> > View/Reply Online (#58293): https://lists.yoctoproject.org/g/yocto/message/58293
>> > Mute This Topic: https://lists.yoctoproject.org/mt/94205284/1997914
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
>> > -=-=-=-=-=-=-=-=-=-=-=-
>> >

