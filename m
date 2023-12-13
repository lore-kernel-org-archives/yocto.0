Return-Path: <renato.mendes.pes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 325CBC4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 17:05:04 +0000 (UTC)
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: Renato Mendes <renato.mendes.pes@gmail.com>,yocto@lists.yoctoproject.org
From: "Renato Mendes" <renato.mendes.pes@gmail.com>
X-Originating-Location: Petrópolis, Rio de Janeiro, BR (170.254.80.206)
X-Originating-Platform: Mac Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Dec 2023 09:04:55 -0800
References: <10379.1702480330946743064@lists.yoctoproject.org>
In-Reply-To: <10379.1702480330946743064@lists.yoctoproject.org>
Message-ID: <16371.1702487095081210264@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="i0FWa8GtaBrgHDXYODXG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 17:05:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61882

--i0FWa8GtaBrgHDXYODXG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After some research I've found the following message at dsmsg:

[.=C2=A0 =C2=A0 5.896958] systemd[1]: multi-user.target: Wants dependency d=
ropin /etc/systemd/system/multi-user.target.wants/wpa_supplicant-nl80211@wl=
an0.service target /lib/systemd/system/wpa+supplicant@.service has differen=
t name

At my directory:
ls /lib/systemd/system/wpa_supplicant*

wpa_supplicant-nl80211@.service
wpa_supplicant-wired@.service
wpa_suuplicant.service
wpa_supplicant@.service

Seens this can be related to the error... What exactly does this error is p=
ointint out? Any ideas on how to fix it?

--i0FWa8GtaBrgHDXYODXG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After some research I've found the following message at dsmsg:<br /><br />[=
.&nbsp; &nbsp; 5.896958] systemd[1]: multi-user.target: Wants dependency dr=
opin /etc/systemd/system/multi-user.target.wants/wpa_supplicant-nl80211@wla=
n0.service target /lib/systemd/system/wpa+supplicant@.service has different=
 name<br /><br />At my directory:<br />ls /lib/systemd/system/wpa_supplican=
t*<br /><br /><a href=3D"mailto:wpa_supplicant-nl80211@.service" target=3D"=
_blank" rel=3D"noopener">wpa_supplicant-nl80211@.service</a><br /><a href=
=3D"mailto:wpa_supplicant-wired@.service" target=3D"_blank" rel=3D"noopener=
">wpa_supplicant-wired@.service</a><br />wpa_suuplicant.service<br /><a hre=
f=3D"mailto:wpa_supplicant@.service" target=3D"_blank" rel=3D"noopener">wpa=
_supplicant@.service</a><br /><br />Seens this can be related to the error.=
.. What exactly does this error is pointint out? Any ideas on how to fix it=
?<br /><br /><br />

--i0FWa8GtaBrgHDXYODXG--

