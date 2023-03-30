Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0611CC6FD1D
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 10:09:01 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.21470.1680170934516333666
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 03:08:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DsyfxG1W;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id e9so3751778ljq.4
        for <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 03:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680170932;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g8H1rIdRYvXMOMGZ4WhP+WFZJZFIcWb4prVq7vNguII=;
        b=DsyfxG1WRal2rwzqyMUqXUYL10sEX4ZvD7LBgCKMPME8K8jcvi8qqTpqg6httQzFGP
         uFYHduaOckCuw5dym/JEPE4N2sRPo5LHfbBcPTFdppqL3IBK/qZNwOH5gAxby3rMwWf7
         cjk7Yu7LzjlHxPlRbGGdWfgcYZXa1FIW6w++mvD71VJLyVwa+Q+6QaTsjJ3qgVyDbvid
         w73xE1SSYo2KhrflLAZP6t1Uc7XbnjLt/jGQbfmxdvrdo1atwJcXEfZ5qIN4gLn62S1M
         l0D5cnCHlPNHBdH3mdwa7toRnMprCYb12Ak+0+uSUKdx5S5L2CJbeLMvN86xirT0K6fw
         OMkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680170932;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g8H1rIdRYvXMOMGZ4WhP+WFZJZFIcWb4prVq7vNguII=;
        b=u9JUzpjHZRkHhfjvp1sLYPgftMV8OkY5tlOQltj86XH9nnHaMsTNcmxrc5K1aenlmO
         zqavgBXGm7WHh7GmotMB78GRX5sHzUo/Cp1Dg+g7071L7Bc4RhpSxChaH3WNbm/s5H8i
         ZBtwBACYkrh8qCP6hV6jACx7GqHGQjItjTXwLzfKG5PIDd498d3uOYOVtEbaQYzjESY2
         SKBy3S5cXe5+rV0C4Kd6lADH86qsPbffDuC2qkhv0ECg1I1pGpBfHot5puPSZI0gdwVk
         4oQY+yjqZphGDfRgpTvWa8MsIO72crlHfNRWCEfmMdyjyxatGHSMUqNZolzGH9MBpF/j
         aTEg==
X-Gm-Message-State: AAQBX9cwqGo6EdyF2hpisqQzP11yASwOKXu3lUZOSOmtbfypoIjkUUFS
	6fz2Ueqw9ApmuoTG3364fRSMi+2pg4l0wtuu3VY=
X-Google-Smtp-Source: AKy350aViDBLipKr6LrBMzyzBeqMo6s/AupV9O3RqRG86Ntj/3A2D4iy+e+MEXgccuHTOqC4UE3O5kjGYXm88u1d0V4=
X-Received: by 2002:a2e:8882:0:b0:295:945d:b381 with SMTP id
 k2-20020a2e8882000000b00295945db381mr6895714lji.7.1680170932139; Thu, 30 Mar
 2023 03:08:52 -0700 (PDT)
MIME-Version: 1.0
References: <CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
In-Reply-To: <CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 30 Mar 2023 12:08:41 +0200
Message-ID: <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com>
Subject: Re: [RFC][yocto][meta-lts-mixins][kirkstone/go] Backport golang from
 master to kirkstone
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Jose Quaresma <jose.quaresma@foundries.io>, Ricardo Salveti <ricardo@foundries.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 10:09:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59547

I think I pushed the work directly to the respecitve branches in
meta-lts-mixins. I'd suggest you send the patches here, and we'll sort
out the technicalities (I can publish the branch on
git.yoctoproject.org, or maybe you'll be able to push directly as
well, provided you also send the patches here). There's no autobuilder
testing; for mixin items the contributors are trusted :)

Alex


On Thu, 30 Mar 2023 at 11:20, Jose Quaresma <quaresma.jose@gmail.com> wrote=
:
>
> Hi,
>
> The golang version in kirkstone is the 1.17 and because of this is not po=
ssible to use some recent version of other projects like docker that requir=
es a more recent version of the language.
>
> I have a kirkstone branch [1] available at Foundries.io with the golang b=
ackported from the oe-core master that I liked to submit to the meta-lts-mi=
xins [2].
> Alex is the maintainer of the dunfell golang backport and this kirkstone =
branch is based on that version.
>
> Would that be interesting for the project? How should I proceed?
>
> [1] https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go
> [2] https://git.yoctoproject.org/meta-lts-mixins
>
> Jose
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma

