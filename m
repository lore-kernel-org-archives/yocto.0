Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72979CDDE60
	for <webhook@archiver.kernel.org>; Wed, 23 Oct 2024 10:39:10 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.4411.1729673538737311626
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Oct 2024 01:52:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lZnodVbv;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2886e2b878dso2573047fac.2
        for <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 01:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729673538; x=1730278338; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e9KSc+/Ars2b3LpaOC6mROAFHCXv/kiCRcUk4pU4zDM=;
        b=lZnodVbvl6IIQeNX/8yF2imZkdRGZmqHtm58HIYXgJt8pnnqBx8Gkjugr7j0Z0Zmxq
         qaLwofQADYYmSePj2EhLZI47DavlfbSYqK9VcLLHUWORanXevn22BI+/oJqpTL2Eb2pq
         HP4CmqJ+n/6tzhe/hI9utcRDZbKe05Gjl3kBrWB/xUKJFiCKv4vrSUfXQ9ZX+Bdu9L2G
         RLPrYhcfAd0PRFhnbWyfYmk/zBJDEESq6jraxlu1gho5z2dL9+BNCv+R51p0nERUKGlG
         nmZjkz5QHJLhBw1PdimAQdmW2dI9STtdXt0x30oZsyy8knRoIMctf5WxPu0ez+UHBVuj
         8gIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729673538; x=1730278338;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e9KSc+/Ars2b3LpaOC6mROAFHCXv/kiCRcUk4pU4zDM=;
        b=HFJYY3HQisx31JBIQlGuQfz9Or+89FsRYy+itfPOk/utblkKxJ2SrqoijZf95/LvAY
         WAsjKKin5H40P1OTtfPllUGmvVaBIPA9PsbxbQep0rrPEi7sw6BKbcUD4melNVLDx9Yi
         xBg4QC3nIVIrle0MKXJVJPhx42hF1HcNwlzt4i2N1lFxghc6RFuXPD57rh5DTNlZtv5h
         yWySDRhOh/c+v1j/q2U8tXD7iUuZD11dO/urS6/BByzKmKMJ0mBB9I7q7syNxpMUpjrl
         ZtR3vJX7BSDGqGuyfDI9v6qxBnS3Zi+AEi+dJ21fvBHvkxApWsJT9wVaOA+jTR3CVRw8
         Yysg==
X-Gm-Message-State: AOJu0YzG/dsDpFDd4Ln0oY229ngZq7n9TJQIPXzEF9FTOjF9ST1YL3X3
	X/zvvN7wJIw+XXk/ABhZcuwl1IVDcHVIg8yeq1Mfru+FFkBIWXJ1XG8p8L5+9rqmb6gql++Dzv9
	gILXxDyPprIThw/qQph3+xp0SUh9mfFqm
X-Google-Smtp-Source: AGHT+IGqbSKaRf5zDrEsDvkzFUv3RQOuzormfZPUukor0YBWGDr0cHvGkZj68Nvd4rXifJnevnpH1FRhepFwsBavcMA=
X-Received: by 2002:a05:6871:88e:b0:273:cc4a:6d84 with SMTP id
 586e51a60fabf-28ccb987ef1mr1965320fac.29.1729673537420; Wed, 23 Oct 2024
 01:52:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Lya5tRX6CabEYHyMumvahpmd5AUBNERVz2sUyFaLcLUPg@mail.gmail.com>
 <24D459CD-39FE-4164-AEA5-A2FB14C047EE@arm.com> <18007503B01FE6A6.24795@lists.yoctoproject.org>
In-Reply-To: <18007503B01FE6A6.24795@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 23 Oct 2024 10:52:05 +0200
Message-ID: <CAGAf8LykSiRQ6QhSCS9eqypA11812HR9uyJvV+t=pByfnzGUjQ@mail.gmail.com>
Subject: Re: [yocto] ERROR: Nothing PROVIDES 'virtual/kernel'
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 10:39:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64091

Well... Thank you for the support.

I was right.

ONLY sources for the kernel (defined in POKY).

Mainline and Stable!

Thank you all,
Zee
_______

On Mon, Oct 21, 2024 at 1:42=E2=80=AFPM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello people,
>
> I think something changed recently, as usual, as you all, support
> people change some stuff from release to release.
>
> As an example:
> S =3D "${WORKDIR}" is no longer supported
> Replace the line that sets S to "${WORKDIR}" with the appropriate path
> to your source files.
>
> For example:
> S =3D "${WORKDIR}/path/to/source"
> _______
>
> I think I need to use mainline and stable as ONLY sources for the
> kernel (defined in POKY). meta-bbb as kernel provider does NOT apply
> anymore.
>
> I need to check this theory! I know that for the mainline it does work.
>
> Thank you,
> Zee
> _______
>
>
>
>
>
>
> On Mon, Oct 21, 2024 at 12:29=E2=80=AFPM Ross Burton <Ross.Burton@arm.com=
> wrote:
> >
> >
> >
> > > On 21 Oct 2024, at 08:25, Zoran via lists.yoctoproject.org <zoran.sto=
jsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
> > >
> > > Hello Yocto Community Support Team,
> > >
> > > I have an interesting problem to report.
> > >
> > > Parsing recipes: 100%
> > > |####################################################################=
####|
> > > Time: 0:02:30
> > > Parsing of 2829 .bb files complete (0 cached, 2829 parsed). 4811
> > > targets, 1885 skipped, 0 masked, 0 errors.
> > > NOTE: Resolving any missing task queue dependencies
> > > ERROR: Nothing PROVIDES 'quilt-native'
> > > quilt-native was skipped: incompatible with machine beaglebone-yocto
> > > (not in COMPATIBLE_MACHINE)
> >
> > The kernel problems are not the source of your problem: this is.
> >
> > For some reason you=E2=80=99ve managed to break the native/target separ=
ation: a native recipe shouldn=E2=80=99t care about the target machine.
> >
> > Glancing at the layer there=E2=80=99s quite a lot of cruft from older r=
eleases still, so I suspect you=E2=80=99ve a bit of confusion in there some=
where.
> >
> > FWIW, meta-ti has a beaglebone BSP that is supported by TI, and linux-y=
octo is pretty much mainline, and if you want _exactly_ mainline then you c=
an just SRCREV it to the right branch: the linux-yocto git tree contains th=
e mainline tags too.
> >
> > Ross
>
>=20
>

