Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23D7CC25B47
	for <webhook@archiver.kernel.org>; Fri, 27 Oct 2023 11:04:56 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.4261.1698404695378582653
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Oct 2023 04:04:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gumbz9Em;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4083f613272so15918275e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 04:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698404694; x=1699009494; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Qj77uJEokthpxA0cmRoi53sszy+yZAql1bBJKKNWH0Q=;
        b=gumbz9EmuZIM377AjxWaVMWK6ZYGc3fKJayrir7tpNDs+akv1p0JY25KBGKGAOPSGN
         dSubUCa7vIwwHM/Z2bjTCzJQCytcyRTPMEidAq3S8Dl26ShewLfIKIvLc+njVBjX1zKD
         Nl8hH8k5t4JG9qc5l+EaGseklYLemZG67f/Kbx9xmL9mic9Q/VcdBx4U8XT5bVhg1iNh
         3IHc95vxRVTBmecBuRQuEvlOJBQnTSvjmVF62twr+GufAdbUjTQ3aDyipmMmiMNE1EG4
         YJB9HoxaId7fGMRJLD2fLOgBxwSdZKOnh31QnAGNQ5GLwtpXipOic7noh4VEILpODESR
         w47w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698404694; x=1699009494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qj77uJEokthpxA0cmRoi53sszy+yZAql1bBJKKNWH0Q=;
        b=OfD1RCPL/dyza+s2dIJ8FzDCpIi/60D3q3AUmMYCYrcvs3a7ji4WP/S1BuQXI3JrLj
         aZm/SsLvKkvwcPyMfqSG1Frf8KfZuJXHEsE2dGF3A2wFb3SWYAzXO9m9usJfIn9YxJiz
         AhFdO9HIZ93uoEv1tDZLNV9baIWC1/KevlaBo9ywYHsctIfTE8cysLxBNCq6vxDADfsZ
         Bn43VWLxgjyPW3UXh2F6m8vgEnhYa18PnmvHCp91yUxrGkrrSplHOzCrRLMJZVSLLnDA
         8SLVliyxbAshURa3PnUu84zjCBb5E46W511mSAOVxpSAEt7y1bW1WvnaTGnQydI0cRtV
         7hCA==
X-Gm-Message-State: AOJu0YzoFrUa914bh5AxVll9r/+doaECCkvkGpL+I2wj/eO7FAH3zLkn
	KtmI2DGC2UXuEOO2tzF1Kwo+bELpkbIvso8SFro=
X-Google-Smtp-Source: AGHT+IH4JJQmal94x70wbhrvyifhV7xsV4ctfqd4SrNiOZyYm9Ch9XSF+Vuqj6fCuhJ+c97j2699Gojlc54dSD61Xy0=
X-Received: by 2002:adf:ea11:0:b0:329:6d09:61ff with SMTP id
 q17-20020adfea11000000b003296d0961ffmr1664003wrm.62.1698404693530; Fri, 27
 Oct 2023 04:04:53 -0700 (PDT)
MIME-Version: 1.0
References: <20231024110322.1239362-1-richard.purdie@linuxfoundation.org>
 <0752665c-4f37-4229-967f-916ed250c06a@gmail.com> <846ba8b866803339a953054f729071200864f647.camel@linuxfoundation.org>
In-Reply-To: <846ba8b866803339a953054f729071200864f647.camel@linuxfoundation.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 27 Oct 2023 13:04:39 +0200
Message-ID: <CA+chaQfFAWx-f+253TjoduCRTs-t02MHrk-rZ+CGX-mejbSRUg@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH] config.json: Make
 meta-oe source mirror config wider coverage
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org, 
	David Pierret <david.pierret@smile.fr>
Content-Type: multipart/alternative; boundary="000000000000715e190608b0a8d0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 11:04:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61502

--000000000000715e190608b0a8d0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think RUNTIMETARGET is already set correctly when fortran is correctly
enabled as in:
https://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/g=
cc/gcc-runtime.inc#n45

since 2016:
https://git.openembedded.org/openembedded-core/commit/meta/recipes-devtools=
/gcc/gcc-runtime.inc?id=3D80333155db8fa53fb52898c4312daa656de89c3b

