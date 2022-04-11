Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E22B4C48BE6
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:59 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web11.26728.1649661186973529068
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 00:13:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Fd813QmD;
 spf=pass (domain: gmail.com, ip: 209.85.214.181,
 mailfrom: mans.zigher@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id n8so13097061plh.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 00:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=P2adQeHSHzwZsatY/4djuVGcSU8wTULCURvLJP0iKyU=;
        b=Fd813QmDngtlP9ksW4qlPj1NFFlmfhunY6DWRZKd+s2xHIYbd4Pqs/tuygmkbwZ5ou
         jjaGZt4HCJH/h22fDZkM1Urhrj15C5Lz7TIDAZDH+S/KrBWLu3bnFxd+t4duse5NQKya
         Oll9BKwIwn/gmeQ6qmyDtPjxWcTbDqKDpKTabj4cbS9hXKzGkf8/LHOjJn/NqfH2QjOA
         Hm6UNhanRHdtE8rihKU8Jz+TzR0uQM3TQzLXqljTMWrymSR04D/FaqQh8ksHc19m9evX
         5Su/dEh2OVgPnbXHya+A9GaWkj/fjP/xoL5TTZegLTwcxkJKUA2ZJrXEF5b5GVeaaRj7
         xl1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=P2adQeHSHzwZsatY/4djuVGcSU8wTULCURvLJP0iKyU=;
        b=QL2M0+DEX1KAMLFarCBUC8Io50poacbPpE6GwHxzcFrupJu5PN4R++3GmCuuvfQdVC
         zGR6fcyToxbyDRYv7jCA9TmRaIdXfklLs/jjGrvzGhJDODrHhlYVrfKprWH/zEkFmspJ
         sTRh7JNg/7aLreLrv64d9onMldaB+rp78OC7aKpSIMMbzcXoZZX7RmmCLwKOZ3WeaThq
         FtAcl7cT3iRd8CXAO3hgL1IPY9O10uNeD9NIvdjw97AkQaLLo7ABXg0uEEup9yLtDpou
         ThmA1uWpnkDP3KtNjKYj8HkhyVzPBLyXCgNK9/ey7ryBRb5iNIPNi53d6BZhj2hKc+rq
         7Tng==
X-Gm-Message-State: AOAM532VsTBnckSRwltn5PJv42LTqoFCFn10+JK+KSOSgJOnPLVTQZt4
	Ew7/85NuCV5UoRy/Mhpi1YaPjHBGKX2rMDwu04w=
X-Google-Smtp-Source: 
 ABdhPJwhdeurl3+Wf68sb84SW35XvwNSpPLrcpyrcprtr4JkS6IkuDFJv9qkzVQ2JgRCqO4gkVmcjTo1i2HNSKML0f8=
X-Received: by 2002:a17:90a:a78f:b0:1bc:8042:9330 with SMTP id
 f15-20020a17090aa78f00b001bc80429330mr35322057pjq.229.1649661186336; Mon, 11
 Apr 2022 00:13:06 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CANNYZj_UvDZWC+hD1pjxzkOKK_sL4wB+mu3a8GiPZVwUnEO4iA@mail.gmail.com>
 <CAEhQi8mHYXWi12epRd7anMqkVzjDk8yA2An6LFxzgN=6_BNMpw@mail.gmail.com>
 <CANNYZj-uMyMwhy2rR=7d_qm4akrB6DzVC05hZkUPDGrTh3voVQ@mail.gmail.com>
 <CAEhQi8n_YgYG-k60pxUCcPziiq4n2RqYcBi8+GePn55_YT5Fzg@mail.gmail.com>
 <CANNYZj8B6EQugEEkdKvWnw1qxvRPUMAMBRj-26SakJt4EpjzbA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8B6EQugEEkdKvWnw1qxvRPUMAMBRj-26SakJt4EpjzbA@mail.gmail.com>
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Mon, 11 Apr 2022 09:12:55 +0200
Message-ID: 
 <CAEhQi8m=_DTez_=NfNan0PEOKxb=Zv81VdKMoU_4sUEd2Twksw@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56715

Yes I know. Not sure why QC is stuck on Thud. Even newer releases from
QC for the target that we are working on is stuck at Thud.

Mans

Den fre 8 apr. 2022 kl 18:59 skrev Alexander Kanavin <alex.kanavin@gmail.co=
m>:
>
> Thud has been EOL for a long time. You can see when the support been
> added here (end of 2019 it seems):
> https://git.yoctoproject.org/poky/log/meta/lib/oeqa/selftest/cases/incomp=
atible_lic.py?h=3Dmaster-next
>
> Alex
>
> On Fri, 8 Apr 2022 at 18:56, M=C3=A5ns <mans.zigher@gmail.com> wrote:
> >
> > I am currently on Thud so I am missing the support from what I can
> > tell to set INCOMPATIBLE_LICENSE per image. I have tried to find the
> > commit that adds that support but am having some problems finding it.
> > Do you maybe know what I should look for to find the commit that adds
> > this support?
> >
> > Thanks
> >
> > Den fre 8 apr. 2022 kl 10:16 skrev Alexander Kanavin <alex.kanavin@gmai=
l.com>:
> > >
> > > Hello Mans,
> > >
> > > please refer to the tests we have for the feature:
> > > https://git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest/cases/i=
ncompatible_lic.py?h=3Dmaster-next#n95
> > > (line 95 and below)
> > >
> > > The key bit is:
> > > INCOMPATIBLE_LICENSE:pn-core-image-minimal =3D "GPL-3.0* LGPL-3.0*"
> > > e.g. apply the restriction only to core-image-minimal.
> > >
> > > Alex
> > >
> > > On Fri, 8 Apr 2022 at 08:06, M=C3=A5ns <mans.zigher@gmail.com> wrote:
> > > >
> > > > Hi Alex,
> > > >
> > > > Could you maybe clarify what you mean with "setting
> > > > INCOMPATIBLE_LICENSE per image"? Do you mean that you have one
> > > > specific image that is used when you build an image for release to =
the
> > > > customer and then one image for development?
> > > >
> > > > Thanks
> > > >
> > > > Den ons 6 apr. 2022 kl 11:04 skrev Alexander Kanavin <alex.kanavin@=
gmail.com>:
> > > > >
> > > > > I'd suggest you start by setting INCOMPATIBLE_LICENSE per image, =
e.g.
> > > > > enable gpl3 ban only in the images that ship to the customers and=
 not
> > > > > across the entire build. Then carefully look at what pulls in bas=
h
> > > > > into those images and why, and reconfigure those pieces to not do=
 that
> > > > > (e.g. by reconfiguring the PACKAGECONFIGs), or rewrite the script=
s in
> > > > > posix shell.
> > > > >
> > > > > Alex
> > > > >
> > > > > On Wed, 6 Apr 2022 at 10:59, Mans Zigher <mans.zigher@gmail.com> =
wrote:
> > > > > >
> > > > > > Hi,
> > > > > >
> > > > > > I cannot use GPLv3 packages in our image build. I am no legal e=
xpert
> > > > > > but from what I can understand most companies will not be able =
to
> > > > > > comply with this license without allowing the customer to compi=
le and
> > > > > > deploy a new version of any GPLv3 package to the target. I know=
 it is
> > > > > > possible to comply with this but we are using secure boot and h=
ave not
> > > > > > the time and probably no interest in setting up a solution for
> > > > > > allowing customers to be able to deploy GPLv3 packages on the t=
arget.
> > > > > > We are trying to make use of INCOMPATIBLE_LICENSE but that resu=
lts in
> > > > > > several issues. We have made sure that we don't include GPLv3 i=
n the
> > > > > > image build using a manual process but would like to use
> > > > > > INCOMPATIBLE_LICENSE to alert any developer about the issue. It=
 seems
> > > > > > like INCOMPATIBLE_LICENSE is a bit harsh since it will catch an=
y
> > > > > > packages even if it is only part of the SDK and also for native
> > > > > > packages that are not part of the image build.
> > > > > >
> > > > > > I cannot be the only one with this problem so how are other com=
panies
> > > > > > solving this issue? Are they just not using the INCOMPATIBLE_LI=
CENSE?
> > > > > > Are you setting up a parallel process for checking for any
> > > > > > incompatible licenses issues?
> > > > > >
> > > > > > A more specific issue is that there are so many packages with b=
ash
> > > > > > dependencies which are pulling in bash which is GPLv3 so how ha=
ve you
> > > > > > solved that? Currently we have done some pretty uggly hacks whi=
ch I am
> > > > > > not that happy with but we needed to keep it out of the image.
> > > > > >
> > > > > > Thanks
> > > > > >
> > > > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > > > Links: You receive all messages sent to this group.
> > > > > > View/Reply Online (#56672): https://lists.yoctoproject.org/g/yo=
cto/message/56672
> > > > > > Mute This Topic: https://lists.yoctoproject.org/mt/90285507/168=
6489
> > > > > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex=
.kanavin@gmail.com]
> > > > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > > >

