Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F48C761A6
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 13:15:21 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.24692.1680182113613310581
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 06:15:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DdDMdAGU;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id l12so19020902wrm.10
        for <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 06:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680182112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=REpyACrc+BErMKRzpYC/ngHkfL2/eTZLTC6VetBNucY=;
        b=DdDMdAGUySH4BBGYn/05cGUaH3TNPM5firfgF5k8b8A0qHuPpAKs2M9NxQr46rMD0Q
         zkTGIa+6qEX7U1rF/t2nWjalEPFiRYTE0mSuTRhukpv5a6FEY2XJeoI2aOQZPt9dwa7F
         WjH1SsnJg7K+eVvr+WZ6kGXbSCmYvJ4LthC9kyObb2KYRVldiCwjPDIYPt9djKNxFkI3
         vIpJbYMpu2K2nS85WvY1HMO/BXeY8azt/oAYS24lwXLApZMbO1zzM8M5eYvaTa3TnhQQ
         tiUaFeLMkydIREFO2lzGSc3dlVrhs7wd0JIp5SGsjEFl+YMsOs+7f99pLWwVpxwGukBY
         i4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680182112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=REpyACrc+BErMKRzpYC/ngHkfL2/eTZLTC6VetBNucY=;
        b=3kSzFJEyOdQPPWc5o9w2texKgtlblM3jXjHjLpQswhkRDJWswPCtLinkaawLvc0+KX
         yCT9XajvDD1acGgh1auSFxl8XNM+oL6nG/xqeOCCpGzCdbQS4BsW96wGhQLz8XkbrOcM
         KP6D0EMFtMXDwICyFwMuz2Dg85suI8rO5WCLXfKu0LTKbJtpa1SvZcYC5AL4AqYOB2Da
         f9uf4W0T5sO8MCGIAyIpzfsuJtEyFUkqXVF3+ZH41Djme4v4x8tFPYJMtyyKr7KdZ5Rk
         T+hfaDyl74wlvrqzUqm91UgegtFKrjYQ5JKa8wiZTNn//QGbf2xaeNf5Q8rBnSU3Bk+v
         BPPw==
X-Gm-Message-State: AAQBX9cCozVhNKnfewP9XeZxBY7Mi33kY3RLDmapR7LeIC+XqE1zpvBx
	QA1QvCtiELNgbI1ebH2l7nE=
X-Google-Smtp-Source: AKy350aILn7OguqMFs/eAKs2UqI3zbmGdCVAVc8URyert+ffowtZZfSuH0bD4l1DJ2JyA4LJlcaAdQ==
X-Received: by 2002:adf:f3c9:0:b0:2ce:9da7:6d42 with SMTP id g9-20020adff3c9000000b002ce9da76d42mr17193205wrp.38.1680182111702;
        Thu, 30 Mar 2023 06:15:11 -0700 (PDT)
Received: from af-t14s.fritz.box ([2a02:169:59a6:0:1cbc:6951:ccfd:3bae])
        by smtp.gmail.com with ESMTPSA id p17-20020adfcc91000000b002c71dd1109fsm32958539wrj.47.2023.03.30.06.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 06:15:10 -0700 (PDT)
Message-ID: <4275a1007b94c03891f304db0b9926620fe52457.camel@gmail.com>
Subject: Re: [RFC][yocto][meta-lts-mixins][kirkstone/go] Backport golang
 from master to kirkstone
From: adrian.freihofer@gmail.com
To: Alexander Kanavin <alex.kanavin@gmail.com>, Jose Quaresma
	 <quaresma.jose@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Jose Quaresma
	 <jose.quaresma@foundries.io>, Ricardo Salveti <ricardo@foundries.io>
Date: Thu, 30 Mar 2023 15:15:10 +0200
In-Reply-To: <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com>
References: 
	<CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
	 <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 13:15:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59549

Hi Alex, hi Jos=C3=A9

The meta-lts-mixin layers for dunfell have a major disadvantage:
Replacing the go tool-chain breaks more or less all recipes from meta-
virtualization and potentially other layers.

I think with go it should be possible to have a meta-lts-mixin layer
which adds support for additional go versions instead of overriding the
version provided by poky. That would potentially allow to use poky on
the kirkstone branch and meta-virtualization on a newer branch on the
long run.

Would it be possible to add e.g. a copy of the go.bbclass as well as
the go recipes from a recent poky version in a way it does not override
the go stack provided by poky?
As an example: Would it be possible to add a go1-19.bbclass to the
meta-meta-lts-mixin layer? This would allow to add also a newer Docker
recipe which inherits go1-19 instead of just go to the meta-lts-mixin
layers without breaking anything from poky or meta-virtualization.

I already tried to share my thoughts here:
https://lists.openembedded.org/g/openembedded-core/message/178146?p=3D%2C%2=
C%2C20%2C0%2C0%2C0%3A%3Acreated%2C0%2Cgolang%2C20%2C2%2C0%2C97444547

Best regards,
Adrian


On Thu, 2023-03-30 at 12:08 +0200, Alexander Kanavin wrote:
> I think I pushed the work directly to the respecitve branches in
> meta-lts-mixins. I'd suggest you send the patches here, and we'll
> sort
> out the technicalities (I can publish the branch on
> git.yoctoproject.org, or maybe you'll be able to push directly as
> well, provided you also send the patches here). There's no
> autobuilder
> testing; for mixin items the contributors are trusted :)
>=20
> Alex
>=20
>=20
> On Thu, 30 Mar 2023 at 11:20, Jose Quaresma <quaresma.jose@gmail.com>
> wrote:
> >=20
> > Hi,
> >=20
> > The golang version in kirkstone is the 1.17 and because of this is
> > not possible to use some recent version of other projects like
> > docker that requires a more recent version of the language.
> >=20
> > I have a kirkstone branch [1] available at Foundries.io with the
> > golang backported from the oe-core master that I liked to submit to
> > the meta-lts-mixins [2].
> > Alex is the maintainer of the dunfell golang backport and this
> > kirkstone branch is based on that version.
> >=20
> > Would that be interesting for the project? How should I proceed?
> >=20
> > [1]
> > https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go
> > [2] https://git.yoctoproject.org/meta-lts-mixins
> >=20
> > Jose
> >=20
> > --
> > Best regards,
> >=20
> > Jos=C3=A9 Quaresma
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59547):
> https://lists.yoctoproject.org/g/yocto/message/59547
> Mute This Topic: https://lists.yoctoproject.org/mt/97946990/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


