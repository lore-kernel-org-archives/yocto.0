Return-Path: <kergoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 173B8C433F5
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 21:22:02 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.4032.1648675320895501421
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 14:22:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mPptP2Ul;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: kergoth@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id bi12so44158097ejb.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 14:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qoE26479Lcx3SZB7I6TFoOCHkt0KmdEJEkHH7I50nFk=;
        b=mPptP2UlwO6Onm1I0c9+JQCSLctXU2fILR2xXrbqcCB5pqJIOwLE/AorikxOMXoPt2
         KaYgIOLWwMc2zMmxQNAgS19zseBJ9WWqZMrf6G4eIESnWsxdGN+ZK+R7bSD+Vfi0ZbRu
         VUOn3YQqzcLzs6ZJZ7PZOkt7hrhWHevnXUMLViZG9grYGASr5e6wYJDe2Gs0XBcxWTqg
         hwbl6xCHsJJuIVBKZiD0QizcJ6NalWf0/FVtUd8Vegt4V5cvTJvRQy33xKGRudHJzu+v
         vMWUUAcR1CCrG3cu4L+ediomI/H5cnEz8Cl3xeO9RhwPwDQ94hlG3kiLbDTmgnzZSR4/
         Kr+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qoE26479Lcx3SZB7I6TFoOCHkt0KmdEJEkHH7I50nFk=;
        b=CgF6r15sD8/K8g0KipjwrqxfSiKCLVah5VJwe0tFUXogXTVpWTeNK81//cvZWFPMGD
         UsabHDxAezFvST366UF3VEd7sHPqyTQQwPf1gl0hq1Zo2FCV1gfkCPml46whpUkPnVjF
         BobgNOw8ddsaFvSUsuzSwnWU/fV4arBqmZrGzYUrHHTqvabnifSipG5ez/Dovw5UN/ft
         riuh4lP1D9thbkZgEOIy12IDzyIaNn579EOu9ZARcSj0S3/Elax465jQbD2aKkESEFaK
         l04X+hTMr2Terpr5VbQ2M2vQ3KmIuQAHuvJLNWspN+aIR50LFgBIAc50OlNQBs2u1RB6
         Zd4g==
X-Gm-Message-State: AOAM533zsDqeI7mtx3F4yJpGLvpNw7j4AihRl0C1aUo6jRXkmggN0i22
	l/bteFOlcR3Y8rOrENTSVGytI/8ri5sGQaZdjbo=
X-Google-Smtp-Source: 
 ABdhPJxsKtPuCosfk8+Hpdoy2O8jGl4VpiEoG7qVyqqPQuuOxIow+iXsUQmijV3Y5pOiL3DaPsR8hW7B4IXzROYBMEU=
X-Received: by 2002:a17:906:478e:b0:6db:7c67:c7e0 with SMTP id
 cw14-20020a170906478e00b006db7c67c7e0mr1715112ejc.335.1648675319220; Wed, 30
 Mar 2022 14:21:59 -0700 (PDT)
MIME-Version: 1.0
References: <16E122970083F378.12707@lists.yoctoproject.org>
 <9bfd8e454ae64b4eab8baf1a35f144d2721ba187.camel@linuxfoundation.org>
 <CAAnfSTvsKf6DBeWcYLXkdEfRmN9Aa23QD-qqC3zaj6==q24SmA@mail.gmail.com>
 <688f29903f6c8321a3a235f3bf9b1bd66c20e823.camel@linuxfoundation.org>
 <CAMKF1sqcBOCL=v4hOLhNb=knt_w4yXxq5fps7B-_evH+pBAG5w@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sqcBOCL=v4hOLhNb=knt_w4yXxq5fps7B-_evH+pBAG5w@mail.gmail.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Wed, 30 Mar 2022 14:21:48 -0700
Message-ID: 
 <CABcZANmUcXaBkD9qXb8WZ4yPgu50Nkj70DydrtgsH+0CppkDbg@mail.gmail.com>
Subject: Re: [yocto] SCM usage in source urls and bandwidth
To: Khem Raj <raj.khem@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Ross Burton <ross@burtonini.com>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000c08bca05db76226c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 21:22:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56608

