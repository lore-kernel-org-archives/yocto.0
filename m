Return-Path: <egyszeregy@freemail.hu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C4EC7EE21
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 19:53:19 +0000 (UTC)
Subject: Re: General bbappend for virtual/kernel recipe? #bitbake #yocto
To: yocto@lists.yoctoproject.org
From: "Livius" <egyszeregy@freemail.hu>
X-Originating-Location: Budapest, HU (89.132.168.154)
X-Originating-Platform: Windows Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 May 2023 12:53:10 -0700
References: <CAMKF1sptmfdbM89zgg0GSKiHU31CTj4YZHegXwEskgDmKbm+tg@mail.gmail.com>
In-Reply-To: <CAMKF1sptmfdbM89zgg0GSKiHU31CTj4YZHegXwEskgDmKbm+tg@mail.gmail.com>
Message-ID: <5798.1683229990682343740@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 19:53:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59882

On Thu, May  4, 2023 at 02:04 AM, Khem Raj wrote:

>
> On Wed, May 3, 2023 at 1:00=E2=80=AFAM Livius <egyszeregy@freemail.hu> wr=
ote:
> >
> > Hi,
> >
> > Is it possible to make a .bbappend file/method for virtual/kernel of ge=
neral
> linux-kernel recipe? My goal is to make some same append script for sever=
al
> BSP linux kernel recipe. For example i like to make an append for
> linux-xlnx.bb and linux-fslc.bb and so on for all linux-*.bb recipes with=
 some
> further bash scripts/taskses in a general single bbappend. Is it possible
> somehow in BitBake/Yocto?
>=20
> This would require bappends for all kernel recipes you are wanting to app=
end.
>=20
> >
> >
> >=20
> >
>

Yes, exactly, i would like to make a bappends for all kernel recipes. Is it=
 possible? Is it possible to somehow make an append for bbclass of the kern=
el recipes?

