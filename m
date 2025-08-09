Return-Path: <osama.abdelkader@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E84C87FCB
	for <webhook@archiver.kernel.org>; Sat,  9 Aug 2025 21:17:13 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web10.14613.1754774232298204157
 for <yocto@lists.yoctoproject.org>;
 Sat, 09 Aug 2025 14:17:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mBWhvN/G;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: osama.abdelkader@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b4245235a77so2690683a12.1
        for <yocto@lists.yoctoproject.org>; Sat, 09 Aug 2025 14:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754774231; x=1755379031; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=L7PZY5INNEYcWj/eyVn6gcuhGZ/w0TgW308Q9U4yqE8=;
        b=mBWhvN/Gqe/8hkO5YpCCx6oegIb36ftgh6YlGQm9QBV0Mjkhw5pf8M/NLwOro9cNAd
         RKqQoJ1iNwJMWjhZVNuI3fYgfRWeHpqINzTaOlJmk4b/jchf3ZU0i1TE+Ur550JwVIeK
         AVsNEvIeLvUgxXvRfocn2TUFIE2MTcvZaV+5YIduFmTHHICsS1o21kK6b3sQ7yMZ8hv9
         NiREin0Cg4KnOhIS9dWG8cBrfoojcfYGPbEgDevQVvHZI79D+or1JYgZ2XBYKnKq51Vh
         jCYGFH1nOtR56PseBa8hZkbgAiG+v233oy44Ijvz4zNlCxuDetDMXp2DJeC5ivfDqXQ3
         py3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754774231; x=1755379031;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L7PZY5INNEYcWj/eyVn6gcuhGZ/w0TgW308Q9U4yqE8=;
        b=ExPeMyIhsF1Df2Vah8miCV8mq5af5V5fnjRJzEk8jS9bJ+WLw7e3rIo+VKQ3yCDhvy
         hm9jtCGKQ6SA/8fotyMwCntE5h9LXXQfr4JJhYx8Pu85iyNbDBlxton+v2BO1bI70NQ7
         bwwxTqo34OT7i9cf1mvNGaAQ1ObdSt5K+RNyRESdOxa17a6G27I9TcV06r8rIg4iU3YO
         1yek6L3bjxg/qEO9Qpdez5NyuN/9G5lvp1u1G0myP6pIsdkIgwgjwl+M9i2KzB4rosFF
         CPyRBPd2pdlGQ4ASnF+/llk4hyWCGQR2eanNe3pt7THV5tZWk1eY1bHuyUHLtGKR04bk
         +BdQ==
X-Gm-Message-State: AOJu0Yw0LQMeRaRSQ4vMjDogl7fMyOlq6cIxT7f6AURhszEgLEDOs+qv
	m+afL8P8m31No8/v14M8rLTv9AYYqS9PrzegFc2TB7HA/GAwB8nLBJQgly7CvS8G2IxfScBJ2y2
	zPlZqzroVdOPOhBpsRwmPGqrfK6XA6YM=
X-Gm-Gg: ASbGncuCcbTXbWyT0mZdVbZM4eCAJh1lQkLqdrdYlqWJWcDQIITPPn9pBALZN/0fssH
	l+wTzWqIncpCM5WvNV4Fj0bbY1YZxYZFHqFBSsF4+Bf3AYLva+Gi7p5F03KMCTZWMF4ZFK7PMSm
	2BxxsPsrqKvpJ5ZwnbaXEQ+TXJjCshEeY89DPbjz9u7vrM24V/GPZsjH70yNvaRkc5qdWp2dkTW
	BhCuRZK2rCf/PxG5nkFr3mHNVRKv9P2ybvz65o=
