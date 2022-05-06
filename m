Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE38AC433F5
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 12:14:17 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web11.8547.1651839249934205405
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 05:14:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QiODrMlx;
 spf=pass (domain: gmail.com, ip: 209.85.167.41,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id bu29so12308694lfb.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 05:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=I3/UmYSIsjfz77wqPBpnolNfm+yJy8G0IEDsOvh6NE4=;
        b=QiODrMlxk04ezLrznxh3hxsfI2h4IAzqPSA6FS/HH2xRF3JGsIeVNttoVRHqzwF4Yc
         EVCF1dPXJ/MbgWZZGfZmlMW8jBxJZ1nvr/5TzdTete4x5xmDXVyEUMPj9IIZg1NTocR3
         hcYJwsobNZw/4Hf1BzdecRK70he2Em0kG+4OfNUQXwrncOHOiyEfh04hT7WVEv3Iakcu
         671Wz/Df8uu6Chhiar7jRH/SAb+jxQ07QSNNpCNnJ9FpMb2c9TfGX/CwqBrXLi2Mxy0h
         mtmKUsOybscjidNxXjbGHdWiLyEGxZHLFRb2lQxBTllrEQSKg5Mz3behBNWpODGnJDJw
         gfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=I3/UmYSIsjfz77wqPBpnolNfm+yJy8G0IEDsOvh6NE4=;
        b=VN5dE0FXh1HpO6R51mU3zg+6ECk9M1TY1gnalVGl0VGVusKN4xOcwcMc9Dvy7BZGpo
         VxQ8gVacYlRS3riOh6WkEMIlxXNNjH6BIMaSsmWlPGsZ8FtsV51duvvzNkg+Lis7RL6s
         qNru50wZsthAzVho4TnroKkur+uNSc+YT9Ob3RVYnfSkBSsSykLBD33t/ZxsFOdKb+jb
         gGpx43hAiE7gw6dEM4w5dZoOGBq3ZHx3ICvP6WUNQ4c3cDwGu5BvjfJG8qQxMuwtBWI6
         a58LUICTVlFWnUb3hyARSJQSPWGHIfAAildxlSg/Z85UGepIBob2zJI5vEgaydooiEkC
         CggQ==
X-Gm-Message-State: AOAM530rusHipeqDnq12kS4jyZhpvUPgclnBLhVry6yP2TplOzRw2fuX
	6YlzUKMGIXWG8huSKcT0H2PGaNciTfZgrOYYTng=
X-Google-Smtp-Source: 
 ABdhPJwCKFF5ZMxxkjOBcnU5VITbvegnPRJO1xaWDsVOS3TwwTcEqi5DnwJHtZkSL6iui8ZbewNABYCndjZroTvoNI8=
X-Received: by 2002:a05:6512:3047:b0:473:cf43:6d8f with SMTP id
 b7-20020a056512304700b00473cf436d8fmr2449193lfb.380.1651839248049; Fri, 06
 May 2022 05:14:08 -0700 (PDT)
MIME-Version: 1.0
References: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
 <864ACA6A-CC8D-4680-B78C-EF28023D111C@arm.com>
In-Reply-To: <864ACA6A-CC8D-4680-B78C-EF28023D111C@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 6 May 2022 14:13:56 +0200
Message-ID: 
 <CANNYZj8onP1r8gLVNcr+vuZ0TjQBY0Z7TGvxHxi+6kAWhLek5g@mail.gmail.com>
Subject: Re: [yocto] OE Linux & board-support-package
To: Ross Burton <ross.burton@arm.com>
Cc: "jchludzinski@vivaldi.net" <jchludzinski@vivaldi.net>,
 Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 12:14:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57010

On Fri, 6 May 2022 at 13:55, Ross Burton <ross.burton@arm.com> wrote:
> > OE Linux uses device tree files (*.dts and *.dtsi files), so is there a=
ny need for a board-support-package?
>
> In the glorious future, they will be much smaller.
>
> Note how meta-arm has generic Intel BSPs, and thanks to recent standardis=
ation in Arm (SystemReady, etc) there=E2=80=99s a generic-arm64 machine in =
meta-arm too.
>
> Of course, reality and theory rarely agree, and in the embedded/iot space=
 there is a much greater need for customisation, so I don=E2=80=99t expect =
to see =E2=80=9CBSPs=E2=80=9D disappearing shortly.

There's an even more glorious and even more distant future, where all
hardware supports virtio, and there is no need for custom vendor
drivers at all. Also, everyone would be using risc-v by then.

Alex

