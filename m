Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DBB9C25B10
	for <webhook@archiver.kernel.org>; Fri, 10 May 2024 04:27:21 +0000 (UTC)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web11.5242.1715315236491647877
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 May 2024 21:27:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=1VOO2W2d;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.222.41, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-7f169d3ef53so602027241.1
        for <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 21:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1715315235; x=1715920035; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9RX2oddDe2VYrQKUvMU4k8B6Dl3Mkm0K6J44lZV2Nr8=;
        b=1VOO2W2d0Q0Sb7aIRR4Qe/3VmcjOE+cltuD1fyk6coNyl7jL+U4QdO0WoioO10FO3x
         n5CHyo91Bu6isoyItCCMtmw/WW9DfAejI73siQ0nFuptg58Ri85FHRYSW/O88/DK7AwM
         mE5e8iU/N2y0ETQ+etZgJploBSIgNWs/R1o97nBoUK/dDSAmIYOpIsWa0cKPbJZ8Wmj5
         41lJDWuHzP49twbFTcT/DF763vbxk4E6GmZ0iW5EAIvbp9JsJw2QKKrDdw4i2ETRSqOI
         hkktEfXRJzL8IvXlLLHv6SnhY6xStz/6t18OZrFCRIVWGKh1gXOPnAt5cmxUTLmA7pvp
         341A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715315235; x=1715920035;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9RX2oddDe2VYrQKUvMU4k8B6Dl3Mkm0K6J44lZV2Nr8=;
        b=BQul9i4S079IA8U80uWB1O6CcYHzmv12IzKR3fQPTdpwQ6tM2SUV83utFPUGHqdKeR
         IDjf9okY73E7ZIH0DY53MnDKHapwsPlAXxSLc7ylOX/ytnllDXp8ss8toYab6OcHH43u
         9mduZPaz0uwHFCdLNkLeZwXb0AOrz7gaI9E+uMAhTyBbBDzD57Kt4Ot/+IqB/cfLMznR
         nrClghVGYBlVTFPXraGEcb8Rk/T50aabS1g+iNjvJAaqdhUm1meGcpVTDK94rDFu0gsN
         jTD+Xeut2YuVZ9zQo9evn9BB0PB0jvqUPLijSwUYhyYb/MsRN5A+cX0oL2znZ7c6jxpd
         u7/g==
X-Gm-Message-State: AOJu0YxszOwuGiU4gCNMjmldd6gJw8NViiyhKXUo0JdFmVUlXiAguGpQ
	uSG+GB9Ew3yni2tDpqau0YutDmuzZPr+kwk5TmvOFR2rIBDEp+BrQ+jQe+kYi2u+X94sUnGRP+l
	AETQpMexUHKE1AE0IMf4XmqO5iJoCCV+5QW+xig==
X-Google-Smtp-Source: AGHT+IGNT+/4DYQNF8wwBG714IeKXbbjNhvRxyfiGY9IIRhDqniKjNBN3BORdr4sr49rGMAxP/fQN9zZMXMYBk0DZlA=
X-Received: by 2002:a05:6122:252a:b0:4df:19c0:86e1 with SMTP id
 71dfb90a1353d-4df88367ddbmr1961099e0c.13.1715315235455; Thu, 09 May 2024
 21:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
 <CAMKF1soiCS7BQ10rS_XpjHHApmUdjxd56Pe84kHCpD1Km5ZyhQ@mail.gmail.com>
 <CANuMBWE-nUnL4AKZvkhNqC+23YKOri5pbVNb8mtQgZ9oh_Krag@mail.gmail.com>
 <CAMKF1spiK52Tr4fVyaCNNiqsSAOm8bA6CEBT0d0ONf7VcJ4prQ@mail.gmail.com>
 <CANuMBWEvnXYsoUJj1mByhV8pOwan+6hQFkZMvjG1Y_d1W7RDYw@mail.gmail.com>
 <CAMKF1sokVhLK2muYkdM==d-OCQ66PDgcc2TcMZeK8pCa0xxbPg@mail.gmail.com>
 <CANuMBWG=_pScxQj=xYYc21Ks3DPhK1t+C+U0z2uTbAu2kinT2Q@mail.gmail.com> <CANNYZj8fD0sqYWum7Otyy=dZezCuk53AV_Vj1sMoZG5zo38Eug@mail.gmail.com>
