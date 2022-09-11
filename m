Return-Path: <kuzemkoyocto@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7659EECAAA1
	for <webhook@archiver.kernel.org>; Sun, 11 Sep 2022 08:16:01 +0000 (UTC)
Subject: [Need help] Blacklist snd-bcm2835 #rpi
To: yocto@lists.yoctoproject.org
From: "Kuzemko Aleksandr" <kuzemkoyocto@gmail.com>
X-Originating-Location: Vinnytsia, Vinnytsya Oblast, UA (178.74.234.29)
X-Originating-Platform: Linux Firefox 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 11 Sep 2022 01:15:51 -0700
Message-ID: <PQxE.1662884151497864735.rEQQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="60RfJ3tntPsyOgSx8iEr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 11 Sep 2022 08:16:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58018

--60RfJ3tntPsyOgSx8iEr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello.
I developing now custom CM4 based board. For speed-up development I test so=
ftware on RPi4 with external connection to development plates (2 CAN HAT, M=
AX98357 board)
To make work MAX98357 I need blacklist snd-bcm2835 and add custom asound.co=
nf (https://learn.adafruit.com/adafruit-max98357-i2s-class-d-mono-amp/raspb=
erry-pi-usage)
What I try:
1. I add this lines to local.conf
KERNEL_MODULE_PROBECONF +=3D " snd-bcm2835"
module_conf_snd_bcm2835 =3D "blacklist snd-bcm2835"
This doesn't helps. I see snd-bcm2835.conf on my filesystem after build.
2. I make "hack" of meta-boot2qt/meta-boot2qt-distro/conf/distro/include/ra=
spberrypi.inc and delete snd-bcm2835 from KERNEL_MODULE_AUTOLOAD +=3D "snd-=
bcm2835 bcm2835-v4l2" line
This works partially- I haven't now snd-bcm2835.conf but also haven't black=
list it.
3. I try to add custom asound.conf and create such https://github.com/Kuzma=
30/meta-myconf/blob/main/recipes-bsp/alsa-state/alsa-state.bbappend
Results - no /etc/asound.conf and /etc/asound-rpi4.conf on filesystem

Please help resolve my problem.

--60RfJ3tntPsyOgSx8iEr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello.<br />I developing now custom CM4 based board. For speed-up developme=
nt I test software on RPi4 with external connection to development plates (=
2 CAN HAT, MAX98357 board)<br />To make work MAX98357 I need blacklist snd-=
bcm2835 and add custom asound.conf (https://learn.adafruit.com/adafruit-max=
98357-i2s-class-d-mono-amp/raspberry-pi-usage)<br />What I try:<br />1. I a=
dd this lines to local.conf<br />KERNEL_MODULE_PROBECONF +=3D " snd-bcm2835=
"<br />module_conf_snd_bcm2835 =3D "blacklist snd-bcm2835"<br />This doesn'=
t helps. I see snd-bcm2835.conf on my filesystem after build.<br />2. I mak=
e "hack" of meta-boot2qt/meta-boot2qt-distro/conf/distro/include/raspberryp=
i.inc and delete snd-bcm2835 from KERNEL_MODULE_AUTOLOAD +=3D "snd-bcm2835 =
bcm2835-v4l2" line<br />This works partially- I haven't now snd-bcm2835.con=
f but also haven't blacklist it.<br />3. I try to add custom asound.conf an=
d create such <a href=3D"https://github.com/Kuzma30/meta-myconf/blob/main/r=
ecipes-bsp/alsa-state/alsa-state.bbappend" target=3D"_blank" rel=3D"noopene=
r">https://github.com/Kuzma30/meta-myconf/blob/main/recipes-bsp/alsa-state/=
alsa-state.bbappend</a><br />Results - no /etc/asound.conf and /etc/asound-=
rpi4.conf on filesystem<br /><br />Please help resolve my problem.<br />&nb=
sp;

--60RfJ3tntPsyOgSx8iEr--