X-Google-Smtp-Source: AGHT+IHZdMWRzRZXPZX+vKZx4qxXFs+CmM8ijxvMUQchLcExzle2S0QVoCiMCoK3Tsc3kZRLIPLQrxMaHlFjk8QGbHo=
X-Received: by 2002:a17:903:983:b0:240:80f:228e with SMTP id
 d9443c01a7336-242c22621f3mr113353335ad.52.1754774231444; Sat, 09 Aug 2025
 14:17:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250807224406.2384082-1-osama.abdelkader@gmail.com> <CAMKF1soY8-4TxLmBD5UDa=iSPBzfcjWAzY++CxumBznf2dRVqQ@mail.gmail.com>
In-Reply-To: <CAMKF1soY8-4TxLmBD5UDa=iSPBzfcjWAzY++CxumBznf2dRVqQ@mail.gmail.com>
From: Osama Ahmed <osama.abdelkader@gmail.com>
Date: Sat, 9 Aug 2025 23:17:00 +0200
X-Gm-Features: Ac12FXzblzZPTMYxNEqPN0UeDf16cpvXsyrwnOB8cMMRO045-kvfCjOxCXox_DY
Message-ID: <CAEWn9yuWMmxr7G8-So3YuK2oKK9g6Es=oDHbRQMWvWgejS4YuA@mail.gmail.com>
Subject: Re: [PATCH] go-cross-canadian: fix binaries install and GOARCH
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b9f43f063bf536fa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Aug 2025 21:17:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65744

--000000000000b9f43f063bf536fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the review, I replaced it with HOST_GOARCH:

https://patchwork.yoctoproject.org/project/oe-core/patch/20250808161533.137=
52-1-osama.abdelkader@gmail.com/

