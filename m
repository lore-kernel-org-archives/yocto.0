Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web09.4252.1625092966379571378
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 15:42:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NyZ0FJjU;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id v139so4172843qkb.9
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 15:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HKPG3K5P8iCwF9gWUfsDPZrCgSVVIwpOo7iWDCXMRxE=;
        b=NyZ0FJjU6EHWstNUj/4HeC66YiSKgTYgl04jF8JHAQYLtX6zIz+p5MNDi2tprA3Rj5
         ISXeXWbKChMjs9Ht9F1b0f38v4+nXFiiZf2zEv6z3BAVop7X0sCgtew2Xp79b8pA05xE
         O4+9EuyUzLoLQ38DO1h+pqrWmtpTFzwz4gFYgCWfYWqe4ipNoXhP9tm5s348doGxZ933
         7x4vTAkTu+yaM6XgXI5pw6z/rbSfpZi6pF2s/5arDUT0xb8/9SsGAnGgnFifI8Ts8Kd5
         NtYJtsvuHzQ2SrW7Oxmh0rcotlN2WRgKdCIG1ChUDrQ0tOqpdxAcYAlgMmsS+W12K4tM
         Gkdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HKPG3K5P8iCwF9gWUfsDPZrCgSVVIwpOo7iWDCXMRxE=;
        b=XJzZxn5g8YoziWSpPNf3CSndG4KCDBoV1Gtqf2PQ/STe1z7DrIO12ZZ5RZDhG9Z7qD
         5JJP9h/7nW29vN92y0rnMrInP3Kyki7uQmFXvs5EHyjTcr27H886xdr8UlRGCC/SZ2qQ
         E+QNDlaVb24dfKu0a66kS6IHfdnIuBwZB5S2zqWFhFCD3JdcJS0Tvc2dkykvjF8saijR
         s7AGUf5B4ISv9sFT/wRuMj8ZfViL+sLC4k9QpbxBI5U730l3FgXtk+pjOY6FsLC1nlPR
         H/jkuoAmzYOYaS1SlLjTyGK8N1TYBSWgsOvpm1EnbJVcR4OuRYT07V5y6Ohca0LP9jsN
         OdJw==
X-Gm-Message-State: AOAM533w/vi3ZsgZjf51+uq7tAAeQxeJI54WCD/L2LEWjwA6IzvE5e0g
	vFCvXEdmGAHHVlEIlDH46F619XiCATo2zWmCLUE=
X-Google-Smtp-Source: ABdhPJwGxFhzMv3Is5JnhA3fp4xWhO7y6cEY5qnV2xhJyAkRFJS0T2ZXIGtu4uxbrJUey/3Hafx3jnjSQBO3aGufdJk=
X-Received: by 2002:a37:6cd:: with SMTP id 196mr30695757qkg.5.1625092965601;
 Wed, 30 Jun 2021 15:42:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAEyb4nEiwzVnrqHGob-ioo0iwT+NNA_uCXFMejoYfAdnnQpH5A@mail.gmail.com>
 <68074a59-650c-c02a-b05b-855b43171c50@theyoctojester.info> <CADkTA4OOQsav7WJCQ5Nt6mWJzK_Ouf6yJazWe1JaS8i8wQ0S8g@mail.gmail.com>
In-Reply-To: <CADkTA4OOQsav7WJCQ5Nt6mWJzK_Ouf6yJazWe1JaS8i8wQ0S8g@mail.gmail.com>
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Thu, 1 Jul 2021 00:42:34 +0200
Message-ID: <CAEyb4nF8nkVZx+VggCt-aCnPf_D7nXWSETg27+hzvPHTtXjUBA@mail.gmail.com>
Subject: Re: [yocto] Would COMPATIBLE_IMAGE make sense?
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Josef Holzmayr <jester@theyoctojester.info>, yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f115f205c60370cf"

--000000000000f115f205c60370cf
Content-Type: text/plain; charset="UTF-8"

Thanks a lot for the answers, that's really helpful!

Seems like I should have a closer look at the distros.
I'll need some time to test it, I'll update here when that is done!

On Tue, Jun 29, 2021 at 1:52 PM Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

