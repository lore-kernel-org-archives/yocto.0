Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA94C3DA5D
	for <webhook@archiver.kernel.org>; Thu, 25 Jul 2024 10:57:06 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.33577.1721905024100643530
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jul 2024 03:57:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z5qkyymG;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ef2ed592f6so215631fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jul 2024 03:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721905022; x=1722509822; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N9y5Kw736ikf6N/DlZNH5Zq56ydYX8W3MA62YZFnYhs=;
        b=Z5qkyymG5ENw/9IGU1vAtTCA2GhPIkpvsAteC0HRQu70VXwlKg29bsf7W8N7O6Kf8m
         KT8zlZr28nvU4nI8F6QsvyBX/pNLMQ5LA0i0o8JHR5AJM/y/uoejvN/MNUCPjjVKMsPw
         /Wk7KL9LU0Gp8lBllD9E9IsC1n3OQ83zKHEfdEpPHDeUPTkzvymnpCY4AByvW90W/kH3
         9Bs+EBpqQbxXsF+cKu1DP80Z+BjHbXk0i0oySWb4u4GroXl0rXsr0dCuqKYBu45r7pAC
         bBf0p6iMcSEXZHU+fWGHnfFy+3+InAoSEyeOvBIiSkRFa4uvDE5jVbanBQxvfVsGoe3n
         EZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721905022; x=1722509822;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N9y5Kw736ikf6N/DlZNH5Zq56ydYX8W3MA62YZFnYhs=;
        b=q1NWLagL8besHA/9NXIiWL0848v1GdGTeF6xlYpRHO26nSfykbyc4+pJndqJbZfCh1
         R80EFUSEvipVyqMfAgOddWwkUbJ7yiLihNBesKtXBv7DemOE3WnvK/SqttAEAswoxRIY
         ocjxMBTJ8bkeFlbm4wet5ddnA/4ULw5W9ent02moyrTg0eTtAo/KT4AFS68YB1N/8SYL
         zjdGfS+kBA/zth5Ej5wdcHG40EZSYCNWY+jscYGs1v7x3AszVfe+bNsf0utP+50tk29N
         tnQTmgPBu/31pSJQRKZWvaihUYW+7/u6pim1nncxAFalBgTB1oSM4alyQEjBCZ37qKHG
         yh4Q==
X-Gm-Message-State: AOJu0YxvTBvqMF1fO9HCGmaL9m68ZhsmhjS7qa7e33RPOx4fnmxU9/1x
	vUcT9EM5SNojY3lqCz/oha+LMudLLNiSRfjjYfM6102GE3diGZU67H7bmK/+w1EpgWVNwHJ/8q8
	scudLComI5PdkuaAIrczrNBO7nupFog==
X-Google-Smtp-Source: AGHT+IEuyMeOx4Dazcpw5HklGuINVoDVlISDBBhYO43SxIKt7+0v66fbHflZ1Y1GBICJyznGuC44DYdYhWkWke7ZA+M=
X-Received: by 2002:a2e:9b11:0:b0:2ef:2472:300a with SMTP id
 38308e7fff4ca-2f03db83079mr11373191fa.2.1721905021354; Thu, 25 Jul 2024
 03:57:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37kUr5DE7Q+eD7-d3SiT4PVbahVY156sbQodv9gqsug7Q@mail.gmail.com>
 <e4eed6dd-574b-482c-b468-81aebe66f66a@cherry.de>
In-Reply-To: <e4eed6dd-574b-482c-b468-81aebe66f66a@cherry.de>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 25 Jul 2024 12:56:50 +0200
Message-ID: <CAAfyv34sJ5W3n=v8U8gAq7e4B0q4hm605Qq7x7jyujBQOi+ymw@mail.gmail.com>
Subject: Re: [yocto] rockchip: chromium HW accelerated
To: yocto@lists.yoctoproject.org, quentin.schulz@cherry.de
Content-Type: multipart/alternative; boundary="000000000000228c66061e10410a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jul 2024 10:57:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63572

