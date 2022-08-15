Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A7EC25B0E
	for <webhook@archiver.kernel.org>; Mon, 15 Aug 2022 06:49:39 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.13688.1660546172787126504
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 Aug 2022 23:49:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KcMWgBgs;
 spf=pass (domain: gmail.com, ip: 209.85.208.176,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id bx38so6764239ljb.10
        for <yocto@lists.yoctoproject.org>;
 Sun, 14 Aug 2022 23:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=dgKDrDJDZNuuPoWc3vbiSEfHjhUosGj8onzShsSP3Fc=;
        b=KcMWgBgsO8fDZMnzXXA5CDUSSGGtyErNMJMBf+IXq/KApOXftESXF4/cMrJn3RtjaZ
         gm467/RKnkSAFsn911kSjhGNShuZfGQ9MJKxc3rY1nbE1DxujonGH/smiA25yPzmmeXB
         HAIMlf3+vmcOO86Ytt8i2fjfXVtxWvSU9tLwIR0PZmBY42SPHldwClOlDfOhCGsiWlEO
         jJnlpcu6n9MEzx6HZ5lUvaV8M6vtyIuf0bT2JALbxPmP9IM/uFZOAbbxP1n1THDkCLgD
         7CSnQwvuNI5mjdiCQwsgfWPfPsXCYIr+v2A/5HTb3IPJ2AF25XNWiMtR8RW7zFk6gTj6
         hV3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=dgKDrDJDZNuuPoWc3vbiSEfHjhUosGj8onzShsSP3Fc=;
        b=y0w7xbx7CHSS/EPNJBA1hI9dFJpZJN0SFe6imJWidK2m7io/sKbI+MUAxiKSxEtT6u
         jYMcADdZOZsJoKgORM+ZVqPXFm+Gh95HBhzWBT4AMboRmg0fLEF726NJZBUHmain+HJ/
         rBvgM8Y3/KbPyAxC8C4SfrH95JakBfkIHbGzIduR6pW9txcS050crWoacJ1ISY80NqIr
         gzMNFG6j5EYFy8s0/N7mLAKdzs2COAGSd6usUYmgZDT/yNBJMungi6pSbOwMpralq+rI
         myEsAlvW/yEJ5SIyEnhrkcGo+7Ur7W86WRhNPiI+pKfUhqLnb6RtapwDIWH2RqbWhQtz
         mY9A==
X-Gm-Message-State: ACgBeo2RBM4eVmLfwWOg1nR2s+6eOLxjrRmS6XttccQbAI9Q4no2Z3Ua
	HSNHtmbDGEGcOM/55C4ZWzVNaNcCZHuWlvxeVXQ=
X-Google-Smtp-Source: 
 AA6agR7mjMirWnlAW1FwqHWzE4tnKOFZZLguVRYz1iLFrMvWKK+g6p7VOr+AAtbFwOQX+9+54pqW3T3pkINcsAhjyvw=
X-Received: by 2002:a2e:3a09:0:b0:25e:4212:5628 with SMTP id
 h9-20020a2e3a09000000b0025e42125628mr4239350lja.68.1660546170651; Sun, 14 Aug
 2022 23:49:30 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAAPjnHXq=vhtigPtjedD8d-Sac0s+D9E5jpEFmk0MicgZND8jg@mail.gmail.com>
In-Reply-To: 
 <CAAPjnHXq=vhtigPtjedD8d-Sac0s+D9E5jpEFmk0MicgZND8jg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 15 Aug 2022 08:49:19 +0200
Message-ID: 
 <CANNYZj-4Bie3gVzbW1O8s55-CbOE6_E8qV_oLDBSqtw9XSWLqQ@mail.gmail.com>
Subject: Re: [yocto] do_install & RDEPENDS
To: Gian Lorenzo Meocci <glmeocci@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Aug 2022 06:49:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57842

It's hard to say what happens if we can't see your recipes. Can you
publish them?

Alex

On Mon, 15 Aug 2022 at 00:54, Gian Lorenzo Meocci <glmeocci@gmail.com> wrote:
>
> Inside the do_install I copy some files
> but it seems that bitbake set those files in the RDEPENS.
>
> In the log during the do_root_fs I see:
> Requires(post): ... mylib.so
>
> After that the commands fail with the error message:
>
> Problem: conflicting requests
>  - nothing provides mylib.so needed by mypackage-0.10.14r0.core2_64
>
> Is there a way to disable this behaviour?
>
> --
> GL
> https://www.meocci.it
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57840): https://lists.yoctoproject.org/g/yocto/message/57840
> Mute This Topic: https://lists.yoctoproject.org/mt/93025764/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

