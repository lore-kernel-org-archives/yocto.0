Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3654AD0E6D8
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 09:39:47 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.42183.1729503582668047575
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 02:39:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=l1d/J22W;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.54, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a9a1b71d7ffso684255266b.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 02:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1729503581; x=1730108381; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=L/Ro6QDPqo79lNYasVx5DcdbGM71bz7xHFPAa9ERRWw=;
        b=l1d/J22WFBdshlmycxsIxvy6FMmbTjOUFxbJhk04/rkCPYfiUV/PORAOnNTbVVKUI9
         8rkMBbeCg4m3K4cSC6lojfka7hz+8qbulk8sxVllN8A2By2IBGBcbvedUjZstGQi3OFM
         RvUhRDXGjuoPlg4UQ29vjf+dBe9ICWaOdP2qVBEbjI1Z3mgUD9VrKoHXKvVsCbTzN8w/
         FlXzgeyh3hNr/CHU5wzzj6k4/BFkFVWBWP6nqEP21sgFiGW3TMWCedINml0VUrZhqe/Z
         pphT4USnwGfxhCHGiP1a/a9WiRE/GpsdDT5mX13xOounPTHJBbrDdgZbyvsg1DLe1tLv
         mcVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729503581; x=1730108381;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/Ro6QDPqo79lNYasVx5DcdbGM71bz7xHFPAa9ERRWw=;
        b=HIi6UmVO98j5IuZsXftAO/h41BwtQDlHU923rm4wUVTBpI9TXK3YeibT4iY1HaiX9A
         RSQNfohtgy4hO4zex8pPaUzkUripy4td300PTe5VsCGDbLWK6bk9y36uxFoqrZrRUiEW
         pnzkqIrOnluF+DeQs7me8bb2s9Dmubeyef8f5hBZPcRc3sC4RNeODLE78LvfDiXJ6gUI
         pI2gLfhfwkrep5vcTbJmiHdHrBzIIAyEbeq9fwnxNHjrXFnefrMuevGv2PH/GN6hqk+5
         8zgvT0TVznRUbRfDaoqhNpqjTg2XOHMVHNVLq1yuoYzoXBuIdR5p1EkDDw2TaQDwnsHt
         oCEA==
X-Gm-Message-State: AOJu0YwE9WywTkczvlS+pBNwG/FNSP162fLyg4qMQlyRYd6pS/pSevhA
	DfVHdtA4ZxC9mEx977MxGCUSEtrQ4xSvdp7eGUXiu6FXUlW9HjcRFIRYr2CJWwlNiw0ILK18X80
	JiJ0Ob8KifhizzCgKyRL7k/3SfWY9cJ6EDpipvLQk2vZExghXcUA=
X-Google-Smtp-Source: AGHT+IEuXatd4JvOoSCo1IUTxBHiMVN/bBxZ+V6v+sDLuW5hyCygl867eMhKJ361YEndcn9LSU6udPPFYz0nm37bAKc=
X-Received: by 2002:a17:907:d17:b0:a9a:2e12:1a06 with SMTP id
 a640c23a62f3a-a9a69c9b52emr926322566b.51.1729503580657; Mon, 21 Oct 2024
 02:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <ZxOc_m5GBfsY2Hhk@fedora> <15945.1729415999980937427@lists.yoctoproject.org>
In-Reply-To: <15945.1729415999980937427@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Mon, 21 Oct 2024 11:39:14 +0200
Message-ID: <CAEt6NwrhEanG17jKXLR5vzL+YGeOT9zX_6aS189OV9vkcE8=6g@mail.gmail.com>
Subject: Re: [yocto] Question regarding executing an install script during the
 build of an image
To: yocto@lists.yoctoproject.org, koansoftware@gmail.com
Cc: Felix Kuhlmann <felix-kuhlmann@gmx.de>
Content-Type: multipart/alternative; boundary="0000000000009035d30624f96e0f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 09:39:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64059

--0000000000009035d30624f96e0f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Felix,

I presume you are talking about
https://github.com/thiagoralves/OpenPLC_v3/tree/master? In that case, what
*actually* runs in that installation script is
https://github.com/thiagoralves/OpenPLC_v3/blob/master/background_installer=
.sh,
which is a highly general purpose distribution targeted approach, which
basically relies on being able to pull in packages at random. This is
nowhere near reproducible, and therefore will cause you a lot of pain if
you want to put it into a recipe. So what you really need to do is:
1. make sure that all dependencies are already available as recipes so you
can treat them as DEPENDS/RDEPENDS. The entry point for working through it
is probably
https://github.com/thiagoralves/OpenPLC_v3/blob/b2ef6d15d0ec92110cf44ad3f58=
e364db60dec72/background_installer.sh#L241
2. factor out the hidden systemd service into a proper file and use the
systemd.bbclass mechanisms to install it:
https://github.com/thiagoralves/OpenPLC_v3/blob/b2ef6d15d0ec92110cf44ad3f58=
e364db60dec72/background_installer.sh#L215
3. understand whatever magic is needed additionally, starting point
probably is
https://github.com/thiagoralves/OpenPLC_v3/blob/b2ef6d15d0ec92110cf44ad3f58=
e364db60dec72/background_installer.sh#L250

