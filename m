Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web12.12474.1593513090308867122
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 03:31:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=N1xXXx6L;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id h18so303432uao.6
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 03:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aUmamO+sOZK4YLEjEbjAPo+9ZFivwH9OMZ8iErRrvkI=;
        b=N1xXXx6LHheiqe9dugSEE5qiFzJZxTikzCWtqvfY3eL3MICajIcuIS3tFLNSHhK2Ct
         ycVx9CvzI4xJ23MekN5MfJUjektwPmuFJJDCgme20lijp4h8ei7GPNfCm5dzIlWVPZi8
         8WH0s4IjotQIf3etrxrhxH3zSFIbOos2AfJlDT4P92oTVHxxb1kW8IHHh3NIq4bkzOrb
         FTftUnEwRm3pDIPSl/URNzWnd0Ev9rnb3YLjapIc+QBzFGJnC8sp8b2bQJJgZXAWz46S
         qM2yOJ8zfZinzgA5RmJVkqs0BaSZrO2K3hqmTYtn9wTGtcmXrr+oc/megG4Uzeez35Qf
         miQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aUmamO+sOZK4YLEjEbjAPo+9ZFivwH9OMZ8iErRrvkI=;
        b=cpMjCPBPoBLGTfMYcVb3K3BkQ8weIwbxNtTsZrkH2kkGHBB1SAddyWWsGQgeW7oEs4
         ZYtB5BTT8ugLmxIeB8lK1gD7Bw6usbcsu9g/4NxoW5wnJLgOJLO9k9jDfP8WQ7/+S5VR
         OMgLwGAASORw70duyaohu94s3Sn4FLQ6xvkph65a+X9PBLMj5Iu5Pd5T5Fb6IlfliQWp
         92Gce0VnEHV1RcJYeGzaS6Dr372JxJuwqIfD/YEqsDPE4gLyREXYfSIf7ozUUCT3qdOP
         gFq9Qf1C++5zLrWJf4HorUNEJ9sDUkEfiproWkplmmm8aEB4OuFk4dCJwhvdPt/VkI6O
         Yrtw==
X-Gm-Message-State: AOAM532bJt6iSlcZHtLTdHa5spfIZflLx1CuFUhI0XoFlPDciCB6KOZf
	VA5XtGrmdJAt1TNFc1LxWfdZn2pn0e0tceFocNs=
X-Google-Smtp-Source: ABdhPJyI87qZaR+DnjuLnCz+Jzya37LU1ufaVcLeOsARouQMrVIJwsZx4mUF0t/Wx/yaCFUJJNcHYEghAvM1Bzx3/3k=
X-Received: by 2002:ab0:2a1:: with SMTP id 30mr13208422uah.93.1593513089432;
 Tue, 30 Jun 2020 03:31:29 -0700 (PDT)
MIME-Version: 1.0
References: <c57c1a5d-8b83-c9c8-7eba-20edf63e0de0@actia.se>
 <CANNYZj9jEMyhwHFoSsjPQbLV7ff=336_JYcaJ=NTJ1Smcyuz9w@mail.gmail.com> <01d5b9db-cd7e-eee9-bc09-1ff346c7e2aa@actia.se>
In-Reply-To: <01d5b9db-cd7e-eee9-bc09-1ff346c7e2aa@actia.se>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 30 Jun 2020 12:31:18 +0200
Message-ID: <CANNYZj-KLo90FXuwZEma==oa4za6TRjix7yZZs+J+Bj+JE7AVQ@mail.gmail.com>
Subject: Re: [yocto] INCOMPATIBLE_LICENSE - how to use it properly?
To: John Ernberg <john.ernberg@actia.se>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a401bc05a94aad31"

--000000000000a401bc05a94aad31
Content-Type: text/plain; charset="UTF-8"

It goes over a list of packages installed into their image, and checks
their licensing. If something was directly built into something else, it
will not produce a separate package, and therefore you need to handle that
separately: perhaps by setting the package license appropriately in
respective recipes (they needs to carry the licenses of items coming
directly as headers from other recipes).

Alex

On Tue, 30 Jun 2020 at 12:01, John Ernberg <john.ernberg@actia.se> wrote:

> Hi Alex,
>
> I will give this a try on master.
>
> One question though, will this still catch build-only libraries? (i.e. a
> library that consists only of headers). I don't think we have such
> recipes right now, it's more to understand how this feature works.
>
> Thank you.
>
> Best regards // John Ernberg
>
> On 6/30/20 11:55 AM, Alexander Kanavin wrote:
> > On master, you can set INCOMPATIBLE_LICENSE in the image recipe, rather
> > than globally, then the check would only be performed on items that
> > actually go into that image.
> >
> > Warrior does not have that feature yet, I think, so your only option
> > there is meta-gpl2.
> >
> > Alex
> >
> > On Tue, 30 Jun 2020 at 11:34, John Ernberg <john.ernberg@actia.se
> > <mailto:john.ernberg@actia.se>> wrote:
> >
> >     Hi,
> >
> >     I have been trying to use INCOMPATIBLE_LICENSE to filter out
> >     undesirable
> >     licenses for us from our images. I started simple and picked the
> >     examples from the manual (AGPL-3.0, GPL-3.0 and LGPL-3.0).
> >
> >     Currently we're based on Warrior, but I also did a short test on
> master
> >     (results later in the message)
> >
> >     Our images use systemd as init system. We use busybox ash as shell on
> >     these images for now.
> >
> >     When setting the INCOMPATIBLE_LICENSE according to the manual
> example,
> >     systemd cannot be built anymore because bash is being skipped due to
> >     license.
> >
> >     Turns out that because systemd-bash-completion and
> >     systemd-kernel-install both rdepend on bash, we can't build systemd
> at
> >     all, because bash is not buildable. Even if we're not installing
> those
> >     features of systemd.
> >
> >     A dive into TaskData suggests that all the rdepends of all packages
> >     provided by a recipe are flattened into depends of the recipe when
> >     testing buildability.
> >
> >     A quick test on master from about 2 weeks ago show the same behavior.
> >
> >     For the test on master all I did was change the DISTRO_FEATURES of
> >     core-image-minimal to include systemd.
> >
> >
> >     Am I using ICOMPATIBLE_LICENSE properly so far?
> >     If so, is being unable to fulfill an rdepend for an unused package
> >     meant
> >     to fail the whole build, and how can I avoid it short of including
> >     meta-gplv2 or writing lots of .bbappends to remove the dependencies?
> >     Otherwise, where did I go wrong, and what should I be trying instead?
> >
> >     Thank you.
> >
> >     Best regards // John Ernberg
> >     
> >
>

