Return-Path: <arob109@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BB5E810DF
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 02:16:18 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.5827.1695867370717122077
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 19:16:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Yju6iSBS;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: arob109@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2c12fc235fbso143670781fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 19:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695867369; x=1696472169; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FgnrAttvO6pOTqPHUlHnRhI2oA+gvu2pgA0ZlfTcvHc=;
        b=Yju6iSBSU5GTPbJZ8LIuAYUf0Q/KHx+yCiiOSM30hSQghNSRz4xGuJrhZIuLypuhoL
         dguUE3Slod2vj1KsuFK8b2fLliLcEK51gUxBTWt8sHIsIaWEs7UqNi5mEwhKJ2h6ORRE
         sEqXY9DwwV6N5aABgrjOnS9ZqAGUKkf0/u84U3tua55zzth773k3tIRwnCsibLyPrBsh
         3rR5ilYnOcn2KzOpgDo36pu6UjJ3OTfmST8YItZzIMjh3fgVMfINqdE9THLZNvVpR4Qy
         eiIDKb7YcGkn50NwTpDqL7wSdo3NNSSBc+hekQ8vMknpCDn9ZLSrs8LpPN8atH2V5rWp
         /b6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695867369; x=1696472169;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FgnrAttvO6pOTqPHUlHnRhI2oA+gvu2pgA0ZlfTcvHc=;
        b=gpDgIBDo4Qy77IoDZe06MeemhUhNYY2/xwecQoGxJvfeAzwyjmMFZqZz7Km5o8jbec
         fE0RQVUwo3fipMcoEl0SWGkgNeZJwSpDhJcYbjXPrtmGkAV24xUpKcqGKWc8GJ2RW8Lg
         IcHwE3RLkP4SLl6XCaMVi9hob3KMyqHSKy+mjM2Vga8AezlTLyvAk2ongQRg9jrJz45w
         Zqub04p/jqgGByKoo2WGQTORwNmmQsvMzzQNzl3IGTzho0cHflznBRwfrwJT5EOhDR3h
         Om72/2BQ9eZXXIc3hIhh81WqrdBNqZGN6eF5TpvVsgAuYCYMudGK4lm9Kxh51r6dn0nq
         ZcBQ==
X-Gm-Message-State: AOJu0Yxd0vexFbh2zIIq2YQrddGZGHGCuun4EEusak2piI25ET/0jLzN
	LZNxVLpXhieA5VP7MOKFZ0MfvpuxMO/YCrLe25E=
X-Google-Smtp-Source: AGHT+IFSiyr4H9JwF/Y00TeczoJYgvhDQHuQyc6hN1ljcdAMoIEgKDJYqWNY8YC0/dd5BkHJ2dnFmPR5b2j7Cg8k6Ks=
X-Received: by 2002:a2e:9693:0:b0:2bf:f244:f229 with SMTP id
 q19-20020a2e9693000000b002bff244f229mr1705087lji.24.1695867368485; Wed, 27
 Sep 2023 19:16:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:9450:0:b0:2b4:4d54:6326 with HTTP; Wed, 27 Sep 2023
 19:16:07 -0700 (PDT)
In-Reply-To: <257d2db0bbb4f2b10814f068bfa32e3941ae95b2.camel@linuxfoundation.org>
References: <CAPkENw-000rkwb1gBmgVTa1RarUe0yUOwXM_NiXQd7RJ3C53sg@mail.gmail.com>
 <257d2db0bbb4f2b10814f068bfa32e3941ae95b2.camel@linuxfoundation.org>
From: Alex Roberts <arob109@gmail.com>
Date: Wed, 27 Sep 2023 21:16:07 -0500
Message-ID: <CAPkENw9iXw0kOu_x16WbK47=tnXmuHys970HCM2aGO+L=HjHmA@mail.gmail.com>
Subject: Re: Trouble enabling vtable-verify for gcc-cross
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000015b858060661e4af"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 02:16:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61147

