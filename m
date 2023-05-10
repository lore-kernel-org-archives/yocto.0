Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F9CC7EE22
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 14:33:30 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
 by mx.groups.io with SMTP id smtpd.web11.18946.1683729205748775568
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 07:33:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=BzZs4OMC;
 spf=pass (domain: gmail.com, ip: 209.85.222.45, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-77d0419750eso1931618241.2
        for <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 07:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683729205; x=1686321205;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q8hh1+6gcsLexMe+EdnR63xhZ9AyD8DtRv4Au237Eoc=;
        b=BzZs4OMCHbxxGWJvG2Fr8P/uVH8qcZAAfOvY+T0BOVvBIxrKj1BPd0khPaMYEpucc/
         bqPprc7IXmL8wdHwg/iX4Sr2Y0c7BbqJymuym6CZdvV5EfvrbczVXAGrkBK3qPYOWdVr
         CcxAaDwRvz18B+QHc7tZICkXoD6VqLb7+X8hSRxl1NNkNybRGHDOTjuc1q1qj5J0Pj7f
         eHHd/yTyMtXXec/LA9rFDikMbG/MbYJ0Mv3wmLd62Z5sfgEQIpWuCXggxMK3HtB/Q3mr
         dSxoi8kRk38kB4NV97qgVv02EAjAuKyxwNhnx/u4fFYV4ircGrRsXD9y4f9Ky7gDxa/C
         oqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683729205; x=1686321205;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q8hh1+6gcsLexMe+EdnR63xhZ9AyD8DtRv4Au237Eoc=;
        b=G29kTJR2yRxSDPYJk/Imh2F3wGCkQbKCvxkessG2+/Q+475mC/Q5gOhrtiklWFtq0j
         4JDXYKJ5Gdr1FnZhDhl9mt/7QM6QTijvPTembCyP9atUBEB5lbM6vhfaQCPmXtAhaz0C
         kU9/L3dudJKg8wzBTB0QrkhxTngfuskqTUV9zlpbPg5to3B9Et4g3p9WyCqQ+/8GGnv6
         WICnUbs9rGh6IML8Afe5gExtP9dvrwNHHpA/zLunldAx0TNOIUxqH31WW7Z3SNFfygoF
         Od2PBgfYKW3OmwYpsssIqOh5j0aKvsgdhZPS3i+Z/HJp/1d1E0aFdv9bqsL45kYPxf59
         mhYg==
X-Gm-Message-State: AC+VfDw8e0AdiJJEeZmCnlJmuyfmvw/oBEhN7kL8hqPjwZnGOONrE+wp
	qz2aWoJ1xI9nKcsVBcysSeTTEIHevMAmC5CofrE=
X-Google-Smtp-Source: ACHHUZ7w77qbYr10jxLU2t+1tAWIdqPXcQKf3XUVvoQZWud1V4xMEQGl7QnD+4rxiS5ds43bRsCuDMfATkfgUBHzdZ8=
X-Received: by 2002:a67:b646:0:b0:42f:18d9:a602 with SMTP id
 e6-20020a67b646000000b0042f18d9a602mr5929814vsm.32.1683729204593; Wed, 10 May
 2023 07:33:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
 <c636e528-ca65-dae0-e772-2c43afd16ff3@gmail.com> <3bf73334-5196-85e7-2a79-a47a7ae6da4d@linux.ibm.com>
 <ZFuY1UtAFKNI4Oyt@nuoska> <4f9206ad-aa2d-bdb0-dec7-fd40f1fee826@gmail.com>
In-Reply-To: <4f9206ad-aa2d-bdb0-dec7-fd40f1fee826@gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 10 May 2023 15:33:13 +0100
Message-ID: <CANPvuRm6AMn0NJ5s-2cqLPeWRarAECO=E5YV2ZJ5cV_tZVZr0Q@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 1/8] Revert "ima-evm-utils: Update
 ima-evm-utils to v1.5 and add a patch"
To: akuster808 <akuster808@gmail.com>
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>, Stefan Berger <stefanb@linux.ibm.com>, 
	yocto@lists.yoctoproject.org, Jose Quaresma <jose.quaresma@foundries.io>
Content-Type: multipart/alternative; boundary="000000000000234a0105fb57c1bf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 14:33:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59964

--000000000000234a0105fb57c1bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

akuster808 <akuster808@gmail.com> escreveu no dia quarta, 10/05/2023 =C3=A0=
(s)
15:25:

