Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A060EC2D0CD
	for <webhook@archiver.kernel.org>; Wed, 21 May 2025 10:40:57 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web11.8234.1747824048561471096
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 May 2025 03:40:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aPoTz7bz;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: sateesh0457@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-7080dd5fe92so53700367b3.3
        for <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 03:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747824048; x=1748428848; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8KUWDTvn40mgEZeLRslgLqvChb5e8sFp5jUz42qAi3w=;
        b=aPoTz7bzUQaOKc4olHPvwejWnIhFUYcEa50Z4CD7O/bqdWVQpvJJg/3srjtFSVAjsc
         UBtdMVJPLsGrfNKcegR4zcwF1x7j9oCdperPfWc+iqWZw3Fr4rCOcyXYgipaJOOlkuUx
         jF0Wm7mO2yEX3N2SNrnY3F/YpZbq1T+5gnpb+B4FseZzPWZ+hNQU0j8QIVMnM+g21Gsk
         q5R6w2nmDWQS9pVpES4Cfer+Qyqb3iOF6/Z1Pu6P8iJMu8bNTXxDo7tz0UCUD6Ipa5Q6
         QblT1yhO4CArJhY2kvUm1h0QR3whPWSzxYYYFDFPokththOD+bGxmUyrvR9CPO+k16QP
         ro7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747824048; x=1748428848;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8KUWDTvn40mgEZeLRslgLqvChb5e8sFp5jUz42qAi3w=;
        b=XWivaDff+0kq9pIaVlGTLcTda2Kw+KT/zi5PnwRD5Mr+Y0bysRT9ZOsTdzW06+CzBQ
         wj61R/4J5Ff4dqWyAftkfoc312TdRRXLHJ63yW/Icw1X3/Kc8WMKiJutmp+thTI6wLyl
         EYLMmPmGVoYlKhhfUto6sQDVIvgWGHkhh/BYx1I6UMK0f7KWK63EZL4Es1fU5gWXNhyo
         hTKr5dXItT8j297dtegPyS4CSMuBVt8H/ivVIXhtKHgqSyY1vizvY+7kwCZw0sncrtbT
         n2bnAuXFHBaZPIC3RIbISpgwlq2g5Pks/N8fIUztWrKmJGDc7CAYNC+1+jcKQtE6kN72
         LSdQ==
X-Gm-Message-State: AOJu0YxTAAMhBBU66krJHq2wvt/ACOSoor7ahv3z+6Vyj3zMktcX8jmD
	Jsoi+lEZVp9HcW9B4RJw2WYlGJzcDyR1gakSJGrwk6VVgQzOcR0dGSSZEsTnOQmEpL0wXo07Rvf
	SExT6UTVMJM06LJgWwwZ4A/VfJfM85x8=
X-Gm-Gg: ASbGncuMOJHA+Kin0N8KE0i+sbCr0y28S1tVrirYgSqZgwXaH506olo0lLPahH2IVie
	gKPlArFQ3mvuoxeQbtOvmMPTqI9bqPSGQps5dkw1eulapnvnvXU+XxzoG5x3FYgpNjFzYVfD1ry
	SrcKnhm9y11KP31C2o7C2hO6baZqx7ZoLMUPHwKGTCT5bvck66jlrXdq8RVdpwEBunQo0=
X-Google-Smtp-Source: AGHT+IHYSZdHSjQtR9VoX3BwMTZz+IZcHm6UTigtTudvUOlYyAPyvnFvjL3qAXxvTMRPxE+BPZLf0MUcHdx84Zsu+hE=
X-Received: by 2002:a05:690c:670f:b0:6f9:8605:ec98 with SMTP id
 00721157ae682-70ca7b894b0mr287246587b3.28.1747824047709; Wed, 21 May 2025
 03:40:47 -0700 (PDT)
MIME-Version: 1.0
References: <urlO.1747823018739136306.ditq@lists.yoctoproject.org>
 <CANNYZj-+kZUPy23+7onssTXf8t_L6FAcUReAg4nMLCwGZbrmBw@mail.gmail.com> <AS1PR10MB5697C84BA131B0FB085FB72DFD9EA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5697C84BA131B0FB085FB72DFD9EA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
From: sateesh m <sateesh0457@gmail.com>
Date: Wed, 21 May 2025 16:10:36 +0530
X-Gm-Features: AX0GCFvItWbUkcZhLO4py-ddkGwk5fKKny4lJMLSLZZW_ftNBD8ZQMnqPz72q_M
Message-ID: <CACsETStxiYBEDcTTVSHik+be5kQid6gSBbFi-Cy0OZxhR1QZvw@mail.gmail.com>
Subject: Re: [yocto] meson upgrade issue dunfell (0.53 I want to upgrade 0.63)
To: "Marko, Peter" <Peter.Marko@siemens.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007e6aa10635a2ff42"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 10:40:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65386

