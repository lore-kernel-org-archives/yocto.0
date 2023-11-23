Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 289F8C624B4
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 12:01:07 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.89136.1700740859040185188
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 04:00:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UNFXZpS9;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2c4fdf94666so9883301fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 04:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700740857; x=1701345657; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=82l/v9QiQ9wMBTL4omHoePKIwSx31jI0atzB27FXhEA=;
        b=UNFXZpS9BjlTR/4wnji4Q1ZFvVQ+DrE9W4p/J9zz45xpBThEezYEOtLqo/3UmMxbuY
         ylpGdpR/At8hq8tOAAhh1XDZixhNK6J56LtdmqMxu7QG7zIAKtyCctSJbo10mbK+8Goi
         1WYq6uOeeQy/TtEVQatDAOk2jMLa6L+M7BVEejFWmfeE9fEWgNEECHGRKQrc2999TCOp
         Vczl8O1JMPExxWQ28asz/6Rr4gMAcCAb/EhNSHgN4m7Qk9KsHKUoX5MMtG20YMaH9dUa
         rZBIqiHElTojxaSqR5lhltf91FmHgvWGeNTZdeT4fbvuZLIquxzvwE4pku59ysae0I2N
         cRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700740857; x=1701345657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=82l/v9QiQ9wMBTL4omHoePKIwSx31jI0atzB27FXhEA=;
        b=vt4w276kFMVb8wSeZa7/liPfNLxOq8At/4T1oNtcVmyqA7+4QJZ8x/dc3LL3Ixd/5l
         OhkdSbWSwihbJbC8PxlVqLcZdGy2HBcByBd/K4h1q5q6Ckbg+3VEt/z4WlX78Py8iBx0
         4pXJpMXM6fTc8JD91EGfMvAIU5URPbyTJx5ub1sEYmRpiUdOXOWuN62Z9JESdiyE1/Ju
         GsRMqCDSHJjoIMfnlE6+nOZB1q2KjWmOXKkH/vm7yEoPIVKJHeOqUcIRXGTuOadUAZjP
         8Ykoe9czj65uYUsOIzTsMhhU+EbgJoGJuJ6Jen606fDOWcjIVFxA5vtbk+3E/TAA2BcH
         sIFg==
X-Gm-Message-State: AOJu0YymDK1i3cJMn5rk6ajjypHHqk90bq6LvccZO8BG+4jYreJJxHXJ
	TAaUPJeSBScc3t4W5fPdag9VvfLqYElix9gzUOI=
X-Google-Smtp-Source: AGHT+IFKti2oMiVE3mD8fkaOOpTvMVJP0yJbpbuq2MtnYxgCXw2BVYIhtFGyEdXmScGUqKGwZ+vHU4bNB+LP3dI3pYk=
X-Received: by 2002:a2e:9f4e:0:b0:2c8:7ffe:573f with SMTP id
 v14-20020a2e9f4e000000b002c87ffe573fmr3458200ljk.5.1700740856723; Thu, 23 Nov
 2023 04:00:56 -0800 (PST)
MIME-Version: 1.0
References: <20231122014822.3871458-1-raj.khem@gmail.com> <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
In-Reply-To: <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 Nov 2023 13:00:45 +0100
Message-ID: <CANNYZj_9_yY5H8fX6=Vy3FFgiVu1V8uOJxHNdtMkfMb37JXCSg@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
To: Ross Burton <ross.burton@arm.com>
Cc: Khem Raj <raj.khem@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 12:01:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61739

matchbox-terminal depends on vte, and latest vte enables gtk4 support.

Also, I do not understand how the fix works. How does installing
additional packages into an image resolve a conflict between two
packages installing different files into the same location?

Alex

On Thu, 23 Nov 2023 at 12:50, Ross Burton <ross.burton@arm.com> wrote:
>
> Is this working around a failure on the autobuilder?  How does matchbox-terminal pull in gtk4?
>
> Ross
> > On 22 Nov 2023, at 01:48, Khem Raj via lists.yoctoproject.org <raj.khem=gmail.com@lists.yoctoproject.org> wrote:
> >
> > This avoids an issue when a package that pulls in gtk4 into
> > core-image-sato but not into multilib pieces results in different
> > gschema compiled files as reported in [1]
> >
> > [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=15291
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> > config.json | 4 ++--
> > 1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/config.json b/config.json
> > index c5fca45..e95a292 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -900,7 +900,7 @@
> >                     "MULTILIBS = 'multilib:lib32'",
> >                     "DEFAULTTUNE:virtclass-multilib-lib32 = 'x86'",
> >                     "RPM_PREFER_ELF_ARCH = '1'",
> > -                    "IMAGE_INSTALL:append = ' lib32-connman-gnome pango-module-basic-fc lib32-pango-module-basic-fc'"
> > +                    "IMAGE_INSTALL:append = ' lib32-connman-gnome lib32-matchbox-terminal pango-module-basic-fc lib32-pango-module-basic-fc'"
> >                 ]
> >             },
> >             "step4" : {
> > @@ -915,7 +915,7 @@
> >                     "MULTILIBS = 'multilib:lib32'",
> >                     "DEFAULTTUNE:virtclass-multilib-lib32 = 'x86'",
> >                     "RPM_PREFER_ELF_ARCH = '1'",
> > -                    "IMAGE_INSTALL:append = ' lib32-connman-gnome pango-module-basic-fc lib32-pango-module-basic-fc'"
> > +                    "IMAGE_INSTALL:append = ' lib32-connman-gnome lib32-matchbox-terminal pango-module-basic-fc lib32-pango-module-basic-fc'"
> >                 ]
> >             },
> >             "step5" : {
> > --
> > 2.43.0
> >
> >
> >
> >
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61738): https://lists.yoctoproject.org/g/yocto/message/61738
> Mute This Topic: https://lists.yoctoproject.org/mt/102741765/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/6691550/1686489/412949215/xyzzy [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

