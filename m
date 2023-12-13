Return-Path: <renato.mendes.pes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F19AC4167B
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 15:12:13 +0000 (UTC)
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: Josef Holzmayr <jester@theyoctojester.info>,yocto@lists.yoctoproject.org
From: "Renato Mendes" <renato.mendes.pes@gmail.com>
X-Originating-Location: Petrópolis, Rio de Janeiro, BR (170.254.80.206)
X-Originating-Platform: Mac Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Dec 2023 07:12:10 -0800
References: <CAEt6Nwq+7A6mUj7RucBmk_x0X7M0b3-RGtZ1r36auwk=CJE33Q@mail.gmail.com>
In-Reply-To: <CAEt6Nwq+7A6mUj7RucBmk_x0X7M0b3-RGtZ1r36auwk=CJE33Q@mail.gmail.com>
Message-ID: <10379.1702480330946743064@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wZj1xYP4yydFV1zBb8z6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 15:12:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61881

--wZj1xYP4yydFV1zBb8z6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Seens that it is installed:

images/raspberrypi0-wifi$ cat core-image-full-cmdline-raspberrypi0-wifi.man=
ifest | grep rpidistro
linux-firmware-rpidistro-bcm43430 noarch 20210315+3+rpt4
linux-firmware-rpidistro-broadcom-license noarch 20210315+3+rpt4

My Raspi Zero W is Raspberry Pi Zero W 1.1, dated 2017.

When I login in the Raspi, I can access both wpi_supplicant and wpi_cli, bu=
t no wlan avalilable at all...

--wZj1xYP4yydFV1zBb8z6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Seens that it is installed:<br /><br />
<div>images/raspberrypi0-wifi$ cat core-image-full-cmdline-raspberrypi0-wif=
i.manifest | grep rpidistro</div>
<div>linux-firmware-rpidistro-bcm43430 noarch 20210315+3+rpt4</div>
<div>linux-firmware-rpidistro-broadcom-license noarch 20210315+3+rpt4<br />=
<br />My Raspi Zero W is Raspberry Pi Zero W 1.1, dated 2017.<br /><br />Wh=
en I login in the Raspi, I can access both wpi_supplicant and wpi_cli, but =
no wlan avalilable at all...<br /><br /></div>

--wZj1xYP4yydFV1zBb8z6--