--0000000000007e6aa10635a2ff42
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marko,

I copied entire directory meson and dependencies. I didn't find
BUILD_READELF. Can you help me where can I find it?


Regards,
Sateesh

On Wed, 21 May, 2025, 4:07=E2=80=AFpm Marko, Peter, <Peter.Marko@siemens.co=
m> wrote:

> The error message says that BUILD_READELF variable is undefined.
> When copying code from newer releases, make sure you copy all dependencie=
s.
>
> Peter
>
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of
> > Alexander Kanavin via lists.yoctoproject.org
> > Sent: Wednesday, May 21, 2025 12:33
> > To: yocto@lists.yoctoproject.org; sateesh0457@gmail.com
> > Subject: Re: [yocto] meson upgrade issue dunfell (0.53 I want to upgrad=
e
> 0.63)
> >
> > You're better off updating to a yocto release that is
> > - currently supported
> > - has a recent enough meson.
> >
> > Alex
> >
> > On Wed, 21 May 2025 at 12:23, sateesh m via lists.yoctoproject.org
> > <sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
> > >
> > > Hi team,
> > >
> > >
> > >
> > > I want to upgrade meson version 0.53.2 to 0.63 in my yocto build. I a=
m
> currently
> > using 3.1 dunfell.
> > >
> > > Facing below expansion issue. Can anyone know this issue can help me
> to fix
> > this issue.
> > >
> > > ERROR: ExpansionError during parsing /home/p_60123/hdd/NC/poky/../met=
a-
> > cve-patch/recipes-extended/meson/meson_0.63.3.bb
> > > Traceback (most recent call last):
> > >   File "Var <install_templates>", line 1, in <module>
> > >   File "/home/p_60123/hdd/NC/poky/../meta-cve-patch/classes/meson-
> > routines.bbclass", line 10, in meson_array(var=3D'BUILD_READELF',
> > d=3D<bb.data_smart.DataSmart object at 0x7ff52c2f1c50>):
> > >      def meson_array(var, d):
> > > >    items =3D d.getVar(var).split()
> > >          return repr(items[0] if len(items) =3D=3D 1 else items)
> > > bb.data_smart.ExpansionError: Failure expanding variable
> install_templates,
> > expression was     install -d
> /home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-
> > linux/meson-native/0.63.3-r0/image/home/p_60123/hdd/NC/build-
> > pony/tmp/work/x86_64-linux/meson-native/0.63.3-r0/recipe-sysroot-
> > native/usr/share/meson
> > >
> > >
> > >
> > >     cat >/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-
> > native/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-
> > linux/meson-native/0.63.3-r0/recipe-sysroot-
> > native/usr/share/meson/meson.native.template <<EOF
> > > [binaries]
> > > c =3D ${@meson_array('BUILD_CC', d)}
> > > cpp =3D ${@meson_array('BUILD_CXX', d)}
> > > ar =3D ${@meson_array('BUILD_AR', d)}
> > > nm =3D ${@meson_array('BUILD_NM', d)}
> > > strip =3D ${@meson_array('BUILD_STRIP', d)}
> > > readelf =3D ${@meson_array('BUILD_READELF', d)}
> > > pkgconfig =3D 'pkg-config-native'
> > >
> > > [built-in options]
> > > c_args =3D ['-isystem@{OECORE_NATIVE_SYSROOT}/usr/include' ,
> > ${@var_list2str('BUILD_OPTIMIZATION', d)}]
> > > c_link_args =3D ${@generate_native_link_template(d)}
> > > cpp_args =3D ['-isystem@{OECORE_NATIVE_SYSROOT}/usr/include' ,
> > ${@var_list2str('BUILD_OPTIMIZATION', d)}]
> > > cpp_link_args =3D ${@generate_native_link_template(d)}
> > > [properties]
> > > sys_root =3D '@OECORE_NATIVE_SYSROOT'
> > > EOF
> > >
> > >
> > >
> > >     cat >/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-
> > native/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-
> > linux/meson-native/0.63.3-r0/recipe-sysroot-
> > native/usr/share/meson/meson.cross.template <<EOF
> > > [binaries]
> > > c =3D @CC
> > > cpp =3D @CXX
> > > ar =3D @AR
> > > nm =3D @NM
> > > strip =3D @STRIP
> > > pkgconfig =3D 'pkg-config'
> > >
> > >
> > >
> > > [built-in options]
> > > c_args =3D @CFLAGS
> > > c_link_args =3D @LDFLAGS
> > > cpp_args =3D @CPPFLAGS
> > > cpp_link_args =3D @LDFLAGS
> > >
> > >
> > >
> > > [properties]
> > > needs_exe_wrapper =3D true
> > > sys_root =3D @OECORE_TARGET_SYSROOT
> > >
> > >
> > >
> > > [host_machine]
> > > system =3D '$host_system'
> > > cpu_family =3D '$host_cpu_family'
> > > cpu =3D '$host_cpu'
> > > endian =3D '$host_endian'
> > > EOF
> > > which triggered exception AttributeError: 'NoneType' object has no
> attribute 'split'
> > >
> > >
> > >
> > >
> > >
> > > Summary: There were 3 WARNING messages shown.
> > > Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
> > >
> > >
> > >
> > > Thanks & Regards,
> > >
> > > Sateesh
> > >
> > >
> > >
> > >
>