Plus whatever goes wrong along the way. :-(

Greetz,
Josef

On Sun, Oct 20, 2024 at 11:20=E2=80=AFAM Marco Cavallini via lists.yoctopro=
ject.org
<koansoftware=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hello Felix,
> probably I don't have enough details to give you a complete hint.
> However, the solution usually suggested is to create your own recipe,
> perhaps using "recipetool create" [1] and then adapt its content (this is
> what I usually explain during my Yocto training courses).
> Then you can include in your recipe the installation and the management o=
f
> a launcher script and its systemd service for example (if you are using
> systemd) [2].
>
> [1]
> https://docs.yoctoproject.org/next/dev-manual/new-recipe.html?highlight=
=3Dsystemd
> [2]
> https://wiki.koansoftware.com/index.php/Add_a_systemd_service_file_into_a=
_Yocto_image
>
> Marco Cavallini
> Yocto Project ambassador
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64055):
> https://lists.yoctoproject.org/g/yocto/message/64055
> Mute This Topic: https://lists.yoctoproject.org/mt/109099192/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000009035d30624f96e0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Felix,<div><br></div><div>I presume you are talking abo=
ut=C2=A0<a href=3D"https://github.com/thiagoralves/OpenPLC_v3/tree/master">=
https://github.com/thiagoralves/OpenPLC_v3/tree/master</a>? In that case, w=
hat *actually* runs in that installation script is=C2=A0<a href=3D"https://=
github.com/thiagoralves/OpenPLC_v3/blob/master/background_installer.sh">htt=
ps://github.com/thiagoralves/OpenPLC_v3/blob/master/background_installer.sh=
</a>, which is a highly general purpose distribution targeted approach, whi=
ch basically relies on being able to pull in packages at random. This is no=
where near reproducible, and therefore will cause you a lot of pain if you =
want to put it into a recipe. So what you really need to do is:</div><div>1=
. make sure that all dependencies are already available as recipes so you c=
an treat them as DEPENDS/RDEPENDS. The entry point for working through it i=
s probably=C2=A0<a href=3D"https://github.com/thiagoralves/OpenPLC_v3/blob/=
b2ef6d15d0ec92110cf44ad3f58e364db60dec72/background_installer.sh#L241">http=
s://github.com/thiagoralves/OpenPLC_v3/blob/b2ef6d15d0ec92110cf44ad3f58e364=
db60dec72/background_installer.sh#L241</a></div><div>2. factor out the hidd=
en systemd service into a proper file and use the systemd.bbclass mechanism=
s to install it:=C2=A0<a href=3D"https://github.com/thiagoralves/OpenPLC_v3=
/blob/b2ef6d15d0ec92110cf44ad3f58e364db60dec72/background_installer.sh#L215=
">https://github.com/thiagoralves/OpenPLC_v3/blob/b2ef6d15d0ec92110cf44ad3f=
58e364db60dec72/background_installer.sh#L215</a></div><div>3. understand wh=
atever magic is needed additionally, starting point probably is=C2=A0<a hre=
f=3D"https://github.com/thiagoralves/OpenPLC_v3/blob/b2ef6d15d0ec92110cf44a=
d3f58e364db60dec72/background_installer.sh#L250">https://github.com/thiagor=
alves/OpenPLC_v3/blob/b2ef6d15d0ec92110cf44ad3f58e364db60dec72/background_i=
nstaller.sh#L250</a></div><div><br></div><div>Plus whatever goes wrong alon=
g the way. :-(</div><div><br></div><div>Greetz,</div><div>Josef</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun=
, Oct 20, 2024 at 11:20=E2=80=AFAM Marco Cavallini via <a href=3D"http://li=
sts.yoctoproject.org">lists.yoctoproject.org</a> &lt;koansoftware=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-le=
ft-color:rgb(204,204,204);padding-left:1ex"><div>Hello Felix,</div>
<div>probably I don&#39;t have enough details to give you a complete hint.<=
/div>
<div>However, the solution usually suggested is to create your own recipe, =
perhaps using &quot;recipetool create&quot; [1] and then adapt its content =
(this is what I usually explain during my Yocto training courses).</div>
<div>Then you can include in your recipe the installation and the managemen=
t of a launcher script and its systemd service for example (if you are usin=
g systemd) [2].</div>
<div>=C2=A0</div>
<div>[1] <a href=3D"https://docs.yoctoproject.org/next/dev-manual/new-recip=
e.html?highlight=3Dsystemd" rel=3D"noopener" target=3D"_blank">https://docs=
.yoctoproject.org/next/dev-manual/new-recipe.html?highlight=3Dsystemd</a></=
div>
<div>[2] <a href=3D"https://wiki.koansoftware.com/index.php/Add_a_systemd_s=
ervice_file_into_a_Yocto_image" rel=3D"noopener" target=3D"_blank">https://=
wiki.koansoftware.com/index.php/Add_a_systemd_service_file_into_a_Yocto_ima=
ge</a></div>
<div>=C2=A0</div>
<div>Marco Cavallini</div>
<div>Yocto Project ambassador</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#64055): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64055" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64055</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109099192/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109099192/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000009035d30624f96e0f--

