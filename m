Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2431C001B0
	for <webhook@archiver.kernel.org>; Sun, 23 Jul 2023 12:03:44 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.24086.1690113815043902686
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Jul 2023 05:03:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=NYlFHBCP;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2b702319893so49055101fa.3
        for <yocto@lists.yoctoproject.org>; Sun, 23 Jul 2023 05:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690113813; x=1690718613;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gegD38Iu5Yw0wUeOcs1BUQm/ObW3cnyu6j5Ka05d854=;
        b=NYlFHBCP1G+JUf4HG/drJbClZdtm4yPWgNekh+fKjV42HOQly+ZyYaOWIYykeZR8Fw
         D4b012XfFvrVN8nIdZUgMx7RXwz6iBqaamyMuHuEnGR9VBwYm524WSv4XHgtFZsuETis
         3Mlg/TVi0nIqPzlQIeqeuX9Kkrg09wkvSiufhzVBGvluyNbLMiR5iL6tz8LRMu4kEbN1
         XWpQZ99eJauTICbSgHpzu/XfnP32NgimMwbCeok8A1ECj2/kjdPRpYFO0XqjpQrYVyDw
         DmQ0srDAoVLaiKiyGoGtVVBoLeF464j2z6s6G+KNHq2gAud1tQh1WLb8SZ/vtwTAknRE
         Mw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690113813; x=1690718613;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gegD38Iu5Yw0wUeOcs1BUQm/ObW3cnyu6j5Ka05d854=;
        b=YIYA44bBQK1U5hLL7H33ZIEgk3dOjVtfPjWWFutBrvnwrZlck64e6/QTnkzhY07XoN
         eVuK/MLwp/z15qu+xVAaXCdJMaE17YIVohDhuIr1nl5yJSeoK2d+MjWdntsCn9DKaUt3
         EHTu40Rnia46TEzGil8UyVEJktSHJeql+K+1b0kgN71+nP1Sw56rN4DUGiFV6wDhvdzE
         a3IWP6UL4COc8tqGVZxbVm/iw7pHzuCab6QxYZlgT+XA6r0aPVQyoClAMuG+gLFAw4or
         LD9rqvMNh0y7MTbTBoT/YgwovbVBfxv+/RvRt65GpDJhZWhJhODMIvqw9xbupgvg6rjO
         s2Gw==
X-Gm-Message-State: ABy/qLakHN7FmPdjpzKOTipN+l4TeYbCvzbvjn4BqoALfr8Sk/RE4JVz
	IwfGdA0Wzcsd/E1dhoLtcqkv/OAL6Fh4x9quayI=
X-Google-Smtp-Source: APBJJlFiiwm7/ON7JMXn/4lhdJiNaOH2k6Qd4VAUagRRF4ikaGwX2UROw1OXS4b/WawRD5zNUwR648O1OFNXWw/U42Y=
X-Received: by 2002:a2e:9cd1:0:b0:2b6:cf6f:159e with SMTP id
 g17-20020a2e9cd1000000b002b6cf6f159emr3861450ljj.44.1690113813036; Sun, 23
 Jul 2023 05:03:33 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
 <19295.1689959511730394329@lists.yoctoproject.org>
In-Reply-To: <19295.1689959511730394329@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 23 Jul 2023 14:03:21 +0200
Message-ID: <CANNYZj-8OmyKkM0FJnDf578mFOwt5XqoKRULUOgtSVrLo8Nn-w@mail.gmail.com>
Subject: Re: [yocto] File magic/sdk relocation
To: ohnatiuk@cisco.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 23 Jul 2023 12:03:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60633

On Fri, 21 Jul 2023 at 19:11, Oleksandr Hnatiuk via
lists.yoctoproject.org <ohnatiuk=cisco.com@lists.yoctoproject.org>
wrote:
>
> On Mon, Jun 19, 2023 at 08:27 PM, Alexander Kanavin wrote:
>
> On closer look, it should even say:
> export MAGIC="\$OECORE_NATIVE_SYSROOT/usr/share/misc/magic.mgc"
>
> Hi Alexander,
>
> We have submitted the patch[1] which fixes the build for our case but doesn't change the contents of file.sh which is a separate issue.
> You suggested changing MAGIC to "\$OECORE_NATIVE_SYSROOT/usr/share/misc/magic.mgc".
> We can also get the same result with "${datadir}/misc/magic.mgc" which is what was used for create_cmdline_wrapper in this recipe.
> Which one is preferred?

I don't have a preference. If both options work, there's clearly more
sdk relocation magic in various places than I thought was happening,
so I would pick the option that is less likely to quietly regress, but
right now I can't say which one that would be.

Alex