--000000000000228c66061e10410a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,

On Thu, Jul 25, 2024 at 12:29=E2=80=AFPM Quentin Schulz via lists.yoctoproj=
ect.org
<quentin.schulz=3Dcherry.de@lists.yoctoproject.org> wrote:

> Hi Marek,
>
> On 7/25/24 12:22 PM, Marek Belisko via lists.yoctoproject.org wrote:
> > You don't often get email from marek.belisko=3D
> gmail.com@lists.yoctoproject.org. Learn why this is important<
> https://aka.ms/LearnAboutSenderIdentification>
> > Hi,
> >
> > I would like to ask if anyone tried on scrathgap accelerated chromium
> for radxa cm3 using the mainline rockchip layer. I've enabled chromium it
> was compiled properly but getting below:
> >
> > [1860:1860:0805/093227.660753:ERROR:filesystem_posix.cc(63)] mkdir : No
> such file or directory (2)
> > chrome_crashpad_handler: --database is required
> > Try 'chrome_crashpad_handler --help' for more information.
> > [1860:1876:0805/093228.292318:ERROR:bus.cc(407)] Failed to connect to
> the bus: Could not parse server address: Unknown address type (examples o=
f
> valid types are "tcp" and on UNIX "unix")
> > [1860:1876:0805/093228.292474:ERROR:bus.cc(407)] Failed to connect to
> the bus: Could not parse server address: Unknown address type (examples o=
f
> valid types are "tcp" and on UNIX "unix")
> > [1860:1876:0805/093228.292569:ERROR:bus.cc(407)] Failed to connect to
> the bus: Could not parse server address: Unknown address type (examples o=
f
> valid types are "tcp" and on UNIX "unix")
> > [1860:1876:0805/093228.292849:ERROR:bus.cc(407)] Failed to connect to
> the bus: Could not parse server address: Unknown address type (examples o=
f
> valid types are "tcp" and on UNIX "unix")
> > Fontconfig error: No writable cache directories
> > Fontconfig error: No writable cache directories
> > libEGL warning: MESA-LOADER: failed to open rockchip:
> /usr/lib/dri/rockchip_dri.so: cannot open shared object file: No such fil=
e
> or directory (search paths /usr/lib/dri, suffix _dri)
> >
> > libEGL warning: MESA-LOADER: failed to open rockchip:
> /usr/lib/dri/rockchip_dri.so: cannot open shared object file: No such fil=
e
> or directory (search paths /usr/lib/dri, suffix _dri)
> >
> > libEGL warning: MESA-LOADER: failed to open zink:
> /usr/lib/dri/zink_dri.so: cannot open shared object file: No such file or
> directory (search paths /usr/lib/dri, suffix _dri)
> >
> > [1888:1888:0805/093228.660850:FATAL:gpu_init.cc(593)] Passthrough is no=
t
> supported, GL is egl, ANGLE is
> > [  585.551873] audit: type=3D1701 audit(1501925548.664:112):
> auid=3D4294967295 uid=3D0 gid=3D0 ses=3D4294967295 pid=3D1888 comm=3D"chr=
omium-bin"
> exe=3D"/usr/lib/chromium/chromium-bin" sig=3D5 res=3D1
> > [1860:1876:0805/093228.748702:ERROR:bus.cc(407)] Failed to connect to
> the bus: Could not parse server address: Unknown address type (examples o=
f
> valid types are "tcp" and on UNIX "unix")
> > [1860:1876:0805/093228.748903:ERROR:bus.cc(407)] Failed to connect to
> the bus: Could not parse server address: Unknown address type (examples o=
f
> valid types are "tcp" and on UNIX "unix")
> > Fontconfig error: No writable cache directories
> > Fontconfig error: No writable cache directories
> > [1860:1876:0805/093229.134377:ERROR:bus.cc(407)] Failed to connect to
> the bus: Could not parse server address: Unknown address type (examples o=
f
> valid types are "tcp" and on UNIX "unix")
> > [1860:1876:0805/093229.134507:ERROR:bus.cc(407)] Failed to connect to
> the bus: Could not parse server address
> >
> > and it won't start. Could it be mesa related (assuming from above
> errors).
> >
>
> Yes it's very likely mesa related.
>
>
> https://git.yoctoproject.org/meta-rockchip/tree/recipes-graphics/mesa/mes=
a_%25.bbappend?h=3Dscarthgap
> is what you have in the scarthgap branch.
>
>
> https://git.yoctoproject.org/meta-rockchip/tree/recipes-graphics/mesa/mes=
a_%25.bbappend?h=3Dmaster
> is what you have in the master branch. One needs to backport the patches
> for rk3566 and rk3568 to scarthgap branch. Would you mind sending those
> patches (after testing of course :) )?
>
OK I'll give it a go and post when tested. Thanks for the hint.