On Fri, Aug 8, 2025 at 2:50=E2=80=AFAM Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Aug 7, 2025 at 3:44=E2=80=AFPM Osama Abdelkader
> <osama.abdelkader@gmail.com> wrote:
> >
> > Canadian cross builds produce host-side binaries (x86_64), but
> > GOARCH=3Darm was leaking in from go-${PV}.inc/go-common.inc, causing
> > arch mismatch and package QA errors. Explicitly set GOARCH=3Damd64 to
> > ensure the correct host architecture is used.
> >
> > Also fix do_install to correctly install all binaries from
> > ${GO_BUILD_BINDIR} by using 'find -type f' to avoid issues when the
> > directory contains subdirectories (e.g. "linux_arm").
> >
> > Signed-off-by: Osama Abdelkader <osama.abdelkader@gmail.com>
> > ---
> >  meta/recipes-devtools/go/go-cross-canadian.inc | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/meta/recipes-devtools/go/go-cross-canadian.inc
> b/meta/recipes-devtools/go/go-cross-canadian.inc
> > index 39330fc98b..14f0100bdc 100644
> > --- a/meta/recipes-devtools/go/go-cross-canadian.inc
> > +++ b/meta/recipes-devtools/go/go-cross-canadian.inc
> > @@ -5,6 +5,8 @@ DEPENDS =3D "go-native virtual/${HOST_PREFIX}go
> virtual/nativesdk-${HOST_PREFIX}go
> >             virtual/nativesdk-compilerlibs"
> >  PN =3D "go-cross-canadian-${TRANSLATED_TARGET_ARCH}"
> >
> > +GOARCH =3D "amd64"
>
> We also have arm64 build hosts these days. Will it work on those too ?
>
> > +
> >  # it uses gcc on build machine during go-cross-canadian bootstrap, but
> >  # the gcc version may be old and not support option '-fmacro-prefix-ma=
p'
> >  # which is one of default values of DEBUG_PREFIX_MAP
> > @@ -51,7 +53,7 @@ do_install() {
> >         install -d ${D}${libdir}/go/pkg/tool
> >         cp --preserve=3Dmode,timestamps -R ${B}/pkg/tool/${HOST_GOTUPLE=
}
> ${D}${libdir}/go/pkg/tool/
> >         install -d ${D}${bindir} ${D}${libdir}/go/bin
> > -       for f in ${B}/${GO_BUILD_BINDIR}/*
> > +       for f in $(find ${B}/${GO_BUILD_BINDIR} -type f)
> >         do
> >                 base=3D`basename $f`
> >                 install -m755 $f ${D}${libdir}/go/bin
> > --
> > 2.43.0
> >
>

--000000000000b9f43f063bf536fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks for the review, I replaced it with=
 HOST_GOARCH:<br><br><a href=3D"https://patchwork.yoctoproject.org/project/=
oe-core/patch/20250808161533.13752-1-osama.abdelkader@gmail.com/">https://p=
atchwork.yoctoproject.org/project/oe-core/patch/20250808161533.13752-1-osam=
a.abdelkader@gmail.com/</a></div></div><br><div class=3D"gmail_quote gmail_=
quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 8, 2025 =
at 2:50=E2=80=AFAM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.k=
hem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">On Thu, Aug 7, 2025 at 3:44=E2=80=AFPM Osama Abdelkader<br>
&lt;<a href=3D"mailto:osama.abdelkader@gmail.com" target=3D"_blank">osama.a=
bdelkader@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Canadian cross builds produce host-side binaries (x86_64), but<br>
&gt; GOARCH=3Darm was leaking in from go-${PV}.inc/go-common.inc, causing<b=
r>
&gt; arch mismatch and package QA errors. Explicitly set GOARCH=3Damd64 to<=
br>
&gt; ensure the correct host architecture is used.<br>
&gt;<br>
&gt; Also fix do_install to correctly install all binaries from<br>
&gt; ${GO_BUILD_BINDIR} by using &#39;find -type f&#39; to avoid issues whe=
n the<br>
&gt; directory contains subdirectories (e.g. &quot;linux_arm&quot;).<br>
&gt;<br>
&gt; Signed-off-by: Osama Abdelkader &lt;<a href=3D"mailto:osama.abdelkader=
@gmail.com" target=3D"_blank">osama.abdelkader@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 meta/recipes-devtools/go/go-cross-canadian.inc | 4 +++-<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/meta/recipes-devtools/go/go-cross-canadian.inc b/meta/rec=
ipes-devtools/go/go-cross-canadian.inc<br>
&gt; index 39330fc98b..14f0100bdc 100644<br>
&gt; --- a/meta/recipes-devtools/go/go-cross-canadian.inc<br>
&gt; +++ b/meta/recipes-devtools/go/go-cross-canadian.inc<br>
&gt; @@ -5,6 +5,8 @@ DEPENDS =3D &quot;go-native virtual/${HOST_PREFIX}go v=
irtual/nativesdk-${HOST_PREFIX}go<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0virtual/nativesdk-compi=
lerlibs&quot;<br>
&gt;=C2=A0 PN =3D &quot;go-cross-canadian-${TRANSLATED_TARGET_ARCH}&quot;<b=
r>
&gt;<br>
&gt; +GOARCH =3D &quot;amd64&quot;<br>
<br>
We also have arm64 build hosts these days. Will it work on those too ?<br>
<br>
&gt; +<br>
&gt;=C2=A0 # it uses gcc on build machine during go-cross-canadian bootstra=
p, but<br>
&gt;=C2=A0 # the gcc version may be old and not support option &#39;-fmacro=
-prefix-map&#39;<br>
&gt;=C2=A0 # which is one of default values of DEBUG_PREFIX_MAP<br>
&gt; @@ -51,7 +53,7 @@ do_install() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}${libdir}/go/pkg/tool<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cp --preserve=3Dmode,timestamps -R ${=
B}/pkg/tool/${HOST_GOTUPLE} ${D}${libdir}/go/pkg/tool/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}${bindir} ${D}${libdir=
}/go/bin<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0for f in ${B}/${GO_BUILD_BINDIR}/*<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0for f in $(find ${B}/${GO_BUILD_BINDIR} -t=
ype f)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0base=3D`b=
asename $f`<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -=
m755 $f ${D}${libdir}/go/bin<br>
&gt; --<br>
&gt; 2.43.0<br>
&gt;<br>
</blockquote></div>

--000000000000b9f43f063bf536fa--

