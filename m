Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B09DC43334
	for <webhook@archiver.kernel.org>; Thu,  7 Jul 2022 18:12:57 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web09.1070.1657217574390572443
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 11:12:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=D95NmBjz;
 spf=pass (domain: gmail.com, ip: 209.85.160.178,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id ay10so23922219qtb.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 11:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EvXrKYAqkKYcKF2IpMWKwhnh9IOW+U7Byu9Ec6IfUkk=;
        b=D95NmBjz6ticSjJQs/0c+iu75GGbCwMpickrzZZBOZHkzrI6AX8vCo6vgQFnPTHFLP
         3XsPZPLnd4XRFScwSbsW9X/2fz6nROtbMi/V+86XMZqpUATx+63p5x1d1QWV5PDSnKKm
         mM9Z0smQYoqNiww/23T31q520nIiC5e0qapsk/Y3Fsd+UssN88yA/tM7DT/5DaRK2pDQ
         BEDj7j0Qqv9LWPovIkVewvpQByGYmWyvfVCtROCkdLjsu8hpgYkb+A5R03+GjfCh7bs9
         zek035gmlWIngiR+9R/jguSMGtJmfmuU8x+RHIsCMKoO1vJWtI5sGFhkU2ekGOIleGfr
         F0hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EvXrKYAqkKYcKF2IpMWKwhnh9IOW+U7Byu9Ec6IfUkk=;
        b=DFt4aD0MFShruTEYNYY/UI/5q2CL3x/n2JdIPWvgwH4gbGIy/r1PYB+ArYNzXCOM+p
         92PjxVmJlBzFMJ5HUh92tepf2vVbSrARrxHWFZYCt/6zHKRfbK/21+CdWlwmheDw2Uc5
         fcE4q4F+z2inOZ1QcZ4euqmTlIxYQ1xidLnFDNHRnISNLPZpgGpKvAnYTLywiiceVWkG
         Rv4iUnVNrLdMj632SdWjuyAWC88mbBB4A23ma01Kg2BOl2+DHH2cTmSSYEts7NKYT16Y
         7iefJdG3Q/Ps2OAhE/+cqnT880IobXhhQhZA9XakuY681rrJGtg0fhJvlKnPRiRGsMjo
         Cgyw==
X-Gm-Message-State: AJIora/2NXcQT7MhO81KDYeJr9Mwz/llygOi8Ib55of3DLc16RNv+A6m
	ZIXUcKXTgpCJxhHVXqzMUE2BNCQ2VZGZ9RTNvCI=
X-Google-Smtp-Source: 
 AGRyM1uV1TH7oNnJpwssA9V+u+HlQ4JfiI3xBVqkN81OArW6RS/MEvgQEkI8xOORa33T0WzUhQi0Dd9vKcMTn9836h8=
X-Received: by 2002:a0c:ed23:0:b0:472:f9c0:9fda with SMTP id
 u3-20020a0ced23000000b00472f9c09fdamr17496919qvq.24.1657217573118; Thu, 07
 Jul 2022 11:12:53 -0700 (PDT)
MIME-Version: 1.0
References: <16FF8418B666136C.16989@lists.yoctoproject.org>
 <e36cc49e-3c94-6030-a25c-3751b292559e@crashcourse.ca>
 <CAMKF1soKCkuBWU6Y=1Ck94zTwN7pSHagdgkVNLQDoftwesbinA@mail.gmail.com>
 <a71569-6929-f149-127-6cf33ed4b925@crashcourse.ca>
 <CAMKF1sqgZxqguiRUvWForpedoPAdxaYLw_35fky+cy29qvyGGw@mail.gmail.com>
 <92f7d73-8dea-3d50-1079-de1ea727dc48@crashcourse.ca>
In-Reply-To: <92f7d73-8dea-3d50-1079-de1ea727dc48@crashcourse.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Jul 2022 14:12:42 -0400
Message-ID: 
 <CAMKF1srdsBUvR_r7z+BDYeQP8Fw2SW6wUxTmwEFcKTr=DWA6pw@mail.gmail.com>
Subject: Re: [yocto] meta-riscv: building curl,
 "undefined reference to '__atomic_exchange_1'
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c2e82c05e33b0860"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Jul 2022 18:12:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57479

--000000000000c2e82c05e33b0860
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 7, 2022 at 2:01 PM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Thu, 7 Jul 2022, Khem Raj wrote:
>
> > On Thu, Jul 7, 2022 at 1:06 PM Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> > >
> > > On Thu, 7 Jul 2022, Khem Raj wrote:
> > >
> > > > On Thu, Jul 7, 2022 at 6:14 AM Robert P. J. Day <
> rpjday@crashcourse.ca> wrote:
> > > > >
> > > > > On Thu, 7 Jul 2022, Robert P. J. Day wrote:
> > > > >
> > > > >
> > > > > >   on admittedly unsupported ubuntu 22.04 platform but it's clea=
r
> this
> > > > > > is a known issue as it's pretty much identical to what one read=
s
> here:
> > > > > >
> > > > > >   https://github.com/advancedtelematic/aktualizr/issues/1427
> > > > > >
> > > > > > the explanation being that, "not every atomic operation is
> currently
> > > > > > supported by GCC on RISC-V."
> > > > > >
> > > > > >   oddly, building a riscv64 core-image-minimal once upon a time
> on
> > > > > > fedora worked just fine, so i'm assuming a difference in gcc
> versions
> > > > > > is what is causing this.
> > > > > >
> > > > > >   what is the recommended workaround for this?
> > > > >
> > > > >   another data point, matches exactly what i'm referring to:
> > > > >
> > > > >   https://github.com/curl/curl/issues/9055
> > > > >
> > > >
> > > > does backporting
> > > >
> > > >
> https://github.com/curl/curl/commit/50efb0822aa0e0ab165158dd0a26e65a2290e=
6d2
> > > >
> > > > to curl help ?
> > >
> > >   as i read it, this issue is also related to -pthread versus
> > > -lpthread:
> > >
> >
> > this would mean that you want to rely on side effects of -pthread
> > which may work with gcc but may not
> > work with clang or other compiler drivers. The issue you have is that
> > some variables are needing atomics
> > and solution is either you link with libatomic or avoid using the code
> > which needs them
> >
> > >
> https://blog.jiejiss.com/A-RISC-V-gcc-pitfall-revealed-by-a-glibc-update/
>
>   so while i'm still trying to wrap my head around all this, what
> *would* be the ideal resolution for this? the link above suggests the
> simple solution of introducing a gcc config option
> "--always-link-libatomic". would that solve all this in a general way,
> not just for RISC-V?


Probably, but again if you need a function from a library you include it on
linker cmdline if it=E2=80=99s intrinsics then compiler driver doing the ne=
eded is
best way
Preferably without introducing compiler specific options

>
>
> rday
>

--000000000000c2e82c05e33b0860
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jul 7, 2022 at 2:01 PM Robert P. J. Day &lt;<a href=
=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">On Thu, 7 Jul 2022, Khem Raj wrote:<br>
<br>
&gt; On Thu, Jul 7, 2022 at 1:06 PM Robert P. J. Day &lt;<a href=3D"mailto:=
rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wrot=
e:<br>
&gt; &gt;<br>
&gt; &gt; On Thu, 7 Jul 2022, Khem Raj wrote:<br>
&gt; &gt;<br>
&gt; &gt; &gt; On Thu, Jul 7, 2022 at 6:14 AM Robert P. J. Day &lt;<a href=
=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</=
a>&gt; wrote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; On Thu, 7 Jul 2022, Robert P. J. Day wrote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0on admittedly unsupported ubuntu 22.04=
 platform but it&#39;s clear this<br>
&gt; &gt; &gt; &gt; &gt; is a known issue as it&#39;s pretty much identical=
 to what one reads here:<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0<a href=3D"https://github.com/advanced=
telematic/aktualizr/issues/1427" rel=3D"noreferrer" target=3D"_blank">https=
://github.com/advancedtelematic/aktualizr/issues/1427</a><br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; the explanation being that, &quot;not every atomic=
 operation is currently<br>
&gt; &gt; &gt; &gt; &gt; supported by GCC on RISC-V.&quot;<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0oddly, building a riscv64 core-image-m=
inimal once upon a time on<br>
&gt; &gt; &gt; &gt; &gt; fedora worked just fine, so i&#39;m assuming a dif=
ference in gcc versions<br>
&gt; &gt; &gt; &gt; &gt; is what is causing this.<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0what is the recommended workaround for=
 this?<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0another data point, matches exactly what i&=
#39;m referring to:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0<a href=3D"https://github.com/curl/curl/iss=
ues/9055" rel=3D"noreferrer" target=3D"_blank">https://github.com/curl/curl=
/issues/9055</a><br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; does backporting<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; <a href=3D"https://github.com/curl/curl/commit/50efb0822aa0e=
0ab165158dd0a26e65a2290e6d2" rel=3D"noreferrer" target=3D"_blank">https://g=
ithub.com/curl/curl/commit/50efb0822aa0e0ab165158dd0a26e65a2290e6d2</a><br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; to curl help ?<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0as i read it, this issue is also related to -pthread =
versus<br>
&gt; &gt; -lpthread:<br>
&gt; &gt;<br>
&gt;<br>
&gt; this would mean that you want to rely on side effects of -pthread<br>
&gt; which may work with gcc but may not<br>
&gt; work with clang or other compiler drivers. The issue you have is that<=
br>
&gt; some variables are needing atomics<br>
&gt; and solution is either you link with libatomic or avoid using the code=
<br>
&gt; which needs them<br>
&gt;<br>
&gt; &gt; <a href=3D"https://blog.jiejiss.com/A-RISC-V-gcc-pitfall-revealed=
-by-a-glibc-update/" rel=3D"noreferrer" target=3D"_blank">https://blog.jiej=
iss.com/A-RISC-V-gcc-pitfall-revealed-by-a-glibc-update/</a><br>
<br>
=C2=A0 so while i&#39;m still trying to wrap my head around all this, what<=
br>
*would* be the ideal resolution for this? the link above suggests the<br>
simple solution of introducing a gcc config option<br>
&quot;--always-link-libatomic&quot;. would that solve all this in a general=
 way,<br>
not just for RISC-V?</blockquote><div dir=3D"auto"><br></div><div dir=3D"au=
to">Probably, but again if you need a function from a library you include i=
t on linker cmdline if it=E2=80=99s intrinsics then compiler driver doing t=
he needed is best way=C2=A0</div><div dir=3D"auto">Preferably without intro=
ducing compiler specific options=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex" =
dir=3D"auto"><br>
<br>
rday<br>
</blockquote></div></div>

--000000000000c2e82c05e33b0860--

