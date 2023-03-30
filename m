Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D89C6C761A6
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 13:43:01 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.25388.1680183776128827191
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 06:42:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nNMggrw8;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id h25so24564611lfv.6
        for <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 06:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680183774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N6KjVCkQCAzGEaV5Ww4k8CYvlF/FCXkOSXa1tSkHkVY=;
        b=nNMggrw8cJD7CP/s5fDTCre2VqlFIZ1QVV9aCBne6R1zH5KdlcYTmeyLqCcl2Fesot
         Rcd9XWwE1MTFpRm4DOInOip5CMmbgKe+852/INy4XvZABQXchJ1fXbmXfoWmQTzL9r9j
         F3IL2jTXatOD+qcJjcRWrgZBugX68UaLyvbphfZEhSBLuM6Slb7ENvvU1UblQnRP93L7
         N0GF3aKoibD5csJvEbIUKmYdMzzWntY1D2adIEeHVli9Rzhqh+iA0fGSaNsFW2Wd7V3D
         0EnqYjkB5Vz5u8Go9lDxZjM8WRf0K0KNUQmAJrszLta3gP87vG7Bnd5HAjF9gDMcHGO9
         m43Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680183774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N6KjVCkQCAzGEaV5Ww4k8CYvlF/FCXkOSXa1tSkHkVY=;
        b=LNJmnA1Rbf4Tqpfa0kY1h/UMbxf+sRFvraUqum5M85l/v+nVBmmdy1HZagH7p62HK2
         Wq48bD+Xc0/UTB3mxQw7vaMZrT4MR5oFQ1WHrXk0HQYAvvJ4Y7lZkdmEGYKfxGryQ/B1
         pTuvxowqDefulkIFbT3AJSuEoUqJmaLt4ChlSz24ofO8gjB46K/GDpmarUnUaod3ACl3
         eH0TGz2o2TODS0W1mQ7QE9YPRrLM3whs08Tnj9DrNNHZifOkbQUkJTmoZNNLoy4pvyuG
         HxYV20Z4oIB6IO8FvImp1LZTeYEkzLrQCsyDq4lKqjWqV5TspvWyuVYxA2gEyVR/5pka
         KeMw==
X-Gm-Message-State: AAQBX9fQyqwxzSqozUG88wn/VJSb+Kz1T5SoLGSHNhnLzNukqoc35yyw
	tY5DUP/7IqnNIPXGB42v1m9os0ud/g7qzU1I5vU=
X-Google-Smtp-Source: AKy350ZH0Jj7jUaqtayDyLZZ/luzqV+6RH6OfVccgJrg58XrI7/IMICMXku6EyXo+CxgQUt8A3PGD99QqKCIT453t40=
X-Received: by 2002:a05:6512:23a3:b0:4d8:86c2:75ea with SMTP id
 c35-20020a05651223a300b004d886c275eamr2802824lfv.3.1680183774174; Thu, 30 Mar
 2023 06:42:54 -0700 (PDT)
MIME-Version: 1.0
References: <CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
 <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com> <4275a1007b94c03891f304db0b9926620fe52457.camel@gmail.com>
In-Reply-To: <4275a1007b94c03891f304db0b9926620fe52457.camel@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 30 Mar 2023 15:42:43 +0200
Message-ID: <CANNYZj-m6UdUunpRQES7jmMtTKat-uhuv7-gnAh_7UwKMf5eVQ@mail.gmail.com>
Subject: Re: [RFC][yocto][meta-lts-mixins][kirkstone/go] Backport golang from
 master to kirkstone
To: adrian.freihofer@gmail.com
Cc: Jose Quaresma <quaresma.jose@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, Jose Quaresma <jose.quaresma@foundries.io>, 
	Ricardo Salveti <ricardo@foundries.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 13:43:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59550

That may require an unknown amount of fixing in the recipes and
classes. Existing code is not designed for co-existing with a
different version of itself, and so everything needs to be versioned
and cleanly separated. But in theory it's possible.

Alex

On Thu, 30 Mar 2023 at 15:15, <adrian.freihofer@gmail.com> wrote:
>
> Hi Alex, hi Jos=C3=A9
>
> The meta-lts-mixin layers for dunfell have a major disadvantage:
> Replacing the go tool-chain breaks more or less all recipes from meta-
> virtualization and potentially other layers.
>
> I think with go it should be possible to have a meta-lts-mixin layer
> which adds support for additional go versions instead of overriding the
> version provided by poky. That would potentially allow to use poky on
> the kirkstone branch and meta-virtualization on a newer branch on the
> long run.
>
> Would it be possible to add e.g. a copy of the go.bbclass as well as
> the go recipes from a recent poky version in a way it does not override
> the go stack provided by poky?
> As an example: Would it be possible to add a go1-19.bbclass to the
> meta-meta-lts-mixin layer? This would allow to add also a newer Docker
> recipe which inherits go1-19 instead of just go to the meta-lts-mixin
> layers without breaking anything from poky or meta-virtualization.
>
> I already tried to share my thoughts here:
> https://lists.openembedded.org/g/openembedded-core/message/178146?p=3D%2C=
%2C%2C20%2C0%2C0%2C0%3A%3Acreated%2C0%2Cgolang%2C20%2C2%2C0%2C97444547
>
> Best regards,
> Adrian
>
>
> On Thu, 2023-03-30 at 12:08 +0200, Alexander Kanavin wrote:
> > I think I pushed the work directly to the respecitve branches in
> > meta-lts-mixins. I'd suggest you send the patches here, and we'll
> > sort
> > out the technicalities (I can publish the branch on
> > git.yoctoproject.org, or maybe you'll be able to push directly as
> > well, provided you also send the patches here). There's no
> > autobuilder
> > testing; for mixin items the contributors are trusted :)
> >
> > Alex
> >
> >
> > On Thu, 30 Mar 2023 at 11:20, Jose Quaresma <quaresma.jose@gmail.com>
> > wrote:
> > >
> > > Hi,
> > >
> > > The golang version in kirkstone is the 1.17 and because of this is
> > > not possible to use some recent version of other projects like
> > > docker that requires a more recent version of the language.
> > >
> > > I have a kirkstone branch [1] available at Foundries.io with the
> > > golang backported from the oe-core master that I liked to submit to
> > > the meta-lts-mixins [2].
> > > Alex is the maintainer of the dunfell golang backport and this
> > > kirkstone branch is based on that version.
> > >
> > > Would that be interesting for the project? How should I proceed?
> > >
> > > [1]
> > > https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go
> > > [2] https://git.yoctoproject.org/meta-lts-mixins
> > >
> > > Jose
> > >
> > > --
> > > Best regards,
> > >
> > > Jos=C3=A9 Quaresma
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#59547):
> > https://lists.yoctoproject.org/g/yocto/message/59547
> > Mute This Topic: https://lists.yoctoproject.org/mt/97946990/4454582
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe:
> > https://lists.yoctoproject.org/g/yocto/unsub [adrian.freihofer@gmail.co=
m
> > ]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

