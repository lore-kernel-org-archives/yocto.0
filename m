Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91341EB64DD
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 01:55:26 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web10.52743.1691459725189409526
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Aug 2023 18:55:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=FmVLgELY;
 spf=pass (domain: gmail.com, ip: 209.85.161.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-56c7f47ec42so3669226eaf.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Aug 2023 18:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691459724; x=1692064524;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fJz3a8E2uLk5qXblqKC0F7XUzfNKxDnocVEDJ6ZEukA=;
        b=FmVLgELYZlJhiIffw0HU8inuMnUhDUT+TpBQKEkafKf2RlQlr8nXnh40UKJ217iGKC
         FllYLHMd1YFggQNZNsHgel08/UCe9jq30y/wy5VT2uGtDHoYu1TD3pnEfi1fq5ICgEPx
         aSpbwZ+6IOnED5TlmKMY29wyfE3DAh8eoh9hWsEAR4+azhOuQRtVHWhNrCmM5ten5zpZ
         PjGmDLtjJd1WexVcUdjayrpWGNaoCgWH8l6P0fy3cwutDdmE66ppA3v2fH9uks6KPiks
         SV3LynNNu1MmeivuX/83e8wfNZB24V8ieYiqY1h1KSQDo+D/7oIbL9xgDTRHCXni0j6C
         ZjtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691459724; x=1692064524;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fJz3a8E2uLk5qXblqKC0F7XUzfNKxDnocVEDJ6ZEukA=;
        b=JnLkoK4PU0P4ajqQZN9pPfunGZx3JfK8LWVn8AoIBMZMY/S6qrfjBzn1UgvDY20UKH
         Xx3igG7LF8MK3rauX7n9Hl+Qxh75wtE7mj/hJ38Je7ZyEzAKujNZ1dtkx+LJ3DW3HHPd
         sHJuEYWa9YEXR/MDUCw1MkdMb1/txRWF1DnFsSYFdKzeLXmXKLH6/bgOX6RIQLTvn8yL
         r0UT2FZ8VMSthNChwUSXo8Ihp8C250LZ7Q5vSMYqA8taus9Eb0/yP9FM1JYaSR15YNOO
         mQKXGCa7mdAwebUnfiyfE5HJyCVyeQuwdUAnZ7FQH7HxK5jM8mM72SZXpwNkU3QwR6iW
         7N1A==
X-Gm-Message-State: AOJu0YwYBRe+E4w6l6mnJtQ2CD8FM8RWmav9kJzqwECfmn5r/068Lcu8
	1PT4y0Cyd3g43QKFMbrFzv39jEqWJpMu2m5+KP0=
X-Google-Smtp-Source: AGHT+IFBJXXZvCWK0r/d2o5ackh0jai56kUl/xbKGrvdEgh4MFmcJewzng7qWfHHmy2/8f5lU0NNagyB5Vq7wyoG3Vw=
X-Received: by 2002:a4a:2750:0:b0:56d:2d49:13c2 with SMTP id
 w16-20020a4a2750000000b0056d2d4913c2mr10223635oow.4.1691459724393; Mon, 07
 Aug 2023 18:55:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1soa1LBpQqXB6W2QCnA=h+MD_Ju9hYvg3vmEe+2ofa23eQ@mail.gmail.com>
 <5592.1691459429009382097@lists.yoctoproject.org>
In-Reply-To: <5592.1691459429009382097@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 7 Aug 2023 18:54:58 -0700
Message-ID: <CAMKF1sphD-9rSQ96Q4Q7fYH-r+3ZMTRPo+046MwKez4HwQUbxg@mail.gmail.com>
Subject: Re: [yocto] How to add a few lines in config.txt in Yocto project for
 Raspberry Pi
To: Crane <crane2018@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 01:55:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60730

On Mon, Aug 7, 2023 at 6:50=E2=80=AFPM Crane <crane2018@gmail.com> wrote:
>
> Thanks Raj for your quick reply.
>
> For config.txt, the recipe I am referring to is rpi-config_git.bb in meta=
-respberrypi layer. This is the one I am testing now.
>
> Further on, I will add recipe appends for rpi-cmdline.bb.
> To change /etc/inittab, I still need to find which recipe to append.
>

what is the name you are using for bbappend ? secondly what does your
layer.conf look like for this custom layer ?

> Thanks!
> Crane
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60729): https://lists.yoctoproject.org/g/yocto/messag=
e/60729
> Unfollow This Topic: https://lists.yoctoproject.org/unft/100614184/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