In-Reply-To: <CANNYZj8fD0sqYWum7Otyy=dZezCuk53AV_Vj1sMoZG5zo38Eug@mail.gmail.com>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Fri, 10 May 2024 16:27:04 +1200
Message-ID: <CANuMBWFAj7k1EaKEjGdmSP0WiPZg=0H=vvmS1g3sJMjhL8_-ng@mail.gmail.com>
Subject: Re: [yocto] Warning about "no-recipes"
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000049a2d9061811f34b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 May 2024 04:27:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63069

--00000000000049a2d9061811f34b
Content-Type: text/plain; charset="UTF-8"

Thank you for everybodies' help

Following the suggestions I made the (in hindsight) obvious discovery that
the warning is generated in a recipe from somewhere else, namely
"meta-toradex-nxp".  The person who built this system has pinned
meta-toradex-nxp to a particular commit from 2021.  I do not know what they
were thinking, I am fairly confident they knew what they were doing.

I will leave it there as this is a warning.  While it is an otherwise clean
build, and I crave clean builds, there are actually problems that are real
roadblocks that I need to fix (another subject)

Next time I hope I can provide the necessary information faster.  It is
difficult to know what to provide as I am diving into the middle of two
large projects that use different styles.

Once again thank you for your help.

Worik




> I expect it is that latter directory my warning is originating from.
>
> The warning is:
> WARNING: No recipes in default available for:
>
> /home/yocto/thisbuild-yocto/layers/openembedded-core/../meta-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.20.0.imx.bbappend
>
> What this means is bitbake is looking for recipe file called
> gstreamer1.0-plugins-base_1.20.0.imx.bb and can't find it anywhere in
> configured layers. This can happen for multiple reasons:
>
> 1. That recipe file used to be available, but someone updated the
> layer containing it to a different revision where the file was either
> removed or updated to a different version (which is encoded into the
> filename). You need to find out whether that has happened, and either
> revert to the original revision, or rename the bbappend to match. Try
> using 'find' command with a generous wildcard expression to see what
> would roughly match in the overall tree.
>
>
>
Yes, this:

yocto@toradex-build:~/toradex-yocto$ find . -name
"gstreamer*-plugins-base*.bb"
./layers/openembedded-core/meta/recipes-multimedia/gstreamer/
gstreamer1.0-plugins-base_1.20.5.bb
./layers/meta-freescale/recipes-multimedia/gstreamer/
gstreamer1.0-plugins-base_1.20.3.imx.bb

My naive view is that I need to find where it is requiring
"recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.20.0.imx.bb" and
change that to "recipes-multimedia/gstreamer/
gstreamer1.0-plugins-base_1.20.5.imx.bb"

