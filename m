Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27848CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 10:51:06 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.278946.1697626260772558597
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 03:51:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aInRM2PZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2c518a1d83fso58166851fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 03:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697626259; x=1698231059; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kkMnN4EJIQwpIFBpGNKJ/TKWRDAeeM9c6GK1eAK24pw=;
        b=aInRM2PZqRseXR5m33VcPnRPA3sjaq4rZc/TWsWvwIDdV2NQtlqaPJz1Krd2Z97/ef
         FC9kACfPCcjwfSKB5ApqMu6f9q3REDT3JAG1OkX1340TybpCODwAcODkK/DWO4PyqqNH
         iDWh9zmVq5uMG7Rr8oWYB5Zao9gygN3F3Veucwd0ea88dTvns6USlPNb9zMVi9RNKYU5
         7cJ2JSjz4h9FomHnJOvwhFfSKnIzDmZQO8C3lh1sEFi+zvpaClgJQ6L9IBfFEX5/THPP
         +UraW8SeRTbZtSnKRkl6kXMVW4TaIYA6oJp7LPb4o2u0EdfWRpjNkALfz0wxEvqgy/Lu
         iqRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697626259; x=1698231059;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kkMnN4EJIQwpIFBpGNKJ/TKWRDAeeM9c6GK1eAK24pw=;
        b=IpqByoJQcL5NyCooeC5Q7OQieOhAuM0VIsCfpm2L3PMVtann1mNwiH23mHvsqsLmrz
         PhdabEh1fYpbhG5QIxU79BE/0mWqzQzddb0afusPrbY6IXvTFLYT9GarQTHsBp9/xSTN
         Jmzs729eRpr7k9UJDBSy5nqFBG060TZsKkbk6IshQYi+VHisU/xxipypd7BNgpz//Toi
         7ssAmCphyCMpjsRG/ufNV6BDwKaywz80+6+aa35oYe7z3v8SVPF1rtbN/wMz/MNgYVcF
         wX0y77YCmB/DIvVhN63PjMR9yUkWeXcIqItVCQ+NZHJVUi7DFECZrf+dCEf0T05bqmoX
         n0jQ==
X-Gm-Message-State: AOJu0Yz1mDjsBfvUJih8KIZy4d2MWAeLan4ckqEPaCoHGGkKMBfxEgOQ
	DlGInWtjhpAs1tSNTe8a8j3/j6MckgSRM9NCkzk=
X-Google-Smtp-Source: AGHT+IH0v/f2CmsuE2qZEIbr0anH+85wW3WmHTFbZk5lxPcyrNU+TfyhRdzi8O/hU3AVYK/GPJSlAKwWGsTwrRrlHs4=
X-Received: by 2002:a2e:908d:0:b0:2bd:1804:29fa with SMTP id
 l13-20020a2e908d000000b002bd180429famr3647317ljg.39.1697626258724; Wed, 18
 Oct 2023 03:50:58 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8P62x8q5TP59Xhajq6XNS6--Ox-G+N2pEH9hnr=Hoo=A@mail.gmail.com>
 <30180.1697619630482083755@lists.yoctoproject.org> <CANNYZj8Rj08B4vvQ8EC6v3S31U9ZAWoxdmJzh43T6CpoK5bqww@mail.gmail.com>
 <ecc7db27039d38992b6423f17bbfdd44e1967249.camel@pengutronix.de>
 <CANNYZj_scVXe2iPwTcrt-xDy2rN9ObJFo5qJmQG0ix+=J7R61w@mail.gmail.com>
 <2520ab418aa18b4b96b0fcdad4fb2364c1e8e930.camel@pengutronix.de> <178F2D5AFBF324AF.14388@lists.yoctoproject.org>
In-Reply-To: <178F2D5AFBF324AF.14388@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 18 Oct 2023 12:50:47 +0200
Message-ID: <CANNYZj_F7EaLSkxupsWXfbZ4HC_NmXMXWEoWOxjtuRtBohyPLw@mail.gmail.com>
Subject: Re: [yocto] Remove packagegroup from image recipes
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
Cc: Ivan Stojanovic <ivastojanovic@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 10:51:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61396

On Wed, 18 Oct 2023 at 12:37, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> On Wed, 18 Oct 2023 at 12:24, Enrico J=C3=B6rns <ejo@pengutronix.de> wrot=
e:
> > In how is this different to the default packagegroup handling in oe-cor=
e where package 'force
> > themself' into images based on specific DISTRO_FEATURE or MACHINE_FEATU=
RE settings?
> >
> > Thus this is a mechanism that is explicitly designed to be used by oe-c=
ore exclusively?
>
> I see that as something of a historical mis-feature. I would take
> those things out of the packagegroup recipe and into a class used by
> images if I had a bit of time (core-image.bbclass most likely).
>
> That's what you could do as well, define a class that pulls in rauc
> for those images that inherit it.

You can see how core-image-weston.bb does it:

IMAGE_FEATURES +=3D "splash package-management ssh-server-dropbear
hwcodecs weston"

and then in core-image class:

FEATURE_PACKAGES_weston =3D "packagegroup-core-weston"
... etc

Alex

