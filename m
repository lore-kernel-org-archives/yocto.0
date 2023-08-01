Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72161C001DF
	for <webhook@archiver.kernel.org>; Tue,  1 Aug 2023 13:41:10 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.13128.1690897267689352260
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Aug 2023 06:41:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=FJVny3uT;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2b9f48b6796so17605851fa.3
        for <yocto@lists.yoctoproject.org>; Tue, 01 Aug 2023 06:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690897266; x=1691502066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zMfdnQgtdwv7+jhSb0TUkIC/7PM9V55+UHs4LkMuflA=;
        b=FJVny3uTC/At0HYxeTL47QlSXUpEYhZlj0GSPrIFVaeF9dczOBz3a4hIBa+Q90ZCIU
         MTk3dF8atW0fu86YAH2aoQOoOtq/Jp9VbOOeXIewo7E6UYA1EHA0x+zoKv43+OFJwwdL
         Qsvh37CAWNsSypFotabB8+6gZ42wVI7C0fvZDUkVG9oGsxKiqdG+S8qRs0oIySVRNWEJ
         6BM2PwlLh3UlQVIx0jRRxEKAXZFmWr9aQGD6mQ7mDvKB9H10HI7ksbqO+bNuhkTBFubo
         4itbLXkXoyGKLDuSLknPClyd22q+43dPV68pg9UTywYt0JAiZ4NBE1YB8TPREpjGAZHX
         /YWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690897266; x=1691502066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zMfdnQgtdwv7+jhSb0TUkIC/7PM9V55+UHs4LkMuflA=;
        b=CZXZRX1yuypgXlzHiZX6PYngO1kezsKOnCGJWxOUhoFsGdPnWXQEsEOeb+MhwBMl0I
         vkTRNLdUmjt2+e4xYBjkwIkN6WC1Zf6gu5ohDppMXNE8k3kxG0eHcsBOLKY510CZ+gII
         bL6MD4Z4UC17CJQla4opwq7W+KJIE25Jp5JafpfjBqYMZxtICN3zwtCwSK+y3BhEKuyd
         kia5RJ7scPElUVOdOSD03ou7m99z1m+o/iQA4TDaKnEdQ5rWAA+osb4Ujzh7o4vhgDTE
         8dJzyegWzmTwCCe0f3jjuYzVpoz436ouw0C/wwCHUtBIECTG6Sqi9rAVkNoKF/pfCtfc
         ZcaA==
X-Gm-Message-State: ABy/qLYRdU8QLHn0PnEFa1awRIbEjrwEm4l4/1ttxcexjrP3zWbQFz1G
	/btMf+GjPxpSh+UfbiQizkapCHLrHPhnAT9yVr4=
X-Google-Smtp-Source: APBJJlFYUFgibbI00ORvPI1IW+vTRolYNsRxfqFHvSIGl2f9is9/uELQruO8bgSni1yunaRrls06EXx08ScdogBHcyw=
X-Received: by 2002:a2e:968e:0:b0:2b9:ee3e:240b with SMTP id
 q14-20020a2e968e000000b002b9ee3e240bmr2517382lji.41.1690897265598; Tue, 01
 Aug 2023 06:41:05 -0700 (PDT)
MIME-Version: 1.0
References: <2443ec38-4628-db58-5aa3-faf6f0c6d95f@gin.de>
In-Reply-To: <2443ec38-4628-db58-5aa3-faf6f0c6d95f@gin.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 1 Aug 2023 15:40:54 +0200
Message-ID: <CANNYZj8tLtnF3TiddvN3mPfNujX8L3vT7uX=QPLRh17suW6tMA@mail.gmail.com>
Subject: Re: [yocto] Sharing DL_DIR and SSTATE_DIR between parallel builds
To: Daniel Klauer <daniel.klauer@gin.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Aug 2023 13:41:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60696

In short, yes. Sstate files are first written into a random temporary
file, then renamed when writing is done.
DL_DIR items are guarded by lock files (look for lockfile in
bitbake/lib/bb/fetch2/__init__.py).

Clearing out old items from sstate and download caches must be done
when no builds are running.

Alex

On Tue, 1 Aug 2023 at 15:26, Daniel Klauer <daniel.klauer@gin.de> wrote:
>
> Hi,
>
> Is it safe to share DL_DIR and SSTATE_DIR between multiple Yocto builds t=
hat are running in parallel? Are all the accesses done by bitbake/Yocto ato=
mic or protected by locking? This came up because I'm wondering whether it =
would be possible to safely share a single downloads mirror and sstate cach=
e between multiple build agents (and not just read-only over a HTTP server,=
 but writing too).
>
> The documentation contains some sentences like "You can safely share this=
 directory between multiple builds on the same development machine" and "Yo=
u can reuse the directory for multiple builds", but this does not seem to c=
larify whether parallel builds are allowed. I have found an older message [=
1], which suggests that SSTATE_DIR is safe to share, but that still leaves =
me wondering about DL_DIR. Presumably bitbake uses plain rename()/mv for ta=
rballs, as for sstate, making them thread-safe. But what about Git repos - =
it's clear that Git itself uses locking, but bitbake may do more than just =
git operations. Does anyone have any more information on this, besides digg=
ing into the bitbake and bbclass sources? Is it "thread-safe"? A potentiall=
y related question: How does bitbake handle multiple do_fetch tasks for the=
 same repository running in parallel (if you have multiple recipes using th=
e same repo)?
>
> Thanks & kind regards,
> Daniel
>
> [1] https://www.yoctoproject.org/pipermail/yocto/2016-November/032873.htm=
l
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60695): https://lists.yoctoproject.org/g/yocto/messag=
e/60695
> Mute This Topic: https://lists.yoctoproject.org/mt/100483492/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

