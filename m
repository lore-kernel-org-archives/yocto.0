Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97991C2D0CD
	for <webhook@archiver.kernel.org>; Wed, 21 May 2025 10:49:07 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web11.8356.1747824545434345438
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 May 2025 03:49:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ddmjMvF1;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: sateesh0457@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-70dec158cc1so13749047b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 03:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747824544; x=1748429344; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9UAuAFnbFnc4CgjeAXDDhtb0PgWLVgk+qliu1+mKFms=;
        b=ddmjMvF1S/1Mosudy8FgqCLkpRs+v9E3icOQyZQWrwyREIWcZftpPOrQ+ftnyI+5kl
         0AAS3Q7owvMiexXxMTNbRZgbqDzvb3XshysPDDu6KK9Gxtb2GHI9s5tcy4JjB5rmTBdW
         2L8HKQ+RCqzI7m2olMiPzy4qxZoXCC6xNXvhVhacg/t6RMa65Gj7HBP8P3ro2aoG1aRI
         VXaa9W3nZy2n5DiFJMfYP4rZrKqumkXKtSVZtaKzFnYGHGH6f6wJcKmTuQak3eTjR8L2
         rd+k3KXUI0QVFrWHYN0bcem9fyo5+iO5q02VEc8PflLbr2MCm21VTOuSmQlEiHYxoluc
         AHsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747824544; x=1748429344;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9UAuAFnbFnc4CgjeAXDDhtb0PgWLVgk+qliu1+mKFms=;
        b=tIHabp0LL7CmCCcYlF8J+8HWTMwGwht/1NL1FFrk3ud0EeEZBKCfNbolRLnYCM8vNM
         FdS4RG1JKbIvFlKJN5MISVhc4YtDC1BK89J9OntRuDt3j6wcsMaY6x13zz+K1ahh1fXd
         jHG0glyH+vhgtPWXSOgGtMYmIsx13Jx/iR0HisTtGONVs2faQ1izCKKC2c1hjDk4+oU/
         pQKSOrmhTaZlxpQrS7mQ0K14OocjiA+bBfgST4kyklMphe5IqWylUJip3CZAcJZrsLYR
         /wFNNNV/EnmCrJRSGDnk985AjJeYnYr1dAEJ/hSIe+auk+7J+y41VsuX6ekwxK9pGH6a
         YXMQ==
X-Gm-Message-State: AOJu0YyIcYIc2aSYXpfKXsIaTW8nWCtMt+/zwJSaYr0pI2Gedj/VUb0N
	qKBdCiIZnke3wD/nOPkpje3+mrRGvg5geKyoD7zr93XteuvSz8XDMhT3Er0e99y5boVgpr8yARV
	hgcf0TtBEePcQ4OaUkQ4BoBgXWOs6iHvDsQ==
X-Gm-Gg: ASbGncv+Qe72fw3r2/PVxqbPD5SqYJy//8KS0WpPRJHXzlJmUqJQRwAOVgBc7wlkgAQ
	Yx/E+GKDz0D7pWWxzAKl80DQ18Wuj1EGxRNmA4aAmI0b4IXwkVmQnlT/PU181Hyu6RYaQnINQZY
	W3ybttfReW0ObNsWRVFSbNnSRuQm26sYyWbdTV//ua3V27NCQXswixKS8Kh33dI+7/x7M=
X-Google-Smtp-Source: AGHT+IEtnOd/WZIVmvW7X6GR853M9pjuZGqOFCWDPjMiWaQKoUhgB2TXMKusJuBE+tqSFJuWQZpOUGjJR58Lgm95sVE=
X-Received: by 2002:a05:690c:3708:b0:70d:cfa6:3a78 with SMTP id
 00721157ae682-70dcfa63c61mr142126757b3.14.1747824544398; Wed, 21 May 2025
 03:49:04 -0700 (PDT)
MIME-Version: 1.0
References: <urlO.1747823018739136306.ditq@lists.yoctoproject.org> <CANNYZj-+kZUPy23+7onssTXf8t_L6FAcUReAg4nMLCwGZbrmBw@mail.gmail.com>
In-Reply-To: <CANNYZj-+kZUPy23+7onssTXf8t_L6FAcUReAg4nMLCwGZbrmBw@mail.gmail.com>
From: sateesh m <sateesh0457@gmail.com>
Date: Wed, 21 May 2025 16:18:52 +0530
X-Gm-Features: AX0GCFteBkFz_nlXvugRjBgwMCB7BFmBFgEYz_A6SHKIkclcSRYuDXTUwBqdAm4
Message-ID: <CACsETSvDWc_uaF6OLvtfXF-qPzE0mbXVT=pSNp8g3J0x=-p6qw@mail.gmail.com>
Subject: Re: [yocto] meson upgrade issue dunfell (0.53 I want to upgrade 0.63)
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000019427d0635a31dc0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 May 2025 10:49:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65388

--00000000000019427d0635a31dc0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

Thank you for your reply. Actually I should not upgrade entire only meson
version I should upgrade.


Is any other leads you can recommend? This really helps me lot.


Thanks & Regards,
Sateesh

On Wed, 21 May, 2025, 4:02=E2=80=AFpm Alexander Kanavin, <alex.kanavin@gmai=
l.com>
wrote:

> You're better off updating to a yocto release that is
> - currently supported
> - has a recent enough meson.
>
> Alex
>
> On Wed, 21 May 2025 at 12:23, sateesh m via lists.yoctoproject.org
> <sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi team,
> >
> >
> >
> > I want to upgrade meson version 0.53.2 to 0.63 in my yocto build. I am
> currently using 3.1 dunfell.
> >
> > Facing below expansion issue. Can anyone know this issue can help me to
> fix this issue.
> >
> > ERROR: ExpansionError during parsing
> /home/p_60123/hdd/NC/poky/../meta-cve-patch/recipes-extended/meson/
> meson_0.63.3.bb
> > Traceback (most recent call last):
> >   File "Var <install_templates>", line 1, in <module>
> >   File
> "/home/p_60123/hdd/NC/poky/../meta-cve-patch/classes/meson-routines.bbcla=
ss",
> line 10, in meson_array(var=3D'BUILD_READELF', d=3D<bb.data_smart.DataSma=
rt
> object at 0x7ff52c2f1c50>):
> >      def meson_array(var, d):
> > >    items =3D d.getVar(var).split()
> >          return repr(items[0] if len(items) =3D=3D 1 else items)
> > bb.data_smart.ExpansionError: Failure expanding variable
> install_templates, expression was     install -d
> /home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-native/0.63.3=
-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-native=
/0.63.3-r0/recipe-sysroot-native/usr/share/meson
> >
> >
> >
> >     cat
> >/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-native/0.63.=
3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-nativ=
e/0.63.3-r0/recipe-sysroot-native/usr/share/meson/meson.native.template
> <<EOF
> > [binaries]
> > c =3D ${@meson_array('BUILD_CC', d)}
> > cpp =3D ${@meson_array('BUILD_CXX', d)}
> > ar =3D ${@meson_array('BUILD_AR', d)}
> > nm =3D ${@meson_array('BUILD_NM', d)}
> > strip =3D ${@meson_array('BUILD_STRIP', d)}
> > readelf =3D ${@meson_array('BUILD_READELF', d)}
> > pkgconfig =3D 'pkg-config-native'
> >
> > [built-in options]
> > c_args =3D ['-isystem@{OECORE_NATIVE_SYSROOT}/usr/include' ,
> ${@var_list2str('BUILD_OPTIMIZATION', d)}]
> > c_link_args =3D ${@generate_native_link_template(d)}
> > cpp_args =3D ['-isystem@{OECORE_NATIVE_SYSROOT}/usr/include' ,
> ${@var_list2str('BUILD_OPTIMIZATION', d)}]
> > cpp_link_args =3D ${@generate_native_link_template(d)}
> > [properties]
> > sys_root =3D '@OECORE_NATIVE_SYSROOT'
> > EOF
> >
> >
> >
> >     cat
> >/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-native/0.63.=
3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/work/x86_64-linux/meson-nativ=
e/0.63.3-r0/recipe-sysroot-native/usr/share/meson/meson.cross.template
> <<EOF
> > [binaries]
> > c =3D @CC
> > cpp =3D @CXX
> > ar =3D @AR
> > nm =3D @NM
> > strip =3D @STRIP
> > pkgconfig =3D 'pkg-config'
> >
> >
> >
> > [built-in options]
> > c_args =3D @CFLAGS
> > c_link_args =3D @LDFLAGS
> > cpp_args =3D @CPPFLAGS
> > cpp_link_args =3D @LDFLAGS
> >
> >
> >
> > [properties]
> > needs_exe_wrapper =3D true
> > sys_root =3D @OECORE_TARGET_SYSROOT
> >
> >
> >
> > [host_machine]
> > system =3D '$host_system'
> > cpu_family =3D '$host_cpu_family'
> > cpu =3D '$host_cpu'
> > endian =3D '$host_endian'
> > EOF
> > which triggered exception AttributeError: 'NoneType' object has no
> attribute 'split'
> >
> >
> >
> >
> >
> > Summary: There were 3 WARNING messages shown.
> > Summary: There was 1 ERROR message shown, returning a non-zero exit cod=
e.
> >
> >
> >
> > Thanks & Regards,
> >
> > Sateesh
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#65383):
> https://lists.yoctoproject.org/g/yocto/message/65383
> > Mute This Topic: https://lists.yoctoproject.org/mt/113226670/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--00000000000019427d0635a31dc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Alexander,<div dir=3D"auto"><br></div><div dir=3D"auto=
">Thank you for your reply. Actually I should not upgrade entire only meson=
 version I should upgrade.=C2=A0</div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Is any other leads you can=C2=A0recom=
