Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6B01C61DA4
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 17:34:31 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web11.395.1678728869205575768
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 10:34:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SE2nvObH;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id x13so4544449edd.1
        for <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 10:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678728867;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8bTPH0l7Z7S9rmkDVHWg3ycF2JfAIdmxtVsaBMs5vO8=;
        b=SE2nvObHcR5lZQLXDi2WPFuY/yD8b7gdhARWPgtPmbPY6JLZebUERFh/2Nh23qvv+E
         +HppwxVKBkYnLpSUxKPnTh0P1gy6vSCJNpM+gnDJ2MNahGFPFJ0jHv7Ey3XUR6fUDp5b
         XoEGX8gf4YmDmlnJz/0EeV0nLWBlIZOU7Z6b/dv54AquHAmXNVoax8xioeQtXe+6dyIs
         6udp1r8MSwI+VDGoERvdqMCI7vRoUdseqT+Fsg7R2e6RSSKXmqYEeG+V7KAXMWeAuCA0
         kKbasl4WBU9OZjAAN61qaD5WEAjkcuEVjBPoCKZ0wlj1TCp5+jhOrmiNQfaDZRvGjl+z
         mt7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678728867;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8bTPH0l7Z7S9rmkDVHWg3ycF2JfAIdmxtVsaBMs5vO8=;
        b=2QaHy3yldORG0cX7H6XLfTJ/g+56zOjG4Nj/nHTTfsUcqUzZ7dZiw7DJltovjZ1NeL
         NH4257ixFcAM2rBNI0p/OrtSAOhbHV3fEa/lmS2mcTpmhvwBnWVCJAQChzyfXAWycs6v
         YlvO3l+T+Uklmkr+Opn+JXre/IrhRlHv1VB8tcq63d/pMRCNn0B7zUP0fAKdBwGXWL2v
         67tl2Uttp4CM1bCqpp2X6SurZr7DtGWxQhlyR8IdyEHHWhbiGhLmUWGjZYvUCclFyO9t
         /WUNvjGktej0RRTN6t3l9/cFFQUzD6QwKy5fPJX9O9oRYUY6KM0ObI8gXE77vQbIb9r7
         jrZg==
X-Gm-Message-State: AO0yUKVqp1hHv2XN/eLNoirv1WUKA3Ah0YhxJixtXyuhIWuaOBPFOuLh
	Ij03WHCDhNs7zGFp6CPhjfwrN3OWysYciuD+Ih8=
X-Google-Smtp-Source: AK7set+8IARUlN3NgxOLXKf+SXp2tl4h9xXE33iwB/NO3nSbsEBLH0ydMtz6I9pk3AmQ4VW8Cbr2z7qfqiYu5PsCIXU=
X-Received: by 2002:a17:906:338b:b0:879:e5b2:e12d with SMTP id
 v11-20020a170906338b00b00879e5b2e12dmr16229453eja.13.1678728867260; Mon, 13
 Mar 2023 10:34:27 -0700 (PDT)
MIME-Version: 1.0
References: <c607b08fa41a4dfeb70aad68f70f961a@vivavis.com>
In-Reply-To: <c607b08fa41a4dfeb70aad68f70f961a@vivavis.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 13 Mar 2023 18:34:15 +0100
Message-ID: <CANNYZj8rJ5dUFpQ2Pa1NkfHFDHaYn8vbBvo5hQYVNbBbH6OzYA@mail.gmail.com>
Subject: Re: [yocto] State of Yocto styleguide and oe-stylize.py script
To: embedded@vivavis.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 17:34:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59419

There is not a lot of interest in maintaining style guides, and
associated tooling. My personal feeling is that they don't really help
with the truly problematic things in recipes that need a human eye (or
chatgpt level intelligence :) - by and large people do follow
reasonable order of entries for example, and nitpicking on an exact
order would just be wasting precious maintainer time.

If you want to ensure good quality, making your layer pass the yocto
compatibility script, and ensuring there are no warnings of any kind
from bitbake when built with latest master revisions of everything is
a better first step in my opinion.

Alex

On Mon, 13 Mar 2023 at 15:20, VIVAVIS AG via lists.yoctoproject.org
<embedded=vivavis.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I'm wondering whether the styleguide www.openembedded.org/wiki/Styleguide,
> meta-openembedded/contrib/oe-stylize.py or none of them is the source of
> truth for writing a good recipe.
>
> E.g., if you run oe-stylize.py, the SRCREV variable is placed above SRC_URI,
> or RDEPENDS is placed above FILES, which is not what the Wiki documents.
> And there are more discrepancies of this type.
>
> Furthermore, the script doesn't know the FILESEXTRAPATHS variable in bbappend files
> and moves it to the end of my recipe. Well, this is not decribed in the Wiki, but a look
> into append files in meta-openembedded shows, that it is common pactice to put
> FILESEXTRAPATHS in the first line of the recipe.
>
> The Wiki has an interesting note and the end: "You can run contrib/oe-stylize.py from
> meta-oe on your recipes before submitting them; however it is not necessarily up-to-date
> with all current style conventions. This page should be considered the canonical reference."
>
> Furthermore, there's github.com/openembedded/meta-openembedded/pull/465
> providing another ruleset for the new linter.
>
> So, my question to the Yocto maintainers is, what is the current state of the styleguide
> and oe-stylize.py? Are there plans to synchronize them?
>
> Thanks for clarification.
>
> Carsten Stelling
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59408): https://lists.yoctoproject.org/g/yocto/message/59408
> Mute This Topic: https://lists.yoctoproject.org/mt/97581374/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

