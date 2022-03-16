Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78AC2C433F5
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 09:52:53 +0000 (UTC)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web11.23051.1647424372405606655
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 02:52:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SUqX0VAH;
 spf=pass (domain: gmail.com, ip: 209.85.217.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id y4so1580830vsd.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 02:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FoAY6M2Xei9MwZC0n1/K7aarK7r7G4JJI2Sk5iNUhc4=;
        b=SUqX0VAHzJpjmUYSsUhWIgZ5Ls4B0P2TfDYsbV1LZvRptYH51mwEGjHujV8YVO5F7b
         GLJdeQPuusB8erit5XXzxj1niKfeDJ5MtpCs+FEGbmm5oEzI+DpWjip34yFiL9T8oC/Z
         GE4iOhueMLGRzl246+p6cYyBFmgQfSDV0R8ZvbLhSVObfJu1Uh4C4wkrbym/YpDw5EUL
         KT2s14P++pVoaXGXhpU7R/cwIVsZNTZ8MPn7HNq8ca3oFwOl2sXDyouIAHrtsneLh1BW
         mYskhhaYvP+ww3s+MumN/zV3Yka9QpEOEEuTpvCBfeNPWJ7SlmGKZz4hIkBacUL5jsqu
         ljAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FoAY6M2Xei9MwZC0n1/K7aarK7r7G4JJI2Sk5iNUhc4=;
        b=dKvLvI2ZKNhgwCALQub/UZM9HDgufYW1pJjj4ocRiFM1fpAFTN/XpRJLwfO1MSAUMd
         L18IvF+nBQF+uJTQsHo5UefO7PoCQuTV8yKO01O+ObtJGMtxglIOgsIxgaVWupq+7tm7
         ZQrSbfwvEPwXHz/3obpsmATopBiKDHnOy2UxJksJoqe4lDzTsZuex3q2BQJbv0yHfxIi
         PF24FbcBUHgnRu4fMQH1G6PV57Ky0A3Dgc2Iutv1II1A6A0Jy0dENhB8bfUWdpZ/fzFl
         6LmiEMjivZPTTjNIEFipI9eoL+zu7axtD3MUc9AHetVFpGpmjxRBQb+m3kR+6MT/u1nR
         Hbqw==
X-Gm-Message-State: AOAM533ygQ5cc/YZ9DNryvTWmUwq+HlNwMR3uDHLZuKDTYpKUElDB8/3
	ctio9nW5gQE1uZPwV5wywJfLdX1WsWCbpL2T6m8=
X-Google-Smtp-Source: 
 ABdhPJz0eAWwmyBVtUfRz4ytUD8ryZxevbeizHHd/e+E1ZGkYzNRZAet7cxAHEFIzWc5NKzYocODAmuEYPWvjfHj0F4=
X-Received: by 2002:a05:6102:cce:b0:322:c483:76b2 with SMTP id
 g14-20020a0561020cce00b00322c48376b2mr8889927vst.45.1647424371527; Wed, 16
 Mar 2022 02:52:51 -0700 (PDT)
MIME-Version: 1.0
References: <Glxl.1647417254477654340.oyPL@lists.yoctoproject.org>
 <bb12b230-34fa-416f-b4f1-f94ecd35ca59@www.fastmail.com>
In-Reply-To: <bb12b230-34fa-416f-b4f1-f94ecd35ca59@www.fastmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 16 Mar 2022 10:52:40 +0100
Message-ID: 
 <CANNYZj8C+A31qXXsy01eKO8V6uYnTP1fye8nfOK8xGhU7bwk+g@mail.gmail.com>
Subject: Re: [yocto] How to manage disk space while working with Yocto?
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: Sourabh Hegde <hrsourabh011@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 09:52:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56460

On Wed, 16 Mar 2022 at 10:13, Manuel Wagesreither <ManWag@fastmail.fm> wrote:
> I have tried deleting $TMPDIR (build/tmp), $SSTATE_DIR (build/sstate-cache), $DL_DIR (build/downloads). But these things didn't help me.
>
>
> These directories are crucial for a yocto build and they will get recreated if not existing. Deleting them does nothing besides prolonging the build process.

Only the last two. Deleting tmp/ does help as then any needed binary
items will be taken from sstate cache instead of being unpacked from
source and rebuilt.

Alex

