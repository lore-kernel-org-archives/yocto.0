Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C39C6FD1D
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 15:14:12 +0000 (UTC)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
 by mx.groups.io with SMTP id smtpd.web11.28213.1680189249199770585
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 08:14:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HE9wOObG;
 spf=pass (domain: gmail.com, ip: 209.85.166.47, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f47.google.com with SMTP id x3so909496iov.3
        for <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 08:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680189248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=205KrjBPrwcIOWdQBaD8NOALeQgg2JMTSxfei7E781I=;
        b=HE9wOObGcD5JRaBc/+ZX6sHHEmrGpJDORbeI/eLdQGT3KDuQnO7qI39ssNLebyXxvy
         /73QTE8mUjF1oe5POfb6hbooIHbHB3sBnxJzISf3r8xmml+sZDtSxgQUW7SYcBsUqix/
         clJZR8S4QUIAxdE+Sp0wXBNMeQY15y+D8/m76ntq7ZhoR/yyCxQAhLeSYeuc19BDEACe
         rcxd/QqZj8uLLjkimsC01S3UdvkJjNt84uAXhTZSm8UGF1mM7V0C0o6mSrD2s8lx05m2
         oP5M3J0WBbvB00G2tVbVJ+kHMQr57lAFlaz143GycDUw20VqTwsOHVgS+XRVWopJuLGC
         LPNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680189248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=205KrjBPrwcIOWdQBaD8NOALeQgg2JMTSxfei7E781I=;
        b=FTZrvyH5jLNPBACsAD/JPI0wxOFZaaptxd1knuzYWCobMMC1YJnL14MZ4hffTCbV51
         KvI6jwD0vPuBPivEwS8mSZF0yRI04JwOdB+ljZ8yI37rGCan8iaRyG9d91NWOpOeS+c6
         cDM5AUShFndqWymcjPJiyCNSylxVvXpj6Z1mybWD/T210gSXyU51Zp8ndyo8/wfO9IBe
         TNaK7SjcaJ1zS8X4juSt9vwbf+JjTPWwQioP4SC620zQYU3P1a7CFHqRcsK4M54M87/M
         6Tib+HF/VtKDuFWe4/TQ8UeLkrcbMDUTKxP7akvOl8VKsPLHPFejaeiwEKZb/MuySZkE
         RtVw==
X-Gm-Message-State: AO0yUKWVLH8F15CTjpyCC0XH9mNJmAOY5PWzVsr8Ej0oECK/zZ2uWbEL
	8/hs7eqVXz8nDlrtv9x85GpmGDNOsIceWavZYOQ=
X-Google-Smtp-Source: AK7set9+sf0S+EVQ4iKTgnkDCe4p92PltrYLOPkxdzG7FKKngiy51W1i8G3B1ErGZavYyWwXKa4gm/GoK+ugIvJARB8=
X-Received: by 2002:a5e:c810:0:b0:74c:bb62:6763 with SMTP id
 y16-20020a5ec810000000b0074cbb626763mr8879554iol.1.1680189248350; Thu, 30 Mar
 2023 08:14:08 -0700 (PDT)
MIME-Version: 1.0
References: <CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
 <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com>
 <4275a1007b94c03891f304db0b9926620fe52457.camel@gmail.com>
 <CANNYZj-m6UdUunpRQES7jmMtTKat-uhuv7-gnAh_7UwKMf5eVQ@mail.gmail.com> <CANPvuRk7AFx9cOXkYjmaTop9Z=tintcnZ+Nwx5CMkFWf1HLE2Q@mail.gmail.com>
In-Reply-To: <CANPvuRk7AFx9cOXkYjmaTop9Z=tintcnZ+Nwx5CMkFWf1HLE2Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 30 Mar 2023 11:14:26 -0400
Message-ID: <CADkTA4NKawaY7GC7hbPy4K-1yTMt6bxtUq7MdYHdoEPpw5XJOQ@mail.gmail.com>
Subject: Re: [RFC][yocto][meta-lts-mixins][kirkstone/go] Backport golang from
 master to kirkstone
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, adrian.freihofer@gmail.com, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, Jose Quaresma <jose.quaresma@foundries.io>, 
	Ricardo Salveti <ricardo@foundries.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 15:14:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59552

On Thu, Mar 30, 2023 at 10:41=E2=80=AFAM Jose Quaresma <quaresma.jose@gmail=
.com> wrote:
>
> Hi,
>
> I already did some tests using the meta-virt master branch with
> the oe-core kirkstone and this version of the meta-lts-mixins.
> Our stack on meta-virt is not very big but what I tested looks good.
>
> On meta-virt I only need to add kirk compatibility:
> LAYERSERIES_COMPAT_virtualization-layer +=3D "kirkstone"
>
> On meta-lts-mixins I need to change the meta-virt busybox oe-core tracked=
 version:
> PV:pn-busybox-initrd =3D "1.35.0"
>
> But maybe I need to test this with a large set of recipes in the meta-vir=
t master branch.
> I will add Bruce and I take the opportunity to ask him what he thinks of =
this approach?
>

I'm not sure I follow which approach you are referring to ?

Tweaking the busybox-initrd and adding your own compatibility tag to
the meta-virt branch you are matching (in this case master) ?

If it works, I don't see any issues with it. I wouldn't carry such a
layerseries_compat update in the layer itself, since additional layers
are required to make it work.

I'm also still willing to carry multiple versions of recipes in
maintained release branches (and set the preferred version to be the
existing recipe), if we need to get a newer version of a recipe in a
release branch to match both security and golang requirements.

Bruce

> Jose
>
>
> Alexander Kanavin <alex.kanavin@gmail.com> escreveu no dia quinta, 30/03/=
2023 =C3=A0(s) 14:42:
>>
>> That may require an unknown amount of fixing in the recipes and
>> classes. Existing code is not designed for co-existing with a
>> different version of itself, and so everything needs to be versioned
>> and cleanly separated. But in theory it's possible.
>>
>> Alex
>>
>> On Thu, 30 Mar 2023 at 15:15, <adrian.freihofer@gmail.com> wrote:
>> >
>> > Hi Alex, hi Jos=C3=A9
>> >
>> > The meta-lts-mixin layers for dunfell have a major disadvantage:
>> > Replacing the go tool-chain breaks more or less all recipes from meta-
>> > virtualization and potentially other layers.
>> >
>> > I think with go it should be possible to have a meta-lts-mixin layer
>> > which adds support for additional go versions instead of overriding th=
e
>> > version provided by poky. That would potentially allow to use poky on
>> > the kirkstone branch and meta-virtualization on a newer branch on the
>> > long run.
>> >
>> > Would it be possible to add e.g. a copy of the go.bbclass as well as
>> > the go recipes from a recent poky version in a way it does not overrid=
e
>> > the go stack provided by poky?
>> > As an example: Would it be possible to add a go1-19.bbclass to the
>> > meta-meta-lts-mixin layer? This would allow to add also a newer Docker
>> > recipe which inherits go1-19 instead of just go to the meta-lts-mixin
>> > layers without breaking anything from poky or meta-virtualization.
>> >
>> > I already tried to share my thoughts here:
>> > https://lists.openembedded.org/g/openembedded-core/message/178146?p=3D=
%2C%2C%2C20%2C0%2C0%2C0%3A%3Acreated%2C0%2Cgolang%2C20%2C2%2C0%2C97444547
>> >
>> > Best regards,
>> > Adrian
>> >
>> >
>> > On Thu, 2023-03-30 at 12:08 +0200, Alexander Kanavin wrote:
>> > > I think I pushed the work directly to the respecitve branches in
>> > > meta-lts-mixins. I'd suggest you send the patches here, and we'll
>> > > sort
>> > > out the technicalities (I can publish the branch on
>> > > git.yoctoproject.org, or maybe you'll be able to push directly as
>> > > well, provided you also send the patches here). There's no
>> > > autobuilder
>> > > testing; for mixin items the contributors are trusted :)
>> > >
>> > > Alex
>> > >
>> > >
>> > > On Thu, 30 Mar 2023 at 11:20, Jose Quaresma <quaresma.jose@gmail.com=
>
>> > > wrote:
>> > > >
>> > > > Hi,
>> > > >
>> > > > The golang version in kirkstone is the 1.17 and because of this is
>> > > > not possible to use some recent version of other projects like
>> > > > docker that requires a more recent version of the language.
>> > > >
>> > > > I have a kirkstone branch [1] available at Foundries.io with the
>> > > > golang backported from the oe-core master that I liked to submit t=
o
>> > > > the meta-lts-mixins [2].
>> > > > Alex is the maintainer of the dunfell golang backport and this
>> > > > kirkstone branch is based on that version.
>> > > >
>> > > > Would that be interesting for the project? How should I proceed?
>> > > >
>> > > > [1]
>> > > > https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go
>> > > > [2] https://git.yoctoproject.org/meta-lts-mixins
>> > > >
>> > > > Jose
>> > > >
>> > > > --
>> > > > Best regards,
>> > > >
>> > > > Jos=C3=A9 Quaresma
>> > >
>> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > > Links: You receive all messages sent to this group.
>> > > View/Reply Online (#59547):
>> > > https://lists.yoctoproject.org/g/yocto/message/59547
>> > > Mute This Topic: https://lists.yoctoproject.org/mt/97946990/4454582
>> > > Group Owner: yocto+owner@lists.yoctoproject.org
>> > > Unsubscribe:
>> > > https://lists.yoctoproject.org/g/yocto/unsub [adrian.freihofer@gmail=
.com
>> > > ]
>> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > >
>> >
>
>
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

