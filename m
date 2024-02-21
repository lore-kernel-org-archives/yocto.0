Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F54CC48BC3
	for <webhook@archiver.kernel.org>; Wed, 21 Feb 2024 00:36:53 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web10.2446.1708475809738564211
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Feb 2024 16:36:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FZY0ww2G;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6e46e07ff07so1665284b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 20 Feb 2024 16:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708475809; x=1709080609; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8L7m7tAYj1xptGijWSE1uxDLemsjMa63NdQGtZTgOwM=;
        b=FZY0ww2GClqwgzeiHJQfhOIMlMCPw959FgOGOt5+pZSYp7Kb8o1zTQzDi1SZyrCErB
         C09sMB/yQqOgeFWf1XcWcSupq0VCBQYRNHhnV+0E9vo4MoeAxfA7xe3Q3XNMkOJzmq4/
         KwQe3PU55nNEuveh6Bv/3WLcsT3ieKfcKOpoAyj0vWOMVCfR6tmpbLHstvoemdb0562B
         hRITf8fuNnQVYg41strvbxd7ODmGhs7n5IXVf0IuYiYN5z8sc11TjRwxWu4hGUGei9MB
         RZ3fLuFztH/sENCGYAl9YDPSpza8/0Zdk2STdhxW9dmo8ceNcKbtof4a9r//io7Qnsoc
         g+CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708475809; x=1709080609;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8L7m7tAYj1xptGijWSE1uxDLemsjMa63NdQGtZTgOwM=;
        b=HxEHYBNA1ZwpUmYdooB4w2/FONT6zZ1mf7NGsy7Dx1zREO7VcFeBOYExWYYE7OnM8B
         k0vLw1Z5mH0iJgY+dtbr/C7twl8FHMB/rKWN+FpbIbFJJ54q76/yHbZrWQkogipjzdRQ
         bb3x5vFNGlWU4DORuqCuKLMQVvBWptOWHSwqjGtplTYzfm5eqZ1rGmJSvcIwwTWzj/SD
         RshhaLQhuvOgxq9RTJgL/afjOzH7o+An37UC6lZOJ0z2LfikfI1sL8KnFXFLaqTxYDns
         J6aNJhsZ02sgmD0uhAL548UNn2zokdqDva1gz/X1Y+FUnNTviz4T28ThJp9Q3wwjwt4P
         molQ==
X-Gm-Message-State: AOJu0YxZtyhSjnS1Ve5Wht3WX7xffBapOpLSchVJDX8/KKLvpTbNdM4I
	atah6zeiP1WCELqjGthm+k4xxH9z1SGixed45DCB/H9fQzkxk1o6BjZJ5nAD7N3Argge/mwL/mO
	A0c2LqAxmmWhMvcmG0cfNIO3IarY=
X-Google-Smtp-Source: AGHT+IE2/+Ob764zl+lfbzLDTZgU7VzpNrPsVwU2VS4VpC0bwpiUFtSmofSVeyMv6ENuwxxoRHikc4vnsx/HToYiCTk=
X-Received: by 2002:a17:90a:10d0:b0:299:bade:ed0b with SMTP id
 b16-20020a17090a10d000b00299badeed0bmr4818551pje.45.1708475809007; Tue, 20
 Feb 2024 16:36:49 -0800 (PST)
MIME-Version: 1.0
References: <20240215171506.2989385-1-joe.slater@windriver.com>
 <CADkTA4PoT95O=VSj2w501vPct6f8A0PTL1njiP3MuXegmPA3Rw@mail.gmail.com> <BY5PR11MB39927EF05CFDB9E14F089D5E884D2@BY5PR11MB3992.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB39927EF05CFDB9E14F089D5E884D2@BY5PR11MB3992.namprd11.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 20 Feb 2024 19:36:37 -0500
Message-ID: <CADkTA4PdApscqVyrOSUbRp_JGC-9Qnn+J96E3gof7Rr6p+WPNA@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 1/1] sanity-meta-security.bbclass:
 allow warning customization
To: "Slater, Joseph" <joe.slater@windriver.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	"MacLeod, Randy" <Randy.MacLeod@windriver.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Feb 2024 00:36:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62552