--00000000000015b858060661e4af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>If libvtv is a separate library (I've not looked)

It is a separate library whose source is inside the gcc source folder. Much
of the documentation for enabling vtable verify is for compiling gcc from
source outside of Yocto and just references using the flag with ./configure
when building gcc from source.

>  I suspect there are tweaks needed to the gcc-runtime recipe to build it

I put =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D in the gcc-common inc=
lude so it should have
been picked up by gcc.bb, gcc-cross and gcc-runtime. I also tried adding to
just gcc cross and gcc runtime recipes. I also looked at how the sanitizer
libraries were being built with gcc-sanitizers, but was unable to get a
working solution. I gave up to focus on other priorities, but figured I=E2=
=80=99d
ask the list in case someone had come across this before.


On Wednesday, September 27, 2023, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Wed, 2023-09-27 at 09:40 -0500, Alex Roberts wrote:
> > Hello All,
> >
> > I'm having trouble getting gcc-cross-9.3.0 recipe to build libvtv. I
> > have added =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D to EXTRA_OEC=
ONF via a .bbappend.
> > The vtable stubs are added to libstdc++ but libvtv itself is not
> > compiled. This causes recipes compiling with -fstandard-verify to fail
> > because libvtv doesn=E2=80=99t exist and cannot be linked in.
> >
> > Looking at the autoconf files and the resulting Makefile, libvtv
> > should be getting configured and compiled with the recipe, but I can
> > not determine why it is not.
> >
> > Does anyone have experience enabling vtable-verify to a cross-compiler
> > toolchain?
>
> If libvtv is a separate library (I've not looked), I suspect there are
> tweaks needed to the gcc-runtime recipe to build it?
>
> Cheers,
>
> Richard
>

--00000000000015b858060661e4af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>&gt;If libvtv is a separate library (I&#39;ve not looked)<br></div><di=
v><br></div><div>It is a separate library whose source is inside the gcc so=
urce folder. Much of the documentation for enabling vtable verify is for co=
mpiling gcc from source outside of Yocto and just references using the flag=
 with ./configure when building gcc from source.</div><div><br></div><div>&=
gt; =C2=A0I suspect there are tweaks needed to the gcc-runtime recipe to bu=
ild it</div><div><br></div>I put =E2=80=9C=E2=80=94enable-vtable-verify=E2=
=80=9D in the gcc-common include so it should have been picked up by <a hre=
f=3D"http://gcc.bb">gcc.bb</a>, gcc-cross and gcc-runtime. I also tried add=
ing to just gcc cross and gcc runtime recipes. I also looked at how the san=
itizer libraries were being built with gcc-sanitizers, but was unable to ge=
t a working solution. I gave up to focus on other priorities, but figured I=
=E2=80=99d ask the list in case someone had come across this before.<div><b=
r></div><div><br></div><div>On Wednesday, September 27, 2023, Richard Purdi=
e &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@=
linuxfoundation.org</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed=
, 2023-09-27 at 09:40 -0500, Alex Roberts wrote:<br>
&gt; Hello All,<br>
&gt; <br>
&gt; I&#39;m having trouble getting gcc-cross-9.3.0 recipe to build libvtv.=
 I<br>
&gt; have added =E2=80=9C=E2=80=94enable-vtable-verify=E2=80=9D to EXTRA_OE=
CONF via a .bbappend.<br>
&gt; The vtable stubs are added to libstdc++ but libvtv itself is not<br>
&gt; compiled. This causes recipes compiling with -fstandard-verify to fail=
<br>
&gt; because libvtv doesn=E2=80=99t exist and cannot be linked in.<br>
&gt; <br>
&gt; Looking at the autoconf files and the resulting Makefile, libvtv<br>
&gt; should be getting configured and compiled with the recipe, but I can<b=
r>
&gt; not determine why it is not.<br>
&gt; <br>
&gt; Does anyone have experience enabling vtable-verify to a cross-compiler=
<br>
&gt; toolchain?<br>
<br>
If libvtv is a separate library (I&#39;ve not looked), I suspect there are<=
br>
tweaks needed to the gcc-runtime recipe to build it?<br>
<br>
Cheers,<br>
<br>
Richard<br>
</blockquote></div>

--00000000000015b858060661e4af--

