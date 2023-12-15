Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3E08C4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 17:34:45 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
 by mx.groups.io with SMTP id smtpd.web11.68764.1702661682030961322
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 09:34:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gei10E77;
 spf=pass (domain: gmail.com, ip: 209.85.210.53, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6d9f4eed60eso722414a34.1
        for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 09:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702661681; x=1703266481; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pO3lwS6XlD2JzQNl2s65k33vzXbQ5CU1V2VQRmKXBkk=;
        b=gei10E77RYwsDwy88VRf+yLZzUK6hTLRHaGrn5gh8Y6D2oZfs7p6lC6nybye+PU6jV
         uPRq7dzQQ0S01foOPVUBi+JFmHKjWhjDz0orE2S7t0eK7yvu2QUwBVns2ZOIKkanSAXf
         frzxTn2r7xvsIJsgeLicEWYugf6mqYAYuuS85TrApeMHu1KDBg4JaObDoO/LxW1dzD2i
         VGPCFwzXhmFJgxf2lPKFoRjLSP+DeQdXKvNgJJGhUpmK0WVpQkHhNgqjBog7i8ka1dIG
         hY9XRBJEWqfgnOzQYGR0FOP7DHeymHpKXSxYl1lYxVdgy/r28dXHVCPCi1u95mYDLt+c
         dveg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702661681; x=1703266481;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pO3lwS6XlD2JzQNl2s65k33vzXbQ5CU1V2VQRmKXBkk=;
        b=xQEU2dr3V4jO2DCS1Que1eh3bSXfKKKILFZvRxSnEgpvIwcKbOdBVJk4+Si5zMQy+b
         ABLw68VMvz776aiRv8CXEMR+ghCCNdpjFzm9+prAxh6Yl3tcEdmNequL8wuo+JAJR2wL
         1n5L9CHm0jnfQyeQw68pt3mIRaFZvk4TAnxxiT4Ru1tdt9+lKN7RTV2Dj4XFBVWkdlEX
         q7phitUJzwsMbP2nOcD/2Scitp4qIkl7KUzonJB6z38FY5AyGYFVXhF115mCwyWbiD2Q
         nogYz9r/uhRchM/REaqdg7FE7mEj+6ZiaP0fABPQJJ0i3ir/uYfSY1jiR992yav5pfDJ
         he0A==
X-Gm-Message-State: AOJu0Yy13roeegM+fFqQzYexpoZss606cJax3UOIcEqN9eQ/0JCmvFjh
	Q2Xp7nGzkZ+dzWgSy/ogpwsnc3092F+LpT7TghO3Elim9oU=
X-Google-Smtp-Source: AGHT+IGokj6R4fvJsIa+9f3QGvadZyB28AOtCILjhM82VGBDQbbYfj0tizadm1JB4GDcVWsuAI1iW3NsN4CxTmRcnxc=
X-Received: by 2002:a05:6870:9a89:b0:1fb:1b2:fc93 with SMTP id
 hp9-20020a0568709a8900b001fb01b2fc93mr15879940oab.22.1702661680868; Fri, 15
 Dec 2023 09:34:40 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sqFGH2fqo29aitrwKrhbzBHyFY7p0iZxdp0m8byJTtzwQ@mail.gmail.com>
 <2894.1702661187065042996@lists.yoctoproject.org>
In-Reply-To: <2894.1702661187065042996@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Dec 2023 09:34:14 -0800
Message-ID: <CAMKF1sqv7_9rz=NqBshF5UHmm9A8ZjmZbtbi13MSOPwiYOzaTQ@mail.gmail.com>
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: yocto@lists.yoctoproject.org, renato.mendes.pes@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 17:34:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61910

On Fri, Dec 15, 2023 at 9:26=E2=80=AFAM Renato Mendes
<renato.mendes.pes@gmail.com> wrote:
>
> Thanks for helping...
>
> $ lsmod
> Module      Size           Used     by
> nfsd           454656     11
>

yeah so no kernel modules could be the problem.
You said you are on kirkstone

Can you try backporting

https://github.com/agherzan/meta-raspberrypi/commit/0917b60527242d3668efc2d=
3b918df64b13e7b6f

to kirkstone and see if it helps. ?

> dmesg | grep brcmfmac shows nothing....
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61909): https://lists.yoctoproject.org/g/yocto/messag=
e/61909
> Unfollow This Topic: https://lists.yoctoproject.org/unft/103150047/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