>
>
> On 5/10/23 9:15 AM, Mikko Rapeli wrote:
> > Hi,
> >
> > On Wed, May 10, 2023 at 08:23:18AM -0400, Stefan Berger wrote:
> >>
> >> On 5/10/23 07:44, Armin Kuster wrote:
> >>>
> >>> On 5/9/23 2:56 PM, Jose Quaresma wrote:
> >>>> This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa8928f.
> >>>>
> >>>> The full patchset are overriding the do_configure task and also adde=
d
> a kernel patch
> >>>> on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file i=
s
> included
> >>>> in every recipe that follows the pattern pattern starting by linux-
> (recipes-kernel/linux/linux-%.bbappend).
> >>>> So the patch fails in some recipes and also do_configure task doesn'=
t
> make sense.
> >>>> This breaks many recipes like linux-firmware and maybe others.
> >>> I fail to see how  this package update is part of the issue above. I
> am still trying to sort out the store here to figure out how we move
> forward.
> >> My suggestion would be that I post a v2 of my fix patches containing:
> >>
> >> 1) removal of the Linux kernel patch
> >> 2) removal of the squashfs option (less important)
> >> 3) the suggestion outlined here:
> https://lists.yoctoproject.org/g/yocto/message/59955
> >>     but modified to look like this with '&& [ -f .config ]' appended:
> >>
> >>   do_configure:append() {
> >>       if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'yes', '',
> d)}" =3D "yes" ] && [ -f .config ] ; then
> >>           sed -i
> "s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CONFIG_SYSTEM_TRUSTED_KEYS=3D\"${IMA_=
EVM_ROOT_CA}\"|"
> .config
> >>       fi
> >>   }
> >>
> >> I don't want to hold things up but maybe it's worth discussing the
> suggested changes.
> >>
> >>  From what I can see 'bitbake linux-firmware' builds under OpenBMC now
> with these suggested changes
> >> and it did NOT build before. My suggestion would be to discuss the
> proposal under that thread there.
> >> The problems seem to be that the file
> meta-security/meta-integrity/recipes-kernel/linux/linux-%.bbappend
> >> matches the pattern linux-firmware as well and therefore its contents
> get included when building
> >> linux-firmware. When building linux-firmware while having also
> DISTRO_FEATURES ima set in local.conf then the
> >> ima.scc is added to SRC_URI and the do_configure is also appended. The
> latter will not have side-effects but
> >> I don't know about the former nor how to create a better filter (other
> than DISTRO_FEATURES) for not having
> >> these included for linux-firmware.
> > Why is the bbappend applying changes to all recipes where name starts
> with
> > "linux-"?
> >
> > It is aiming at Linux kernel recipes which by default in yocto are
> > called "linux-yocto", so the bbappend could simply be
> > "linux-yocto_%.bbappend" (or "linux-yocto%.bbappend to catch the rt
> > and other variants too).
>
> Well that one is on me. That change came in when I ported over the
> meta-intel-iot-security layer.
>

Renaming the bbappend to linux-yocto%.bbappend will break all other linux
kernels around
that follow the pattern linux-%.bbappend.

A better solution is needed here like the one pointed by Bruce
https://lists.yoctoproject.org/g/yocto/message/59954

I send the revert because currently the master is broken and the cause is
IMA patchset.
Maybe this patch can be dropped because it only bumps a version but the
others should be dropped.

Jose


>
> 6680225 meta-integrity: port over from meta-intel-iot-security
>
> I will send a patch correcting that.
>
> Thanks for the reminder and pointing this out.
>
> BR,
> Armin
>
> >
> > I think it's a bad idea to try to apply this change automatically to al=
l
> > possible BSP layer kernels which may or may not have names starting wit=
h
> > "linux-" and it's well known that there are a lot of recipe names which
> > start with "linux-" which are not Linux kernels (linux-firmware,
> > linux-libc-headers, linux-dummy etc).
> >
> > Cheers,
> >
> > -Mikko
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000234a0105fb57c1bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">akuster808 &lt;<a href=3D"mailto:akus=
ter808@gmail.com" target=3D"_blank">akuster808@gmail.com</a>&gt; escreveu n=
o dia quarta, 10/05/2023 =C3=A0(s) 15:25:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><br>
<br>
On 5/10/23 9:15 AM, Mikko Rapeli wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; On Wed, May 10, 2023 at 08:23:18AM -0400, Stefan Berger wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 5/10/23 07:44, Armin Kuster wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 5/9/23 2:56 PM, Jose Quaresma wrote:<br>
&gt;&gt;&gt;&gt; This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa892=
8f.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; The full patchset are overriding the do_configure task and=
 also added a kernel patch<br>
&gt;&gt;&gt;&gt; on meta-integrity/recipes-kernel/linux/linux_ima.inc and t=
his file is included<br>
&gt;&gt;&gt;&gt; in every recipe that follows the pattern pattern starting =
by linux- (recipes-kernel/linux/linux-%.bbappend).<br>
&gt;&gt;&gt;&gt; So the patch fails in some recipes and also do_configure t=
ask doesn&#39;t make sense.<br>
&gt;&gt;&gt;&gt; This breaks many recipes like linux-firmware and maybe oth=
ers.<br>
&gt;&gt;&gt; I fail to see how=C2=A0 this package update is part of the iss=
ue above. I am still trying to sort out the store here to figure out how we=
 move forward.<br>
