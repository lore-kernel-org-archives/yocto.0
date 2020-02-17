Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.8444.1581946217992966941
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 05:30:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@geontech-com.20150623.gappssmtp.com header.s=20150623 header.b=qVeVNVfl;
 spf=pass (domain: geontech.com, ip: 209.85.219.54, mailfrom: btgoodwin@geontech.com)
Received: by mail-qv1-f54.google.com with SMTP id dc14so7551628qvb.9
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2020 05:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=geontech-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1GD9Bsq8/FVM302S5t03ceu1/r/Li2VVH7CwqQwq/Mc=;
        b=qVeVNVflV1XmV3CXcSllAJj1jUM95pWkjX+VLWFGyB8+WSIQ2+6yQPyG4mCE2bHZu9
         3W3TZCcIYzU+g/bqSQgaJX2JthXvOAXZObEphstaIVTEuBtPmQ+8/4S+VzuhJsqq4dma
         duHHPOhX5GJn393W7cEzpbSVIZ6+F29M92LuxXpS2itKSOy7mnKF50dra6yFgKLYejYp
         gkm6iZAlvqjThb7Kr/i3qJJD2K0mVwN1f+DSqMuUUPWQ7jjJtRf8+mR5xftTDZhQY4/C
         mbonShdOHLybVxZr4ZqcOeH7x8MQoLM8PEdRmkN1Gzl3kQmw8W7v7zSe2B51EhS9ojvA
         KtGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1GD9Bsq8/FVM302S5t03ceu1/r/Li2VVH7CwqQwq/Mc=;
        b=ce39rjNLVTz8VfVmuZQT39hTp63B2gTD3fahlONBMYeKPPWto0D+lotKt5AxWTSJai
         3Z34aqvyP8Xb1THXcqh5gFAE1wT2gCGR2Wg3aFPMDWARsEkx2jWzpBlPTvawxIeG1L8m
         fXyH2qZtvWLkEBL8igZVWzpWMabNK/61leOsNg9lzlT1lGcs0wPCPs6ZzUvK1GJaWBWg
         vqjyfRZ+Q5G0z4P8C6YuPoCr/tQ7KB/5S+yL5EXsOSq0BwOSh2tiwNIO19OLSyaqz7vn
         pU9SkEZ8dgvG258PNAxnh3IHFk6voJeLSLT+Bp3++dCjaDx9eKbKSezuLIQDHaP58AFm
         IneQ==
X-Gm-Message-State: APjAAAWdfsyNhwGMrMU4BI3+d21opNDW7BoUVSRe5AyvUnEfhWqvi35q
	ZeaEPaJkO3Hz89h9tdTLCchWy18OgIOJfZva4JSmyzR1pTk=
X-Google-Smtp-Source: APXvYqxbW0GENwU/FmDWPtK8SADGUwBQ7izWd7hhJ8GvAhdndZNrHGjaC4pz84nSUCTGBSKDfL5Fj571plPAfCGt13o=
X-Received: by 2002:ad4:4c08:: with SMTP id bz8mr12617858qvb.241.1581946216957;
 Mon, 17 Feb 2020 05:30:16 -0800 (PST)
MIME-Version: 1.0
References: <5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org>
 <20200217124357.odaw6g5qpfkt2oxm@qschulz> <alpine.LFD.2.21.2002170745390.2321912@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2002170745390.2321912@localhost.localdomain>
From: "Thomas Goodwin" <btgoodwin@geontech.com>
Date: Mon, 17 Feb 2020 08:30:05 -0500
Message-ID: <CABudRdxozDUKayr23Zg4z4W0JLjN_j_rqy5t2z_j55WwpLaz6Q@mail.gmail.com>
Subject: Re: [yocto] Creating a build system which can scale. #yocto
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, philip.lewis@domino-uk.com, 
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000050eee9059ec58e8a"

