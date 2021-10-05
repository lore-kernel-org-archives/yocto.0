Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7329C433F5
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 16:32:16 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web08.3296.1633451536055271831
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 09:32:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qlqQfgsH;
 spf=pass (domain: gmail.com, ip: 209.85.160.171,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id r16so19655673qtw.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 09:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ukWQnQHJLqnYBZCuiOI1InZluQ0RuzHsNiPA7sYzKiA=;
        b=qlqQfgsH87tJ/4ePD9Qx+CMcFsibt9ZkZoF1aROJuQ/riKRc5aZ8Mu4gqRApYhbPXv
         QjlQgqoqP6gTKHjWlDpYzGl/MFumCPEmdZAgwZVxwNQglL5YUI+t1lOLgdJxeTsx/IMz
         qalxehhl57H+NsLnsXsjyKHCzcOSfie5s+pUtYRWx3ri75tJ9mPKxywsMSRdlPnsOXil
         8L+OevO4BbmSe+ie8ipr1vgPhOovwLBJKQNvpFETrF+KBo6Lh337PsVdBlfJid3tfMzH
         ThGK3pqpe/JhBzNnKWV/Qu7RRXvppUyhUprtqXqtwde+zKEZZUgnmyRvWRIkIxnXs2ay
         wAQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ukWQnQHJLqnYBZCuiOI1InZluQ0RuzHsNiPA7sYzKiA=;
        b=D8s3eMxjQYWmMELoMUjj9Jc69TBCFOgrU0KtCYTfEuL0wZoBwCj5b88Xr2+Wz9HjhX
         yL3zm0gOkRL5H/+8T2wG/vYdj4OUAUpGzY6B3WxD1jOmJw7DjYfyMr8IS7KPrHaVDkbj
         2Oq7oagr/V/sd3QLlEOmdXc/q+rP5ZOJuMS5BXDjR3W+03n8RW4yuOVA0/n6sbZu3C3o
         jlUjZfskVjMRZU0+jihTFdoXdWkdwaG3F6dPNfx5KBxdS6PT9ZUvOfVlyhBKrzy8DqJD
         UUfMu2cy2gAzVVIHkBZ9hKpEOgQpxVz3puiLQWulDl0SW+Wiuy1wMxPzbTpUAts5DtgN
         5Swg==
X-Gm-Message-State: AOAM531mjISf0/KHBo8InJZyAfUGyH6bqtAMJhazJVg2vTT91Chfr3zm
	rVEgl+JOV+idNncUxhbNEjwCtpOeGkM6HsP4RkY=
X-Google-Smtp-Source: 
 ABdhPJzVGzlPXuYLGOxdHH0hLLND5YTOBwgux415cxBLxaqs29c8GppYd1rAaLh7Ru9xordod4Uig9GHFH6Z6BsEaqg=
X-Received: by 2002:ac8:435e:: with SMTP id
 a30mr21144678qtn.227.1633451535082;
 Tue, 05 Oct 2021 09:32:15 -0700 (PDT)
MIME-Version: 1.0
References: <0c6e789aba8141509bb31779a8393cbf@sakuraus.com>
 <0a038b52-6f11-662a-8d77-786919852079@gmail.com>
 <aa11888f9dc34eed9383c55ceae3eb9f@sakuraus.com>
 <CAMKF1srthNYZQq_N8p5s_z2KYyWhQ-xb8T5X=+JYri7G2iobmg@mail.gmail.com>
 <05663a522f6a4b44b12746c31d96ca0f@sakuraus.com>
In-Reply-To: <05663a522f6a4b44b12746c31d96ca0f@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Oct 2021 09:31:49 -0700
Message-ID: 
 <CAMKF1sqR2qztzv+4HeuqhbzY57WYMh4wU57b2LJ=OTv-9ooJhA@mail.gmail.com>
Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 16:32:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54961

that should have worked well for userland recipe to provide it. Maybe
you need to set

VC4GRAPHICS =3D ""

in local.conf

On Tue, Oct 5, 2021 at 8:53 AM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> I am compiling in 32 bit mode.
>
>
>
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Monday, October 4, 2021 5:15 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
>
>
>
> It should have automatically found user land package as one of providers =
but if it is not doing so that means it=E2=80=99s being ignored because it=
=E2=80=99s not compatible arch or something
>
> Are you compiling 32bit mode ?
>
>
>
>
>
> On Mon, Oct 4, 2021 at 4:08 PM Greg Wilson-Lindberg <GWilson@sakuraus.com=
> wrote:
>
> Hi Khem,
> Yes, the Raspberry Pi boards do use closed source drivers. What I need is=
 how do I include the proper package that will bring in the necessary virtu=
al/egl for the Raspberry Pi 4.
>
> Greg
> > -----Original Message-----
> > From: Khem Raj <raj.khem@gmail.com>
> > Sent: Monday, October 4, 2021 14:17
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>;
> > yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
> >
> >
> >
> > On 10/4/21 12:39 PM, Greg Wilson-Lindberg wrote:
> > > Hello list,
> > >
> > > I'm working on a Qt supplied boot2qt Yocto build currently based on
> > > Zeus that is running on a Raspberry Pi 4. I recently updated the qt
> > > version to 5.15.6 and Qt changed something in the Yocto configuration
> > > that they are using and now one of the recipes that we use is failing
> > > saying that in needs 'virtual/egl' but that it is not provided by any=
 recipe.
> > >
> > > In the searching that I have done I have found that the raspberry pi =
4
> > > is particular on which package supplies the virtual/egl but I haven't
> > > seen anything that indicates what I should do to re-enable it.
> > >
> > > Can anyone tell me what I need to do to enable the correct driver to
> > > get virtual/egl provided on the Raspberry Pi 4? Or maybe even better,
> > > how I could search through the packages that are enabled on the old
> > > and new Yocto trees so that I can figure out what changed between the
> > > releases and re-enable the virtual/egl.
> > >
> >
> > it should be provided by userland package if you are using closed sourc=
e
> > graphics driver.
> >
> > > Best Regards,
> > >
> > > Greg Wilson-Lindberg
> > >
> > >
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > You automatically follow any topics you start or reply to.
> > > View/Reply Online (#54943):
> > > https://lists.yoctoproject.org/g/yocto/message/54943
> > > Mute This Topic: https://lists.yoctoproject.org/mt/86076611/1997914
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> > > [raj.khem@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >

