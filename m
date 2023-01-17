Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A424C54E76
	for <webhook@archiver.kernel.org>; Tue, 17 Jan 2023 20:01:16 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.207976.1673985670934733876
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Jan 2023 12:01:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aArm0pfc;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id a37so8423564ljq.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 12:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MpQDWJ83q2edOYYj3hymdYKB+iBKpXzyloGYlj4/qoU=;
        b=aArm0pfcxl7No7D1SQWwXmivMZ1NZYOQjgHHILHTQaRVOR0csPvJJpUkB1TEmZaafU
         sSj7JfDSFNghqQoqI9hjvz0FnUdNjwcf4QvcNllr6gqQ5xWoA+ViCEUqSL77c5gYam0T
         0qceEF/cm5PRs0gRrYPyyyOvoA2EpdsalPk68pjTnTVvzEjHmY7B34nOb6lTMLksnvs2
         PzLYdrBFPVaBadcQotsW+6QLuGuwlEvtt1Sk0gQzLt0PG4+mrT1/wfh5Qi+BTd4OxRfy
         hEKAqjdZKrXBmv7RcpYFRp3x5LB5+Ya3NctHNEO8eKXA2LxTNWsFr8ZkpdI2s7bjahhP
         LmQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MpQDWJ83q2edOYYj3hymdYKB+iBKpXzyloGYlj4/qoU=;
        b=kmGHNhw7Q7ON1x+xCkGCVOcbYZPnAeW8jL9PZtolDeH/0x1UoV+LQvaddJttQVG+K8
         XMh/aH5TeHwqIfTzciOxIFXPHML8BWc0/YD6BlRF/vEsBcoQh67jcl8OEuuxXoonRF6d
         TgxDGxVzUcV0O2sC7USso1j0hV63WmyfwABkcaVnCd9tkbCP9xj2eFT76dZxFQKDEC1V
         /aBnhzVY1hdb5qPlakU1KGrwOc5norrVUkOfWGHPoY8OC2dkc6tSRbLBWoBIE//BSVPe
         MhVK608spJVmtRpNjvmWplYz2rasmFLU+Bzv2kTE6PvMVuQwC/1fN7TBzt19SPmsLKph
         FL7Q==
X-Gm-Message-State: AFqh2krcgDjp1QekR2PtMvIwRXZnhU7oH/OiOAY2WMQy3rDHlU+Qnorv
	HU6D4WRls7sY3SKzeAJyxP2VK2udpKTFk/zaK+w=
X-Google-Smtp-Source: AMrXdXvQp+QlBOgO4G3nm8src2xh1Te6rpGzLkxhUSATx1z2kjb06TCOi47GJIu7C+y3WZvdoQyHS7v2gIHJmAy22b8=
X-Received: by 2002:a05:651c:2395:b0:282:5f2d:62dc with SMTP id
 bk21-20020a05651c239500b002825f2d62dcmr395810ljb.217.1673985669297; Tue, 17
 Jan 2023 12:01:09 -0800 (PST)
MIME-Version: 1.0
References: <UJ70.1673979468308754075.EgUP@lists.yoctoproject.org>
 <CANNYZj90RhVw_EKkOZcz1vsz+DjcihwWKtrMygt+F1t6PqsaMw@mail.gmail.com> <CADa-vC31UPSh1ymwvbft9DQinefR+r-DK_WPzPMtxoJmydvz-w@mail.gmail.com>
In-Reply-To: <CADa-vC31UPSh1ymwvbft9DQinefR+r-DK_WPzPMtxoJmydvz-w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 17 Jan 2023 21:00:57 +0100
Message-ID: <CANNYZj_i0XAyXqf+qrOH+Mr2rgt+DqBc66CbtyYMErijvkqvrg@mail.gmail.com>
Subject: Re: [yocto] Possible to replace gcc-runtime libraries & libgcc #gplv3
 #yocto #llvm
To: William Huang <whuang8933@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 20:01:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59013

One more thought: would shipping gcc-runtime also trigger the 'provide
the source code for everything that has been linked with it' then as
required by all gpl versions? The exception frees you from that too,
so why is it good enough for one requirement of the gpl, but not the
other?

Alex

On Tue, 17 Jan 2023 at 20:26, William Huang <whuang8933@gmail.com> wrote:
>
> Thanks for the response!
> I did try googling the interpretation of the license exception but
> there are always back-and-forth debates on the issue.
> Anyways, consulting with the legal team came back with the inclusion
> of these libraries would still trigger the "installation information"
> clause. For this reason, I'm investigating the feasibility of
> replacing these libraries completely.
>
> On Tue, Jan 17, 2023 at 1:39 PM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
> >
> > The GCC exception frees you from having to fulfil the terms of gpl3 in =
almost all cases. Links with details are easily obtainable with google sear=
ch.
> >
> > Alex
> >
> > On Tue 17. Jan 2023 at 19.17, William Huang <whuang8933@gmail.com> wrot=
e:
> >>
> >> Hello all,
> >> I'm in the process of generating an image without GPLv3 software. I ha=
ve removed everything but the gcc-runtime and libgcc libraries. These are g=
pl-3.0 with GCC exception. I'm not sure how feasible it is to remove these =
or replace them with llvm replacements. Just wondering if anyone had been d=
own this path before and if you can share your experience that would be gre=
at!
> >>
> >> Thanks
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#59007): https://lists.yoctoproject.org/g/yocto/mes=
sage/59007
> >> Mute This Topic: https://lists.yoctoproject.org/mt/96336692/1686489
> >> Mute #gplv3:https://lists.yoctoproject.org/g/yocto/mutehashtag/gplv3
> >> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> >> Mute #llvm:https://lists.yoctoproject.org/g/yocto/mutehashtag/llvm
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavi=
n@gmail.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>

