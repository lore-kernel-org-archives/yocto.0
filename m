Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web10.7898.1614783969482115185
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Mar 2021 07:06:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ve/QTCme;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: rustyhowell@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id g20so14196268plo.2
        for <yocto@lists.yoctoproject.org>; Wed, 03 Mar 2021 07:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KACviGxukdJlsod07GXYDSkAoJ2lGVZKkkJwZQjyLn8=;
        b=Ve/QTCmepFYZ5uc5BvcFDvV6sl4k1SUIIKxFhYXGXeiGreLu+S9lXKbYxO6l4ciJ1F
         +g49n7cAK46tYnlOqHcLmmdPWfS1Z6t5qetmru9RZYOM6snvg84xYy+UQyQirB9JpgPc
         KgSN8GIPrHPRdUtyo/YQhXIlDqNDhCrLmf9GJdvx4XHkRoraIYCHCFb/G4Vg1QGKcaoU
         3A66S5xSg/Y3d5/laaaaRD+UqyR2ImANRc1nRAnbva4DvLMPqSDyXFjXbajWgS4XmwBa
         3GL2IB9eEebU2+ijL6joOUfgbCHWxShRW0qhk4OXPtDuSAlxDAgmpZ90K+DTqpo7w/Ar
         pHkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KACviGxukdJlsod07GXYDSkAoJ2lGVZKkkJwZQjyLn8=;
        b=J33kUqbQlQaTJ2YfJPdxCm9kVGqMCkrHhyYDnk/BG68CrDraVUXBuBZMpK5xjnFxxm
         iP8HaUXBGMHwGj1GAqtkYAzekhfOuWzJi8/ViOD6ffUyeG3xwM43yjswznCzasLdbikV
         V7Om2XuDZNnaIHu/HhMU8hXyUT/VS4HQLKwQuKA5TCw3N/ctzDd0J+kha90Ti8t0VVh6
         cWV5Bv6m5esfp6pzK4H3iSxfQEdkyciIN1Swe0nMOQJv9Hm4qDxT9Vrh99ofg+7oLvmQ
         tD5Uhubjies1snMvbvIfZDQrj7l2Uh7c5w4nDuWC6DFamQF/0MC4MUtHu/mu+CQ+rD/t
         O8Eg==
X-Gm-Message-State: AOAM533udG81auq0Rbo8me5/JFJaO0KN25jLr2zC/7rJybgD1T8+t8O3
	whepQYy4AwVN+ui1IlryVbnlKKH3pu2Pvx4ypH4=
X-Google-Smtp-Source: ABdhPJxCpoAtiw1Y+us7i4v9MMo+iPtb2Yd9gUq2OONAfWmhAGjjWxNR4R1hH6al4bmSlqYRp0PxnF4ocYQOWKXV97U=
X-Received: by 2002:a17:90a:17ea:: with SMTP id q97mr10177247pja.71.1614783968773;
 Wed, 03 Mar 2021 07:06:08 -0800 (PST)
MIME-Version: 1.0
References: <zFb6.1614702126167583420.u32u@lists.yoctoproject.org>
 <16689EFE3DC0BB92.17298@lists.yoctoproject.org> <CAOSpxdYoviYhz4s9u2KY8ttwoFqo8v6VEzJ2vM79-j2LiQex1g@mail.gmail.com>
 <DB6PR0102MB263061D0B03C4DA90C7B89F188999@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
 <2a6603ec08c0aee64364961c0d9eca0ef7ea6aaa.camel@linuxfoundation.org>
In-Reply-To: <2a6603ec08c0aee64364961c0d9eca0ef7ea6aaa.camel@linuxfoundation.org>
From: rustyhowell@gmail.com
Date: Wed, 3 Mar 2021 08:05:49 -0700
Message-ID: <CAE+BM3m7SD30-JRG7S35KmwtKSuSqkRWQUyeSq3J3m0ACpu-Nw@mail.gmail.com>
Subject: Re: [yocto] Reducing the perl footprint on my image
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: diego.santacruz@spinetix.com, "steve@sakoman.com" <steve@sakoman.com>, 
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d909f005bca33012"