mend? This really helps me lot.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Thanks &amp; Regards,</div><div dir=
=3D"auto">Sateesh</div></div><br><div class=3D"gmail_quote gmail_quote_cont=
ainer"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 21 May, 2025, 4:02=E2=
=80=AFpm Alexander Kanavin, &lt;<a href=3D"mailto:alex.kanavin@gmail.com">a=
lex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">You&#39;re better off updating to a yocto release that is<br>
- currently supported<br>
- has a recent enough meson.<br>
<br>
Alex<br>
<br>
On Wed, 21 May 2025 at 12:23, sateesh m via <a href=3D"http://lists.yoctopr=
oject.org" rel=3D"noreferrer noreferrer" target=3D"_blank">lists.yoctoproje=
ct.org</a><br>
&lt;sateesh0457=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" targe=
t=3D"_blank" rel=3D"noreferrer">gmail.com@lists.yoctoproject.org</a>&gt; wr=
ote:<br>
&gt;<br>
&gt; Hi team,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I want to upgrade meson version 0.53.2 to 0.63 in my yocto build. I am=
 currently using 3.1 dunfell.<br>
&gt;<br>
&gt; Facing below expansion issue. Can anyone know this issue can help me t=
o fix this issue.<br>
&gt;<br>
&gt; ERROR: ExpansionError during parsing /home/p_60123/hdd/NC/poky/../meta=
-cve-patch/recipes-extended/meson/<a href=3D"http://meson_0.63.3.bb" rel=3D=
"noreferrer noreferrer" target=3D"_blank">meson_0.63.3.bb</a><br>
&gt; Traceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0File &quot;Var &lt;install_templates&gt;&quot;, line 1, in=
 &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0File &quot;/home/p_60123/hdd/NC/poky/../meta-cve-patch/cla=