This is in somebody else's repository, we import it with a recursive git
clone pinned at a particular commit (it is using a git idiom

3. The file is not available in any of the layers. You need to go over
> the list of required layers in documentation for meta-this-build-nxp,
> and find everything you can about layers it depends on, and perhaps
> look at commit history for bbappend as well to find out
> which layer it's meant to be used with.
>
>
"thisbuild-nxp" is "toradex-nxp.

Reading the Readme it depends on:

yocto@toradex-build:~/toradex-yocto$ grep URI
layers/meta-toradex-nxp/README
  URI: git://git.openembedded.org/bitbake
  URI: git://git.openembedded.org/openembedded-core
  URI: git://git.yoctoproject.org/meta-freescale
  URI: https://github.com/Freescale/meta-freescale-3rdparty.git
  URI: git://git.toradex.com/meta-toradex-bsp-common

Is that where I start with "layers it depends on"?

The commit history seems to indicate "gstreamer1.0-plugins-base" is the
layer if is supposed to be used with:

yocto@toradex-build:~/toradex-yocto/layers/meta-toradex-nxp$ git log --
recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.20.0.imx.bbappend
commit bd7f3d8596e984d42afa1c9b30fd635fb02fc040
Author: Max Krummenacher <max.krummenacher@toradex.com>

Date:   Mon Sep 19 14:20:44 2022 +0200




    gstreamer1.0-plugins-base: follow version change



    The code the patch removes is still present, keep the patch also

    with the new version.



    Related-to: ELB-4665

    Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>



Without a specific look at your setup it's hard to say much more.
>
> Alex
>

--00000000000049a2d9061811f34b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for everybodies&#39; help<br></div><div><br=
></div><div><div>Following the suggestions I made the (in hindsight) obviou=
s=20
discovery that the warning is generated in a recipe from somewhere else, na=
mely &quot;meta-toradex-nxp&quot;.=C2=A0 The person who built this system h=
as pinned meta-toradex-nxp to a particular commit from 2021.=C2=A0 I do not=
 know what they were thinking, I am fairly confident they knew what they we=
re doing.</div><div><br></div></div><div>I will leave it there as this is a=
 warning.=C2=A0 While it is an otherwise clean build, and I crave clean bui=
lds, there are actually problems that are real roadblocks that I need to fi=
x (another subject) <br></div><div><br></div><div>Next time I hope I can pr=
ovide the necessary information faster.=C2=A0 It is difficult to know what =
to provide as I am diving into the middle of two large projects that use di=
fferent styles.=C2=A0 <br></div><div><br></div><div>Once again thank you fo=
r your help.=C2=A0 <br></div><div><br></div><div>Worik<br></div><div><br></=
div><div><br></div><br><div><br></div><div><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
&gt; I expect it is that latter directory my warning is originating from.<b=
r>
<br>
The warning is:<br>
WARNING: No recipes in default available for:<br>
=C2=A0 /home/yocto/thisbuild-yocto/layers/openembedded-core/../meta-thisbui=
ld-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.20.0.imx.bb=
append<br>
<br>
What this means is bitbake is looking for recipe file called<br>
<a href=3D"http://gstreamer1.0-plugins-base_1.20.0.imx.bb" rel=3D"noreferre=
r" target=3D"_blank">gstreamer1.0-plugins-base_1.20.0.imx.bb</a> and can&#3=
9;t find it anywhere in<br>
configured layers. This can happen for multiple reasons:<br>
<br>
1. That recipe file used to be available, but someone updated the<br>
layer containing it to a different revision where the file was either<br>
removed or updated to a different version (which is encoded into the<br>
filename). You need to find out whether that has happened, and either<br>
revert to the original revision, or rename the bbappend to match. Try<br>
using &#39;find&#39; command with a generous wildcard expression to see wha=
t<br>
would roughly match in the overall tree.<br>
<br><br></blockquote><div><br></div><div>Yes, this:</div><div><br></div><di=
v>yocto@toradex-build:~/toradex-yocto$ find . -name &quot;gstreamer*-plugin=
s-base*.bb&quot;<br>./layers/openembedded-core/meta/recipes-multimedia/gstr=
eamer/<a href=3D"http://gstreamer1.0-plugins-base_1.20.5.bb" target=3D"_bla=
nk">gstreamer1.0-plugins-base_1.20.5.bb</a><br>./layers/meta-freescale/reci=
pes-multimedia/gstreamer/<a href=3D"http://gstreamer1.0-plugins-base_1.20.3=
.imx.bb" target=3D"_blank">gstreamer1.0-plugins-base_1.20.3.imx.bb</a><br><=
/div><div><br></div><div>My naive view is that I need to find where it is r=
equiring &quot;recipes-multimedia/gstreamer/<a href=3D"http://gstreamer1.0-=
plugins-base_1.20.0.imx.bb" target=3D"_blank">gstreamer1.0-plugins-base_1.2=
0.0.imx.bb</a>&quot; and change that to &quot;recipes-multimedia/gstreamer/=
<a href=3D"http://gstreamer1.0-plugins-base_1.20.5.imx.bb" target=3D"_blank=
">gstreamer1.0-plugins-base_1.20.5.imx.bb</a>&quot;</div><div><br></div><di=
v>This is in somebody else&#39;s repository, we import it with a recursive =
git clone pinned at a particular commit (it is using a git idiom <br></div>=
<div></div><br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
3. The file is not available in any of the layers. You need to go over<br>
the list of required layers in documentation for meta-this-build-nxp,<br>
and find everything you can about layers it depends on, and perhaps<br>
look at commit history for bbappend as well to find out<br>
which layer it&#39;s meant to be used with.<br>
<br></blockquote><div><br></div><div>&quot;thisbuild-nxp&quot; is &quot;tor=
adex-nxp.</div><div><br></div><div>Reading the Readme it depends on:</div><=
div><br></div><div>yocto@toradex-build:~/toradex-yocto$ grep URI layers/met=
a-toradex-nxp/README <br>=C2=A0 URI: git://<a href=3D"http://git.openembedd=
ed.org/bitbake" target=3D"_blank">git.openembedded.org/bitbake</a><br>=C2=
=A0 URI: git://<a href=3D"http://git.openembedded.org/openembedded-core" ta=
rget=3D"_blank">git.openembedded.org/openembedded-core</a><br>=C2=A0 URI: g=
it://<a href=3D"http://git.yoctoproject.org/meta-freescale" target=3D"_blan=
k">git.yoctoproject.org/meta-freescale</a><br>=C2=A0 URI: <a href=3D"https:=
//github.com/Freescale/meta-freescale-3rdparty.git" target=3D"_blank">https=
://github.com/Freescale/meta-freescale-3rdparty.git</a><br>=C2=A0 URI: git:=
//<a href=3D"http://git.toradex.com/meta-toradex-bsp-common" target=3D"_bla=
nk">git.toradex.com/meta-toradex-bsp-common</a></div><div><br></div><div>Is=
 that where I start with &quot;layers it depends on&quot;?=C2=A0 <br></div>=
<div>=C2=A0</div><div>The commit history seems to indicate &quot;gstreamer1=
.0-plugins-base&quot; is the layer if is supposed to be used with:<br></div=
><div><br></div><div>yocto@toradex-build:~/toradex-yocto/layers/meta-torade=
x-nxp$ git log -- recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.=
20.0.imx.bbappend<br>commit bd7f3d8596e984d42afa1c9b30fd635fb02fc040 =C2=A0=
 =C2=A0<br>Author: Max Krummenacher &lt;<a href=3D"mailto:max.krummenacher@=
toradex.com" target=3D"_blank">max.krummenacher@toradex.com</a>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0<br>Date: =C2=A0 Mon Sep 19 14:20:44 2022 +0200 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0<br>=C2=A0 =C2=A0 gstreamer1.0-plugins-base: follow version chang=
e =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 The code the pat=
ch removes is still present, keep the patch also =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 with the new version. =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=
=A0 Related-to: ELB-4665 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <br>=C2=A0 =C2=A0 Signed-off-by: Max Krummenacher &lt;<a href=3D=
"mailto:max.krummenacher@toradex.com" target=3D"_blank">max.krummenacher@to=
radex.com</a>&gt;<br></div><div><br></div><div><br></div><div><br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
Without a specific look at your setup it&#39;s hard to say much more.<br>
<br>
Alex<br>
</blockquote></div></div></div>

--00000000000049a2d9061811f34b--

