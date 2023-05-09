Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D76EC7EE22
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 19:40:35 +0000 (UTC)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
 by mx.groups.io with SMTP id smtpd.web10.42753.1683661230455384383
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 12:40:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=HYIaBnG4;
 spf=pass (domain: gmail.com, ip: 209.85.166.50, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-76c60c88d0cso57999039f.2
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 12:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683661229; x=1686253229;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HFmihacMDAm68EcVv13O5iUwFdGeV/9K+SUYgI6UY68=;
        b=HYIaBnG4aQXjVtKm4mF+wUO+7p06IH0bp0zmmtNcTpuVDz+0zljm4avOrN+Pt+IZQf
         oEAnjdZqRpLnBTJefnBKGgJGnbNmhj0WEo/DQCNr4y3FT1iYvg2HYWxk4bVuilfVW5iw
         J06qfuNIdJzjGT7OsWHPtS6K8Lwi27g2qTnSpD83DrntcuyRK4xoWFjZy8u8yvCxdw/S
         V3CbnwT728Odlw0P6v11JQvUho56R+H3tZO5kq/413nrEiGvn+HdAdE0L4AvtZGYg5st
         4fkVEHh2YJL4hO9zntRc3qxOi7/8f+c/05sIyUxDht8R5/N0aRN/inZToj6i/bKNt1iv
         NxDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683661229; x=1686253229;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HFmihacMDAm68EcVv13O5iUwFdGeV/9K+SUYgI6UY68=;
        b=Oe8AI2Z+fwJxAOCm3MTYKbENK60Jxt7AjAtm0JXQ6SFL4vN8se+kcKbWf048ZHaq5K
         ONUtoNbSF5UxtURRfUPwYWwcfIhAFJY20y+diJsYBhxYZo2e3SOHOh+J8fpvcrvWsHyt
         F1ER1n6uJpvawpd7/pGWo61f5sTeiyFz/d2OQIrph9o0FsOKXxUYRGMqtXG3/FsEY5mC
         fgUD22y8MtW3loLFZIOknMbZ598pW9EYD9Jjcf5b7m7wjcQc98sTSWjRSC5ZxdMqAn2g
         uDBZnXOkbsJVhZNnvh56sU3CgOgS3OGl+wHjUV+WSJXk8NGGj5ZjTET7x/4n1gWGferb
         cBXQ==
X-Gm-Message-State: AC+VfDyLFv39ThULdDAHHFBWUU45FduVQjzwndKXzsHNYcgh9lBEQhKE
	FBKaM5yV6Xw6lbt+jSUl7rU2pSaoTRHqnM61aTA=
X-Google-Smtp-Source: ACHHUZ6HyvlBpYwImwwddsi2tUG+Aw7PoIu4ba/1pQYho78zkyWTMmtTEFCH5rnlEfqGfOTRpdzxqDxSleJzHwj2TSg=
X-Received: by 2002:a92:cd47:0:b0:331:7709:3ba with SMTP id
 v7-20020a92cd47000000b00331770903bamr9935754ilq.3.1683661229489; Tue, 09 May
 2023 12:40:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230509175457.1038298-1-stefanb@linux.ibm.com>
 <CANPvuRnZzw0Tdr=i6VzNW3wNAPnDwo6kPGmh52M0nOWmOO7OWw@mail.gmail.com>
 <3688fa9f-bdb2-4a99-f7d0-56683313d82c@linux.ibm.com> <CANPvuRk1=MGv-h-kNkiB9pG9E6XQ+3kx-ZKX6_+0LZ+stt-PAQ@mail.gmail.com>
In-Reply-To: <CANPvuRk1=MGv-h-kNkiB9pG9E6XQ+3kx-ZKX6_+0LZ+stt-PAQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 9 May 2023 15:40:21 -0400
Message-ID: <CADkTA4OOWLtAcQzdBOhO70PA7ux3m6-WQ2U1JaVmH_Xy_eDCYw@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 0/2] Drop a kernel patch and a
 kernel config option
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Stefan Berger <stefanb@linux.ibm.com>, yocto@lists.yoctoproject.org, 
	akuster808@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 19:40:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59954

