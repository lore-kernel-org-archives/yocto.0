Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D88C47258
	for <webhook@archiver.kernel.org>; Sun, 28 Jan 2024 18:59:21 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.47585.1706468351246621700
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Jan 2024 10:59:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bX+v0Y45;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d03fde0bd9so9590401fa.0
        for <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 10:59:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706468349; x=1707073149; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9eTZ7pWuwhZYzli9KDGdrFHp3PY4vv/yrxHMmdJO2Nk=;
        b=bX+v0Y45llI4YHnXYtyU2xnA9B5XGl6m5+G3h1f2bcdypUZ4udmtzFFyHBuiSpu8lZ
         35ywkufSJ5dlJhMxCHDExg55pX5w1mUXxKhyuzL09/Sam2txKi2stfe+IteE7J7MDbFI
         dpzxpBbVOOO/D6VKekBDjFQcWE3OzoCXDCAZMkuMtZycpzXy0zYGjg13D2A919gIBHEx
         azImBrPaIlGb6lUgULTqN0lYjvXenTgqmigkpWAAH4KIvIYNONyd/TeMtXWVrASGBkG/
         V1NntHNjpAaft+m7FU1CaSOkoun6e0/dWZffoLKUq8S8cdhVj+7WhdhaO3n06KaSR45J
         Obpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706468349; x=1707073149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9eTZ7pWuwhZYzli9KDGdrFHp3PY4vv/yrxHMmdJO2Nk=;
        b=C51mpF3Sshfz8LUlCfgIhnL8e+sz1cSw712uqooAjAY1yh/zGzUFE8P3S/jo3mVv/G
         Z3adJBnzC952mdJsoTfeXVrfT8sFn6a8U/Eq04zHDqI6EVke0GadVf6r6R2t7q1RwdS9
         dCr+PWunkaz2Tl9pAF2EWa6G8/4eR1JK09OjJMfoI7BAekRBRuc2qnjydh+kiBRBl8Mq
         5KKK9IiNarW8grZZsjWs/rs+OjXrVAm0Irxnh1iiRtqusyd7isBAoJtbtY7tARGHjkZl
         IMplBx55CjIYAB2B0ttaET/UOLx+mxjDOsI8mjhDnJM4eNEFMIge89xqBjo+R4B76wSB
         t+BA==
X-Gm-Message-State: AOJu0Yx3fkzcuN9KjZ1yyAUOuHUx11MWYbcqNwYzYj6MPW0kdmkiC1XN
	guBjRfDUATPL4RVlaqaFBrK7+X0gG8z3b1UVOiU7eqDsaoH7GJ/3Adk7c1/O+o70O4mp4uo+Oza
	PNOw0NWTPqRK5FQpblM4tdlr3fDG/4UIs
X-Google-Smtp-Source: AGHT+IFK3mtsNZ69IJbnWUY8WzauMBcjn6GX4BUcx2ghyb9rsxHvc/qAZkJQNSXuMCKMSVDlmHb4he534P4K0+T6f7Q=
X-Received: by 2002:ac2:54a1:0:b0:511:e7f:3ae8 with SMTP id
 w1-20020ac254a1000000b005110e7f3ae8mr867183lfk.48.1706468349180; Sun, 28 Jan
 2024 10:59:09 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj_1VzMf12EPRQgm=zG2pAJR+_6BRrJ-Ejgq7NGwOfpnYg@mail.gmail.com>
 <3472.1706432485345899127@lists.yoctoproject.org> <17AE83B5B764CF93.23935@lists.yoctoproject.org>
In-Reply-To: <17AE83B5B764CF93.23935@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 28 Jan 2024 19:58:57 +0100
Message-ID: <CANNYZj9i+k=TUL7T2hEtbBX4d40shBVQgH8bS-VD7rX2NpBGCw@mail.gmail.com>
Subject: Re: [yocto] How to build two images with different settings of a
 recipe in Yocto
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: =?UTF-8?B?SsO2cmcgU29tbWVy?= <joerg.sommer@navimatix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 18:59:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62316

That said, if the difference between distros is only in specific
recipe settings, then I think the builds will reuse each other's
sstate, other than the recipes that differ, and their consumers.

Alex

On Sun, 28 Jan 2024 at 13:48, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> There's no way around this: you can't build the same recipe in two
> different ways for two different images in the same DISTRO. The
> different behavior has to be specified through config files and picked
> up at runtime, and not through build time settings. All products and
> builds and CI infrastructure for them must be planned with that in
> mind.
>
> Different local.conf is essentially a different distro in all but
> name, and less understandable or maintainable.
>
> Alex
>
> On Sun, 28 Jan 2024 at 10:01, J=C3=B6rg Sommer via lists.yoctoproject.org
> <joerg.sommer=3Dnavimatix.de@lists.yoctoproject.org> wrote:
> >
> > Thanks for your reply. It helps, but I see some issues with the ROOTFS_=
POSTPROCESS_COMMAND.
> >
> > For the config file this is a possible solution. But what can I do if I=
 need code changes? SSH announced they'll disable DSA support by default in=
 a few months and for all other images except one I would stay with this de=
fault. I have to supply another setting to configure when building the reci=
pe for one image. And I have more images they require reduced (or widened) =
settings of packages.
> >
> > And editing the image has the drawback that it doesn't play well with p=
ackage management. If I install/update the sshd ipk, it doesn't contain the=
 change from ROOTFS_POSTPROCESS_COMMAND.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62314): https://lists.yoctoproject.org/g/yocto/messag=
e/62314
> Mute This Topic: https://lists.yoctoproject.org/mt/103992605/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

