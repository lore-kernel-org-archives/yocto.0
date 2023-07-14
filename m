Return-Path: <sandeep.kel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FF4AEB64DD
	for <webhook@archiver.kernel.org>; Fri, 14 Jul 2023 02:06:51 +0000 (UTC)
Subject: [meta-openembedded]/[meta-multimedia] Enable Pipewire in yocto Mickeldore branch #mickledore #qemux86-64 #yocto
To: yocto@lists.yoctoproject.org
From: "sandy" <sandeep.kel@gmail.com>
X-Originating-Location: Singapore, SG (165.225.112.118)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Jul 2023 19:06:48 -0700
Message-ID: <6773.1689300408550137085.9vsB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0tuUrP8zlFz4L71boNMF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 02:06:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60574

--0tuUrP8zlFz4L71boNMF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is regarding enabling pipewire support in the yocto project.

I checked out mickledore code from the=C2=A0 git and built the code success=
fully for core-image-sato.

Looking to enable pipewire support, i discovered that pipewire is already p=
art of *meta-openembedded/meta-multime dia.*

I tried to add these layers using the bitbake-layers add-layer command.
Now when I check for bitbake layers I can see that meta-multimedia is part =
of the build.

When I run the=C2=A0qemu instance and check pactl info on the terminal with=
in the=C2=A0 instance the default Audio server is shown as PulseAudio.

I want to *disable PulseAudio and enable Pipewire Server*.

I tried=C2=A0adding the line
DISTRO_FEATURES:remove =3D "pulseaudio" in build/conf/local.conf=C2=A0 but =
there is no effect.

Can anybody help me with the steps required to achieve this.

--0tuUrP8zlFz4L71boNMF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: verdana, sans-serif;">This is regarding enabling pipewire support=
 in the yocto project.</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: verdana, sans-serif;">&nbsp;</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: verdana, sans-serif;">I checked out mickledore code from the&nbsp=
; git and built the code successfully for core-image-sato.</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: verdana, sans-serif;">&nbsp;</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: verdana, sans-serif;">Looking to enable pipewire support, i disco=
vered that pipewire is already part of&nbsp;<strong>meta-openembedded/meta-=
multime<wbr />dia.</strong></div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: verdana, sans-serif;">&nbsp;</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: verdana, sans-serif;">I tried to add these layers using the bitba=
ke-layers add-layer command.</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: verdana, sans-serif;">Now when I check for bitbake layers I can s=
ee that meta-multimedia is part of the build.</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: verdana, sans-serif;">&nbsp;</div>
<div class=3D"gmail_default" style=3D"color: #222222; font-size: small; fon=
t-family: verdana, sans-serif;">When I run the&nbsp;qemu instance and check=
 pactl info on the terminal within the&nbsp; instance the default Audio ser=
ver is shown as PulseAudio.<br /><br /><br />I want to<strong>&nbsp;disable=
 PulseAudio and enable Pipewire Server</strong>.<br /><br /><span style=3D"=
font-family: Arial, Helvetica, sans-serif;">I tried&nbsp;adding the line&nb=
sp;</span><br style=3D"font-family: Arial, Helvetica, sans-serif;" /><span =
style=3D"font-family: Arial, Helvetica, sans-serif;">DISTRO_FEATURES:remove=
 =3D "pulseaudio" in build/conf/local.conf&nbsp; but there is no effect.<br=
 /><br /></span>Can anybody help me with the steps required to achieve this=
.<br /><br /></div>

--0tuUrP8zlFz4L71boNMF--