On Tue, Oct 24, 2023 at 10:34=E2=80=AFPM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Tue, 2023-10-24 at 10:15 -0700, Khem Raj wrote:
> > On 10/24/23 4:03 AM, Richard Purdie wrote:
> > > Some recipes depend on DISTRO_FEATURES, commercial licensing or
> compiler
> > > config like fortran. Set these things so that we get wider soruce
> mirror
> > > coverage and fewer warnings.
> > >
> > > 'commercial' license usage is ok here since we're not building and th=
en
> > > shipping any binaries or using it, only mirroring the source code.
> > >
> > > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > > ---
> > >   config.json | 6 ++++++
> > >   1 file changed, 6 insertions(+)
> > >
> > > diff --git a/config.json b/config.json
> > > index 0c35632..61cf374 100644
> > > --- a/config.json
> > > +++ b/config.json
> > > @@ -1451,6 +1451,12 @@
> > >                   "${BUILDDIR}/../meta-openembedded/meta-initramfs",
> > >                   "${BUILDDIR}/../meta-openembedded/meta-webserver"
> > >               ],
> > > +            "extravars" : [
> > > +                "LICENSE_FLAGS_ACCEPTED =3D 'commercial'",
> > > +                "DISTRO_FEATURES:append =3D ' pam systemd usrmerge'"=
,
> > > +                "FORTRAN:forcevariable =3D ',fortran'",
> > > +                "RUNTIMETARGET:append:pn-gcc-runtime =3D ' libquadma=
th'"
> >
> > I think RUNTIMETARGET should automatically be appended with libquadmath
> > if FORTRAN is set.
>
> Perhaps but that is a change to work on in OE-Core and isn't going to
> happen overnight or in previous releases.
>
> Improvements welcome there or perhaps a bug to track it at least.
>
> Cheers,
>
> Richard
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61472):
> https://lists.yoctoproject.org/g/yocto/message/61472
> Mute This Topic: https://lists.yoctoproject.org/mt/102155468/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/leave/6691508/3617156/1288174273/x=
yzzy
> [martin.jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000715e190608b0a8d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think RUNTIMETARGET is already set correctly when fortra=
n is correctly enabled as in:<div><a href=3D"https://git.openembedded.org/o=
penembedded-core/tree/meta/recipes-devtools/gcc/gcc-runtime.inc#n45">https:=
//git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/gcc/gcc=
-runtime.inc#n45</a></div><div><br></div><div>since 2016:</div><div><a href=
=3D"https://git.openembedded.org/openembedded-core/commit/meta/recipes-devt=
ools/gcc/gcc-runtime.inc?id=3D80333155db8fa53fb52898c4312daa656de89c3b">htt=
ps://git.openembedded.org/openembedded-core/commit/meta/recipes-devtools/gc=
c/gcc-runtime.inc?id=3D80333155db8fa53fb52898c4312daa656de89c3b</a><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Oct 24, 2023 at 10:34=E2=80=AFPM Richard Purdie &lt;<a href=3D"ma=
ilto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On Tue, 2023-10-24 at 10:15 -0700, Khem Raj wrote:<br>
&gt; On 10/24/23 4:03 AM, Richard Purdie wrote:<br>
&gt; &gt; Some recipes depend on DISTRO_FEATURES, commercial licensing or c=
ompiler<br>
&gt; &gt; config like fortran. Set these things so that we get wider soruce=
 mirror<br>
&gt; &gt; coverage and fewer warnings.<br>
&gt; &gt; <br>
&gt; &gt; &#39;commercial&#39; license usage is ok here since we&#39;re not=
 building and then<br>
&gt; &gt; shipping any binaries or using it, only mirroring the source code=
.<br>
&gt; &gt; <br>
&gt; &gt; Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdi=
e@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.org=
</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 =C2=A0config.json | 6 ++++++<br>
&gt; &gt;=C2=A0 =C2=A01 file changed, 6 insertions(+)<br>
&gt; &gt; <br>
&gt; &gt; diff --git a/config.json b/config.json<br>
&gt; &gt; index 0c35632..61cf374 100644<br>
&gt; &gt; --- a/config.json<br>
&gt; &gt; +++ b/config.json<br>
&gt; &gt; @@ -1451,6 +1451,12 @@<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-initramfs&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-webserver&quot;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;extravars&quot; =
: [<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;LI=
CENSE_FLAGS_ACCEPTED =3D &#39;commercial&#39;&quot;,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;DI=
STRO_FEATURES:append =3D &#39; pam systemd usrmerge&#39;&quot;,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;FO=
RTRAN:forcevariable =3D &#39;,fortran&#39;&quot;,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;RU=
NTIMETARGET:append:pn-gcc-runtime =3D &#39; libquadmath&#39;&quot;<br>
&gt; <br>
&gt; I think RUNTIMETARGET should automatically be appended with libquadmat=
h <br>
&gt; if FORTRAN is set.<br>
<br>
Perhaps but that is a change to work on in OE-Core and isn&#39;t going to<b=
r>
happen overnight or in previous releases.<br>
<br>
Improvements welcome there or perhaps a bug to track it at least.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61472): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61472" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61472</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102155468/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102155468/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/leave/669150=
8/3617156/1288174273/xyzzy" rel=3D"noreferrer" target=3D"_blank">https://li=
sts.yoctoproject.org/g/yocto/leave/6691508/3617156/1288174273/xyzzy</a> [<a=
 href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmai=
l.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000715e190608b0a8d0--

