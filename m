Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFFB5D41D46
	for <webhook@archiver.kernel.org>; Thu, 14 Nov 2024 05:18:36 +0000 (UTC)
Subject: Issue with pulseaudio.15.0 version  audio issue HFP/HSP profile
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: FR (163.116.210.45)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Nov 2024 21:18:32 -0800
Message-ID: <Qrgl.1731561512622402340.0SLS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bzAUx1pvzoAsho2TaIp8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Nov 2024 05:18:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64274

--bzAUx1pvzoAsho2TaIp8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

We are using yocto version krikstone.

Trying HFP/HSP and A2DP Profile.

*1) We are able to connect=C2=A0 my mobile with bluetooth connectivty. Able=
 to play audio but unable to listen sound.*
*2) Through GSM we are trying to play audio but unable to listen sound.*

Integrated required packages using image install.

Ofono
Pulseaudio-15v
bluez5

IMAGE_INSTALL:append =3D " pulseaudio pulseaudio-server pulseaudio-misc "

IMAGE_INSTALL:append =3D " pulseaudio-server libpulsecore sbc pulseaudio-mo=
dule-bluetooth-discover pulseaudio-module-bluez5-device pulseaudio-module-b=
luez5-discover pulseaudio-module-loopback pulseaudio-module-rtp-send pulsea=
udio-module-rtp-recv pulseaudio-module-bluetooth-policy pulseaudio-misc dbu=
s gconf glib-2.0 pulseaudio-module-alsa-card pulseaudio-module-alsa-source =
pulseaudio-module-alsa-sink pulseaudio-module-cli libasound libcap=C2=A0 li=
bltdl libpulse libsndfile1 libtdb libudev alsa-utils alsa-utils-speakertest=
 pulseaudio-module-dbus-protocol"

PACKAGECONFIG:append:pn-pulseaudio =3D " autospawn-for-root"

*Issue=C2=A0 1:*

pulseaudio[1045]: W: [pulseaudio] module-bluez5-discover.c: Failed to load =
module for device

*Issue 2:*

root# pactl list sources short
Connection failure: Connection refused
pa_context_connect() failed: Connection refused

*Need support I am hoping some configurations & service is missing with lat=
est pulseaudio. Can anybody support me to fix this issue?*

Regards,
Sateesh

--bzAUx1pvzoAsho2TaIp8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team,</div>
<div>&nbsp;</div>
<div>We are using yocto version krikstone.</div>
<div>&nbsp;</div>
<div>Trying HFP/HSP and A2DP Profile.&nbsp;</div>
<div>&nbsp;</div>
<div><strong>1) We are able to connect&nbsp; my mobile with bluetooth conne=
ctivty. Able to play audio but unable to listen sound.&nbsp;</strong></div>
<div><strong>2) Through GSM we are trying to play audio but unable to liste=
n sound.&nbsp;</strong></div>
<div>&nbsp;</div>
<div>Integrated required packages using image install.&nbsp;</div>
<div>&nbsp;</div>
<div>Ofono</div>
<div>Pulseaudio-15v</div>
<div>bluez5</div>
<div>&nbsp;</div>
<div>IMAGE_INSTALL:append =3D " pulseaudio pulseaudio-server pulseaudio-mis=
c "</div>
<div>&nbsp;</div>
<div>IMAGE_INSTALL:append =3D " pulseaudio-server libpulsecore sbc pulseaud=
io-module-bluetooth-discover pulseaudio-module-bluez5-device pulseaudio-mod=
ule-bluez5-discover pulseaudio-module-loopback pulseaudio-module-rtp-send p=
ulseaudio-module-rtp-recv pulseaudio-module-bluetooth-policy pulseaudio-mis=
c dbus gconf glib-2.0 pulseaudio-module-alsa-card pulseaudio-module-alsa-so=
urce pulseaudio-module-alsa-sink pulseaudio-module-cli libasound libcap&nbs=
p; libltdl libpulse libsndfile1 libtdb libudev alsa-utils alsa-utils-speake=
rtest pulseaudio-module-dbus-protocol"<br />&nbsp;<br />PACKAGECONFIG:appen=
d:pn-pulseaudio =3D " autospawn-for-root"</div>
<div>&nbsp;</div>
<div><strong>Issue&nbsp; 1:</strong></div>
<div>&nbsp;</div>
<div><span><span class=3D"ui-provider ec bbw bbx bby bbz bca bcb bcc bcd bc=
e bcf bcg bch bci bcj bck bcl bcm bcn bco bcp bcq bcr bcs bct bcu bcv bcw b=
cx bcy bcz bda bdb bdc bdd" dir=3D"ltr">pulseaudio[1045]: W: [pulseaudio] m=
odule-bluez5-discover.c: Failed to load module for device</span></span>&nbs=
p;</div>
<div>&nbsp;</div>
<div><strong>Issue 2:&nbsp;</strong></div>
<div>&nbsp;</div>
<div>root# pactl list sources short<br />Connection failure: Connection ref=
used<br />pa_context_connect() failed: Connection refused</div>
<div>&nbsp;</div>
<div><strong>Need support I am hoping some configurations &amp; service is =
missing with latest pulseaudio. Can anybody support me to fix this issue?</=
strong></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Sateesh</div>
<div>&nbsp;</div>

--bzAUx1pvzoAsho2TaIp8--