--00000000000050eee9059ec58e8a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Since Docker was mentioned, I use the community's CROPS containers via
Docker in GitLab CI on a shared build server, providing the builders'
downloads and sstate caches to the team to accelerate their own builds
(these paths are volume-mounted to the runners).  One of the caveats to
this approach is that if you use the containers in a shared build host, yo=
u
should limit the individual builder's bitbake environment in terms of
parallelization (PARALLEL_MAKE and the like).  This will prevent a single
containers from causing one another to fail by not sharing effectively
(yes, you can set GitLab docker runner limits but those limits are
invisible to the container).  The good news is that these variables are in
the white list, so you do not have to set them in a conf file; exporting
them in the build environment is enough, meaning your build runner can be
tuned according to that build host executing the runner.

I based my tuning on this person work,
https://elinux.org/images/d/d4/Goulart.pdf, a presentation from a few year=
s
back at an ELC event.  It contains a significant amount of information
about project flow and other things that you might also find interesting.

Cheers,

Thomas

On Mon, Feb 17, 2020 at 7:52 AM rpjday@crashcourse.ca <rpjday@crashcourse.=
ca>
wrote:

> On Mon, 17 Feb 2020, Quentin Schulz wrote:
>
> > Hi Philip,
> >
> > *Very* quick and vague answer as it's not something I'm doing right no=
w.
> > I can only give hints to where to look next.
> >
> > On Mon, Feb 17, 2020 at 04:27:17AM -0800, philip.lewis@domino-uk.com
> wrote:
> > > Hi,
> > >
> > > I'm looking for some advice about the best way to implement a
> > > build environment in the cloud for multiple dev teams which will
> > > scale as the number of dev teams grow.
> > >
> > > Our devs are saying:
> > >
> > > *What do we want?*
> > >
> > > To scale our server-based build infrastructure, so that engineers
> > > can build branches using the same infrastructure that produces a
> > > releasable artefact, before pushing it into develop. As much
> > > automation of this as possible is desired..
> > >
> > > *Blocker* : Can=E2=80=99t just scale current system =E2=80=93 can=E2=
=
=80=99t keep throwing
> > > more hardware at it, particularly storage. The main contributor to
> > > storage requirements is using a local cache in each build
> > > workspace and there will be one workspace for each branch, per
> > > Jenkins agent: 3 teams x 10 branches per team x 70Gb per
> > > branch/workspace x number of build agents (let say 5) =3D 10Tb. As
> > > you can see this doesn=E2=80=99t scale well as we add branches, team=
s or
> > > build agents. Most of this 10Tb is the caches in each workspace,
> > > where most of the contents of each individual cache is identical.
> > >
> >
> > Have you had a look at INHERIT +=3D "rm_work"? Should get rid of most =
of
> > the space in the work directory (we use this one, tremendous benefit i=
n
> > terms of storage space).
> >
> > c.f.
> >
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#r=
ef-classes-rm-work
>
>   in addition, you can always override that build-wide setting with
> RM_WORK_EXCLUDE if you want to keep generated work from a small set of
> recipes for debugging.
>
> rday
>=20
>

