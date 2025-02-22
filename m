Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A014C021B2
	for <webhook@archiver.kernel.org>; Sat, 22 Feb 2025 14:08:23 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web10.46499.1740233299236872390
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Feb 2025 06:08:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=weyvDs33;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: sakoman@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5deb956aa5eso3826697a12.2;
        Sat, 22 Feb 2025 06:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1740233297; x=1740838097; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oywql2BZrbiiO1z7NPIaoxuzvUh/vsHhUYZDCg5tuto=;
        b=weyvDs33sosW3ktv5UIahEetB72Q6TjsW+zWldr1pyMCsnCSkPaJbdUv0EKN8reLZM
         Ym533S7oFnBcthTP5a95QVj26wuNZXy+tKUmS/5RPyl2Jt8seJ4KIK3IuSBxYzRX6sAK
         Xy4H0SrXtmxi2c/VFhJy642UPnJdrGMpD59LbpP1T94zPDRrxKogw26BpCowkFN0teuE
         we290B9tPFK+m2X9AN3vDOgXw6751gF9nPxePRqdmggR3TzF71Z60YyAuLEL9bGjm0Mf
         zis0woWMgFGbf3rtJlHHXiaInfKSV0k5ydYJKt9fsBPNPsRbD3PqtYFVDucK7YjhX4yb
         jJIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740233297; x=1740838097;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oywql2BZrbiiO1z7NPIaoxuzvUh/vsHhUYZDCg5tuto=;
        b=vsxUuYweXCLSJGcWL0NatXBSScyOEmBQXl8XWDgPWQ8TXPg+wIFTMC0TVEeV//zcQ7
         9ZyGAcPCR+9pZyi4VAGB74xWAvIozWQVC1/9v5E8wEaF3DJFmzIkQnnB8FkOc94XOjbq
         pys4NMmIchyI/rMC9ppTB/QcGIxxtPl2P+QE091Sl3YhNvc1VZQCFsl8Ce+Ya9SEJfgE
         7oCnZWKvaAT0QM9GW/+wd6lCZmONAzirNm2jrfsZYpXmUlyOSnMII2Okv3zh1iOi0D7P
         02chRIrJkCwmEo46YdGEz8Udk3YKd6IMtGmsyXBIPrtJb8uR8hLKQgp5pQWr09L0BdAK
         8xTw==
X-Gm-Message-State: AOJu0Yy74HmOmHvfee2zb+oabXnqXjZX23zL9oL1xOAwzQmOdqyeTN8k
	0qC9KXny3RSWY23shi5BHG2s65oIPtwCSPteccwCrjkpScogvclljKOMyU9IihdQIJCUJMOqfbt
	exWck4+DHAmj1YxYXW6cEZ2oKKgfLZA==
X-Gm-Gg: ASbGncteV2cfL+IgiEMpXcA/KxgwVyQMw2JFV6P8M1J0xoKMT5WpqdraEZNq8U9entZ
	oC2BfrgrcmjlQU0erdtw/mpxm0xY3B2GHeSFZsw5oW6mFOIVNTEH2//7CFsonCzRWywad9EFXcS
	un/KK7viHp/aPeLbnbKAgGR9DS4DkdkC/j2FOCAKI=
X-Google-Smtp-Source: AGHT+IGmhSn0VRBIy9DYN8JrLtOAd3r9oRn2v6LSuaZiGrivGmQs8YZqfOB3T3m7kkDlMFovmRJ46CTeRcz22D9uE1o=
X-Received: by 2002:a05:6402:4617:b0:5df:6a:54ea with SMTP id
 4fb4d7f45d1cf-5e0b70f3383mr15929079a12.11.1740233297053; Sat, 22 Feb 2025
 06:08:17 -0800 (PST)
MIME-Version: 1.0
References: <010101952c99ce92-b0b50af4-d5eb-415f-9891-b5887e1eef75-000000@us-west-2.amazonses.com>
In-Reply-To: <010101952c99ce92-b0b50af4-d5eb-415f-9891-b5887e1eef75-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 22 Feb 2025 06:08:05 -0800
X-Gm-Features: AWEUYZk4iIs-0VCtelEUJAqsK4rL1oP9bBjyeMeCW0sYd1CtzB9vs5pFjLTAulM
Message-ID: <CAGDS+n=g+ttASddodMoU9WWTmorXBhYFrMtoUm-aRR4K3x4mAw@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.1.3.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2025 14:08:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64850

There were a couple of failures on this build so I will be trying an rc2.

Steve

On Fri, Feb 21, 2025 at 11:40=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.1.3.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.1.3.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/1065
>
>     Build hash information:
>
>     bitbake: 58e5c70a0572ff5994dc181694e05cd5d3ddaf66
> meta-agl: 005d2b0a27ebdd21fb2aaa589c8672650474b055
> meta-arm: e56a0cd6fe5e796aa59bd0d4bcbbb585ea626199
> meta-aws: 9d8d77cda988ba59a00b723b0d78f49a206b5336
> meta-clang: c709a5196f1e8654425b43b478064395386c36d4
> meta-intel: 0ee9e8454cd41dcb0f49df7dcf2182b4d5e7cc96
> meta-mingw: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
> meta-openembedded: 6851cbf026088a13b2b45f684838d3dc4d7ccfdd
> meta-virtualization: 247ea9c3880a257003ce2cc566fcdbb307ea4374
> oecore: 35ffa0ed523ba95f069dff5b7df3f819ef031015
> poky: 11a8dec6e29ac0b2fd942c0fc00dd7fc30658841
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#513): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/513
> Mute This Topic: https://lists.yoctoproject.org/mt/111322644/3617601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627246/3617601/811314736/xyzzy [sakoman@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