On Thu, Feb 15, 2024 at 2:06=E2=80=AFPM Slater, Joseph <joe.slater@windrive=
r.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Bruce Ashfield <bruce.ashfield@gmail.com>
> > Sent: Thursday, February 15, 2024 9:57 AM
> > To: yocto@lists.yoctoproject.org; Slater, Joseph <joe.slater@windriver.=
com>
> > Cc: MacLeod, Randy <Randy.MacLeod@windriver.com>
> > Subject: Re: [yocto] [meta-security][PATCH 1/1] sanity-meta-security.bb=
class:
> > allow warning customization
> >
> > On Thu, Feb 15, 2024 at 12:15=E2=80=AFPM Joe Slater via lists.yoctoproj=
ect.org
> > <joe.slater=3Dwindriver.com@lists.yoctoproject.org> wrote:
> > >
> > > From: Joe Slater <joe.slater@windriver.com>
> > >
> > > Introduce META_SECURITY_SANITY_CHECK_WARNING variable which can be
> > > overridden, if desired.
> >
> > The existence of the patch implies that there's a reason why the warnin=
g
> > message isn't appropriate for your use case.
> >
> > That's something that should be explained in the patch.
> >
> > A knob to disable the warning if you know what you are doing has alread=
y been
> > provided. So again, this patch implies that you want the warning, but w=
ant to
> > change the message .. it would be good to understand why.
> >
> > Bruce
>
> Some people want to know how to disable the warning without reading the R=
EADME.  I don't think that's a great idea, but allowing customization would=
 let that be done on a distro or similar basis.  I didn't want to mention t=
hat stuff in a commit message, but maybe it should be there.

Things like that should always be mentioned in a commit message.

Technical parts of the changes can be understood by looking at the
commit, the why is the important part.

I wouldn't allow this to be tweaked in my layers, since it opens the
door for incorrect information to be injected into the layer's
warning, but that decision is up to the layer maintainer :)

Bruce

>
> Joe
>
> >
> > >
> > > Signed-off-by: Joe Slater <joe.slater@windriver.com>
> > > ---
> > >  classes/sanity-meta-security.bbclass | 13 +++++++++----
> > >  1 file changed, 9 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/classes/sanity-meta-security.bbclass
> > > b/classes/sanity-meta-security.bbclass
> > > index f9e2698..95180aa 100644
> > > --- a/classes/sanity-meta-security.bbclass
> > > +++ b/classes/sanity-meta-security.bbclass
> > > @@ -1,10 +1,15 @@
> > >  addhandler security_bbappend_distrocheck
> > > security_bbappend_distrocheck[eventmask] =3D "bb.event.SanityCheck"
> > > +
> > >  python security_bbappend_distrocheck() {
> > >      skip_check =3D e.data.getVar('SKIP_META_SECURITY_SANITY_CHECK') =
=3D=3D "1"
> > >      if 'security' not in e.data.getVar('DISTRO_FEATURES').split() an=
d not
> > skip_check:
> > > -        bb.warn("You have included the meta-security layer, but \
> > > -'security' has not been enabled in your DISTRO_FEATURES. Some
> > > bbappend files \ -and preferred version setting may not take effect.
> > > See the meta-security README \ -for details on enabling security
> > > support.")
> > > +        bb.warn(e.data.getVar('META_SECURITY_SANITY_CHECK_WARNING'))
> > >  }
> > > +
> > > +META_SECURITY_SANITY_CHECK_WARNING ??=3D "\ You have included the
> > > +meta-security layer, but 'security' has not been \ enabled in your
> > > +DISTRO_FEATURES. Some bbappend files and preferred version \ setting=
s
> > > +may not take effect. See the meta-security README for details on \
> > > +enabling security support."
> > > +
> > > --
> > > 2.25.1
> > >
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#62497):
> > > https://lists.yoctoproject.org/g/yocto/message/62497
> > > Mute This Topic: https://lists.yoctoproject.org/mt/104377037/1050810
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> > > [bruce.ashfield@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
> >
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await t=
hee at its
> > end
> > - "Use the force Harry" - Gandalf, Star Trek II



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

