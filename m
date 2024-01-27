Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CFDC46CD2
	for <webhook@archiver.kernel.org>; Sat, 27 Jan 2024 18:33:44 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.21920.1706380423283125861
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Jan 2024 10:33:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=S/3oJoSl;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2cf33035d1dso16633551fa.2
        for <yocto@lists.yoctoproject.org>; Sat, 27 Jan 2024 10:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706380421; x=1706985221; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JcxQUGzqeZHkI9k2bh1/oCCbcICs8nJTuDlyiPGuB4M=;
        b=S/3oJoSl82sTa5pDLYe87j2/UhCA8z3EEHAdsBxkmdtqU3Pst/FkV/QkbxMnNDUhGy
         jhcEqiI283wGTTmP22slKljyqRrGTHLkYC6VW5U0iUt4T4+eAUaOjV8Lm4m29Y9CxY1J
         m8bCMCwaqaHWVB67YuPw8BtxRjj0sRMlijESpX2YQk5NZj48DBuHHfXfo76RncilFuer
         Wgt1OlBnjf9QbByAMg9255lWE8nfEqL63lpj1gzzfiPCzgQFW4TRVY8OyaQxvtaObMTN
         QLdjqRDs/3ksEORoQEWpjahu+r/rtc9TC1m9btfZsv7a73LOr4Zv9ZzDn3BeBau8BM8Z
         7grg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706380421; x=1706985221;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JcxQUGzqeZHkI9k2bh1/oCCbcICs8nJTuDlyiPGuB4M=;
        b=mXGEpb0yGqp+v7xZYoQpxZqc9bghgX7a4RyEyY3ptlE/4EkZP/007+zOCuCfPbmc1p
         mk+ykWoc1nsNy8xMQCOvT9cM+d4XaefBihOyVQmfR2lLTcKdEPC8L91AKvQO2ye67sCk
         CdfAo1RVIaFAbdvWXhujVPcv6GpGjZhe7gMQpzo0Wv/AKklJa5qAlQL7KIgJnSkzfx4j
         YdsFEzK55tKzg0ZqtLJBxanuvvDSwEZUjm83QaLqIwpBnP974XLgAptEmyLfBa5Fx+6X
         Oyu6NVqjJgJkWp0pPHvCJ2Dyg/4Ri32HTYi//2rw4fDGLzZ31hJGtrLjPnEUH4Ilr+yI
         koUQ==
X-Gm-Message-State: AOJu0YztrQJ30n/FYJrp+XWVY36FtbjUeSE+668bCmI9rOcYxj7HQbdT
	P4Ewp7m4qboeyrhGd9SMvMmnGKor+Vej06o6PzpJLGSIsCdcpOucanijmJnkcCnG3OgHmy3Rofa
	OGPDmiG55Bc7jJB9V2bPCCuNk5JIGzVvqtig=
X-Google-Smtp-Source: AGHT+IG5IewydwzYeAd4fhZentgwbYwSZD6YwnuGW4nDF1WvbcFbFwNEU/8QmEafajvGfWzVgOyys0xcy2TdNkbxve0=
X-Received: by 2002:a05:651c:140f:b0:2cf:1acd:ea22 with SMTP id
 u15-20020a05651c140f00b002cf1acdea22mr1069609lje.16.1706380421147; Sat, 27
 Jan 2024 10:33:41 -0800 (PST)
MIME-Version: 1.0
References: <M25h.1706340450208219324.DA7b@lists.yoctoproject.org>
In-Reply-To: <M25h.1706340450208219324.DA7b@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 27 Jan 2024 19:33:30 +0100
Message-ID: <CANNYZj_1VzMf12EPRQgm=zG2pAJR+_6BRrJ-Ejgq7NGwOfpnYg@mail.gmail.com>
Subject: Re: [yocto] How to build two images with different settings of a
 recipe in Yocto
To: yocto@lists.yoctoproject.org, joerg.sommer@navimatix.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 27 Jan 2024 18:33:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62309

Putting image specific tweaks into local.conf is not a good practice.
Local.conf should be extremely minimal, and ideally contain only
MACHINE and DISTRO.

I would do it with two different image recipes that share almost
everything via common .inc, except ROOTFS_POSTPROCESS_COMMAND. You can
find examples for how to manipulate sshd_config using that in
meta/classes-recipe/rootfs-postcommands.bbclass

Alex

On Sat, 27 Jan 2024 at 08:27, J=C3=B6rg Sommer via lists.yoctoproject.org
<joerg.sommer=3Dnavimatix.de@lists.yoctoproject.org> wrote:
>
> [I posted this question on Stackoverflow: https://stackoverflow.com/q/778=
71008/8452187]
>
> I have two images with the same distro and the same machine and each imag=
e should contain the same package, but build with different settings.
>
> For example, the config file sshd_config is part of the opensshd package,=
 but I need a different set of HostKeyAlgorithms depending on the image. (Y=
es, I could use Include, but that's not the point of this question.)
>
> How can I build two different flavours of the same package? One way would=
 be to have a different distro for each image, but this wouldn't scale. My =
other idea is to use local.conf to change the build behaviour of the recipe=
 and control the image content (and the difference between both) with diffe=
rent local.conf. (BTW: I'm using KAS which makes local.conf generation easy=
.) But what's best practice?
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62308): https://lists.yoctoproject.org/g/yocto/messag=
e/62308
> Mute This Topic: https://lists.yoctoproject.org/mt/103992605/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

