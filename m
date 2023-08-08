Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0997CC001B0
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 19:25:52 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web11.71127.1691522749568138916
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 12:25:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=qKw/ibLA;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-76c64da0e46so237302139f.0
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 12:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691522749; x=1692127549;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6IIsqEXDJLHXI7Y+Bt4DbIOqRLvTF2doAcGBiUIwMFo=;
        b=qKw/ibLA8vGR5+SkNqbgMTwyG7Cg0qsey1pgyNZeCVdwGeW9676Jc8k+Xt7ZNNi1U5
         MJmjGy6hU1G0nHjDFI+tj5KHMGAT0ev/cVDVaAW6mOAgPPLn+9Sk1SxjMgf67g1FCOCi
         nYaRwkFP7ZCd+ZjO15UaEmc80flYl4WiBA/Mob5bnBrhBO4UITNt8xI6j2HM9ni4TJnc
         2Hwb2c0oMzTHr2KiQAAob+eCC5ustUytUS9ADDCiMYu+LWkpPDaxmvneiM/r9SHsmnBr
         sFFM00GQOpX+nxyboRQ1sl9oayqwdPHpsmEl1jyYCuP03Z+IYAZE4yQRraJ1qCLz2F1W
         JOjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691522749; x=1692127549;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6IIsqEXDJLHXI7Y+Bt4DbIOqRLvTF2doAcGBiUIwMFo=;
        b=jA8OWKLWbUkERuUSc9W7Nx2Mj1UT1YM7Oy2CW9G4YA50kMOhRa6wOyCSrXZq3nZh6r
         shaRbwprYY0VofYROCxKPLaaqRh6CYYrZjKXgqAvuzdEQBCpTSwklJ1T01UiJl1Ub3gB
         gS2fPA6k/v7MgeQtMCLfKGKjz3OGUh/L7RNLfbfx7h47zbqpKTO7aA2PwYf791BHiSkE
         2epn42TbDz/xYQHJtfQWXoC0lfna+R7upZ+W9GqMv8JM7IRrZ1i8RyO4Z9KyDYPQsQRZ
         ObpRv4YqnZ6OTi6hdiG77N/rY8dxDhB6ZaqCaPxeZgFo48vuiqYtcL03cPMEyxodZ4+y
         Ypag==
X-Gm-Message-State: AOJu0YzGMoBbK1ax8gR8UgY5F72k4uY6peMPbDuIsV4sH5TrlaNmhMK3
	MVtpqz2ZR7d8KC3evCbVYVyuYdWu7OrbjyG+2kAHoD2EAbg=
X-Google-Smtp-Source: AGHT+IGJ8k7nGH8hr0Ra+P2Q5IKlh8uaZc4EFm3cbKZyNPQXZxVNDLZHbf/zSEfkHX2Zrs7nAcxk+vNtGwLzWua4RR8=
X-Received: by 2002:a05:6602:1b07:b0:785:d3c2:624d with SMTP id
 dk7-20020a0566021b0700b00785d3c2624dmr599349iob.0.1691522748778; Tue, 08 Aug
 2023 12:25:48 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPK8pAVXVWXBG0nc-aKpgKzYpQt1dvfZH2sj9T2pS3p=hA@mail.gmail.com>
 <CAMKF1sorNvKwy9tKMRv4FSDFP270t7ryimrv8s8tUzgXoJ=L6A@mail.gmail.com> <CANnLRdhA5USajcUkX-O0gTVam7JfxPWpheAuVcjdpam8cmKGXA@mail.gmail.com>
In-Reply-To: <CANnLRdhA5USajcUkX-O0gTVam7JfxPWpheAuVcjdpam8cmKGXA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 8 Aug 2023 15:25:37 -0400
Message-ID: <CADkTA4P1izAM=vBCqi+tpqQ1siB4bS-6L3SkOVcUQc-QUHs6nQ@mail.gmail.com>
Subject: Re: [yocto] Rootless Podman
To: Stephen John Smoogen <smooge@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, Joel Winarske <joel.winarske@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 19:25:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60750

Assuming we are talking about a meta-virtualization built podman, and
a yocto image,
this would be more appropriate on the meta-virtualization mailing list

That being said, I do test rootless podman each release, and during
updates to the
package (I have a medium term TODO to automate that), and I was able to jus=
t
run a simple rootless podman test on master.

But rootless anything isn't a simple question. What release are we
talking about ?
What kernel ? What architecture, and what is the container image and comman=
ds
that are being run ?

Bruce

On Tue, Aug 8, 2023 at 2:43=E2=80=AFPM Stephen John Smoogen <smooge@gmail.c=
om> wrote:
>
>
> Does anyone know what ways it is failing (or how I can duplicate it ) and=
 I can forward to the podman group (can't promise I can get it fixed.. but =
will do what I can). Also if people have already opened issues on the failu=
res, let me know.
>
> On Tue, 8 Aug 2023 at 14:34, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>> We have tried it hard in yoe distro but it always fails in novel ways so=
 much. I have switched back to docker for now
>>
>> On Tue, Aug 8, 2023 at 11:07 AM Joel Winarske <joel.winarske@gmail.com> =
wrote:
>>>
>>> Anyone successfully building using Rootless Podman?
>>>
>>> I'm seeing a variety of strange issues.
>>>
>>> My baseline podman config:
>>> --user 1001:1001
>>> --ipc host
>>> --privileged
>>> --security-opt label=3Ddisable
>>> --pid host
>>> --userns keep-id
>>> --ulimit host
>>> --mount type=3Ddevpts,destination=3D/dev/pts
>>> --security-opt label=3Ddisable
>>> --group-add keep-groups
>>>
>>>
>>>
>>>
>>>
>>>
>>
>>
>>
>
>
> --
> Stephen J Smoogen.
> Let us be kind to one another, for most of us are fighting a hard battle.=
 -- Ian MacClaren
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60749): https://lists.yoctoproject.org/g/yocto/messag=
e/60749
> Mute This Topic: https://lists.yoctoproject.org/mt/100627665/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