sses/meson-routines.bbclass&quot;, line 10, in meson_array(var=3D&#39;BUILD=
_READELF&#39;, d=3D&lt;bb.data_smart.DataSmart object at 0x7ff52c2f1c50&gt;=
):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 def meson_array(var, d):<br>
&gt; &gt;=C2=A0 =C2=A0 items =3D d.getVar(var).split()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return repr(items[0] if len(items) =
=3D=3D 1 else items)<br>
&gt; bb.data_smart.ExpansionError: Failure expanding variable install_templ=
ates, expression was=C2=A0 =C2=A0 =C2=A0install -d /home/p_60123/hdd/NC/bui=
ld-pony/tmp/work/x86_64-linux/meson-native/0.63.3-r0/image/home/p_60123/hdd=
/NC/build-pony/tmp/work/x86_64-linux/meson-native/0.63.3-r0/recipe-sysroot-=
native/usr/share/meson<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0cat &gt;/home/p_60123/hdd/NC/build-pony/tmp/work/x8=
6_64-linux/meson-native/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/=
work/x86_64-linux/meson-native/0.63.3-r0/recipe-sysroot-native/usr/share/me=
son/meson.native.template &lt;&lt;EOF<br>
&gt; [binaries]<br>
&gt; c =3D ${@meson_array(&#39;BUILD_CC&#39;, d)}<br>
&gt; cpp =3D ${@meson_array(&#39;BUILD_CXX&#39;, d)}<br>
&gt; ar =3D ${@meson_array(&#39;BUILD_AR&#39;, d)}<br>
&gt; nm =3D ${@meson_array(&#39;BUILD_NM&#39;, d)}<br>
&gt; strip =3D ${@meson_array(&#39;BUILD_STRIP&#39;, d)}<br>
&gt; readelf =3D ${@meson_array(&#39;BUILD_READELF&#39;, d)}<br>
&gt; pkgconfig =3D &#39;pkg-config-native&#39;<br>
&gt;<br>
&gt; [built-in options]<br>
&gt; c_args =3D [&#39;-isystem@{OECORE_NATIVE_SYSROOT}/usr/include&#39; , $=
{@var_list2str(&#39;BUILD_OPTIMIZATION&#39;, d)}]<br>
&gt; c_link_args =3D ${@generate_native_link_template(d)}<br>
&gt; cpp_args =3D [&#39;-isystem@{OECORE_NATIVE_SYSROOT}/usr/include&#39; ,=
 ${@var_list2str(&#39;BUILD_OPTIMIZATION&#39;, d)}]<br>
&gt; cpp_link_args =3D ${@generate_native_link_template(d)}<br>
&gt; [properties]<br>
&gt; sys_root =3D &#39;@OECORE_NATIVE_SYSROOT&#39;<br>
&gt; EOF<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0cat &gt;/home/p_60123/hdd/NC/build-pony/tmp/work/x8=
6_64-linux/meson-native/0.63.3-r0/image/home/p_60123/hdd/NC/build-pony/tmp/=
work/x86_64-linux/meson-native/0.63.3-r0/recipe-sysroot-native/usr/share/me=
son/meson.cross.template &lt;&lt;EOF<br>
&gt; [binaries]<br>
&gt; c =3D @CC<br>
&gt; cpp =3D @CXX<br>
&gt; ar =3D @AR<br>
&gt; nm =3D @NM<br>
&gt; strip =3D @STRIP<br>
&gt; pkgconfig =3D &#39;pkg-config&#39;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; [built-in options]<br>
&gt; c_args =3D @CFLAGS<br>
&gt; c_link_args =3D @LDFLAGS<br>
&gt; cpp_args =3D @CPPFLAGS<br>
&gt; cpp_link_args =3D @LDFLAGS<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; [properties]<br>
&gt; needs_exe_wrapper =3D true<br>
&gt; sys_root =3D @OECORE_TARGET_SYSROOT<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; [host_machine]<br>
&gt; system =3D &#39;$host_system&#39;<br>
&gt; cpu_family =3D &#39;$host_cpu_family&#39;<br>
&gt; cpu =3D &#39;$host_cpu&#39;<br>
&gt; endian =3D &#39;$host_endian&#39;<br>
&gt; EOF<br>
&gt; which triggered exception AttributeError: &#39;NoneType&#39; object ha=
s no attribute &#39;split&#39;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Summary: There were 3 WARNING messages shown.<br>
&gt; Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thanks &amp; Regards,<br>
&gt;<br>
&gt; Sateesh<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#65383): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/65383" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/65383</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/11322667=
0/1686489" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/mt/113226670/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"=
_blank" rel=3D"noreferrer">alex.kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--00000000000019427d0635a31dc0--

