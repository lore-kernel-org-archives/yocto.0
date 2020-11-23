Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.31277.1606115811321762874
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Nov 2020 23:16:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: fede.evol@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id l1so17485917wrb.9
        for <yocto@lists.yoctoproject.org>; Sun, 22 Nov 2020 23:16:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=suhrzxed/rmgn+a3jBig48iq/HU1L4xkAtSM1yRolmQ=;
        b=Fq0XgdS8+VYXxvR4+OdU0d8VWKSOtKEb1irsmgkBJZpvBBH/QMCB26aJ43l/AeNpdS
         SOm8brehyssIVMubisGEUduxRpxByoKTgFsTu28lqOHMC2ZHyJJFt5HGoW0cobCIPh8A
         R3IbrD7OUlnEiVRdFqZsdyDe1AccGr3IuvvkoAh766pffCvQQzQoekcU2LeNis/DS8cr
         biVXCj8qsc0StoZT9Wd1+URSCx8XqPtgrlUnwbn5wRwiKuS5hfIpKoydQQX8R0KunIC2
         w9vUCnARlUq3p+4cNKPSzM9gEUnDSdvpU+K22Q0PpNb4sviQq/WiE1r/rvFP8qUxkEl4
         ig9Q==
X-Gm-Message-State: AOAM530tTfsYAs1wAuo3VmvU9iMi5LiGYxWwHpfFh2EqKyq8JDG/PC5C
	AtZyP3fhbXjfqtGiw33chp+srqH/MxHewqU5DuQ=
X-Google-Smtp-Source: ABdhPJypXOt1foskW6d10HxcSC6GJNViY/rLY/ga6hVz8HefIsjuLoz8Ce/zCkdHzS2uoUFXnVZC0pGBeE9gkFPZYHU=
X-Received: by 2002:adf:ecc9:: with SMTP id s9mr29896055wro.246.1606115809914;
 Sun, 22 Nov 2020 23:16:49 -0800 (PST)
MIME-Version: 1.0
References: <080574f8-ae94-3283-0653-631dc7563b49@dajac.com>
 <5a531881d6504e5880577ce692b1d35b@Exchange.sewerin.de> <CAMKF1srJDjkhA=DqP_mv34E=tG7=JbTSQ6DgAodxhagujXxGxA@mail.gmail.com>
In-Reply-To: <CAMKF1srJDjkhA=DqP_mv34E=tG7=JbTSQ6DgAodxhagujXxGxA@mail.gmail.com>
From: "Federico Pellegrin" <fede@evolware.org>
Date: Mon, 23 Nov 2020 08:16:38 +0100
Message-ID: <CAM6O0ZhMt1dYSmzZh-GO0ZgpCSf0aMuDzHJE7EtVTd9xGzZKdw@mail.gmail.com>
Subject: Re: [yocto] U-Boot sama5d3 xplained issue
To: Khem Raj <raj.khem@gmail.com>
Cc: David Novak <david.novak@dajac.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000051722005b4c0fa4c"

--00000000000051722005b4c0fa4c
Content-Type: text/plain; charset="UTF-8"

Hi,
I think it would be interesting information to know "how" you change the
value inside "u-boot-at91/sama5d3_xplained_nandflash_config".

As every time you rebuild it may be redownloaded, you should do this via a
patch to append to the recipe.

Are you doing this? Or just changing it locally?

If you give some more info probably we can better help!

Cheers,
Federico

Il giorno lun 23 nov 2020 alle ore 08:06 Khem Raj <raj.khem@gmail.com> ha
scritto:

> perhaps asking it on https://github.com/linux4sam/u-boot-at91 via
> github issues might be helpful too.
>
> On Sat, Nov 21, 2020 at 4:26 AM David Novak <david.novak@dajac.com> wrote:
> >
> > I'm working on this project with Pratham. Let me provide a few more
> details.
> >
> > We've defined
> >
> > UBOOT_MACHINE ?= "sama5d3_xplained_nandflash_config"
> >
> > Inside
> >
> > u-boot-at91/sama5d3_xplained_nandflash_config
> >
> > we change CONFIG_BOOTDELAY, but it has no effect on the newly built
> image. The boot delay remains the same as it was before we changed it.
> >
> > Based on the UBOOT_MACHINE, can we be certain we are changing the
> correct file?
> >
> > How do we get the build process to include our changes?
> >
> > Thanks,
> > David
> >
> >
> >
> > On 11/19/2020 5:37 PM, Prathamesh Ovalekar wrote:
> >
> > Hello everyone,
> >
> > System: sama5d3_xplained board
> >
> > I have a question regarding the configuration and build of u-boot.
> > We have a build that was implemented earlier. I am trying to make some
> changes to it.
> >
> > Change 1: Change the auto boot delay to 1 second.
> > Change 2: Add an auto boot command to set a gpio.
> >
> > I am aware of the environment variables:  CONFIG_BOOTDELAY and
> CONFIG_BOOTCOMMAND (needed for the changes above.)
> > I tried modifying the  " configs/sama5d3_xplained_nandflash_defconfig "
> >
> > Question 1: Do I need to create an *.config file using the make
> menuconfig?
> >
> > Question 2: How do I create the u-boot.bin . Does this  depend on the
> Linux build?
> >                     I know that there is an environment variable:
> CONFIG_BOOTARGS that needs to be populated.
> >
> > --
> > Pratham Ovalekar
> >
> >
> >
> >
> >
> >
> >
>
> 
>
>

--00000000000051722005b4c0fa4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi,</div><div>I think it would be inte=
resting information to know &quot;how&quot; you change the value inside &qu=
ot;u-boot-at91/sama5d3_xplained_nandflash_config&quot;.</div><div><br></div=
><div>As every time you rebuild it may be redownloaded, you should do this =
via a patch to append to the recipe. <br></div><div><br></div><div>Are you =
doing this? Or just changing it locally?</div><div><br></div><div>If you gi=
ve some more info probably we can better help!<br></div><div><br></div><div=
>Cheers,</div><div>Federico<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">Il giorno lun 23 nov 2020 alle ore 08:=
06 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a=
>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">perhaps asking it on <a href=3D"https://github.com/linux4sam/u-boot-at91"=
 rel=3D"noreferrer" target=3D"_blank">https://github.com/linux4sam/u-boot-a=
t91</a> via<br>
github issues might be helpful too.<br>
<br>
On Sat, Nov 21, 2020 at 4:26 AM David Novak &lt;<a href=3D"mailto:david.no=
vak@dajac.com" target=3D"_blank">david.novak@dajac.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I&#39;m working on this project with Pratham. Let me provide a few mo=
re details.<br>
&gt;<br>
&gt; We&#39;ve defined<br>
&gt;<br>
&gt; UBOOT_MACHINE ?=3D &quot;sama5d3_xplained_nandflash_config&quot;<br>
&gt;<br>
&gt; Inside<br>
&gt;<br>
&gt; u-boot-at91/sama5d3_xplained_nandflash_config<br>
&gt;<br>
&gt; we change CONFIG_BOOTDELAY, but it has no effect on the newly built i=
mage. The boot delay remains the same as it was before we changed it.<br>
&gt;<br>
&gt; Based on the UBOOT_MACHINE, can we be certain we are changing the cor=
rect file?<br>
&gt;<br>
&gt; How do we get the build process to include our changes?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; David<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On 11/19/2020 5:37 PM, Prathamesh Ovalekar wrote:<br>
&gt;<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; System: sama5d3_xplained board<br>
&gt;<br>
&gt; I have a question regarding the configuration and build of u-boot.<br=
>
&gt; We have a build that was implemented earlier. I am trying to make som=
e changes to it.<br>
&gt;<br>
&gt; Change 1: Change the auto boot delay to 1 second.<br>
&gt; Change 2: Add an auto boot command to set a gpio.<br>
&gt;<br>
&gt; I am aware of the environment variables:=C2=A0 CONFIG_BOOTDELAY and C=
ONFIG_BOOTCOMMAND (needed for the changes above.)<br>
&gt; I tried modifying the=C2=A0 &quot; configs/sama5d3_xplained_nandflash=
_defconfig &quot;<br>
&gt;<br>
&gt; Question 1: Do I need to create an *.config file using the make menuc=
onfig?<br>
&gt;<br>
&gt; Question 2: How do I create the u-boot.bin . Does this=C2=A0 depend o=
n the Linux build?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0I know that there is an environment variable: CONFIG_BOOTARGS that n=
eeds to be populated.<br>
&gt;<br>
&gt; --<br>
&gt; Pratham Ovalekar<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000051722005b4c0fa4c--