On Tue, May 9, 2023 at 2:43=E2=80=AFPM Jose Quaresma <quaresma.jose@gmail.c=
om> wrote:
>
>
>
> Stefan Berger <stefanb@linux.ibm.com> escreveu no dia ter=C3=A7a, 9/05/20=
23 =C3=A0(s) 19:19:
>>
>>
>>
>> On 5/9/23 14:11, Jose Quaresma wrote:
>> > Hi Stefan, Stefan Berger <stefanb@=E2=80=8Alinux.=E2=80=8Aibm.=E2=80=
=8Acom> escreveu no dia ter=C3=A7a, 9/05/2023 =C3=A0(s) 18:=E2=80=8A55: Thi=
s PR removes a kernel patch related to overlayfs and IMA appraisal file cha=
nge notifictions and a squashfs xattr kernel config option.
>> > ZjQcmQRYFpfptBannerStart
>> > This Message Is From an External Sender
>> > This message came from outside your organization.
>> > ZjQcmQRYFpfptBannerEnd
>> > Hi Stefan,
>> >
>> > Stefan Berger <stefanb@linux.ibm.com <mailto:stefanb@linux.ibm.com>> e=
screveu no dia ter=C3=A7a, 9/05/2023 =C3=A0(s) 18:55:
>> >
>> >     This PR removes a kernel patch related to overlayfs and IMA apprai=
sal file change
>> >     notifictions and a squashfs xattr kernel config option.
>> >
>> >         Stefan
>> >
>> >     Stefan Berger (2):
>> >        linux: overlayfs: Drop kernel patch resolving a file change
>> >          notification issue
>> >        ima: Drop kernel config option CONFIG_SQUASHFS_XATTR=3Dy from i=
ma.cfg
>> >
>> >       ...Increment-iversion-upon-file-changes.patch | 42 -------------=
------
>> >       .../recipes-kernel/linux/linux/ima.cfg        |  1 -
>> >       .../recipes-kernel/linux/linux_ima.inc        |  1 -
>> >
>> > CONFIG_SYSTEM_TRUSTED_KEYS=3D
>> > Unfortunately this is not enough because in the full patchset you are =
overriding the do_configure task
>> > on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is =
included in every recipe that follies the
>> > pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
>>
>> You are referring tho this here?
>>
>> do_configure() {
>>      sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CONFIG_SYSTEM_TRUSTED_KE=
YS=3D\"${IMA_EVM_ROOT_CA}\"|" .config
>> }
>>
>> You are saying that this deactivates some other do_configure's ? If this=
 is the case, what would be the right syntax to fix it?
>
>
> Yes, this is the problem. The right fix IMHO is reverting because we can'=
t assume that the .config it's always there
> on the bitbake build directory and this only happens when building the ke=
rnel.
>
> Another no less significant side effect is that this change is also appli=
ed to a wide range of recipes,
> anyone starting with the name linux-*.bb.
>
> So the full patch set should be reverted in my opinion and be more tested=
 locally, building for example
> some recipe that respects the pattern linux-*.bb and also other kernels a=
nd re-submitted again.

I had to deal with the need for a similarly broad bbappend, and both
distro / kernel version
conditions in meta-virtualization.

This isn't exactly what Stefan is looking for, but it is a starting point:

https://git.yoctoproject.org/meta-virtualization/tree/recipes-kernel/linux/=
linux-%25.bbappend

Bruce

>
> Jose
>
>>
>>
>> It's a no-op on a .config that does not contain the CONFIG_SYSTEM_TRUSTE=
D_KEYS=3D option already.=3D
>>
>>     Stefan
>>
>> >
>> > This breaks many recipes like linux-firmware and maybe others.
>> > The root cause of the issue is now on f4f7624d2e but because this patc=
h is too evasive, maybe everything has to be reversed.
>> > I am now building with the full patchset revert and so far the build i=
s looking good.
>>
>>
>> >
>> > Jose
>> >
>> >       3 files changed, 44 deletions(-)
>> >       delete mode 100644 meta-integrity/recipes-kernel/linux/linux/000=
1-ovl-Increment-iversion-upon-file-changes.patch
>> >
>> >     --
>> >     2.34.1
>> >
>> >
>> >
>> > --
>> > Best regards,
>> >
>> > Jos=C3=A9 Quaresma
>> >
>> >
>> >
>> >
>
>
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59945): https://lists.yoctoproject.org/g/yocto/messag=
e/59945
> Mute This Topic: https://lists.yoctoproject.org/mt/98789504/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

