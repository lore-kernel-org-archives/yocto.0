Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38230C433EF
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 11:18:55 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.5864.1648639134141043859
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 04:18:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=k/tty8Gm;
 spf=pass (domain: burtonini.com, ip: 209.85.128.41,
 mailfrom: ross@burtonini.com)
Received: by mail-wm1-f41.google.com with SMTP id r64so12008505wmr.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 04:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0S7xhXXB70EGmXAiSHDBRJn1c+E8n4ZbfBtRO/OaBJY=;
        b=k/tty8GmAqgbvpSIvH5ihJvPvRuN6Znkc+m+sYAkVJMDwgBefiH25/E+OXLQL1AXXE
         qYehGGf9psF9iDZ2ieBpaXj5Sy+lRFeMO04dd6VE/dmYRmByHCFQViwiuw8tVAMrQlhM
         QMSd8zEZMpBC2nlROMfsEc0/KRD15JoW2ADa9xiPr6lwolsiMYSjAPxmsa7eYxfsgDfL
         H4JLlLrwoAto+uYmwQJ3PAYSUfQlB/GaXhJhzHMFIUnYjillL6XrU/wb+M6w+GUthTmP
         Ca9GaMPZ18oyh/gW3OvTW7I7Wuhywkk0WgX52o9UTjVoWU0fX7f3GJC2hMf/hVMmyPkt
         Puxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0S7xhXXB70EGmXAiSHDBRJn1c+E8n4ZbfBtRO/OaBJY=;
        b=VQKqICpxk6Rnd+RcFIPyQB0FcEsPqRV9vs3Wcaue1RG8m/slZBLRYqyTqFo095h/PG
         Ios1idjyiBbJ26cAQqiVMNzs/DjRBHXwRlaAbILN30Csxy76E+f1yD9nUExDJ5J1EfFW
         ULLf2WxLeRuYDcyKcpiRLTCmhCWvUuoEPYERdvvYypH3limKPHwCOY8Ut6v8hpQXXYbX
         z6UGHMwNnl3eTxUlXg0wSGGQowc6gd09hcR5wYbtstkvrrVZ54YQOjTtQK2siNFqqmrF
         R2QfgZv0UcYQjK2o3gDN7QrHEKLXA4mPJIe/7aUg+cOjp1/9hKSZXVH6+BAp2q+0V5Vf
         R75g==
X-Gm-Message-State: AOAM533wvOn7I6gDt6s4uZZPDG+znV4oQec/bFWmcpj+o3FZ5bgfJS78
	a0qa1V1QyFBHKe1urxjXWWSoHDb2rcBJw1ehDQQ/JQ==
X-Google-Smtp-Source: 
 ABdhPJwU7oANsIv+zVmvOMD1ak/6MQ54g/8jurSp56r5cLEsP+S2KhrMj9HMLgJi+8qowzZf1RkgKJbBgBAR0Qq2ZZk=
X-Received: by 2002:a7b:c08b:0:b0:38c:ea9e:51c0 with SMTP id
 r11-20020a7bc08b000000b0038cea9e51c0mr3886000wmh.87.1648639132168; Wed, 30
 Mar 2022 04:18:52 -0700 (PDT)
MIME-Version: 1.0
References: <16E122970083F378.12707@lists.yoctoproject.org>
 <9bfd8e454ae64b4eab8baf1a35f144d2721ba187.camel@linuxfoundation.org>
In-Reply-To: 
 <9bfd8e454ae64b4eab8baf1a35f144d2721ba187.camel@linuxfoundation.org>
From: Ross Burton <ross@burtonini.com>
Date: Wed, 30 Mar 2022 12:18:41 +0100
Message-ID: 
 <CAAnfSTvsKf6DBeWcYLXkdEfRmN9Aa23QD-qqC3zaj6==q24SmA@mail.gmail.com>
Subject: Re: [yocto] SCM usage in source urls and bandwidth
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
 Khem Raj <raj.khem@gmail.com>,
	Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 11:18:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56595

On Wed, 30 Mar 2022 at 12:10, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> f) Switch the problematic recipes to use shallow clones with something like:
>
> BB_GIT_SHALLOW:pn-binutils = "1"
> BB_GIT_SHALLOW:pn-binutils-cross-${TARGET_ARCH} = "1"
> BB_GIT_SHALLOW:pn-binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} = "1"
> BB_GIT_SHALLOW:pn-binutils-cross-testsuite = "1"
> BB_GIT_SHALLOW:pn-binutils-crosssdk-${SDK_SYS} = "1"
> BB_GIT_SHALLOW:pn-glibc = "1"
>
> The challenge here is that in order to be effective, there needs to be a
> PREMIRROR setup with the shallow tarballs on it. This means we couldn't do e)
> above and have this have much effect unless we craft some very specific
> PREMIRROR entries too.

Even without premirrors this is a lot faster for glibc:

$ time git clone git://sourceware.org/git/glibc.git
Cloning into 'glibc'...
remote: Enumerating objects: 6956, done.
remote: Counting objects: 100% (6956/6956), done.
remote: Compressing objects: 100% (2938/2938), done.
remote: Total 670093 (delta 5328), reused 4750 (delta 3932), pack-reused 663137
Receiving objects: 100% (670093/670093), 205.19 MiB | 16.39 MiB/s, done.
Resolving deltas: 100% (573265/573265), done.
Updating files: 100% (19011/19011), done.

real 1m56.255s

$ time git clone git://sourceware.org/git/glibc.git --depth 1
Cloning into 'glibc'...
remote: Enumerating objects: 18809, done.
remote: Counting objects: 100% (18809/18809), done.
remote: Compressing objects: 100% (9704/9704), done.
remote: Total 18809 (delta 8812), reused 12185 (delta 7968), pack-reused 0
Receiving objects: 100% (18809/18809), 41.79 MiB | 11.96 MiB/s, done.
Resolving deltas: 100% (8812/8812), done.
Updating files: 100% (19011/19011), done.

real 0m8.701s

A full clone fetches 200MB and takes 2 minutes (a lot of that is
actually resolving the deltas, not the fetch).  A shallow clone of the
current HEAD fetches 40MB and is done in 8 seconds.

Why would we need a premirror?

Ross