--0000000000007e6aa10635a2ff42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Marko,<div dir=3D"auto"><br></div><div dir=3D"auto">I =
copied entire directory meson and dependencies. I didn&#39;t find BUILD_REA=
DELF. Can you help me where can I=C2=A0find it?</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div dir=
=3D"auto">Sateesh=C2=A0</div></div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 21 May, 2025, 4:=
07=E2=80=AFpm Marko, Peter, &lt;<a href=3D"mailto:Peter.Marko@siemens.com">=
Peter.Marko@siemens.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">The error message says that BUILD_READELF variable is undefined.<br>
When copying code from newer releases, make sure you copy all dependencies.=
<br>
<br>
Peter<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
" rel=3D"noreferrer">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto=
:yocto@lists.yoctoproject.org" target=3D"_blank" rel=3D"noreferrer">yocto@l=
ists.yoctoproject.org</a>&gt; On Behalf Of<br>
&gt; Alexander Kanavin via <a href=3D"http://lists.yoctoproject.org" rel=3D=
"noreferrer noreferrer" target=3D"_blank">lists.yoctoproject.org</a><br>
&gt; Sent: Wednesday, May 21, 2025 12:33<br>
&gt; To: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank" =
rel=3D"noreferrer">yocto@lists.yoctoproject.org</a>; <a href=3D"mailto:sate=
esh0457@gmail.com" target=3D"_blank" rel=3D"noreferrer">sateesh0457@gmail.c=
om</a><br>
&gt; Subject: Re: [yocto] meson upgrade issue dunfell (0.53 I want to upgra=
de 0.63)<br>
&gt; <br>
&gt; You&#39;re better off updating to a yocto release that is<br>
&gt; - currently supported<br>
&gt; - has a recent enough meson.<br>
&gt; <br>
&gt; Alex<br>
&gt; <br>
&gt; On Wed, 21 May 2025 at 12:23, sateesh m via <a href=3D"http://lists.yo=
ctoproject.org" rel=3D"noreferrer noreferrer" target=3D"_blank">lists.yocto=
project.org</a><br>
&gt; &lt;sateesh0457=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" =
target=3D"_blank" rel=3D"noreferrer">gmail.com@lists.yoctoproject.org</a>&g=
t; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi team,<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I want to upgrade meson version 0.53.2 to 0.63 in my yocto build.=
 I am currently<br>
&gt; using 3.1 dunfell.<br>
&gt; &gt;<br>
&gt; &gt; Facing below expansion issue. Can anyone know this issue can help=
 me to fix<br>
