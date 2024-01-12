Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 298DCC4706C
	for <webhook@archiver.kernel.org>; Fri, 12 Jan 2024 14:11:34 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.7795.1705068692454069446
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jan 2024 06:11:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B9qhz0Fc;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ccec119587so78789411fa.0
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jan 2024 06:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705068690; x=1705673490; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3qpfDaQG28tAHK0NJK/0C3mFGWtrM9+5WKj5d6bvA8M=;
        b=B9qhz0FcrLRKDUXGoojqFVzcpd94L/BQLgxiC/YuP8ca/OEuvXNAQpdc31yikftaqN
         pqeMCMT9U9gviE3KWh1FQdoMWlNce+tfHoeCOiZGAIatPcVv7m3nqdWWXMWKBFNRD75Z
         NpjV6t6hWLIsIueH8NErjuKsCqY/IG5o4vgbgOrzYiG5+UPnQwHS1iBgNhxnq+5qe4Hl
         GgQUpjBLKbPgtMFbgzRAADgXCwHHBjM+RLCBi/kWW30G4SHwKj0HNt/jd55M3+rqJC0V
         8qFwuOoqMAK/Hspz6uVt0BZRwDoALKmAJaCmEKogkn3irxDH+aN/aAXeqPBeX5G8swmr
         80/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705068690; x=1705673490;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3qpfDaQG28tAHK0NJK/0C3mFGWtrM9+5WKj5d6bvA8M=;
        b=BLcwGqbqbfQl6wx+fkjkTmQWfEHVyLGrJinxRQ9s9SLKOkmYza/xy05eU0dj1N9lP6
         zNKIs7C4LBlZ3QO+FZH8PeOpdZ2eLnbWkT7XVzfu6ytbpcelg2GpNaNYmk4j0nIaCeLw
         DwBN1ViDrJWDcxZH/87ap2XVOyh3KQyE0fbJHQqL4iVO8hEY/x0iACKIPMjl3kzywumW
         vD09RQqKVBXNPJoCMpKeiPAFqL/i2WANzUIr53izmWw+ZnEpPxM+EmrPdZslpFCL7A2P
         FTLWM32AKCJFym82kgUUxguOrDGLftFZSJOgucl5p0lST7Lad0ZvuKED2whVCvQeWWcR
         DP1g==
X-Gm-Message-State: AOJu0Ywl6rEEkLVWv3vL+9na3bonByGTt7ISwxe8Hr8fwynR4p/a4eOO
	v/ZQwUxZSP5DIfIFChtEXcTfCsP6oYhe3PBEbMFTgYinHlY=
X-Google-Smtp-Source: AGHT+IFDnG3cRbc8L7UejFg4ajzlthmg6+dZB6WuFzQTUj9T7zQuN3N8RoUjyVLsCZcXdaKaDiGcCghrmAzpGoKVpKI=
X-Received: by 2002:ac2:4a6f:0:b0:50e:2551:c8ce with SMTP id
 q15-20020ac24a6f000000b0050e2551c8cemr641197lfp.119.1705068690270; Fri, 12
 Jan 2024 06:11:30 -0800 (PST)
MIME-Version: 1.0
References: <3da054ed-69d5-4d87-98f6-f7a8ae20994d@bootlin.com>
In-Reply-To: <3da054ed-69d5-4d87-98f6-f7a8ae20994d@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 12 Jan 2024 15:11:19 +0100
Message-ID: <CANNYZj_xniBAum7ZEDGTOGaeTntcBA-EN--Rg5DPqFmfz-APtw@mail.gmail.com>
Subject: Re: [yocto] Binary feeds: how are we supposed to use "dnf upgrade"?
To: yocto@lists.yoctoproject.org, michael.opdenacker@bootlin.com
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jan 2024 14:11:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62137

Note the existing tests in meta/lib/oeqa/runtime/cases/dnf.py - the do
use a remote http repo to install a file, but the repo configuration
is supplied on command line with --repofrompath, and upgrading is not
tested.

Alex

On Fri, 12 Jan 2024 at 15:05, Michael Opdenacker via
lists.yoctoproject.org
<michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
>
> Greetings,
>
> I'm making binary package update tests on Nanbield.
> No problem with an ipk package feed. If I remember correctly:
>
>  > opkg update
>  > opkg upgrade
>
> I'm running this from a Nanbield 4.3.1 image, using feeds generated on
> another machine with the tip of the "nanbield" branch.
>
> If I switch to
> PACKAGE_CLASSES = "package_rpm"
>
> If can't seem to be able to do the same thing:
>
>  > dnf upgrade
>
> OE Remote Repo:8000                                                                                                                                                                0.0  B/s |   0  B     00:00
>
> Error: Failed to download metadata for repo 'oe-remote-repo8000': Cannot download repomd.xml: Empty mirrorlist and no basepath specified!
>
> Ignoring repositories: oe-remote-repo8000
>
> Dependencies resolved.
>
> Nothing to do.
>
> Complete!
>
>
> My http server doesn't even receive any request!
>
> Here are the contents of /etc/yum.repos.d/oe-remote-repo8000.repo:
>
> [oe-remote-repo8000]
> name=OE Remote Repo:8000
> baseurl=192.168.1.34:8000
> gpgcheck=0
>
> However the following command works:
>  > wget http://192.168.1.34:8000/repodata/repomd.xml
>
> On Fedora 39, I can just run "dnf upgrade" and everything works. I'm
> starting to suspect that something is missing in the rpm related files
> we generate.
>
> At least, this shows the usefulness of implementing such checks (working
> on these).
>
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62136): https://lists.yoctoproject.org/g/yocto/message/62136
> Mute This Topic: https://lists.yoctoproject.org/mt/103682993/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

