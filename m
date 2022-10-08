Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE83CC433F5
	for <webhook@archiver.kernel.org>; Sat,  8 Oct 2022 19:35:44 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com
 [209.85.160.43])
 by mx.groups.io with SMTP id smtpd.web09.7259.1665257743102612233
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Oct 2022 12:35:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IeijtFai;
 spf=pass (domain: gmail.com, ip: 209.85.160.43, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f43.google.com with SMTP id
 586e51a60fabf-1322d768ba7so8879905fac.5
        for <yocto@lists.yoctoproject.org>;
 Sat, 08 Oct 2022 12:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1G0rk8QQ9aA+BM6hKESKqx5gIJ4C/3HRJUVGiorlJ/k=;
        b=IeijtFaiVwjtnktMef/eteezc8J5Ib0CA04yr1mAvO6wd0iPu6T+ePv95EGwSypJoh
         FFCpgmUqkbLo980288yNoeMatQw0guWiXo+ILsc/OHgbGtSUCC41/lG153eG59ZgD1tu
         RVhjG3jAbRIqxbeToVH9mO+kh2dBOb6DTXafbueTuo+OF4PHbohpOCQWgjhiEegTE07U
         Ulj64iZAVEDZhH55k3laAKYeVzaOFZne7L6UCmGpLwnbhf+H4poqF5sHp/r/CaZT5+uq
         oHDoQG6regHeJ7qlq1h9Q6Uo215yyJgPGJo8FrO8Kj5rD9BQReVwVjuLll6laxIJ0UYD
         7CkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1G0rk8QQ9aA+BM6hKESKqx5gIJ4C/3HRJUVGiorlJ/k=;
        b=NWPb0Y5P1s1/Y8x964dVXtUFKSFAPSXgXDkQ5NiqHlQ67a6gc9u9PiHoIGp8fRPXDG
         5hDsSCKcgtDdv5jXfE7JG9fHs2zMB49wavFDfWleQ2x+dj8rpFZjMuQyLFgi31RiCcmi
         zGNwTbLbFOHMxG8CjE7Z/IFurRDvOpeLKevirzD67s4lGtYADoe48M92n0n3BLS6vmkW
         yhnuLV4u4sDCZyIYOXuRB8zyQaul6Ejd0NRZVTAr1exp9+vnJh++NE291DiaPiN5bsGR
         F/02JSrMlD1hyQJCwbtH4rnsdAQ3wGWe8J4tlUt9aWV0xuP9Z7G0oaohZ8VSK5tMcGdi
         qGVw==
X-Gm-Message-State: ACrzQf3YsK3+kY7XGhojhSZmS/T7L1tUf/0KdMd4/FI7wpdZ/axZISmF
	M87M+2Jpc+JxPnK1W+gha22VdSB/Ot1qJ1AMfUY=
X-Google-Smtp-Source: 
 AMsMyM4HQKztLOwkv7T2tTSvJ9rFhxrzc2zuJwHWp5fM35MgQK6zibAFvbq4Sem8CPBlqOsIvWTBltAGlnqwmhXgPvo=
X-Received: by 2002:a05:6870:d1c8:b0:132:1239:2550 with SMTP id
 b8-20020a056870d1c800b0013212392550mr11186953oac.55.1665257742395; Sat, 08
 Oct 2022 12:35:42 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAD7aZ34WijQFsY_=znbZ+0RToxEYnfZY=p-wuqnKwz+GsTdUrw@mail.gmail.com>
In-Reply-To: 
 <CAD7aZ34WijQFsY_=znbZ+0RToxEYnfZY=p-wuqnKwz+GsTdUrw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 8 Oct 2022 12:35:16 -0700
Message-ID: 
 <CAMKF1sq8RCkV=LCYjRxCueOLQzY+eLK4Z+=dn_BEPQSytJy=nw@mail.gmail.com>
Subject: Re: [yocto] Problem with download files during CMake configure phase
To: Jan Kubalek <janmkubalek@gmail.com>
Cc: yocto@lists.yoctoproject.org, Jakub Trubka <jakub.trubka@bringauto.com>,
	"martin.hofbauer@bringauto.com" <martin.hofbauer@bringauto.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Oct 2022 19:35:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58294

On Sat, Oct 8, 2022 at 12:25 PM Jan Kubalek <janmkubalek@gmail.com> wrote:
>
> Hi,
>
> We have a C++ projects configured by CMake.
>
> Our CMake files download some dependencies from our git by standard "git clone" command during configure phase.
>
> If I add our project as a recipe to Yocto the git command always fails with exit code 128 (resource unavailable - no internet connection, protocol not supported etc.).
>
> What's wrong? How Can I solve this problem? In a standard env the configure proceeds without problems.
>
> We use
> - Yocto >= 4,
> - Bitbake >= 2,
> - Ubuntu 20.04 as a host system
>
> Src URI spec:
>
> SRCREV = "<commit_id>"
> SRC_URI = gitsm://<path_to_git>;protocol=ssh;nobranch=1
>
>
>
> Thanks a lot for your advice :)

yes cmake has the downloader module which perhaps is good from
development point of view, however, with yocto where one goal is about
reproducibility its important to have
sourcecode immutable and ensure that all of it is available before
system goes ahead with building it. Therefore recently bitbake has
started disabling network access after fetching
task is finished, just so that it does not get modified under it
without notice. One approach is to use git submodules in your project
instead of doing it with cmake then use gitsm fetcher
in yocto and you have best of both worlds.

> John
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58293): https://lists.yoctoproject.org/g/yocto/message/58293
> Mute This Topic: https://lists.yoctoproject.org/mt/94205284/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