&gt; this issue.<br>
&gt; &gt;<br>
&gt; &gt; ERROR: ExpansionError during parsing /home/p_60123/hdd/NC/poky/..=
/meta-<br>
&gt; cve-patch/recipes-extended/meson/<a href=3D"http://meson_0.63.3.bb" re=
l=3D"noreferrer noreferrer" target=3D"_blank">meson_0.63.3.bb</a><br>
&gt; &gt; Traceback (most recent call last):<br>
&gt; &gt;=C2=A0 =C2=A0File &quot;Var &lt;install_templates&gt;&quot;, line =
1, in &lt;module&gt;<br>
&gt; &gt;=C2=A0 =C2=A0File &quot;/home/p_60123/hdd/NC/poky/../meta-cve-patc=
h/classes/meson-<br>
&gt; routines.bbclass&quot;, line 10, in meson_array(var=3D&#39;BUILD_READE=
LF&#39;,<br>
&gt; d=3D&lt;bb.data_smart.DataSmart object at 0x7ff52c2f1c50&gt;):<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 def meson_array(var, d):<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 items =3D d.getVar(var).split()<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return repr(items[0] if len(ite=
ms) =3D=3D 1 else items)<br>
&gt; &gt; bb.data_smart.ExpansionError: Failure expanding variable install_=
templates,<br>
&gt; expression was=C2=A0 =C2=A0 =C2=A0install -d /home/p_60123/hdd/NC/buil=
d-pony/tmp/work/x86_64-<br>
&gt; linux/meson-native/0.63.3-r0/image/home/p_60123/hdd/NC/build-<br>
&gt; pony/tmp/work/x86_64-linux/meson-native/0.63.3-r0/recipe-sysroot-<br>
&gt; native/usr/share/meson<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0cat &gt;/home/p_60123/hdd/NC/build-pony/tmp/wo=
rk/x86_64-linux/meson-<br>
&gt; native/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-=
<br>
&gt; linux/meson-native/0.63.3-r0/recipe-sysroot-<br>
&gt; native/usr/share/meson/meson.native.template &lt;&lt;EOF<br>
&gt; &gt; [binaries]<br>
&gt; &gt; c =3D ${@meson_array(&#39;BUILD_CC&#39;, d)}<br>
&gt; &gt; cpp =3D ${@meson_array(&#39;BUILD_CXX&#39;, d)}<br>
&gt; &gt; ar =3D ${@meson_array(&#39;BUILD_AR&#39;, d)}<br>
&gt; &gt; nm =3D ${@meson_array(&#39;BUILD_NM&#39;, d)}<br>
&gt; &gt; strip =3D ${@meson_array(&#39;BUILD_STRIP&#39;, d)}<br>
&gt; &gt; readelf =3D ${@meson_array(&#39;BUILD_READELF&#39;, d)}<br>
&gt; &gt; pkgconfig =3D &#39;pkg-config-native&#39;<br>
&gt; &gt;<br>
&gt; &gt; [built-in options]<br>
&gt; &gt; c_args =3D [&#39;-isystem@{OECORE_NATIVE_SYSROOT}/usr/include&#39=
; ,<br>
&gt; ${@var_list2str(&#39;BUILD_OPTIMIZATION&#39;, d)}]<br>
&gt; &gt; c_link_args =3D ${@generate_native_link_template(d)}<br>
&gt; &gt; cpp_args =3D [&#39;-isystem@{OECORE_NATIVE_SYSROOT}/usr/include&#=
39; ,<br>
&gt; ${@var_list2str(&#39;BUILD_OPTIMIZATION&#39;, d)}]<br>
&gt; &gt; cpp_link_args =3D ${@generate_native_link_template(d)}<br>
&gt; &gt; [properties]<br>
&gt; &gt; sys_root =3D &#39;@OECORE_NATIVE_SYSROOT&#39;<br>
&gt; &gt; EOF<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0cat &gt;/home/p_60123/hdd/NC/build-pony/tmp/wo=
rk/x86_64-linux/meson-<br>
&gt; native/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-=
<br>
&gt; linux/meson-native/0.63.3-r0/recipe-sysroot-<br>
&gt; native/usr/share/meson/meson.cross.template &lt;&lt;EOF<br>
&gt; &gt; [binaries]<br>
&gt; &gt; c =3D @CC<br>
&gt; &gt; cpp =3D @CXX<br>
&gt; &gt; ar =3D @AR<br>
&gt; &gt; nm =3D @NM<br>
&gt; &gt; strip =3D @STRIP<br>
&gt; &gt; pkgconfig =3D &#39;pkg-config&#39;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; [built-in options]<br>
&gt; &gt; c_args =3D @CFLAGS<br>
&gt; &gt; c_link_args =3D @LDFLAGS<br>
&gt; &gt; cpp_args =3D @CPPFLAGS<br>
&gt; &gt; cpp_link_args =3D @LDFLAGS<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; [properties]<br>
&gt; &gt; needs_exe_wrapper =3D true<br>
&gt; &gt; sys_root =3D @OECORE_TARGET_SYSROOT<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; [host_machine]<br>
&gt; &gt; system =3D &#39;$host_system&#39;<br>
&gt; &gt; cpu_family =3D &#39;$host_cpu_family&#39;<br>
&gt; &gt; cpu =3D &#39;$host_cpu&#39;<br>
&gt; &gt; endian =3D &#39;$host_endian&#39;<br>
&gt; &gt; EOF<br>
&gt; &gt; which triggered exception AttributeError: &#39;NoneType&#39; obje=
ct has no attribute &#39;split&#39;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Summary: There were 3 WARNING messages shown.<br>
&gt; &gt; Summary: There was 1 ERROR message shown, returning a non-zero ex=
it code.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Thanks &amp; Regards,<br>
&gt; &gt;<br>
&gt; &gt; Sateesh<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
</blockquote></div>

--0000000000007e6aa10635a2ff42--