--000000000000a401bc05a94aad31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It goes over a list of packages installed into their =
image, and checks their licensing. If something was directly built into som=
ething else, it will not produce a separate package, and therefore you need=
 to handle that separately: perhaps by setting the package license appropri=
ately in respective recipes (they needs to carry the licenses of items comi=
ng directly as headers from other recipes).</div><div><br></div><div>Alex<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, 30 Jun 2020 at 12:01, John Ernberg &lt;<a href=3D"mailto:jo=
hn.ernberg@actia.se">john.ernberg@actia.se</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Hi Alex,<br>
<br>
I will give this a try on master.<br>
<br>
One question though, will this still catch build-only libraries? (i.e. a <=
br>
library that consists only of headers). I don&#39;t think we have such <br=
>
recipes right now, it&#39;s more to understand how this feature works.<br>
<br>
Thank you.<br>
<br>
Best regards // John Ernberg<br>
<br>
On 6/30/20 11:55 AM, Alexander Kanavin wrote:<br>
&gt; On master, you can set INCOMPATIBLE_LICENSE in the image recipe, rath=
er <br>
&gt; than globally, then the check would only be performed on items that <=
br>
&gt; actually go into that image.<br>
&gt; <br>
&gt; Warrior does not have that feature yet, I think, so your only option =
<br>
&gt; there is meta-gpl2.<br>
&gt; <br>
&gt; Alex<br>
&gt; <br>
&gt; On Tue, 30 Jun 2020 at 11:34, John Ernberg &lt;<a href=3D"mailto:john=
.ernberg@actia.se" target=3D"_blank">john.ernberg@actia.se</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:john.ernberg@actia.se" target=3D"_blank"=
>john.ernberg@actia.se</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I have been trying to use INCOMPATIBLE_LICENSE to =
filter out<br>
&gt;=C2=A0 =C2=A0 =C2=A0undesirable<br>
&gt;=C2=A0 =C2=A0 =C2=A0licenses for us from our images. I started simple =
and picked the<br>
&gt;=C2=A0 =C2=A0 =C2=A0examples from the manual (AGPL-3.0, GPL-3.0 and LG=
PL-3.0).<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Currently we&#39;re based on Warrior, but I also d=
id a short test on master<br>
&gt;=C2=A0 =C2=A0 =C2=A0(results later in the message)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Our images use systemd as init system. We use busy=
box ash as shell on<br>
&gt;=C2=A0 =C2=A0 =C2=A0these images for now.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0When setting the INCOMPATIBLE_LICENSE according to=
 the manual example,<br>
&gt;=C2=A0 =C2=A0 =C2=A0systemd cannot be built anymore because bash is be=
ing skipped due to<br>
&gt;=C2=A0 =C2=A0 =C2=A0license.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Turns out that because systemd-bash-completion and=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0systemd-kernel-install both rdepend on bash, we ca=
n&#39;t build systemd at<br>
&gt;=C2=A0 =C2=A0 =C2=A0all, because bash is not buildable. Even if we&#39=
;re not installing those<br>
&gt;=C2=A0 =C2=A0 =C2=A0features of systemd.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0A dive into TaskData suggests that all the rdepend=
s of all packages<br>
&gt;=C2=A0 =C2=A0 =C2=A0provided by a recipe are flattened into depends of=
 the recipe when<br>
&gt;=C2=A0 =C2=A0 =C2=A0testing buildability.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0A quick test on master from about 2 weeks ago show=
 the same behavior.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0For the test on master all I did was change the DI=
STRO_FEATURES of<br>
&gt;=C2=A0 =C2=A0 =C2=A0core-image-minimal to include systemd.<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Am I using ICOMPATIBLE_LICENSE properly so far?<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0If so, is being unable to fulfill an rdepend for a=
n unused package<br>
&gt;=C2=A0 =C2=A0 =C2=A0meant<br>
&gt;=C2=A0 =C2=A0 =C2=A0to fail the whole build, and how can I avoid it sh=
ort of including<br>
&gt;=C2=A0 =C2=A0 =C2=A0meta-gplv2 or writing lots of .bbappends to remove=
 the dependencies?<br>
&gt;=C2=A0 =C2=A0 =C2=A0Otherwise, where did I go wrong, and what should I=
 be trying instead?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thank you.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Best regards // John Ernberg<br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; <br>
</blockquote></div>

--000000000000a401bc05a94aad31--
