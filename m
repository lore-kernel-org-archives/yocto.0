Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9BBC4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 12:01:32 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.10953.1713355286071006509
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Apr 2024 05:01:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nqCK1vwm;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d895138ce6so65834961fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 05:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713355284; x=1713960084; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Bjb51gqj+IZ60se8bKA0F33JerqAdYwMZpncH0OTkk=;
        b=nqCK1vwm6KjCBM0NoG1LcvcOy5eYW0e41ErmvYaPmmXxxq/Nvn0D+snp2T7R030AP2
         OB+3PofIrV/xeHJS4cfbvjtPDoeH2jR7PJ+O5SZFD4kBMVcRX0px3eUOMGiH3qeWjzrf
         AqPdOmAbXKcDhgtYJTMbdlsKXaIoEmGX9utVWA04eGsabzYeutoj2isppP3vbFVjy0rW
         rtjuFDviaj1uPa4NbBav4Tz1BJoLvYVKSQN3+sS1ZG+2L3DtqiB5vOoj0Fbp7/R5pciH
         nECYUrmVUvuvPFByRHFpXMwGAkJFSlgrXga8pIA9LSac530e5cPQYp7QMbTx2prMoMxA
         R+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713355284; x=1713960084;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Bjb51gqj+IZ60se8bKA0F33JerqAdYwMZpncH0OTkk=;
        b=pZ3pqBlguzcuxnxxLX9PfQ7guV+wGw/XKiMng+aI8Vuq4743p8yf+ZC6nkiG6oYTV4
         YdqD/aW61IRQRcPQJ8CaF9ZdttFFaV8vxR92IuLZ6v0BDZF6M6/vsKf1KLY89AxjuyzA
         YdVYx1iFai8U+iT31vm1+LKrPe5vulrF43YALCzjUXTHuGJTZrBKLudEk0U8bksuDMtY
         H64C6DrTyqnWC8/Td5WPYYtNDvPu2oCRhQtEPrTrPNpyb/7rpUaPVmLH0lvCMCbPG+64
         U/Fc9s+bXYHuAp0TtQb2l0JHqoYdUvEPMyKPpOEk4QFg+EauxvVEbeiWxYOrmthN7kR4
         gNxg==
X-Gm-Message-State: AOJu0YwFGzHUy5ttbmWYeXtO9zgKpACFqWzZVqG3kmKBSYmaJmdeyXEz
	ovrzqK3VW+yV/cd/XTljN+7Hdlx1xnuHLHUS7kDG42Ww/zb3ds2JEOZdq1PrcXQv5U8N22TVeqZ
	O1Ewoge2NwWXKqyyXvEWlCw1hQlBCeA==
X-Google-Smtp-Source: AGHT+IEwaYizL1KDNaEFAOYvRTizM0vM67rTTHvVt7kP5u0n2IZd57E2Yxc4Pi1BZ+o8GmWQ2Z9xkJsXnRIYsT9iLHA=
X-Received: by 2002:a05:651c:19a0:b0:2d8:5e21:8ec5 with SMTP id
 bx32-20020a05651c19a000b002d85e218ec5mr11884375ljb.48.1713355282489; Wed, 17
 Apr 2024 05:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <T7mZ.1713354972062709907.bIGS@lists.yoctoproject.org>
In-Reply-To: <T7mZ.1713354972062709907.bIGS@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 17 Apr 2024 14:01:11 +0200
Message-ID: <CANNYZj-QsRsb8kZqoKaCgn440naTVr6pYLTsqETNio-=hpYrWg@mail.gmail.com>
Subject: Re: [yocto] Issue with Installing openssh Package #kirkstone #systemd #yocto
To: yocto@lists.yoctoproject.org, ndivecha@granitenet.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 12:01:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62947

openssh recipe (or its appends) does not control what gets installed
into the image, only how openssh gets split into packages. To see what
gets installed you need to find the image recipe and modify that as
appropriate.

Alex

On Wed, 17 Apr 2024 at 13:56, Nitesh D via lists.yoctoproject.org
<ndivecha=3Dgranitenet.com@lists.yoctoproject.org> wrote:
>
> Hello All,
>
> This is my first time posting in the Yocto forum, so please bear with me =
(I'm a rookie).
>
> One of my projects requires "openssh" to be installed in the image, but w=
ith all services disabled except for keeping sshdgenkeys.service running. I=
 split it into two packages, but for some odd reason, "sshdgenkeys.service"=
 is not getting installed on the image.
>
> Here's my .bbappend file for openssh:
>
> ```
> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${BPN}:"
>
> SYSTEMD_AUTO_ENABLE:${PN}-sshd =3D "disable"
>
> PACKAGES =3D+ "${PN}-sshdgenkeys"
> SYSTEMD_PACKAGES =3D "${PN}-sshdgenkeys"
> SYSTEMD_SERVICE:${PN}-sshdgenkeys =3D "sshdgenkeys.service"
> SYSTEMD_AUTO_ENABLE:${PN}-sshdgenkeys =3D "enable"
>
> SRC_URI:append =3D " \
> file://sshd_config \
> "
>
> do_install:append () {
>     install -d ${D}${sysconfdir}/ssh
>     install -m 0644 ${WORKDIR}/sshd_config ${D}${sysconfdir}/ssh/
>     install -m 0644 ${D}${sysconfdir}/ssh/sshd_config ${D}${sysconfdir}/s=
sh/sshd_config_readonly
> }
>
> FILES:${PN}-sshd =3D " \
> ${sbindir}/sshd ${sysconfdir}/init.d/sshd \
> ${systemd_system_unitdir}/sshd.socket \
> ${systemd_system_unitdir}/sshd@.service \
> "
> FILES:${PN}-sshdgenkeys =3D " \
> ${systemd_system_unitdir}/sshdgenkeys.service \
> "
> ```
> When I flash the image on my device, only the "${PN}-sshd" package is get=
ting installed, and not "${PN}-sshdgenkeys".
>
> I would appreciate a second pair of eyes on what I might be missing here.
>
> Thanking you in advance.
>
> Cheers,
> Nitesh
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62946): https://lists.yoctoproject.org/g/yocto/messag=
e/62946
> Mute This Topic: https://lists.yoctoproject.org/mt/105575419/1686489
> Mute #systemd:https://lists.yoctoproject.org/g/yocto/mutehashtag/systemd
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

