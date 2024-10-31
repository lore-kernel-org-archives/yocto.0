Return-Path: <freddy.boman@bastec.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E728E68968
	for <webhook@archiver.kernel.org>; Thu, 31 Oct 2024 09:38:36 +0000 (UTC)
Subject: Re: [yocto] Building SDK fails after update to scarthgap
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: freddy.boman@bastec.se
X-Originating-Location: Johanneshov, Stockholm County, SE (98.128.186.98)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 31 Oct 2024 02:38:34 -0700
References: <CANNYZj-dOcmY=OdgcZ14vD1Jmunyx3X_U90NDG3bumV5t3kpOA@mail.gmail.com>
In-Reply-To: <CANNYZj-dOcmY=OdgcZ14vD1Jmunyx3X_U90NDG3bumV5t3kpOA@mail.gmail.com>
Message-ID: <17849.1730367514042333774@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CUAq7L6QcUd157EyZ9Ua"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 09:38:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64192

--CUAq7L6QcUd157EyZ9Ua
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is just weird.
Plain poky, works fine.

Copy entire qemu recipe from poky into our top layer, now it works.

I checked with -e for both recipe in our layer and in standard location.

In both cases virglrenderer is disabled (depends,extra_oeconf,packageconfig=
).
But a few other things do change.
Working
PACKAGECONFIG=3D"fdt sdl kvm pie slirp =C2=A0 =C2=A0 =C2=A0"
Not working
PACKAGECONFIG=3D"fdt sdl kvm pie slirp =C2=A0 =C2=A0 =C2=A0 pipewire aio vh=
ost"
Those settings are reflected in oeconf.
Can only assume that one of those three have a dependency on virglrenderer.

Tried adding all three of those to distro_feature:remove but that made no d=
ifference.

/Freddy

--CUAq7L6QcUd157EyZ9Ua
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>This is just weird.</div>
<div>Plain poky, works fine.</div>
<div>&nbsp;</div>
<div>Copy entire qemu recipe from poky into our top layer, now it works.</d=
iv>
<div>&nbsp;</div>
<div>I checked with -e for both recipe in our layer and in standard locatio=
n.</div>
<div>&nbsp;</div>
<div>In both cases virglrenderer is disabled (depends,extra_oeconf,packagec=
onfig).</div>
<div>But a few other things do change.</div>
<div>Working</div>
<div>PACKAGECONFIG=3D"fdt sdl kvm pie slirp &nbsp; &nbsp; &nbsp;"</div>
<div>Not working</div>
<div>PACKAGECONFIG=3D"fdt sdl kvm pie slirp &nbsp; &nbsp; &nbsp; pipewire a=
io vhost"</div>
<div>Those settings are reflected in oeconf.</div>
<div>Can only assume that one of those three have a dependency on virglrend=
erer.</div>
<div>&nbsp;</div>
<div>Tried adding all three of those to distro_feature:remove but that made=
 no difference.</div>
<div>&nbsp;</div>
<div>/Freddy</div>
<div>&nbsp;</div>

--CUAq7L6QcUd157EyZ9Ua--

