Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FACD6EBEF
	for <webhook@archiver.kernel.org>; Fri, 29 Nov 2024 08:53:53 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.112368.1732870426239046100
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2024 00:53:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RvDGWA8D;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6d849a93088so10844476d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2024 00:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732870425; x=1733475225; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQINQ+NzXgcizKia5CmkdI9QtJWxGA7AWNRQzzGkRg8=;
        b=RvDGWA8DHvdy56nhMM33vDJKDYcwlvejZG65HOY5pBajgnh6s0p5ZrlqDEyMWbjIge
         /rtewJH5aHN216Mu0lTzgglW42q+AZi/ayCwiq2MThyB+xsLTHfKURPbk2++3al8dGjm
         C8lePdfTOwX692pH3mSbY1qMrNTMA5FSZGp2PBqH24/L6xFB0SuwGRhjgoO9q7XM4IiQ
         c0/xa0hedDUYFk+ZoupgdFnYVwYqHcI52YNb7d2SL4kSdQzmtveTt59YNx1+rQE7fleh
         gzV4wjH+rhKRw4yUxKgt/CW7BywjDtr+MVd/gaiW2rYsadMUNiHuTtrQaFjWiNCC7UpV
         GvTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732870425; x=1733475225;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZQINQ+NzXgcizKia5CmkdI9QtJWxGA7AWNRQzzGkRg8=;
        b=hDU7Q6TIXuDfoRabZtHBk8OKS86uYDP2Gl5lqNiaOAOu1wiU1lnLz3Nll96nr9YrfT
         HB+9IdPKnQ5vKyubbAEffZFLsn64rvTdjg9iJ6pIdeuUr6w77+Y1OpxK0HyoUNqdfrB9
         ofyzsyf820hTJjZoZMVqtz16OK3ZHcCqRvD8DrsCXoojaJZNncqcr3V1xY+OJQ9wkQ6j
         t4IESDh7WqguoVPqjYDeiSppNDXa7saXsJONlH29T67r8tDZO62nmT8RLrSn1Dgen3ga
         GQE8+gr1FAm9CWFWhMFzhBujhSE6pyP5kNZ8aGAxRDZmEITDgv+9aKxPW3/WaZ/wo3Mk
         7OjQ==
X-Gm-Message-State: AOJu0YxJ1JglOdPA5r8FMMCpTvuJFMEqu/HNTgPJIK92qUtc9HpRf8Cw
	7zlXkSSenpBgy7/Y652fIw2peqJVztIelI+NgxZj+Csq/05GwioZ8WNwnqZ74HakuEey7O9vXSt
	g5jIN0q36pnFeSO69viR6uupC4Ev7Nw==
X-Gm-Gg: ASbGnct5NtbcEszunAjpkki8SDYL9heaW2T43aPjnZuFTqjKCJgAr91aXkfZ1AnwCU1
	saMWOa1q8S8duCczUli7Xrv0ueeC415keInVZLxHJY7spq8C9VMTZiWten202AJS30w==
X-Google-Smtp-Source: AGHT+IGXmI1o3TUr755ssfsWW81uTrLmjBrSnxS7kYuVa1+2adOIY71fPl+XzTicEbxBLakW1iKl78Bz4aDPcBEXRYs=
X-Received: by 2002:a05:6214:2529:b0:6d4:242d:58fb with SMTP id
 6a1803df08f44-6d864d8cd81mr152141336d6.33.1732870425141; Fri, 29 Nov 2024
 00:53:45 -0800 (PST)
MIME-Version: 1.0
References: <L5gW.1732831587616598404.F3hX@lists.yoctoproject.org> <75752ab8-98a1-4edb-bc79-03664ac7a939@gmail.com>
In-Reply-To: <75752ab8-98a1-4edb-bc79-03664ac7a939@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 29 Nov 2024 09:53:34 +0100
Message-ID: <CANNYZj-RHeaqoCRKiN4gYknFAKoRpFrieWJsm8=1zs79vxkHwA@mail.gmail.com>
Subject: Re: [yocto] Trying to build image with example proyect but getting
 (do_fetch: Fetcher failure for URL) error #bitbake #poky #zeus
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com
Cc: juan.aguirre@omron.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2024 08:53:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64378

On Fri, 29 Nov 2024 at 07:20, Gyorgy Sarvari via
lists.yoctoproject.org <skandigraun=gmail.com@lists.yoctoproject.org>
wrote:
> Zeus has been EOL since 2020 - and as most unmaintained things,
> unfortunately it starts rotting. This particular bmap-tools error comes
> from the "master" branch being renamed to "main" lately (but the recipe
> still expects "master" to exist).
>
> You can try fixing these with bbappends and the like, but these old
> releases have also unfixed bugs and (since discovered) security
> problems, etc. - there are compelling reasons not to use them.
>
> Try a newer, still maintainer release.

That said, the question of how to be able to reliably reproduce an old
yocto build is a valid one. But one needs to prepare for it:
- preserve the download directory
- preserve all the layer checkouts
- not use AUTOREV for anything
- put the build in a container with an appropriate host distribution
and no network access (so that recipes won't be able to fetch random
things from the network)
- run test builds inside that container without sstate (e.g. once a week)

If this work isn't done, then one won't be able to rebuild things in
the future :-/

Alex

