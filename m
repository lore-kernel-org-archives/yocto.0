Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77305C7618E
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 04:02:19 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web11.4292.1682049731728056291
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Apr 2023 21:02:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Jv/gn3al;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-38dfa504391so1034484b6e.3
        for <yocto@lists.yoctoproject.org>; Thu, 20 Apr 2023 21:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682049731; x=1684641731;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fBNgBGwKhJfCEl7rzEcjxTxSFVNPfVsipIZMCbZ4OSM=;
        b=Jv/gn3alyeRlDG9/s9stlpdZs+how/lt3DcEj8N1dbn0ZCPkf78pmUF1cYWB+tA2re
         6eOHb30HREs+dUlBSW1f5PBrBPbUlQaZ1AvPSWL3s4XFVrsGEgthJBKoInxS8JDfYOU2
         c1fFcTsdXDl3IDgfykQG0P2HlxuuIsQ1M4tChy1m49tytv2UyeX2HYI+kovHHIoQyGol
         Erm7Z/icoR8IbnXaLSObzOuGj1/AjY2Bb0XkkFmGzaIoOIQ1Q6UBoqHi3s4NEpIJw+42
         DQBI1VyASqsh/DjrujKVOjDIegtuJcFJFphHABskXUXodz9dZxy0mDChbbxL5lZ7DZUM
         Qbtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682049731; x=1684641731;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fBNgBGwKhJfCEl7rzEcjxTxSFVNPfVsipIZMCbZ4OSM=;
        b=LXFlbn/kJSKKYh6NbDpnDQDzwa/WZePr/N5my4/Ybes9/vhrumjd5b8zmoiQV1x7/D
         +GoCloWDry4Jmmmb3Y2R2tD1YFNemxrwPMK+GEGp4omgmTtLLNyYfi+jsqS/zbwbxxtD
         Pb6Ec8b7etW8Kilk7y7o7rwdWHflba0eXoRVG0j8eZrkANjTJBYr52pHBGOUdivTltez
         BRS+H9TTRSEjxp3p7JrJ2f/3SOHEF/iG4u7yGJGnLOpNRgkJdrAHFFF19KoglvvrhrfR
         8bhcQBhHcuRqH/mlwdCWCX1pG7OksuMC2pIq7Tze9iUSeuWjx1Saqcebov1Fe2KpvgBK
         kbAw==
X-Gm-Message-State: AAQBX9dtHpqFZdthLij965RQEfHS4Bulvel1g+XWAWT3YwwOMRxvkM/p
	ZsDB1zElGNhxiyczIQTge6NJhNBiC1QeRXjV5y8=
X-Google-Smtp-Source: AKy350bHY/bn2EvlZphHPWddDo32JwVP4Y7xEc9Y4/h1lxpK/GCzaMAAGJYRXNygg6k4nclq8rlmbtx+526bc+8HOx8=
X-Received: by 2002:a05:6808:1907:b0:38d:61e9:12cd with SMTP id
 bf7-20020a056808190700b0038d61e912cdmr2481470oib.21.1682049730895; Thu, 20
 Apr 2023 21:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBni6M5ssUgSEyTEC5Vd8=XahXfEP+71N=AUmU9FyefDMRg@mail.gmail.com>
In-Reply-To: <CAPJWBni6M5ssUgSEyTEC5Vd8=XahXfEP+71N=AUmU9FyefDMRg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Apr 2023 21:01:44 -0700
Message-ID: <CAMKF1speLkL-HRXkHDNcyr+GKOnZ=NvLSFrtcCiSo49jJRt23Q@mail.gmail.com>
Subject: Re: [yocto] NPM package management
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 04:02:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59747

look at https://docs.yoctoproject.org/dev-manual/common-tasks.html?highligh=
t=3Dnpm#creating-node-package-manager-npm-packages

On Thu, Apr 20, 2023 at 8:58=E2=80=AFPM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> Hi guys,
> I am writing a nodejs application for my board running on yocto dunfell. =
I had a doubt regarding the npm packages. Since my application would use a =
lot of node js packages, how do I load all those packages? I didn't underst=
and much about the npm registry tool and how it can help for custom complex=
 applications.
> If you guys have any ideas or suggestions please let me know.
>
>
> Thanks
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59745): https://lists.yoctoproject.org/g/yocto/messag=
e/59745
> Mute This Topic: https://lists.yoctoproject.org/mt/98404043/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