--000000000000c08bca05db76226c
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 30, 2022 at 10:24 AM Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Mar 30, 2022 at 4:29 AM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> > On Wed, 2022-03-30 at 12:18 +0100, Ross Burton wrote:
> > > On Wed, 30 Mar 2022 at 12:10, Richard Purdie
> > > <richard.purdie@linuxfoundation.org> wrote:
> > > > f) Switch the problematic recipes to use shallow clones with
> something like:
> > > >
> > > > BB_GIT_SHALLOW:pn-binutils = "1"
> > > > BB_GIT_SHALLOW:pn-binutils-cross-${TARGET_ARCH} = "1"
> > > > BB_GIT_SHALLOW:pn-binutils-cross-canadian-${TRANSLATED_TARGET_ARCH}
> = "1"
> > > > BB_GIT_SHALLOW:pn-binutils-cross-testsuite = "1"
> > > > BB_GIT_SHALLOW:pn-binutils-crosssdk-${SDK_SYS} = "1"
> > > > BB_GIT_SHALLOW:pn-glibc = "1"
> > > >
> > > > The challenge here is that in order to be effective, there needs to
> be a
> > > > PREMIRROR setup with the shallow tarballs on it. This means we
> couldn't do e)
> > > > above and have this have much effect unless we craft some very
> specific
> > > > PREMIRROR entries too.
> > >
> > > Even without premirrors this is a lot faster for glibc:
> > >
> > > $ time git clone git://sourceware.org/git/glibc.git
> > > Cloning into 'glibc'...
> > > remote: Enumerating objects: 6956, done.
> > > remote: Counting objects: 100% (6956/6956), done.
> > > remote: Compressing objects: 100% (2938/2938), done.
> > > remote: Total 670093 (delta 5328), reused 4750 (delta 3932),
> pack-reused 663137
> > > Receiving objects: 100% (670093/670093), 205.19 MiB | 16.39 MiB/s,
> done.
> > > Resolving deltas: 100% (573265/573265), done.
> > > Updating files: 100% (19011/19011), done.
> > >
> > > real 1m56.255s
> > >
> > > $ time git clone git://sourceware.org/git/glibc.git --depth 1
> > > Cloning into 'glibc'...
> > > remote: Enumerating objects: 18809, done.
> > > remote: Counting objects: 100% (18809/18809), done.
> > > remote: Compressing objects: 100% (9704/9704), done.
> > > remote: Total 18809 (delta 8812), reused 12185 (delta 7968),
> pack-reused 0
> > > Receiving objects: 100% (18809/18809), 41.79 MiB | 11.96 MiB/s, done.
> > > Resolving deltas: 100% (8812/8812), done.
> > > Updating files: 100% (19011/19011), done.
> > >
> > > real 0m8.701s
> > >
> > > A full clone fetches 200MB and takes 2 minutes (a lot of that is
> > > actually resolving the deltas, not the fetch).  A shallow clone of the
> > > current HEAD fetches 40MB and is done in 8 seconds.
> > >
> > > Why would we need a premirror?
> >
> > The code doesn't do "--depth=1".
> >
> >
> https://git.yoctoproject.org/poky/commit/?id=27d56982c7ba05e86a100b0cca2411ee5ac7a85e
> >
> > """
> > This implements support for shallow mirror tarballs, not shallow clones.
> > Supporting shallow clones directly is not really doable for us, as we'd
> need
> > to hardcode the depth between branch HEAD and the SRCREV, and that depth
> would
> > change as the branch is updated.
> > """
> >
> > Put another way, you didn't specify a revision in your clone above and
> if you
> > try, it becomes rather tricky.
> >
> > To make this work we therefore need a mirror with the shallow tarballs
> on it.
> >
> > Just for info, the binutils mirror tarball is ~1.3GB, the shallow
> tarball is
> > 65MB.
>
> right, I think shallow clone should be default IMO for all git fetcher
> tarballs


We've been using shallow git tarballs for all recipes for years at Mentor,
definitely speeds up fetches from local mirrors and reduces how much we
need to ship to customers to allow them to use BB_NO_NETWORK out of the
box.
-- 
Christopher Larson
chris_larson@mentor.com, chris.larson@siemens.com, kergoth@gmail.com
Principal Software Engineer, Embedded Linux Solutions, Siemens Digital
Industries Software

--000000000000c08bca05db76226c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 30, 2022 at 10:24 AM Khem=
 Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, Ma=
r 30, 2022 at 4:29 AM Richard Purdie<br>
&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank"=
>richard.purdie@linuxfoundation.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, 2022-03-30 at 12:18 +0100, Ross Burton wrote:<br>
&gt; &gt; On Wed, 30 Mar 2022 at 12:10, Richard Purdie<br>
&gt; &gt; &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=
=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br>
&gt; &gt; &gt; f) Switch the problematic recipes to use shallow clones with=
 something like:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; BB_GIT_SHALLOW:pn-binutils =3D &quot;1&quot;<br>