> On Tue, Jun 29, 2021 at 2:41 AM Josef Holzmayr
> <jester@theyoctojester.info> wrote:
> >
> > Howdy!
> >
> > Am 29.06.2021 um 01:28 schrieb Jonas Vautherin:
> > > I was thinking about my issue described here [1], and discovered the
> > > variables called COMPATIBLE_MACHINE and COMPATIBLE_HOST, which "you can
> > > use to stop recipes from being built for machines (/hosts) with which
> > > the recipes are not compatible". And so I wondered if it would make
> > > sense to add COMPATIBLE_IMAGE, for a similar purpose.
> > >
> > > Let me explain my issue: I define different images in different layers
> > > (say `first-project-image` and `second-project-image`), and in each of
> > > those layers I create `.bbappends` to configure some packages.
> Typically
> > > `hostapd` is used by both images, but with a different config file.
> > >
> > > The thing is that when I run `bitbake first-project-image`, because
> > > `second-project-image` is part of my bblayers.conf, then the
> > > hostapd_%.bbappend from `second-project-image` is used and may have an
> > > impact on `first-project-image`, which I don't want. I really want this
> > > bbappend to only affect the image `second-project-image`.
> > >
> > > One way I can see to deal with that is to realize that
> > > `first-project-image` and `second-project-image` are two different
> > > projects, and build them from two different BUILDDIRs. The thing I
> don't
> > > like here is that all the packages are therefore downloaded and built
> > > twice, which seems like a loss of time and space.
> > >
> > > That's where I thought about COMPATIBLE_IMAGE. In the
> hostapd_%.bbappend
> > > of `first-project-image`, I would set "COMPATIBLE_IMAGE =
> > > 'first-project-image'", and similarly for "COMPATIBLE_IMAGE =
> > > 'second-project-image'". So that I could still share a BUILDDIR between
> > > different projects.
> >
> > Yocto chant #1 applies: "Recipe data is local, configuration data is
> > global." Means: the recipe does not see at all which image it is being
> > built for. So it also can't react to it - you can't check a variable
> > against something you do not even see.
> >
> > > How bad of an idea is that?
> >
> > It just doesn't work. If that counts as "bad" is left for you to decide
> :)
> >
> > What you actually might use is using different DISTROs for the images,
> > because that actually what they mean to do: you change the ABI/API of
> > the image. And you can also define a base DISTRO and COMPATIBLE_DISTRO
> > derivatives, so its all there already. It just cannot be triggered from
> > the image, because, well.. see first pragraph of the answer.
>
> I was also going to suggest distros.
>
> And also, if the concern really is about builds reusing downloads,
> etc, then by all means configure those different distro builds to
> share download and sstate directories.
>
> Bruce
>
> >
> > Greetz
> >
> > > Thanks in advance,
> > > Jonas
> > >
> > > [1]:
> https://stackoverflow.com/questions/68167244/image-specific-layers
> > > <https://stackoverflow.com/questions/68167244/image-specific-layers>
> > >
> > >
> > >
> > >
> >
> >
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
> 
>
>

--000000000000f115f205c60370cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks a lot for the answers, that&#39;s really helpf=
ul! <br></div><div><br></div><div>Seems like I should have a closer look at=
 the distros.</div><div>I&#39;ll need some time to test it, I&#39;ll update=
 here when that is done!</div></div><br><div class=3D"gmail_quote"><div dir=
=
=3D"ltr" class=3D"gmail_attr">On Tue, Jun 29, 2021 at 1:52 PM Bruce Ashfie=
ld &lt;<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On Tue, Jun 29, 2021 at 2:41 AM Josef Holzmayr<br>
&lt;<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">jester=
@theyoctojester.info</a>&gt; wrote:<br>
&gt;<br>
&gt; Howdy!<br>
&gt;<br>
&gt; Am 29.06.2021 um 01:28 schrieb Jonas Vautherin:<br>
&gt; &gt; I was thinking about my issue described here [1], and discovered=
 the<br>
