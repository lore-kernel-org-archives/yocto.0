Return-Path: <freddy.boman@bastec.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576B3D5CC9B
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 11:34:32 +0000 (UTC)
Subject: Re: [yocto] Building SDK fails after update to scarthgap
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: freddy.boman@bastec.se
X-Originating-Location: Stockholm, Stockholm County, SE (195.178.171.130)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Oct 2024 04:34:29 -0700
References: <CANNYZj_zzRO0Bi84_xAHCe2xNRBXXnsBEgzr-=kohwqKQhE2UQ@mail.gmail.com>
In-Reply-To: <CANNYZj_zzRO0Bi84_xAHCe2xNRBXXnsBEgzr-=kohwqKQhE2UQ@mail.gmail.com>
Message-ID: <26434.1730288069309788991@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qH8cD3fVqMNGilvYROST"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 11:34:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64179

--qH8cD3fVqMNGilvYROST
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 30, 2024 at 11:58 AM, Alexander Kanavin wrote:

>=20
> Is the header in the sysroot?

Nope, seems to be totally missing.

>=20
> Are you doing other tweaks to
> qemu recipe that break something?

No, and from what I can tell the only changes to qemu thats made is
meta-virtualization/recipes-devtools/qemu/qemu_%.bbappend
Which looks like a standard yocto-thing?

>=20
> Does the issue occur if you try
> building nativesdk-qemu in plain poky?

If you mean a completely clean with no layers then I have not tested that.
I will setup a new environment with nothing added at all. Might take a whil=
e though.

I tried building nativesdk-qemu directly without doing the whole populate_s=
dk based on our distro.
Same result. Looks like nativesdk-virglrenderer is not built or installed. =
Looking in the recipe for qemu I can not find virglrenderer explicitly set =
as a dependency anywhere.
Not really any other dependencies set there either. Assuming its done somew=
here else.
There is however a part that makes sure to remove virglrenderer (and some o=
ther bits) if the system cannot support it.

From https://git.yoctoproject.org/poky/plain/meta/recipes-devtools/qemu/qem=
u.inc
# Disable kvm/virgl/mesa on targets that do not support it
PACKAGECONFIG:remove:darwin =3D "kvm virglrenderer epoxy gtk+"
PACKAGECONFIG:remove:mingw32 =3D "kvm virglrenderer epoxy gtk+ pie"

/Freddy

--qH8cD3fVqMNGilvYROST
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Wed, Oct 30, 2024 at 11:58 AM, Alexander Kanavin wrote:</div>
<div>
<blockquote>Is the header in the sysroot?</blockquote>
Nope, seems to be totally missing.<br />
<blockquote>Are you doing other tweaks to<br />qemu recipe that break somet=
hing?</blockquote>
No, and from what I can tell the only changes to qemu thats made is</div>
<div>meta-virtualization/recipes-devtools/qemu/qemu_%.bbappend</div>
<div>Which looks like a standard yocto-thing?<br />
<blockquote>Does the issue occur if you try<br />building nativesdk-qemu in=
 plain poky?</blockquote>
If you mean a completely clean with no layers then I have not tested that.<=
/div>
<div>I will setup a new environment with nothing added at all. Might take a=
 while though.</div>
<div>&nbsp;</div>
<div>I tried building nativesdk-qemu directly without doing the whole popul=
ate_sdk based on our distro.</div>
<div>Same result. Looks like nativesdk-virglrenderer is not built or instal=
led. Looking in the recipe for qemu I can not find virglrenderer explicitly=
 set as a dependency anywhere.</div>
<div>Not really any other dependencies set there either. Assuming its done =
somewhere else.</div>
<div>There is however a part that makes sure to remove virglrenderer (and s=
ome other bits) if the system cannot support it.</div>
<div>&nbsp;</div>
<div>From <a href=3D"https://git.yoctoproject.org/poky/plain/meta/recipes-d=
evtools/qemu/qemu.inc" target=3D"_blank" rel=3D"noopener">https://git.yocto=
project.org/poky/plain/meta/recipes-devtools/qemu/qemu.inc</a></div>
<div># Disable kvm/virgl/mesa on targets that do not support it<br />PACKAG=
ECONFIG:remove:darwin =3D "kvm virglrenderer epoxy gtk+"<br />PACKAGECONFIG=
:remove:mingw32 =3D "kvm virglrenderer epoxy gtk+ pie"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>/Freddy</div>
<div>&nbsp;</div>

--qH8cD3fVqMNGilvYROST--