--000000000000d909f005bca33012
Content-Type: text/plain; charset="UTF-8"

Steve, you're right.  My image.bb is adding various lmsensors packages to
the IMAGE_INSTALL, some of which depend on perl-modules.   perl-modules
seems to be the big monster, not perl.  We need lmsensors.  So I guess my
question is really, how can I (or can I at all) reduce the footprint of
perl-modules?  perl-modules doesn't have any Depends, rather it has a long
list (~ 670) of Recommends.

On Tue, Mar 2, 2021 at 1:49 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Tue, 2021-03-02 at 20:42 +0000, Diego Santa Cruz via
> lists.yoctoproject.org wrote:
> > > -----Original Message-----
> > > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > > Behalf Of Steve Sakoman via lists.yoctoproject.org
> > > Sent: 02 March 2021 21:06
> > > To: Steve Sakoman <steve@sakoman.com>
> > > Cc: rustyhowell@gmail.com; Yocto (yocto@lists.yoctoproject.org)
> > > <yocto@lists.yoctoproject.org>
> > > Subject: Re: [yocto] Reducing the perl footprint on my image
> > >
> > > On Tue, Mar 2, 2021 at 10:01 AM Steve Sakoman via
> > > lists.yoctoproject.org <steve=sakoman.com@lists.yoctoproject.org>
> > > wrote:
> > > >
> > > > On Tue, Mar 2, 2021 at 6:26 AM <rustyhowell@gmail.com> wrote:
> > > > >
> > > > > I have an image that is using debian package management
> > > (PACKAGE_CLASSES = "package_deb").  Because apt and dpkg require perl,
> > > perl is being installed in the image.   No problem.  Except that the
> entire perl
> > > stack is 669 packages.
> > > >
> > > > I just took a look at the manifest for one of my images that includes
> > > > PACKAGE_CLASSES = "package_deb".  I see the perl package plus 43
> > > > perl-module packages.  Are you sure that something else in your
> images
> > > > isn't pulling in all of those other perl-module packages?
> > >
> > > It just occurred to me to make sure you are looking in the image
> > > manifest to see which packages are actually installed in your image.
> > > The perl recipe does generate 676 packages (in dunfell) so perhaps you
> > > might be looking at the generated packages rather than the installed
> > > packages??
> > >
> >
> > I encountered a similar problem with package management enabled and rpm
> > as package format, where I also just install rpm for package management
> > and not all dnf stack. I get quite a lot of perl and python packages
> > into the image which are pulled by the rpm package, but they are only
> > needed for things like rpm-build, rpm-sign, etc., not for the bare
> > rpm command, which is the only one I need in the image.
> >
> > So I locally extended the rpm recipe to split those tools into
> rpm-build,
> > rpm-sign and rpm-archive and skip those packages in the image. I should
> > probably send patches for that to oe-core. Is that something that could
> > be accepted?
>
> Not sure they need to go to separate packages but moving those
> three to some kind of "build" package would make a lot of sense
> to me at least.
>
> Cheers,
>
> Richard
>
>

