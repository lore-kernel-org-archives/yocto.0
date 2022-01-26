Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEEA3C2BA4C
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 07:19:58 +0000 (UTC)
Subject: Building yocto image for RPi CM4 #raspberrypi
To: yocto@lists.yoctoproject.org
From: hrsourabh011@gmail.com
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 25 Jan 2022 23:19:58 -0800
Message-ID: <QnMF.1643181598131429709.jlQx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hjK3SAmbynSLhQm3vARF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 07:19:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55976

--hjK3SAmbynSLhQm3vARF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

Advice on working with Yocto and Raspberry Pi CM4 Lite would be helpful.

I recently got my hands on with CM4 and now I want to build Yocto image wit=
h u-boot as bootloader. I have few doubts before I start the build.

* Which machine to use in local.conf file? In the meta-raspberrypi there is=
 no specific machine for CM4 https://github.com/agherzan/meta-raspberrypi/t=
ree/master/conf/machine. Will the "raspberrypi4-64" and "raspberrypi4" also=
 work for CM4? As per my understanding the Raspberry Pi 4 and CM4 are mostl=
y the same except for the device tree and drivers. Which device tree will w=
ork with RPi CM4? Do I need to generate them separately for CM4?
* Since I have CM4 lite, there is no on board eMMC. I am using custom IO bo=
ard and it has SD card slot. I can boot from SD card instead. Do I need to =
set anything specific for CM4 to work in my image recipe or local.conf? Is =
it same as booting RPi 4 from uSD card?

My intention is to use RPi CM4 for software updates using RAUC.

Can anyone please let me about these? This would help me to get started.

Thanks in advance.

Please let me know if any details are missing.

--hjK3SAmbynSLhQm3vARF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br />
<div class=3D"votecell post-layout--left">
<div class=3D"js-voting-container d-flex jc-center fd-column ai-stretch gs4=
 fc-black-200" data-post-id=3D"70850859">&nbsp;</div>
</div>
<p>Advice on working with Yocto and Raspberry Pi CM4 Lite would be helpful.=
</p>
I recently got my hands on with CM4 and now I want to build Yocto image wit=
h u-boot as bootloader. I have few doubts before I start the build.<br /><b=
r />
<ol>
<li>Which machine to use in local.conf file? In the meta-raspberrypi there =
is no specific machine for CM4 <a title=3D"meta-raspberrypi" href=3D"https:=
//github.com/agherzan/meta-raspberrypi/tree/master/conf/machine" target=3D"=
_blank" rel=3D"noopener">https://github.com/agherzan/meta-raspberrypi/tree/=
master/conf/machine</a>. Will the "raspberrypi4-64" and "raspberrypi4" also=
 work for CM4? As per my understanding the Raspberry Pi 4 and CM4 are mostl=
y the same except for the device tree and drivers. Which device tree will w=
ork with RPi CM4? Do I need to generate them separately for CM4?</li>
<li>Since I have CM4 lite, there is no on board eMMC. I am using custom IO =
board and it has SD card slot. I can boot from SD card instead. Do I need t=
o set anything specific for CM4 to work in my image recipe or local.conf? I=
s it same as booting RPi 4 from uSD card?</li>
</ol>
<br />
<p>My intention is to use RPi CM4 for software updates using RAUC.</p>
<p>Can anyone please let me about these? This would help me to get started.=
</p>
<p>Thanks in advance.</p>
<p>Please let me know if any details are missing.</p>
<br /><br /><br />

--hjK3SAmbynSLhQm3vARF--

