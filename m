Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web12.11960.1593510960080383103
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 02:56:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DDIFxXx4;
 spf=pass (domain: gmail.com, ip: 209.85.222.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f41.google.com with SMTP id b13so6287728uav.3
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 02:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3YTO7WvgaECFe1KulsXVEAH3t0XLZMS4OQrbjiZ9Uz8=;
        b=DDIFxXx4nQIAwZD8udwoJWbeMz7W4aCInTnztRxZxIp6eCGYwFoYtEx7n0a/+pk92p
         rjfWmMZlLcypRIQfP1Ug3am3CZxww0O9IC3ZcUe+j0Yxs2iW7sOTI8EMQHO3lTtDRH4u
         BsA5MD2mLDLQli/KNt1T/bLnZJJ5XdMykqWatEba9Cw5Cew8QjU1RZ23cGpBu1qUitRj
         UV1xToxUZdx06w7WgwB1q75+eP3D4rHpqvYsT1dN6zO9MN7nBlpm05fSbTm3Mgn0ACxt
         dPv3DHSJ2SPDWddfbqziI+dU9DDzZkESUi/jmWfqQXvmGxOZgEy0YbsFVDf9xCJsmOIB
         G7fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3YTO7WvgaECFe1KulsXVEAH3t0XLZMS4OQrbjiZ9Uz8=;
        b=JDQL9wECADRKv+r58HefcAh493UF7vVvqSMrXyxrB0e29davnsxbCDy7taEe9EVgao
         AD5FU3XPgQtxrGqEmQkiB9L2FljQdbut2vt8xlsg823SiZd6ytS9t4V1Cc7oMGefloaQ
         vV6R7OCvyxWfZGM4NF+hS/iS6idO1jxdWPYAVoT/0sYtcmLTqhM7fDAGd/t+Ple01gPG
         3g3F6wA6WFFyvUjxc8hgbSgbdT9AYTPvgJt3rgcfR8GBbhrSahgJ9ozyRgv9PVSxZsvS
         fvQAci2DxKaLrN0ejVk7QyXSAmQrV1F6XhPHzceVBT9ZHs67QIJFlerPML+y2Fx91mYa
         XViw==
X-Gm-Message-State: AOAM533jGgmiOWKgwwXrbTawCAgHb0fbtgQNbG+PBwccR0F16aVFf1KR
	P5IeZnz7/XZtd5evN1HRkbBHhV6et6ZJs2vKEOFgMKgq
X-Google-Smtp-Source: ABdhPJwpA49Z5BvAs8ysQ9AHFH9vG9AgqRksLaPDVVYAwH2nBosma4C+Ocq9C93srEDGmT90RuiEcP5OPmV0CCadnf4=
X-Received: by 2002:ab0:2eab:: with SMTP id y11mr12505697uay.22.1593510959035;
 Tue, 30 Jun 2020 02:55:59 -0700 (PDT)
MIME-Version: 1.0
References: <c57c1a5d-8b83-c9c8-7eba-20edf63e0de0@actia.se>
In-Reply-To: <c57c1a5d-8b83-c9c8-7eba-20edf63e0de0@actia.se>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 30 Jun 2020 11:55:47 +0200
Message-ID: <CANNYZj9jEMyhwHFoSsjPQbLV7ff=336_JYcaJ=NTJ1Smcyuz9w@mail.gmail.com>
Subject: Re: [yocto] INCOMPATIBLE_LICENSE - how to use it properly?
To: John Ernberg <john.ernberg@actia.se>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a8b7fc05a94a2ebc"

--000000000000a8b7fc05a94a2ebc
Content-Type: text/plain; charset="UTF-8"

On master, you can set INCOMPATIBLE_LICENSE in the image recipe, rather
than globally, then the check would only be performed on items that
actually go into that image.

Warrior does not have that feature yet, I think, so your only option there
is meta-gpl2.

Alex

On Tue, 30 Jun 2020 at 11:34, John Ernberg <john.ernberg@actia.se> wrote:

> Hi,
>
> I have been trying to use INCOMPATIBLE_LICENSE to filter out undesirable
> licenses for us from our images. I started simple and picked the
> examples from the manual (AGPL-3.0, GPL-3.0 and LGPL-3.0).
>
> Currently we're based on Warrior, but I also did a short test on master
> (results later in the message)
>
> Our images use systemd as init system. We use busybox ash as shell on
> these images for now.
>
> When setting the INCOMPATIBLE_LICENSE according to the manual example,
> systemd cannot be built anymore because bash is being skipped due to
> license.
>
> Turns out that because systemd-bash-completion and
> systemd-kernel-install both rdepend on bash, we can't build systemd at
> all, because bash is not buildable. Even if we're not installing those
> features of systemd.
>
> A dive into TaskData suggests that all the rdepends of all packages
> provided by a recipe are flattened into depends of the recipe when
> testing buildability.
>
> A quick test on master from about 2 weeks ago show the same behavior.
>
> For the test on master all I did was change the DISTRO_FEATURES of
> core-image-minimal to include systemd.
>
>
> Am I using ICOMPATIBLE_LICENSE properly so far?
> If so, is being unable to fulfill an rdepend for an unused package meant
> to fail the whole build, and how can I avoid it short of including
> meta-gplv2 or writing lots of .bbappends to remove the dependencies?
> Otherwise, where did I go wrong, and what should I be trying instead?
>
> Thank you.
>
> Best regards // John Ernberg
> 
>

--000000000000a8b7fc05a94a2ebc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>On master, you can set INCOMPATIBLE_LICENSE in the im=
age recipe, rather than globally, then the check would only be performed on=
 items that actually go into that image.</div><div><br></div><div>Warrior d=
oes not have that feature yet, I think, so your only option there is meta-g=
pl2.<br></div><div><br></div><div>Alex<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 30 Jun 2020 at 11:3=
4, John Ernberg &lt;<a href=3D"mailto:john.ernberg@actia.se">john.ernberg@a=
ctia.se</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Hi,<br>
<br>
I have been trying to use INCOMPATIBLE_LICENSE to filter out undesirable <=
br>
licenses for us from our images. I started simple and picked the <br>
examples from the manual (AGPL-3.0, GPL-3.0 and LGPL-3.0).<br>
<br>
Currently we&#39;re based on Warrior, but I also did a short test on maste=
r <br>
(results later in the message)<br>
<br>
Our images use systemd as init system. We use busybox ash as shell on <br>
these images for now.<br>
<br>
When setting the INCOMPATIBLE_LICENSE according to the manual example, <br=
>
systemd cannot be built anymore because bash is being skipped due to <br>
license.<br>
<br>
Turns out that because systemd-bash-completion and <br>
systemd-kernel-install both rdepend on bash, we can&#39;t build systemd at=
 <br>
all, because bash is not buildable. Even if we&#39;re not installing those=
 <br>
features of systemd.<br>
<br>
A dive into TaskData suggests that all the rdepends of all packages <br>
provided by a recipe are flattened into depends of the recipe when <br>
testing buildability.<br>
<br>
A quick test on master from about 2 weeks ago show the same behavior.<br>
<br>
For the test on master all I did was change the DISTRO_FEATURES of <br>
core-image-minimal to include systemd.<br>
<br>
<br>
Am I using ICOMPATIBLE_LICENSE properly so far?<br>
If so, is being unable to fulfill an rdepend for an unused package meant <=
br>
to fail the whole build, and how can I avoid it short of including <br>
meta-gplv2 or writing lots of .bbappends to remove the dependencies?<br>
Otherwise, where did I go wrong, and what should I be trying instead?<br>
<br>
Thank you.<br>
<br>
Best regards // John Ernberg<br>
<br>
</blockquote></div>

--000000000000a8b7fc05a94a2ebc--
