Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.21876.1584123676620012157
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Mar 2020 11:21:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nD6UM5Zl;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: andrey.z@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49E8FE01841; Fri, 13 Mar 2020 11:21:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (andrey.z[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35F30E0183B
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2020 11:21:14 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id l18so13272875wru.11
        for <yocto@yoctoproject.org>; Fri, 13 Mar 2020 11:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qYw52KbtUmte4Z/cFDsYS5J57W8vg6frJs5kIEBMhnA=;
        b=nD6UM5ZlCN0K3Qsb4/lz3iKCDPS2hGRS5DBRgHMhDE8EikgVWJMN3lHwaWeQkhS8fI
         Fo9LY50yAdSIk2E4Vj3whC/0y5xSQ4WEInU7Qz1+zk+JIIwlLJmsEynkItDchsX0jpPl
         H78LNzBUTZe4Dmdw1LN3T4ri5X2WK4q5zzer9lE0OIM70lC/8RtpsrWEJ+lYTrS+ndO0
         4iJTjI3hPCbEBB4XYgVatHqvjEQSRZz9ci/+TYmfFWiCDK7i/lXDd294xtSuvU0My80H
         ZzwTbQAp2T0En+XFr9SdfLZis0h2zvRID6krXCMIIx4UcDXMiHLtjCTUy22wY7OV7lNG
         6+7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qYw52KbtUmte4Z/cFDsYS5J57W8vg6frJs5kIEBMhnA=;
        b=UEfmlZgTcvxYDtl1Mq8XR0iNDHaIdxapzT/G+4Ej+sZOAEsJMD7nV6CsNPgPykUh3E
         kOXtP5Gkmyc+FfQQiryD4jrIutIRhKFvZx2ppPmwtsodsva9pemjFO8WIP3Ye+1FKp39
         8BX370Pz5a16/PZf4fGOgNgqAjyPDEYAb9KFqiw6cced5VhKHn7qZXAPPlnl6jDe7tPJ
         Xd89zNqNDbOanP+NkrbvJvKmC707ZyMlT3mo5xnIwkFEUo96PnoOooxsH75gE9/A3l7l
         9e81e58dyb6X98mF2BeTt8/IzqeB7TA4V6dX21W4S+WtUfGVT9iQELNPYj58la3Hn6YN
         G8cQ==
X-Gm-Message-State: ANhLgQ1eSrHnu+4pOWYnaAzIWE5Qcovj8o9USH0IkAMt286a+5fwRjCM
	Gs/ktkJw9Joj3hdB5VwPb1VOVJ1h7nXXKfYLz8A=
X-Google-Smtp-Source: ADFU+vtU4k87AXrDQXwIgdvMNt3HPu8x+GpW5G4q/IBx2FoGhT29MHYpgXpFlBkguMX2wr24CG1NGzlTG10iGDtLcn4=
X-Received: by 2002:adf:ecc7:: with SMTP id s7mr19363079wro.386.1584123673269;
 Fri, 13 Mar 2020 11:21:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSGmz-GRFac-UR6AcTRyUYjvf1buRaYQvvCMrr__OuV_g@mail.gmail.com>
 <20200313164014.GN1578@denix.org> <CAHtQpK7c88eUNPDcCoX7OdrDzhNhGyntYU53WqrJXXbSYtT7nQ@mail.gmail.com>
 <20200313181544.GO1578@denix.org>
In-Reply-To: <20200313181544.GO1578@denix.org>
From: "Andrey Zhizhikin" <andrey.z@gmail.com>
Date: Fri, 13 Mar 2020 19:21:02 +0100
Message-ID: <CAHtQpK7=vSh=f9=viqN6nCEcQKr7f+R=5nDfiN_38PN_hhFM5A@mail.gmail.com>
Subject: Re: [OE-core] [yocto] menuconf u-boot
To: Denys Dmytriyenko <denis@denix.org>
Cc: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 13, 2020 at 7:15 PM Denys Dmytriyenko <denis@denix.org> wrote:
>
> On Fri, Mar 13, 2020 at 07:07:34PM +0100, Andrey Zhizhikin wrote:
> > JH,
> >
> > Please refer to my replies to Denys, cross-posting to unrelated lists
> > is generally not a good idea.
> >
> > On Fri, Mar 13, 2020 at 5:40 PM Denys Dmytriyenko <denis@denix.org> wrote:
> > >
> > > What's u-boot-imx?
> >
> > This is U-Boot fork for NXP devices (former Freescale),
>
> This was a rhetorical question - no answer was required.

That was mainly addressed to JH. :)

>
>
> > which is not maintained by OE-Core.
>
> Exactly my point.
>
>
> > > It's definitely not in openembedded-core, so there's no reason to cross-post
> > > there.
> > >
> > > If google doesn't help, it's recommended to post such specific questions to
> > > the corresponding mailing list for the layer this recipe comes from.
> >
> > The correct mailing list would be meta-freescale@yoctoproject.org and
> > JH already had some questions posted there.
> >
> > >
> > > If it's not clear where the recipe comes from, Layer Index can help:
> > > https://layers.openembedded.org/
> > >
> > > Thanks.
> > >
> > > --
> > > Denys
> > >
> > >
> > > On Fri, Mar 13, 2020 at 08:15:17PM +1100, JH wrote:
> > > > Hi,
> > > >
> > > > I tried to run bitbake -c menuconfig u-boot, it popped up a terminal
> > > > u-boot-imx configuration:
> >
> > It is not clear which yocto branch/machine you're trying to build
> > here. If you provide more details - then there is a bigger chance that
> > people would step in to assist you.
> >
> > > >
> > > > make: *** No rule make target 'menuconfig'. Stop.
> > > > Command failed.
> > > > Press any key to continue...
> > > >
> > > > How can I  run menuconfig u-boot?
> >
> > I've tried it now on the [master] branch of yocto for imx8mmevk
> > machine - it is building OK and I have the menuconfig from u-boot-imx.
> > Hence, please refer to my point above regarding more pre-information
> > on the issue.
> >
> > > >
> > > > Thank you.
> > > >
> > > > Kind regards,
> > > >
> > > > - jh
> > >
> > > > 
> > >
> > > --
> > > _______________________________________________
> > > Openembedded-core mailing list
> > > Openembedded-core@lists.openembedded.org
> > > http://lists.openembedded.org/mailman/listinfo/openembedded-core
> >
> >
> >
> > --
> > Regards,
> > Andrey.
> >



-- 
Regards,
Andrey.