--000000000000d909f005bca33012
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Steve, you&#39;re right.=C2=A0 My <a href=3D"http://i=
mage.bb">image.bb</a> is adding various lmsensors packages to the IMAGE_INS=
TALL, some of which depend on perl-modules.=C2=A0=C2=A0 perl-modules seems =
to be the big monster, not perl.=C2=A0 We need lmsensors.=C2=A0 So I guess =
my question is really, how can I (or can I at all) reduce the footprint of =
perl-modules?=C2=A0 perl-modules doesn&#39;t have any Depends, rather it ha=
s a long list (~ 670) of Recommends.=C2=A0 <br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 2, 2021 =
at 1:49 PM Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundat=
ion.org">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">On Tue, 2021-03-02 at 20:42 +000=
0, Diego Santa Cruz via <a href=3D"http://lists.yoctoproject.org" rel=3D"no=
referrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_=
blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.y=
octoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; On<=
br>
&gt; &gt; Behalf Of Steve Sakoman via <a href=3D"http://lists.yoctoproject.=
org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a><br>
&gt; &gt; Sent: 02 March 2021 21:06<br>
&gt; &gt; To: Steve Sakoman &lt;<a href=3D"mailto:steve@sakoman.com" target=
=3D"_blank">steve@sakoman.com</a>&gt;<br>
&gt; &gt; Cc: <a href=3D"mailto:rustyhowell@gmail.com" target=3D"_blank">ru=
styhowell@gmail.com</a>; Yocto (<a href=3D"mailto:yocto@lists.yoctoproject.=
org" target=3D"_blank">yocto@lists.yoctoproject.org</a>)<br>
&gt; &gt; &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_bl=
ank">yocto@lists.yoctoproject.org</a>&gt;<br>
&gt; &gt; Subject: Re: [yocto] Reducing the perl footprint on my image<br>
&gt; &gt; <br>
&gt; &gt; On Tue, Mar 2, 2021 at 10:01 AM Steve Sakoman via<br>
&gt; &gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" targ=
et=3D"_blank">lists.yoctoproject.org</a> &lt;steve=3D<a href=3D"mailto:sako=
man.com@lists.yoctoproject.org" target=3D"_blank">sakoman.com@lists.yoctopr=
oject.org</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; On Tue, Mar 2, 2021 at 6:26 AM &lt;<a href=3D"mailto:rustyho=
well@gmail.com" target=3D"_blank">rustyhowell@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; I have an image that is using debian package management=
<br>
&gt; &gt; (PACKAGE_CLASSES =3D &quot;package_deb&quot;).=C2=A0 Because apt =
and dpkg require perl,<br>
&gt; &gt; perl is being installed in the image.=C2=A0 =C2=A0No problem.=C2=
=A0 Except that the entire perl<br>
&gt; &gt; stack is 669 packages.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; I just took a look at the manifest for one of my images that=
 includes<br>
&gt; &gt; &gt; PACKAGE_CLASSES =3D &quot;package_deb&quot;.=C2=A0 I see the=
 perl package plus 43<br>
&gt; &gt; &gt; perl-module packages.=C2=A0 Are you sure that something else=
 in your images<br>
&gt; &gt; &gt; isn&#39;t pulling in all of those other perl-module packages=
?<br>
&gt; &gt; <br>
&gt; &gt; It just occurred to me to make sure you are looking in the image<=
br>
&gt; &gt; manifest to see which packages are actually installed in your ima=
ge.<br>
&gt; &gt; The perl recipe does generate 676 packages (in dunfell) so perhap=
s you<br>
&gt; &gt; might be looking at the generated packages rather than the instal=
led<br>
&gt; &gt; packages??<br>
&gt; &gt; <br>
&gt; <br>
&gt; I encountered a similar problem with package management enabled and rp=
m=C2=A0<br>
&gt; as package format, where I also just install rpm for package managemen=
t=C2=A0<br>
&gt; and not all dnf stack. I get quite a lot of perl and python packages=
=C2=A0<br>
&gt; into the image which are pulled by the rpm package, but they are only<=
br>
&gt; needed for things like rpm-build, rpm-sign, etc., not for the bare=C2=
=A0<br>
&gt; rpm command, which is the only one I need in the image.<br>
&gt; <br>
&gt; So I locally extended the rpm recipe to split those tools into rpm-bui=
ld,=C2=A0<br>
&gt; rpm-sign and rpm-archive and skip those packages in the image. I shoul=
d=C2=A0<br>
&gt; probably send patches for that to oe-core. Is that something that coul=
d<br>
&gt; be accepted?<br>
<br>
Not sure they need to go to separate packages but moving those=C2=A0<br>
three to some kind of &quot;build&quot; package would make a lot of sense<b=
r>
to me at least.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--000000000000d909f005bca33012--
