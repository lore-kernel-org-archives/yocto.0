Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8306DC46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 18:54:00 +0000 (UTC)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web11.31524.1706122436971578850
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 10:53:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D3DOtsfR;
 spf=pass (domain: gmail.com, ip: 209.85.166.177, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-362a04c4c99so48835ab.3
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 10:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706122436; x=1706727236; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=82YwN/6KnXxGaP8LlBI5aB7alKQULR+sxo4P6TVYD7c=;
        b=D3DOtsfRupNpiPWbYN/TYXYOpP34biIlJA6vPzE8cMYiCba7dH0Te1vtmkMqLDtQDK
         /88DZCZjaMbbHfWjjn9cXHvPJi0Lov+IqDMOjF0H3qqD7cyfB0Nn70RTRGCbHc3KYjex
         IKymJPwfxAprdJTVcCHetRL6geuEj5LTecKGbFVpZYFl1yqv412iNLG6C8vVVsjm5XVX
         5VPcwvL+H/61W+CrwNRGSE3rlt7cjAglGvmwAULdKgABippa4vcxUoc+dZRwXl79CVB0
         we/ElmKOuUfrTaCAr9m3sFo9p1gxJQAFtRESHE1A0fiCj7NF84pwfy1Zrk+JIYvI5usU
         CCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706122436; x=1706727236;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=82YwN/6KnXxGaP8LlBI5aB7alKQULR+sxo4P6TVYD7c=;
        b=cjbFdqGMtZ2VWUIaBmYJriCBnbrTQeSTIGHDzEQevb0SjFx+FMX0QD8UHcpjNqKqi8
         JmgYVF9jrU9eHJ013OcEtgWK86/NW+Q3Nu6iCBAedq2hkxMcxnQe+FkRWaAWTqNnvznS
         905D35JAVdPJ9qyL0bRpPuFITB2bc0v7p9v3A/S4m9k9ifRo+AQBtuhSyegL5XaefbzC
         W4tvptH+4MMppV4i80UcLHtbrBQYUzabJ1BBAkvt5UsIkVok2Tw1PmHNHpSNZ8UzJjf5
         NNoUwn0j8n0lMibomVYgNOKKS6ddqcYAp2o+73fhX0C9ArQRmhxzVRPYT/KeTwQqC53D
         C8fw==
X-Gm-Message-State: AOJu0YzON9DfMwA2zNv4Sz/hPRI5lxOTFbo9ZmelTyzd59OiQaFO1UEa
	1wME5DUxKHmDW79k41B2x+zS+FZzLZHQOV72JnAC7kCyz8lQAI+OIpy20vImy4/fZ6d4yg7zpQM
	A7EzwSr+pabyVACrmjajFOoElxKkS0MGN+9Jm4A==
X-Google-Smtp-Source: AGHT+IFB4wHbCDsSeGqVOFPl3A+tYBhwBA+Lej7DDPWA6PyyBmu4qFbc5+nZfnJv0YBY0zULjtUcfbFwIcf1vxrNVc4=
X-Received: by 2002:a92:ca90:0:b0:360:962:8db8 with SMTP id
 t16-20020a92ca90000000b0036009628db8mr2135769ilo.12.1706122435707; Wed, 24
 Jan 2024 10:53:55 -0800 (PST)
MIME-Version: 1.0
References: <MaWi.1706115939427185925.EgtJ@lists.yoctoproject.org>
In-Reply-To: <MaWi.1706115939427185925.EgtJ@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 24 Jan 2024 13:53:43 -0500
Message-ID: <CADkTA4NpnJg2ZxoMyk83dEk--n4HtnbBYWF7FuSEQv6uQQcPwA@mail.gmail.com>
Subject: Re: [yocto] kernel headers in my image
To: yocto@lists.yoctoproject.org, daniele.lugli@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 18:54:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62268

On Wed, Jan 24, 2024 at 12:05=E2=80=AFPM Daniele Lugli <daniele.lugli@gmail=
.com> wrote:
>
> Hi all,
>
> I would like to have kernel headers in my image, in order to locally buil=
d a module.
>
> I added
>
> IMAGE_INSTALL:append =3D " kernel-dev"
> IMAGE_INSTALL:append =3D " kernel-devsrc"
> IMAGE_INSTALL:append =3D " kernel-modules"
>
> in my image recipe and, as a result, I see that /usr/src/kernel and /lib/=
modules/${uname -r}/build are now populated.
>
> But when I try to build my module (which builds correctly on a non-poky m=
achine) I get:
>
> ./include/linux/compiler.h:247:10: fatal error: asm/rwonce.h No such file=
 or directory
>
> And, in fact, there is no rwonce.h under /usr/src/kernel. There is one un=
der /lib/modules... but it is in asm-generic/rwonce.h
>

Have you run "make scripts prepare" in /usr/src/kernel ?

Bruce

> Any idea?
>
> Thank you in advance
> --
> Daniele Lugli
> General Logic srl
> Viale Curreno, 41
> 10133 Torino
> Italy
> tel +39 329 3933041
> www.general-logic.com
> www.linkedin.com/in/daniele-lugli
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62258): https://lists.yoctoproject.org/g/yocto/messag=
e/62258
> Mute This Topic: https://lists.yoctoproject.org/mt/103936013/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

