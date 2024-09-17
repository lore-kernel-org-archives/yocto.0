Return-Path: <michael@amarulasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 180B2C35FE4
	for <webhook@archiver.kernel.org>; Tue, 17 Sep 2024 06:30:47 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.15147.1726554645116765725
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Sep 2024 23:30:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=VycUUztK;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.208.175, mailfrom: michael@amarulasolutions.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2f761461150so54060451fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Sep 2024 23:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1726554638; x=1727159438; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fcwigeRYfdOyPvRmwkVKQdQabd/bg7/Y10WmaAXlIhY=;
        b=VycUUztKsIwRN9anwG0uKSmMgnpB2G9J0zI58imzFHt88NThIae/Vqd3GHQOustZ/S
         hHwWfWdjs/p9O8srHicLuFok0LP0dyUYbLLCgfiyc8CzVoQo8Uooyeub0ZPS/omWKovp
         E/3yE2xZy321XH4gMNgUWnBtodW22+NukZmPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726554638; x=1727159438;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fcwigeRYfdOyPvRmwkVKQdQabd/bg7/Y10WmaAXlIhY=;
        b=TksmuZcJwXWIZQvJo1PAXxAsr/afT7WNrT14R2WjIfg01nbnZsEhn7AlpMsQyxoCp7
         zyKo4mJ4MavG/RPJVUEAej++BMoqOx2VP40yPJ6kXVZw+xdMCeuDWFO0FjEcpYrWDjlt
         ytAOtECDwsJpqx4Yp1fp64yNfH0SLL5fHIWVOFGTP2CDvZVGmtDoY7PcYA3/WqsZkSU/
         gYG38H1haJx4oXZdyspNfSVduezjmgSkKzkbOWuprRYeuoXRjTZLGRj/aLADQY6l4Odp
         XOEmZIWkMbupwB8zc9CHTMQsKmrbq5JjcO3S6xIc/nMMk70kqHgoGOG8kO4MWimVWabW
         V3Qg==
X-Gm-Message-State: AOJu0YwOKAlBf+ZH+g7tkAC0BLx7nfqhDjgfv7CDGDrg7GYObJ6HReCU
	D79DIbvVGfR4eZ4yFOL4lLryS8xAqLQkN9nT2R+IGnEh+WFptD2QflwLWjUhz61xGnNF72BOAT5
	65z5/M5G9Xt1Dh16o8efQenY+LUi4jb8c6z8IHHeIonYGfTzRocM=
X-Google-Smtp-Source: AGHT+IGZIZSR0ohT+asnroMjwznGzULtxOmzHWrOUEvupLyyOcYL1QvAnoIL8lnfE8zf5HlTNNhNyg8PDHKLNfG0ACs=
X-Received: by 2002:a2e:be1e:0:b0:2f7:94d9:426a with SMTP id
 38308e7fff4ca-2f794d944c8mr81922931fa.5.1726554637791; Mon, 16 Sep 2024
 23:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAOf5uwkeGHLaV5xoq0PG_yOrX_B62QzXaaTGQP-BqLmUB-ytEA@mail.gmail.com>
 <CAMKF1spHsz6Y5MxLvsiZMyLVAc2o_gWX7Wa2A2ZXHH-wG0ta7g@mail.gmail.com> <17F5749BD58D56E7.10184@lists.yoctoproject.org>
In-Reply-To: <17F5749BD58D56E7.10184@lists.yoctoproject.org>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Tue, 17 Sep 2024 08:30:19 +0200
Message-ID: <CAOf5uwm=_zPQAkFVhyVOskgC1xEjRk_XeGMSDPeHKNk9cmineg@mail.gmail.com>
Subject: Re: [yocto] Jenkins warning-ng icon for yocto security report
To: yocto@lists.yoctoproject.org, michael@amarulasolutions.com
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Sep 2024 06:30:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63847

Hi all

The yocto scanner integration in warning-ng plugin is released

https://plugins.jenkins.io/warnings-ng/releases/

What does it mean for people that are using Jenkins and yocto in their CI?

They can record their issues on a complete dashboard with a simple step

recordIssues sourceCodeRetention: 'LAST_BUILD', tools:
[yoctoScanner(pattern: "cves.json")]

Navigate the issues and find what are the vulnerabilities, go through
the link and find the patches,
using devtool to override the project, apply the patches and provide
to their meta layer and then upstream,
have a consistent history of vulnerability on building history.

https://github.com/jenkinsci/warnings-ng-plugin

This is a really small contribution possible only because there are
other people working on opensource.

Michael

On Sun, Sep 15, 2024 at 5:30=E2=80=AFPM Michael Nazzareno Trimarchi via
lists.yoctoproject.org
<michael=3Damarulasolutions.com@lists.yoctoproject.org> wrote:
>
> Hi
>
> On Sat, Sep 14, 2024 at 9:27=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wro=
te:
> >
> > On Sat, Sep 14, 2024 at 11:41=E2=80=AFAM Michael Nazzareno Trimarchi vi=
a
> > lists.yoctoproject.org
> > <michael=3Damarulasolutions.com@lists.yoctoproject.org> wrote:
> > >
> > > Hi all,
> > >
> > > I have sent the patches to be included in warning-ng to support yocto
> > > security scanning result and looking for some icon representing the
> > > can result
> > >
> > > https://fontawesome.com/icons/categories/security?f=3Dclassic&s=3Dsol=
id
> > > In the free section. Can anyone suggest one?
> > >
> > > More info here
> > > https://github.com/jenkinsci/warnings-ng-plugin/pull/1824#discussion_=
r1759750853
> > >
> > > The analytic model was already merged but now I would like to have th=
e
> > > proper icon there
> >
> > maybe something like below would be helpful
> > https://www.yoctoproject.org/wp-content/uploads/sites/32/2023/09/YoctoP=
roject_Logo_RGB_White_small.svg
> >
>
> Trying to keep one that is representing security but that set and I
> found a shield. Anyway how CI/CD is working in yocto,
> I would like to connect to jenkins releases to track vulnerability
> tranding using the plugin. Nice to allow everyone to check them
> and then it's much more easy to apply and find patches that need to be
> appied. How is done now?
>
> Michael
>
> > >
> > > Michael
> > >
> > >
> > > --
> > > Michael Nazzareno Trimarchi
> > > Co-Founder & Chief Executive Officer
> > > M. +39 347 913 2170
> > > michael@amarulasolutions.com
> > > __________________________________
> > >
> > > Amarula Solutions BV
> > > Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
> > > T. +31 (0)85 111 9172
> > > info@amarulasolutions.com
> > > www.amarulasolutions.com
> > >
> > >
> > >
>
>
>
> --
> Michael Nazzareno Trimarchi
> Co-Founder & Chief Executive Officer
> M. +39 347 913 2170
> michael@amarulasolutions.com
> __________________________________
>
> Amarula Solutions BV
> Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
> T. +31 (0)85 111 9172
> info@amarulasolutions.com
> www.amarulasolutions.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63838): https://lists.yoctoproject.org/g/yocto/messag=
e/63838
> Mute This Topic: https://lists.yoctoproject.org/mt/108453353/1862104
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [michael@amarul=
asolutions.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

