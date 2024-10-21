Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87BB5D0E6E2
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 10:25:07 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.43259.1729506305805228846
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 03:25:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nGejoYFK;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2fb5743074bso33952961fa.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 03:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729506304; x=1730111104; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CodSqZNDgMUuvEMYlxZPIRWZmA3uAVWkuQhes08s6ZY=;
        b=nGejoYFKEyT3ceKQ6JoLAKzkuKBXcPKgRKPo4cetXzpjaW2zYaPSmFHYoKhrB8BAbl
         NY31FCOGZd4JK6R7+Vp0VHrqNaWUqf3y+E8EtzaZn/Hf4z2lGMNwnPwWnmj6u9cDEq6s
         x1Ppyunq8N9okzWQUmo+3IRFxaayMAl9U1uFDxVoojg/LlfPRbshVavPGlOWXJKd33ed
         Y2GID23rKKeLnxOYgy7MRCkmSzKDUhgV5M0sR1Wdxa+LYIO00Fk2dZtcNnIJEgHwGOu6
         DleSSmD3FoJWdnSmgah28P1G7O5U4p/yMaeTt7MMWwM2yg85bVqkkGgiNrc+9jfoRgR4
         Ujag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506304; x=1730111104;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CodSqZNDgMUuvEMYlxZPIRWZmA3uAVWkuQhes08s6ZY=;
        b=nLVpkZB612Pe15t0n7RAyZtkzViPojxB7JuNMtjP51Rt9zMtnGk2yLuDpBHtReSySP
         +bzIxZB1YL7zp9PZfNw/FS64gzjriL4Prxwh5hggG6j5aKIgoeVYwRRSqoL1lzImgHQs
         t2Zmm+2CIcysth+04xt8z4M0sM5uEntwQWsv+9An08sgddYOZ0mn45tlWsgAC/rWO+w7
         h2YmL9VE2SdCn4PjpUQyySD2XDxYP0XAUsm7FRcoidkfZ5rEgcEOkwoM27ipFwZN1BXf
         p/CVLPgSpKChB5CGg+XqA3YCMEBMffvmzioHIDMs/jAzweSIuBUlOELmRR/ZR1K+Tger
         5fRg==
X-Gm-Message-State: AOJu0Yy7CbOBb3YwyFnjGvy2eZH1uJRykVR2FZN9OEoPm4/WxB8GnzU5
	sDa2AlRwDwxSXCoQtZwQVnV2eqdvuUSMN80LMsdxSmMigr84XwY9g3/fpa8U1V97jiS+NbUNtxj
	bBMBUrGIxZ42CtF+Qagj6lS1fZ+XkkA==
X-Google-Smtp-Source: AGHT+IH61PY6Ki3GyxfTJktsTJP9j/RhQszjT9WBeSJATg4npUTW+2KUqKx96zJY1aWr2iRDBTwAMMtqkVWXQI673hM=
X-Received: by 2002:a05:651c:1543:b0:2fb:579a:fff with SMTP id
 38308e7fff4ca-2fb6d9cec2emr49204601fa.8.1729506303552; Mon, 21 Oct 2024
 03:25:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Lya5tRX6CabEYHyMumvahpmd5AUBNERVz2sUyFaLcLUPg@mail.gmail.com>
In-Reply-To: <CAGAf8Lya5tRX6CabEYHyMumvahpmd5AUBNERVz2sUyFaLcLUPg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 21 Oct 2024 12:24:51 +0200
Message-ID: <CA+chaQdb+x2y_y=QK8MQ=np2updpoK3nEw54h6euBNobr2noxg@mail.gmail.com>
Subject: Re: [yocto] ERROR: Nothing PROVIDES 'virtual/kernel'
To: yocto@lists.yoctoproject.org, zoran.stojsavljevic@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 10:25:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64063

Doesn't seem related to kernel, check what restricts
COMPATIBLE_MACHINE for e.g. patch-native in your builds.

On Mon, Oct 21, 2024 at 12:21=E2=80=AFPM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello Yocto Community Support Team,
>
> I have an interesting problem to report.
>
> Parsing recipes: 100%
> |########################################################################=
|
> Time: 0:02:30
> Parsing of 2829 .bb files complete (0 cached, 2829 parsed). 4811
> targets, 1885 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'quilt-native'
> quilt-native was skipped: incompatible with machine beaglebone-yocto
> (not in COMPATIBLE_MACHINE)
> ERROR: Nothing PROVIDES 'patch-replacement-native'
> patch-native PROVIDES patch-replacement-native but was skipped:
> incompatible with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> ERROR: Nothing PROVIDES 'virtual/fakeroot-native'
> pseudo-native PROVIDES virtual/fakeroot-native but was skipped:
> incompatible with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> ERROR: Nothing PROVIDES 'virtual/kernel'
> linux-mainline PROVIDES virtual/kernel but was skipped:
> PREFERRED_PROVIDER_virtual/kernel set to meta-bbb, not linux-mainline
> linux-stable PROVIDES virtual/kernel but was skipped:
> PREFERRED_PROVIDER_virtual/kernel set to meta-bbb, not linux-stable
> linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible
> with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
>
> Then, many packages fail, since the relationships are incomplete!
>
> Interestingly enough, this happens for the stable kernels'
> definitions. For mainline kernels the local config does work, no such
> issues!?
>
> The local config is attached to the email or stable kernels.
> Namely:
>
> ## Define kernel version
> PREFERRED_PROVIDER_virtual/kernel ?=3D "meta-bbb"
> PREFERRED_VERSION_meta-bbb ?=3D "6.11%"
> PREFERRED_VERSION_meta-bbb-libc-headers=3D"6.11%"
> ...
> MACHINE ?=3D "beaglebone-yocto"
> ## MACHINE ?=3D "beaglebone"
> DISTRO ??=3D "poky"
>
> For mainline it looks like this:
>
> ## Define kernel version
> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-mainline"
> PREFERRED_VERSION_linux-mainline-libc-headers=3D"6.11%"MACHINE ?=3D
> "beaglebone-yocto"
> PREFERRED_VERSION_linux-mainline ?=3D "6.11%"
> ...
> MACHINE ?=3D "beaglebone-yocto"
> ## MACHINE ?=3D "beaglebone"
> DISTRO ??=3D "poky"
>
> Now, I override poky kernel definitions with meta-bbb repo:
> https://github.com/ZoranStojsavljevic/meta-bbb/blob/styhead/conf/machine/=
beaglebone.conf
>
> Both the latest mainline recipe:
> https://github.com/ZoranStojsavljevic/meta-bbb/blob/styhead/recipes-kerne=
l/linux/linux-mainline_6.11.bb
>
> And the linux-stable:
> https://github.com/ZoranStojsavljevic/meta-bbb/blob/styhead/recipes-kerne=
l/linux/linux-stable_6.11.bb
>
> Any clue what the problem might be?
>
> Thank you,
> Zee
> _______
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64062): https://lists.yoctoproject.org/g/yocto/messag=
e/64062
> Mute This Topic: https://lists.yoctoproject.org/mt/109129621/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