>
> Cheers,
> Quentin
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63571):
> https://lists.yoctoproject.org/g/yocto/message/63571
> Mute This Topic: https://lists.yoctoproject.org/mt/107540138/900721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> marek.belisko@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
BR,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000228c66061e10410a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Quentin,</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 25, 2024 at 12:29=E2=80=AFPM Q=
uentin Schulz via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproj=
ect.org</a> &lt;quentin.schulz=3D<a href=3D"mailto:cherry.de@lists.yoctopro=
ject.org">cherry.de@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Hi Marek,<br>
<br>
On 7/25/24 12:22 PM, Marek Belisko via <a href=3D"http://lists.yoctoproject=
.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote=
:<br>
&gt; You don&#39;t often get email from marek.belisko=3D<a href=3D"mailto:g=
mail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctopro=
ject.org</a>. Learn why this is important&lt;<a href=3D"https://aka.ms/Lear=
nAboutSenderIdentification" rel=3D"noreferrer" target=3D"_blank">https://ak=
a.ms/LearnAboutSenderIdentification</a>&gt;<br>
&gt; Hi,<br>
&gt; <br>
&gt; I would like to ask if anyone tried on scrathgap accelerated chromium =
for radxa cm3 using the mainline rockchip layer. I&#39;ve enabled chromium =
it was compiled properly but getting below:<br>
&gt; <br>
&gt; [1860:1860:0805/093227.660753:ERROR:filesystem_posix.cc(63)] mkdir : N=
o such file or directory (2)<br>
&gt; chrome_crashpad_handler: --database is required<br>
&gt; Try &#39;chrome_crashpad_handler --help&#39; for more information.<br>
&gt; [1860:1876:0805/093228.292318:ERROR:bus.cc(407)] Failed to connect to =
the bus: Could not parse server address: Unknown address type (examples of =
valid types are &quot;tcp&quot; and on UNIX &quot;unix&quot;)<br>
&gt; [1860:1876:0805/093228.292474:ERROR:bus.cc(407)] Failed to connect to =
the bus: Could not parse server address: Unknown address type (examples of =
valid types are &quot;tcp&quot; and on UNIX &quot;unix&quot;)<br>
&gt; [1860:1876:0805/093228.292569:ERROR:bus.cc(407)] Failed to connect to =
the bus: Could not parse server address: Unknown address type (examples of =
valid types are &quot;tcp&quot; and on UNIX &quot;unix&quot;)<br>
&gt; [1860:1876:0805/093228.292849:ERROR:bus.cc(407)] Failed to connect to =
the bus: Could not parse server address: Unknown address type (examples of =
valid types are &quot;tcp&quot; and on UNIX &quot;unix&quot;)<br>
&gt; Fontconfig error: No writable cache directories<br>
&gt; Fontconfig error: No writable cache directories<br>
&gt; libEGL warning: MESA-LOADER: failed to open rockchip: /usr/lib/dri/roc=
kchip_dri.so: cannot open shared object file: No such file or directory (se=
arch paths /usr/lib/dri, suffix _dri)<br>
&gt; <br>
&gt; libEGL warning: MESA-LOADER: failed to open rockchip: /usr/lib/dri/roc=
kchip_dri.so: cannot open shared object file: No such file or directory (se=
arch paths /usr/lib/dri, suffix _dri)<br>
&gt; <br>
&gt; libEGL warning: MESA-LOADER: failed to open zink: /usr/lib/dri/zink_dr=
i.so: cannot open shared object file: No such file or directory (search pat=
hs /usr/lib/dri, suffix _dri)<br>
&gt; <br>
&gt; [1888:1888:0805/093228.660850:FATAL:gpu_init.cc(593)] Passthrough is n=
ot supported, GL is egl, ANGLE is<br>
&gt; [=C2=A0 585.551873] audit: type=3D1701 audit(1501925548.664:112): auid=
=3D4294967295 uid=3D0 gid=3D0 ses=3D4294967295 pid=3D1888 comm=3D&quot;chro=
mium-bin&quot; exe=3D&quot;/usr/lib/chromium/chromium-bin&quot; sig=3D5 res=
=3D1<br>
&gt; [1860:1876:0805/093228.748702:ERROR:bus.cc(407)] Failed to connect to =
the bus: Could not parse server address: Unknown address type (examples of =
valid types are &quot;tcp&quot; and on UNIX &quot;unix&quot;)<br>
&gt; [1860:1876:0805/093228.748903:ERROR:bus.cc(407)] Failed to connect to =
the bus: Could not parse server address: Unknown address type (examples of =
valid types are &quot;tcp&quot; and on UNIX &quot;unix&quot;)<br>
&gt; Fontconfig error: No writable cache directories<br>
&gt; Fontconfig error: No writable cache directories<br>
&gt; [1860:1876:0805/093229.134377:ERROR:bus.cc(407)] Failed to connect to =
the bus: Could not parse server address: Unknown address type (examples of =
valid types are &quot;tcp&quot; and on UNIX &quot;unix&quot;)<br>
&gt; [1860:1876:0805/093229.134507:ERROR:bus.cc(407)] Failed to connect to =
the bus: Could not parse server address<br>
&gt; <br>
&gt; and it won&#39;t start. Could it be mesa related (assuming from above =
errors).<br>
&gt; <br>
<br>
Yes it&#39;s very likely mesa related.<br>
<br>
<a href=3D"https://git.yoctoproject.org/meta-rockchip/tree/recipes-graphics=
/mesa/mesa_%25.bbappend?h=3Dscarthgap" rel=3D"noreferrer" target=3D"_blank"=
>https://git.yoctoproject.org/meta-rockchip/tree/recipes-graphics/mesa/mesa=
_%25.bbappend?h=3Dscarthgap</a> <br>
is what you have in the scarthgap branch.<br>
<br>
<a href=3D"https://git.yoctoproject.org/meta-rockchip/tree/recipes-graphics=
/mesa/mesa_%25.bbappend?h=3Dmaster" rel=3D"noreferrer" target=3D"_blank">ht=
tps://git.yoctoproject.org/meta-rockchip/tree/recipes-graphics/mesa/mesa_%2=
5.bbappend?h=3Dmaster</a> <br>
is what you have in the master branch. One needs to backport the patches <b=
r>
for rk3566 and rk3568 to scarthgap branch. Would you mind sending those <br=
>
patches (after testing of course :) )?<br></blockquote><div>OK I&#39;ll giv=
e it a go and post when tested. Thanks for the hint.</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
Cheers,<br>
Quentin<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63571): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63571" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63571</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107540138/900=
721" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/107540138/900721</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek=
.belisko@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br></div>BR,<div><br></div><div>marek<br clear=3D"=
all"><div><br></div><span class=3D"gmail_signature_prefix">-- </span><br><d=
iv dir=3D"ltr" class=3D"gmail_signature">as simple and primitive as possibl=
e<br>-------------------------------------------------<br>Marek Belisko - O=
PEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005=
 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: =
#opennandra<br>web: <a href=3D"http://open-nandra.com" target=3D"_blank">ht=
tp://open-nandra.com</a></div></div></div>

--000000000000228c66061e10410a--