&gt; &gt; &gt; BB_GIT_SHALLOW:pn-binutils-cross-${TARGET_ARCH} =3D &quot;1&=
quot;<br>
&gt; &gt; &gt; BB_GIT_SHALLOW:pn-binutils-cross-canadian-${TRANSLATED_TARGE=
T_ARCH} =3D &quot;1&quot;<br>
&gt; &gt; &gt; BB_GIT_SHALLOW:pn-binutils-cross-testsuite =3D &quot;1&quot;=
<br>
&gt; &gt; &gt; BB_GIT_SHALLOW:pn-binutils-crosssdk-${SDK_SYS} =3D &quot;1&q=
uot;<br>
&gt; &gt; &gt; BB_GIT_SHALLOW:pn-glibc =3D &quot;1&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The challenge here is that in order to be effective, there n=
eeds to be a<br>
&gt; &gt; &gt; PREMIRROR setup with the shallow tarballs on it. This means =
we couldn&#39;t do e)<br>
&gt; &gt; &gt; above and have this have much effect unless we craft some ve=
ry specific<br>
&gt; &gt; &gt; PREMIRROR entries too.<br>
&gt; &gt;<br>
&gt; &gt; Even without premirrors this is a lot faster for glibc:<br>
&gt; &gt;<br>
&gt; &gt; $ time git clone git://<a href=3D"http://sourceware.org/git/glibc=
.git" rel=3D"noreferrer" target=3D"_blank">sourceware.org/git/glibc.git</a>=
<br>
&gt; &gt; Cloning into &#39;glibc&#39;...<br>
&gt; &gt; remote: Enumerating objects: 6956, done.<br>
&gt; &gt; remote: Counting objects: 100% (6956/6956), done.<br>
&gt; &gt; remote: Compressing objects: 100% (2938/2938), done.<br>
&gt; &gt; remote: Total 670093 (delta 5328), reused 4750 (delta 3932), pack=
-reused 663137<br>
&gt; &gt; Receiving objects: 100% (670093/670093), 205.19 MiB | 16.39 MiB/s=
, done.<br>
&gt; &gt; Resolving deltas: 100% (573265/573265), done.<br>
&gt; &gt; Updating files: 100% (19011/19011), done.<br>
&gt; &gt;<br>
&gt; &gt; real 1m56.255s<br>
&gt; &gt;<br>
&gt; &gt; $ time git clone git://<a href=3D"http://sourceware.org/git/glibc=
.git" rel=3D"noreferrer" target=3D"_blank">sourceware.org/git/glibc.git</a>=
 --depth 1<br>
&gt; &gt; Cloning into &#39;glibc&#39;...<br>
&gt; &gt; remote: Enumerating objects: 18809, done.<br>
&gt; &gt; remote: Counting objects: 100% (18809/18809), done.<br>
&gt; &gt; remote: Compressing objects: 100% (9704/9704), done.<br>
&gt; &gt; remote: Total 18809 (delta 8812), reused 12185 (delta 7968), pack=
-reused 0<br>
&gt; &gt; Receiving objects: 100% (18809/18809), 41.79 MiB | 11.96 MiB/s, d=
one.<br>
&gt; &gt; Resolving deltas: 100% (8812/8812), done.<br>
&gt; &gt; Updating files: 100% (19011/19011), done.<br>
&gt; &gt;<br>
&gt; &gt; real 0m8.701s<br>
&gt; &gt;<br>
&gt; &gt; A full clone fetches 200MB and takes 2 minutes (a lot of that is<=
br>
&gt; &gt; actually resolving the deltas, not the fetch).=C2=A0 A shallow cl=
one of the<br>
&gt; &gt; current HEAD fetches 40MB and is done in 8 seconds.<br>
&gt; &gt;<br>
&gt; &gt; Why would we need a premirror?<br>
&gt;<br>
&gt; The code doesn&#39;t do &quot;--depth=3D1&quot;.<br>
&gt;<br>
&gt; <a href=3D"https://git.yoctoproject.org/poky/commit/?id=3D27d56982c7ba=
05e86a100b0cca2411ee5ac7a85e" rel=3D"noreferrer" target=3D"_blank">https://=
git.yoctoproject.org/poky/commit/?id=3D27d56982c7ba05e86a100b0cca2411ee5ac7=
a85e</a><br>
&gt;<br>
&gt; &quot;&quot;&quot;<br>
&gt; This implements support for shallow mirror tarballs, not shallow clone=
s.<br>
&gt; Supporting shallow clones directly is not really doable for us, as we&=
#39;d need<br>
&gt; to hardcode the depth between branch HEAD and the SRCREV, and that dep=
th would<br>
&gt; change as the branch is updated.<br>
&gt; &quot;&quot;&quot;<br>
&gt;<br>
&gt; Put another way, you didn&#39;t specify a revision in your clone above=
 and if you<br>
&gt; try, it becomes rather tricky.<br>
&gt;<br>
&gt; To make this work we therefore need a mirror with the shallow tarballs=
 on it.<br>
&gt;<br>
&gt; Just for info, the binutils mirror tarball is ~1.3GB, the shallow tarb=
all is<br>
&gt; 65MB.<br>
<br>
right, I think shallow clone should be default IMO for all git fetcher tarb=
alls</blockquote><div><br></div><div>We&#39;ve been using shallow git tarba=
lls for all recipes for years at Mentor, definitely speeds up fetches from =
local mirrors and reduces how much we need to ship to customers to allow th=
em to use BB_NO_NETWORK out of the box.=C2=A0</div></div>-- <br><div dir=3D=
"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><font col=
or=3D"#333333">Christopher Larson<br><a>chris_larson@mentor.com</a>,=C2=A0<=
a>chris.larson@siemens.com</a>,=C2=A0<a>kergoth@gmail.com</a><br>Principal =
Software Engineer,=C2=A0Embedded Linux Solutions,=C2=A0Siemens Digital Indu=
stries Software</font><br></div></div></div></div>

--000000000000c08bca05db76226c--

