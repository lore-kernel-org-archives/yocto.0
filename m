Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C90C433F5
	for <webhook@archiver.kernel.org>; Fri, 27 May 2022 20:25:11 +0000 (UTC)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com
 [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web12.8493.1653683103822051966
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 May 2022 13:25:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=HDtnm8MN;
 spf=pass (domain: konsulko.com, ip: 209.85.166.171,
 mailfrom: scott.murray@konsulko.com)
Received: by mail-il1-f171.google.com with SMTP id g15so1052271ilr.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 27 May 2022 13:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=PwKxpP1FvU6ISLimi0n5utGTXLm/drNtdCQfYaH75rc=;
        b=HDtnm8MNvDXIZqtWEPeVHq7XosviIPyB++bGmvQjRLkayYjSXg6SDDnoV/gyVQ06O3
         18r/RUTFnYbeZJ2JfD/Pg7b2Mr0Jf7gMthaucZVqeekIakt0UI4qByW5sAUeH8NklYos
         KXFf/PsVz7jdVuniPfF2JPsSoJYZz/IllCZn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=PwKxpP1FvU6ISLimi0n5utGTXLm/drNtdCQfYaH75rc=;
        b=ynyLm0ismlrMtFT3Q7wWxDNBoDbFM1cIsf9IEqLltVeTJGfWtCIOoYADsmv7XKMoqi
         P+7dmmDyXT7O+RbVfYhoCTGC4jQ3/NI9o0zsPQkUmAkhgzo9urRJXef/GHFTBO5fSPgD
         pfQ1esqnfwyaMbU/crylAxC5lKSACQBd9u6LwqEqlrMBXmzl9Z1n9nbHZSY6bfV1qB7u
         BZ4iI5fGcWiLYyzbzKk1mE9gzNyPibcn2X85f6tWVSWfen6v9dA6hJDPF7v6uBxCb/3n
         bRS9RZieSyEMgTYKedY7QUW1ODpoXQLEhC7sBvBa9JuZPYbGGEf3zyM0fsZ0ndfwyl74
         eOjw==
X-Gm-Message-State: AOAM530HNdgjeWe3BH9P95a0uyV7oLUlrc4iYs0X4Uar98UMPoCveSvx
	457PXnKXUJStZUQN0R40i5vZYA==
X-Google-Smtp-Source: 
 ABdhPJy00HxDo3B7TAkFx7SeQUWpECg481Pz10T6DhEqm0e4hRHqCa9vg/sbeKK41V4PqYq3Lf7xxA==
X-Received: by 2002:a92:a306:0:b0:2d1:d863:eeda with SMTP id
 a6-20020a92a306000000b002d1d863eedamr8300622ili.285.1653683103203;
        Fri, 27 May 2022 13:25:03 -0700 (PDT)
Received: from godzilla (192-0-174-222.cpe.teksavvy.com. [192.0.174.222])
        by smtp.gmail.com with ESMTPSA id
 z17-20020a056638241100b0032b3a7817cfsm801338jat.147.2022.05.27.13.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 May 2022 13:25:02 -0700 (PDT)
Date: Fri, 27 May 2022 16:25:00 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: Tim Orling <ticotimo@gmail.com>
cc: Jan Simon Moeller <jsmoeller@linuxfoundation.org>,
    Luca Ceresoli <luca.ceresoli@bootlin.com>,
    Richard Purdie <richard.purdie@linuxfoundation.org>,
    Marius Vlad <marius.vlad@collabora.com>,
    "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-egl failure: Nothing RPROVIDES polkit
In-Reply-To: 
 <CANx9H-D_w2hupHXMxqYvQ2JYgfEKdvw5A_+OBpJ_9LW81s8efA@mail.gmail.com>
Message-ID: <4e629bf9-1cb7-f1b1-4ca7-b2e535aeeea0@spiteful.org>
References: <20220527135751.54a29f24@melee>
 <CADja47NmNz+8es0ymHYxmozSPmMA1TCTFeDg7epCDoXMEgYzbA@mail.gmail.com>
 <CANx9H-D_w2hupHXMxqYvQ2JYgfEKdvw5A_+OBpJ_9LW81s8efA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 May 2022 20:25:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57207

On Fri, 27 May 2022, Tim Orling wrote:

> On Fri, May 27, 2022 at 9:18 AM Jan Simon Moeller <
> jsmoeller@linuxfoundation.org> wrote:
>
> > Hi !
> >
> > Yes, we need to look into this and likely change the location of the
> > RDEPENDS.
> > Thanks for flagging.
> >
> > polkit needs to be in DISTRO_FEATURES and the recipe needs to have a check
> for that (and inherit features_check)
[snip]

For an immediate fix I've moved the polkit addition to a bbappend added
via BBFILES_DYNAMIC, gated on meta-oe presence.  The current intent is
that the meta-agl-core test on the autobuilder only need poky, so letting
this slip in was a thinko on our part.  We may revisit making meta-oe a
required dependency when binary packagefeed prototyping starts in AGL.
Your comment re features_check is right on, I'll add that when I get a
chance over the weekend.  One thing I may bring up on the next dev call
is Weston does need polkit in some situations (hence the addition in
AGL), so maybe shifting it to oe-core starts to make more sense now...

Cheers,

Scott


