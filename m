Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78464C83F0A
	for <webhook@archiver.kernel.org>; Mon,  7 Jul 2025 07:02:46 +0000 (UTC)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web11.54018.1751871761951861931
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Jul 2025 00:02:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XN5DO8L6;
 spf=pass (domain: gmail.com, ip: 209.85.222.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-87f0efa51c0so483815241.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Jul 2025 00:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751871761; x=1752476561; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WqXwZHV4o49joztUD0ULXVCcLoNUFZvAYQLiSwlu1o8=;
        b=XN5DO8L6uHBA/TWLhfkCONREmUw3iuUHafKILQzGEv75OCPjT2QvM5pE2EYQT5nBBB
         ESZGUtB018ESjm+ysQvrBrzw0H3FdZ3OWHnpK+dSvU0CBS/niVXsAHFJ1nc83ztawIVa
         sO/6YGI1wsrZt6kKLmZXTppNOvUPZEtLe4Bzp01l1c1ujWqjY5YaLk5bhSZyv++o0qQx
         n30hYOgLXzchDths7/c6400Rvrble1PTt2I9GLxSSwI+qIZ8WxFi/SkjRp1cELzLgc1J
         IZwTw0960LuVsEjpoX0O71/+xcPPSoim3zrGx69uvxK/9LyOrzmSyacsnoRSWTUMEELz
         44Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751871761; x=1752476561;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WqXwZHV4o49joztUD0ULXVCcLoNUFZvAYQLiSwlu1o8=;
        b=xRhr16zMJ4S7HGxpDttHfG2YqWR4Dlhh9fIPsFZSamaA08/jys04KxzMsNn/IVuGtu
         ywmGr+rq9i41bjBLxMubRS2G0hD2gYAw6+03ZJ25n5XlFzWSvzuWZXAa9z2UnylqgnoN
         CG24/6nQnL91kRAnNMl7btr4cCbs0GZORnGrj3/WJ99L4XLfqaIoSln6FGbS0EFTK3/x
         zmu9ZGFnoHsTqNrq+KlWycRfdlwLBJ4yNBbpzCO+9cmTyl3GuQnV8khnNZ9gzROKCBAA
         Ata6l/fGS+pQgWqbL1bxX7vYvKqOOB5Fu9qaZ6n1psB+xM+PZEB1DkUJNXhlGRnzGtAx
         kPbQ==
X-Gm-Message-State: AOJu0YywtffFRlQcZSo4R+q2/I1kbwEhsl7JZA6UfSZFppsR/k97d0OJ
	6EZN1+QJ9dR70DTGWmiQC/XRHyoZVhsWeP3fUxywQmJt8vp5fXFqlT07syAvjNjp/8W068VHYyt
	PCs4ASMoLhcIfQ66ZO69dhfZCYX88dvGX8QnvRs8=
X-Gm-Gg: ASbGncvVEwT15KugSCokYYj9nIFOlTLyQytEL+245RmUBQjH3gwtvqTtRoFIcOPIAkF
	QQjb7pMa6EZ7furgslgF7awqp8Aa+CYjSswol9HIi8jcVDViPjzkbScns1kBc8cmO9/j98eLY9j
	JDayxJMHgZBsH530AExGPNUPFHvXzJvuio0LIzs/yGXH/i6lrOg1Cckzg1rA==
X-Google-Smtp-Source: AGHT+IEzzMpruHj91WcHF9LrYcpOaJ1FWMTh1hRYSw31SB1nsJIlP0NsZ35VMAlbUwqbsTjSlM3p3YZ7fnHUWafBKOw=
X-Received: by 2002:a05:6102:1609:b0:4e7:3efd:ac76 with SMTP id
 ada2fe7eead31-4f3059f6095mr3908567137.8.1751871760826; Mon, 07 Jul 2025
 00:02:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb_mX+D24LjOozpm=m_Y=5AhHSX=5OtNdbNHWg99mcuFNw@mail.gmail.com>
In-Reply-To: <CAK5yBb_mX+D24LjOozpm=m_Y=5AhHSX=5OtNdbNHWg99mcuFNw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 7 Jul 2025 09:02:29 +0200
X-Gm-Features: Ac12FXxPGDXl86yn9pk3D72Gs7YK2WNO5lubdc7V6dvI1yAIp5ESWGGc5aK7HCY
Message-ID: <CANNYZj9R79Um9BvKmZmOrCZLnVaDk3cfO1KHM8bu54mu3F-68Q@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 1 July. 2025 (WW26)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Jul 2025 07:02:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65619

On Tue, 1 Jul 2025 at 16:44, Stephen Jolley via lists.openembedded.org
<sjolley.yp.pm=gmail.com@lists.openembedded.org> wrote:
> For M2, the following changes have been mentioned as possibilities:
>
> bitbake-setup

This was discussed on the call; the next step would be to start using
it on the autobuilder. That would significantly boost the credibility
of the project, and validate it in a real, mission-critical setting :)

Before that can happen, the tool still needs additional functionality:

- nested bitbake configurations, that would be an equivalent of
'templates' in autobuilder's config.json. E.g. a top level base config
that sets autobuilder-specific fragments for all builds, then an
intemediate config that sets what images and other targets get build,
then final configs that set target machines.

- ability to override git repo locations/revisions from the command
line. E.g. the config file sets master branches for all repos, but one
wants to build master-next.

- ability to select a subset of bitbake configurations for
initialization/update. An autobuilder config would specify dozens of
configurations, but any particular worker machine would only work on
one of them. There is no need to initialize every bitbake config, and
it would only add delays and clutter.

Once all of this in place, config.json could be gradually transitioned
to defer to bitbake-setup:

       "qemux86-64" : {
            "BBSETUP" : "qemux86-64",
        },

and the code would run that with appropriate build-specific
parameters. Config.json also has custom local.conf tweaks all over the
place which would need to be reviewed and converted to fragments.
There's also nomenclature for targets
(BBTARGETS/SANITYTARGETS/EXTRACMDS), multi-step builds, and possibly
other things I haven't yet stumbled into, and that all needs to be
carried over to bitbake-setup without loss of functionality.

I'll get to it after the holiday, e.g. at the end of July or so.

Thanks,
Alex