&gt;&gt; My suggestion would be that I post a v2 of my fix patches containi=
ng:<br>
&gt;&gt;<br>
&gt;&gt; 1) removal of the Linux kernel patch<br>
&gt;&gt; 2) removal of the squashfs option (less important)<br>
&gt;&gt; 3) the suggestion outlined here: <a href=3D"https://lists.yoctopro=
ject.org/g/yocto/message/59955" rel=3D"noreferrer" target=3D"_blank">https:=
//lists.yoctoproject.org/g/yocto/message/59955</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0but modified to look like this with &#39;&amp;&=
amp; [ -f .config ]&#39; appended:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0do_configure:append() {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot;${@bb.utils.contains(&#39;DIS=
TRO_FEATURES&#39;, &#39;ima&#39;, &#39;yes&#39;, &#39;&#39;, d)}&quot; =3D =
&quot;yes&quot; ] &amp;&amp; [ -f .config ] ; then<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sed -i &quot;s|^CONFIG_SYS=
TEM_TRUSTED_KEYS=3D.*|CONFIG_SYSTEM_TRUSTED_KEYS=3D\&quot;${IMA_EVM_ROOT_CA=
}\&quot;|&quot; .config<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt;=C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt; I don&#39;t want to hold things up but maybe it&#39;s worth discus=
sing the suggested changes.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 From what I can see &#39;bitbake linux-firmware&#39; builds =
under OpenBMC now with these suggested changes<br>
&gt;&gt; and it did NOT build before. My suggestion would be to discuss the=
 proposal under that thread there.<br>
&gt;&gt; The problems seem to be that the file meta-security/meta-integrity=
/recipes-kernel/linux/linux-%.bbappend<br>
&gt;&gt; matches the pattern linux-firmware as well and therefore its conte=
nts get included when building<br>
&gt;&gt; linux-firmware. When building linux-firmware while having also DIS=
TRO_FEATURES ima set in local.conf then the<br>
&gt;&gt; ima.scc is added to SRC_URI and the do_configure is also appended.=
 The latter will not have side-effects but<br>
&gt;&gt; I don&#39;t know about the former nor how to create a better filte=
r (other than DISTRO_FEATURES) for not having<br>
&gt;&gt; these included for linux-firmware.<br>
&gt; Why is the bbappend applying changes to all recipes where name starts =
with<br>
&gt; &quot;linux-&quot;?<br>
&gt;<br>
&gt; It is aiming at Linux kernel recipes which by default in yocto are<br>
&gt; called &quot;linux-yocto&quot;, so the bbappend could simply be<br>
&gt; &quot;linux-yocto_%.bbappend&quot; (or &quot;linux-yocto%.bbappend to =
catch the rt<br>
&gt; and other variants too).<br>
<br>
Well that one is on me. That change came in when I ported over the <br>
meta-intel-iot-security layer.<br></blockquote><div><br></div><div>Renaming=
 the bbappend to=C2=A0<span style=3D"color:rgb(0,0,0)">linux-yocto%.bbappen=
d will break all other linux kernels around</span></div><div><span style=3D=
"color:rgb(0,0,0)">that follow the pattern=C2=A0</span>linux-%.bbappend.</d=
iv><div><br></div><div>A better solution is needed here like the one pointe=
d by Bruce<br><a href=3D"https://lists.yoctoproject.org/g/yocto/message/599=
54">https://lists.yoctoproject.org/g/yocto/message/59954</a><br><br>I send =
the revert because currently the master is broken and the cause is IMA patc=
hset.<br>Maybe this patch can be dropped because it only bumps a version bu=
t the others should be dropped.</div><div><br></div><div>Jose</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
6680225 meta-integrity: port over from meta-intel-iot-security<br>
<br>
I will send a patch correcting that.<br>
<br>
Thanks for the reminder and pointing this out.<br>
<br>
BR,<br>
Armin<br>
<br>
&gt;<br>
&gt; I think it&#39;s a bad idea to try to apply this change automatically =
to all<br>
&gt; possible BSP layer kernels which may or may not have names starting wi=
th<br>
&gt; &quot;linux-&quot; and it&#39;s well known that there are a lot of rec=
ipe names which<br>
&gt; start with &quot;linux-&quot; which are not Linux kernels (linux-firmw=
are,<br>
&gt; linux-libc-headers, linux-dummy etc).<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; -Mikko<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span>-- </span><br><di=
v dir=3D"ltr"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</di=
v></div></div></div>

--000000000000234a0105fb57c1bf--