&gt; &gt; variables called COMPATIBLE_MACHINE and COMPATIBLE_HOST, which &=
quot;you can<br>
&gt; &gt; use to stop recipes from being built for machines (/hosts) with =
which<br>
&gt; &gt; the recipes are not compatible&quot;. And so I wondered if it wo=
uld make<br>
&gt; &gt; sense to add COMPATIBLE_IMAGE, for a similar purpose.<br>
&gt; &gt;<br>
&gt; &gt; Let me explain my issue: I define different images in different =
layers<br>
&gt; &gt; (say `first-project-image` and `second-project-image`), and in e=
ach of<br>
&gt; &gt; those layers I create `.bbappends` to configure some packages. T=
ypically<br>
&gt; &gt; `hostapd` is used by both images, but with a different config fi=
le.<br>
&gt; &gt;<br>
&gt; &gt; The thing is that when I run `bitbake first-project-image`, beca=
use<br>
&gt; &gt; `second-project-image` is part of my bblayers.conf, then the<br>
&gt; &gt; hostapd_%.bbappend from `second-project-image` is used and may h=
ave an<br>
&gt; &gt; impact on `first-project-image`, which I don&#39;t want. I reall=
y want this<br>
&gt; &gt; bbappend to only affect the image `second-project-image`.<br>
&gt; &gt;<br>
&gt; &gt; One way I can see to deal with that is to realize that<br>
&gt; &gt; `first-project-image` and `second-project-image` are two differe=
nt<br>
&gt; &gt; projects, and build them from two different BUILDDIRs. The thing=
 I don&#39;t<br>
&gt; &gt; like here is that all the packages are therefore downloaded and =
built<br>
&gt; &gt; twice, which seems like a loss of time and space.<br>
&gt; &gt;<br>
&gt; &gt; That&#39;s where I thought about COMPATIBLE_IMAGE. In the hostap=
d_%.bbappend<br>
&gt; &gt; of `first-project-image`, I would set &quot;COMPATIBLE_IMAGE =3D=
<br>
&gt; &gt; &#39;first-project-image&#39;&quot;, and similarly for &quot;COM=
PATIBLE_IMAGE =3D<br>
&gt; &gt; &#39;second-project-image&#39;&quot;. So that I could still shar=
e a BUILDDIR between<br>
&gt; &gt; different projects.<br>
&gt;<br>
&gt; Yocto chant #1 applies: &quot;Recipe data is local, configuration dat=
a is<br>
&gt; global.&quot; Means: the recipe does not see at all which image it is=
 being<br>
&gt; built for. So it also can&#39;t react to it - you can&#39;t check a v=
ariable<br>
&gt; against something you do not even see.<br>
&gt;<br>
&gt; &gt; How bad of an idea is that?<br>
&gt;<br>
&gt; It just doesn&#39;t work. If that counts as &quot;bad&quot; is left f=
or you to decide :)<br>
&gt;<br>
&gt; What you actually might use is using different DISTROs for the images=
,<br>
&gt; because that actually what they mean to do: you change the ABI/API of=
<br>
&gt; the image. And you can also define a base DISTRO and COMPATIBLE_DISTR=
O<br>
&gt; derivatives, so its all there already. It just cannot be triggered fr=
om<br>
&gt; the image, because, well.. see first pragraph of the answer.<br>
<br>
I was also going to suggest distros.<br>
<br>
And also, if the concern really is about builds reusing downloads,<br>
etc, then by all means configure those different distro builds to<br>
share download and sstate directories.<br>
<br>
Bruce<br>
<br>
&gt;<br>
&gt; Greetz<br>
&gt;<br>
&gt; &gt; Thanks in advance,<br>
&gt; &gt; Jonas<br>
&gt; &gt;<br>
&gt; &gt; [1]: <a href=3D"https://stackoverflow.com/questions/68167244/ima=
ge-specific-layers" rel=3D"noreferrer" target=3D"_blank">https://stackoverf=
low.com/questions/68167244/image-specific-layers</a><br>
&gt; &gt; &lt;<a href=3D"https://stackoverflow.com/questions/68167244/imag=
e-specific-layers" rel=3D"noreferrer" target=3D"_blank">https://stackoverfl=
ow.com/questions/68167244/image-specific-layers</a>&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
<br>
-- <br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000f115f205c60370cf--
