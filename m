Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 028EEC001B0
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 19:28:12 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
 by mx.groups.io with SMTP id smtpd.web10.71269.1691522886556365390
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 12:28:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=k23AauLz;
 spf=pass (domain: gmail.com, ip: 209.85.166.51, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-790c24db283so193091939f.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 12:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691522886; x=1692127686;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Vx4P42KUZUEWKZjgzhy2r7tIzMNRE5HNIfqdVwV7SM=;
        b=k23AauLzrSU3S01T4kJyiYnAEo6A+oMLa669JhEg+hvePzV+dor/lRHR8ZGj3Tsh6E
         5lIVlUpkGd6C8M5Se3fV7I234tfcjLUwYZEXzLq2NEkA7JZaOaztaEPdip0EQNPXdWvk
         G7zMh6Xww2SIVAuIoPb5Ebdc0AKeiVQb0nQ8laUAb9os5Uq2lx6ZX2C0dc0GLrEgByKg
         PbNe6VaAQEv06aghBjFDh9/uaH1aFgLNl+IITOXK9IzZA5BoaxZNSvnTlZCXbe/qnkWt
         D/F1ugTJ9kvl6nV8vqL0xlAMDxt/6Va4ZrjM9WEbmxp3SvLxDQLGnT8tB2SslijhcG7l
         W94g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691522886; x=1692127686;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Vx4P42KUZUEWKZjgzhy2r7tIzMNRE5HNIfqdVwV7SM=;
        b=jeLEv0kYr3ZdWNaxYWNsUizqdje32Kui+EcgOx4qlE6gJjG01wYC2FIJqQj2Dh+mru
         7yscdhZRgP/0VnMwwL9muyX2RP1rUfUveJ+UiFnJ6OjDMqQNLA2/Z2A0cqb0hqjaCwtv
         YvzCTLN1nNIu7jjlI2pyWHkwzyfi54+pOfmOJIqBlLxwwmDYrxiC6ckwOe/Y5fpOTcPS
         Hh5PjUvByTOaO1u4RkirncTLjo4MMQzP0DhwP//YPTq65CMQ5tzVEAizOBOrJF/uE43U
         4v1p6PSDdySZlLf6N4ltztDX+ae+BTGdyKgn7zSVQ4AT9mDy0wpVYssWT64W9vhH88jl
         8S8A==
X-Gm-Message-State: AOJu0Yw788HUDCkpPJbEBmEAyPowpSzN219iQjJpWZ8yVT4TD4IH5EZH
	JzllXOG0rtpiFVkfPO2uDsyMi/HxFTJtt8nYs/oLz0SmgN8=
X-Google-Smtp-Source: AGHT+IEWdIXDVOUou/7oOmuAUc+iTvo7Se79xyR0IgoePOVCRg4MRhQzmhV19N69vlsXR5UsC8yPHETT6ckRJshX9n8=
X-Received: by 2002:a5e:d608:0:b0:790:a010:4c42 with SMTP id
 w8-20020a5ed608000000b00790a0104c42mr656218iom.13.1691522885842; Tue, 08 Aug
 2023 12:28:05 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPK8pAVXVWXBG0nc-aKpgKzYpQt1dvfZH2sj9T2pS3p=hA@mail.gmail.com>
 <CAMKF1sorNvKwy9tKMRv4FSDFP270t7ryimrv8s8tUzgXoJ=L6A@mail.gmail.com>
 <CANnLRdhA5USajcUkX-O0gTVam7JfxPWpheAuVcjdpam8cmKGXA@mail.gmail.com> <CADkTA4P1izAM=vBCqi+tpqQ1siB4bS-6L3SkOVcUQc-QUHs6nQ@mail.gmail.com>
In-Reply-To: <CADkTA4P1izAM=vBCqi+tpqQ1siB4bS-6L3SkOVcUQc-QUHs6nQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 8 Aug 2023 15:27:54 -0400
Message-ID: <CADkTA4PFd0RGPcSr7EB_Xdgko_uWjqCLwYY650VECCy6qJYzFA@mail.gmail.com>
Subject: Re: [yocto] Rootless Podman
To: Stephen John Smoogen <smooge@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, Joel Winarske <joel.winarske@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 19:28:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60751

On Tue, Aug 8, 2023 at 3:25=E2=80=AFPM Bruce Ashfield <bruce.ashfield@gmail=
.com> wrote:
>
> Assuming we are talking about a meta-virtualization built podman, and
> a yocto image,
> this would be more appropriate on the meta-virtualization mailing list
>
> That being said, I do test rootless podman each release, and during
> updates to the
> package (I have a medium term TODO to automate that), and I was able to j=
ust
> run a simple rootless podman test on master.
>
> But rootless anything isn't a simple question. What release are we
> talking about ?
> What kernel ? What architecture, and what is the container image and comm=
ands
> that are being run ?

HAH! Not enough coffee today.

Never mind, I completely read over the word BUILDING!!!

At least this motivated me to test our on-target rootless podman again.

Bruce

>
> Bruce
>
> On Tue, Aug 8, 2023 at 2:43=E2=80=AFPM Stephen John Smoogen <smooge@gmail=
.com> wrote:
> >
> >
> > Does anyone know what ways it is failing (or how I can duplicate it ) a=
nd I can forward to the podman group (can't promise I can get it fixed.. bu=
t will do what I can). Also if people have already opened issues on the fai=
lures, let me know.
> >
> > On Tue, 8 Aug 2023 at 14:34, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >>
> >> We have tried it hard in yoe distro but it always fails in novel ways =
so much. I have switched back to docker for now
> >>
> >> On Tue, Aug 8, 2023 at 11:07 AM Joel Winarske <joel.winarske@gmail.com=
> wrote:
> >>>
> >>> Anyone successfully building using Rootless Podman?
> >>>
> >>> I'm seeing a variety of strange issues.
> >>>
> >>> My baseline podman config:
> >>> --user 1001:1001
> >>> --ipc host
> >>> --privileged
> >>> --security-opt label=3Ddisable
> >>> --pid host
> >>> --userns keep-id
> >>> --ulimit host
> >>> --mount type=3Ddevpts,destination=3D/dev/pts
> >>> --security-opt label=3Ddisable
> >>> --group-add keep-groups
> >>>
> >>>
> >>>
> >>>
> >>>
> >>>
> >>
> >>
> >>
> >
> >
> > --
> > Stephen J Smoogen.
> > Let us be kind to one another, for most of us are fighting a hard battl=
e. -- Ian MacClaren
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#60749): https://lists.yoctoproject.org/g/yocto/mess=
age/60749
> > Mute This Topic: https://lists.yoctoproject.org/mt/100627665/1050810
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfie=
ld@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

