Return-Path: <jp@lebel.pro>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FAADC433F5
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 01:57:11 +0000 (UTC)
Subject: [meta-raspberrypi] Problem with RPI_USE_U_BOOT with RaspberryPi4
To: yocto@lists.yoctoproject.org
From: "Jean-Philippe Lebel" <jp@lebel.pro>
X-Originating-Location: =?utf-8?b?UXXDqWJlYywgUXVlYmVjLCBDQSAoNzAuODIuNDYu?=
 =?utf-8?b?MTEzKQ==?=
X-Originating-Platform: Mac Chrome 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Jan 2022 17:57:09 -0800
Message-ID: <olEy.1641952629873571983.WQkq@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="eyfydeNFttrMwwujCLTO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 01:57:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55810

--eyfydeNFttrMwwujCLTO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to create a simple image that uses the=C2=A0RPI_USE_U_BOOT optio=
n but the pi hangs with the rainbow image. I'm able to generate bootable im=
ages when not using the RPI_USE_U_BOOT option (but I need to use swupdate).=
 I have the same problem with using the Hardknott branch, leading me to thi=
nk the problem is not the layer but the way I use it.

For my last test, I used the latest meta-raspberrypi=C2=A0without any modif=
ication. In other words, I'm using the default/basic configuration.

the default local.conf file has been edited to add the following two lines =
at the end
MACHINE =3D 'raspberrypi4'
RPI_USE_U_BOOT =3D "1"

I'm building the image using
> bitbake core-image-base

And I'm burning the generated .wic image to my sd card.

What am I missing? Is there any other configuration I must do?

Thanks

--eyfydeNFttrMwwujCLTO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I'm trying to create a simple image that uses the&nbsp;RP=
I_USE_U_BOOT option but the pi hangs with the rainbow image. I'm able to ge=
nerate bootable images when not using the RPI_USE_U_BOOT option (but I need=
 to use swupdate). I have the same problem with using the Hardknott branch,=
 leading me to think the problem is not the layer but the way I use it.<br =
/><br />For my last test, I used the latest meta-raspberrypi&nbsp;without a=
ny modification. In other words, I'm using the default/basic configuration.=
<br /><br />the default local.conf file has been edited to add the followin=
g two lines at the end<br />MACHINE =3D 'raspberrypi4'<br />RPI_USE_U_BOOT =
=3D "1"<br /><br />I'm building the image using<br />&gt; bitbake core-imag=
e-base<br /><br />And I'm burning the generated .wic image to my sd card.<b=
r /><br />What am I missing? Is there any other configuration I must do?<br=
 /><br />Thanks
<div class=3D"yj6qo">&nbsp;</div>
<div class=3D"adL">&nbsp;</div>

--eyfydeNFttrMwwujCLTO--