--00000000000050eee9059ec58e8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Since Docker was mentioned, I use the com=
munity&#39;s CROPS containers via Docker in GitLab CI on a shared build ser=
ver, providing the builders&#39; downloads and sstate caches to the team to=
 accelerate their own builds (these paths are volume-mounted to the runners=
).=C2=A0 One of the caveats to this approach is that if you use the contain=
ers in a shared build host, you should limit the individual builder&#39;s b=
itbake environment in terms of parallelization (PARALLEL_MAKE and the like)=
.=C2=A0 This will prevent a single containers from causing one another to f=
ail by not sharing effectively (yes, you can set GitLab docker runner limit=
s but those limits are invisible to the container).=C2=A0 The good news is =
that these variables are in the white list, so you do not have to set them =
in a conf file; exporting them in the build environment is enough, meaning =
your build runner can be tuned according to that build host executing the r=
unner.<input name=3D"virtru-metadata" type=3D"hidden" value=3D"{&quot;email=
-policy&quot;:{&quot;state&quot;:&quot;closed&quot;,&quot;expirationUnit&qu=
ot;:&quot;days&quot;,&quot;disableCopyPaste&quot;:false,&quot;disablePrint&=
quot;:false,&quot;disableForwarding&quot;:false,&quot;enableNoauth&quot;:fa=
lse,&quot;persistentProtection&quot;:false,&quot;expandedWatermarking&quot;=
:false,&quot;expires&quot;:false,&quot;isManaged&quot;:false},&quot;attachm=
ents&quot;:{},&quot;compose-id&quot;:&quot;1&quot;,&quot;compose-window&quo=
t;:{&quot;secure&quot;:false}}"><div><br></div><div>I based my tuning on th=
is person work,=C2=A0<a href=3D"https://elinux.org/images/d/d4/Goulart.pdf"=
>https://elinux.org/images/d/d4/Goulart.pdf</a>, a presentation from a few =
years back at an ELC event.=C2=A0 It contains a significant amount of infor=
mation about project flow and other things that you might also find interes=
ting.</div><div><br></div><div>Cheers,</div><div><br></div><div>Thomas</div=
></div><br><div class=3D"gmail_quote" style=3D""><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Feb 17, 2020 at 7:52 AM <a href=3D"mailto:rpjday@crashc=
ourse.ca">rpjday@crashcourse.ca</a> &lt;<a href=3D"mailto:rpjday@crashcours=
e.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On Mon, 17 Feb 2020, Quentin Schulz wrote:<br>
<br>
&gt; Hi Philip,<br>
&gt;<br>
&gt; *Very* quick and vague answer as it&#39;s not something I&#39;m doing=
 right now.<br>
&gt; I can only give hints to where to look next.<br>
&gt;<br>
&gt; On Mon, Feb 17, 2020 at 04:27:17AM -0800, <a href=3D"mailto:philip.le=
wis@domino-uk.com" target=3D"_blank">philip.lewis@domino-uk.com</a> wrote:<=
br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m looking for some advice about the best way to implement =
a<br>
&gt; &gt; build environment in the cloud for multiple dev teams which will=
<br>
&gt; &gt; scale as the number of dev teams grow.<br>
&gt; &gt;<br>
&gt; &gt; Our devs are saying:<br>
&gt; &gt;<br>
&gt; &gt; *What do we want?*<br>
&gt; &gt;<br>
&gt; &gt; To scale our server-based build infrastructure, so that engineer=
s<br>
&gt; &gt; can build branches using the same infrastructure that produces a=
<br>
&gt; &gt; releasable artefact, before pushing it into develop. As much<br>
&gt; &gt; automation of this as possible is desired..<br>
&gt; &gt;<br>
&gt; &gt; *Blocker* : Can=E2=80=99t just scale current system =E2=80=93 ca=
n=E2=80=99t keep throwing<br>
&gt; &gt; more hardware at it, particularly storage. The main contributor =
to<br>
&gt; &gt; storage requirements is using a local cache in each build<br>
&gt; &gt; workspace and there will be one workspace for each branch, per<b=
r>
&gt; &gt; Jenkins agent: 3 teams x 10 branches per team x 70Gb per<br>
&gt; &gt; branch/workspace x number of build agents (let say 5) =3D 10Tb. =
As<br>
&gt; &gt; you can see this doesn=E2=80=99t scale well as we add branches, =
teams or<br>
&gt; &gt; build agents. Most of this 10Tb is the caches in each workspace,=
<br>
&gt; &gt; where most of the contents of each individual cache is identical=
.<br>
&gt; &gt;<br>
&gt;<br>
&gt; Have you had a look at INHERIT +=3D &quot;rm_work&quot;? Should get r=
id of most of<br>
&gt; the space in the work directory (we use this one, tremendous benefit =
in<br>
&gt; terms of storage space).<br>
&gt;<br>
&gt; c.f.<br>
&gt; <a href=3D"https://www.yoctoproject.org/docs/current/mega-manual/mega=
-manual.html#ref-classes-rm-work" rel=3D"noreferrer" target=3D"_blank">http=
s://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref-clas=
ses-rm-work</a><br>
<br>
=C2=A0 in addition, you can always override that build-wide setting with<b=
r>
RM_WORK_EXCLUDE if you want to keep generated work from a small set of<br>
recipes for debugging.<br>
<br>
rday<br>
<br>
</blockquote></div></div>

--00000000000050eee9059ec58e8a--
