Return-Path: <n.jeker@delisys.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4682C433FE
	for <webhook@archiver.kernel.org>; Tue, 18 Jan 2022 17:04:33 +0000 (UTC)
Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de
 [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web10.15477.1642525471416311624
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 09:04:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 84-75-156-97.dclient.hispeed.ch ([84.75.156.97]
 helo=smtpclient.apple); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1n9ruF-0004dK-OJ; Tue, 18 Jan 2022 18:04:28 +0100
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: [yocto] Building uImage with appended DTB
From: Nicolas Jeker <n.jeker@delisys.ch>
In-Reply-To: <mt8I.1642398119365665679.kouk@lists.yoctoproject.org>
Date: Tue, 18 Jan 2022 18:04:27 +0100
Cc: yocto@lists.yoctoproject.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <996633AD-BFCA-49EA-8BAE-ABC62C06FB65@delisys.ch>
References: <mt8I.1642398119365665679.kouk@lists.yoctoproject.org>
To: rgovostes@gmail.com
X-Mailer: Apple Mail (2.3693.40.0.1.81)
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1642525471;8a125c70;
X-HE-SMSGID: 1n9ruF-0004dK-OJ
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jan 2022 17:04:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55902


> On 17 Jan 2022, at 06:41, rgovostes@gmail.com wrote:
>=20
> I'm a complete newcomer to Yocto, trying to translate a manual process =
of building software for an embedded device based on the PHYTEC =
phyCORE-LPC3250 SOM. I did not find an existing BSP layer for this board =
so I am trying to create my own.

Just a short hint if you didn=E2=80=99t discover it yourself, there is a =
(very) old BSP available from PHYTEC [1]. The downloads don=E2=80=99t =
seem to work, but they=E2=80=99re available on a probably forgotten FTP =
server [2].

[1]: =
https://web.archive.org/web/20120501212117/http://www.phytec.com/products/=
linux/bsp-LPC3180.html
[2]: ftp://ftp.phytec.com/temp/PCM-031_phyCORE-LPC3180

>=20
> When I build a kernel for this device manually, I use the =
CONFIG_APPENDED_DTB=3Dy option, which instructs the kernel to find the =
device tree right after the kernel image itself. I build the zImage, =
then append my DTB and finally create the uImage file:
>=20
>     cat arch/arm/boot/zImage ./arch/arm/boot/dts/lpc3250-phy3250.dtb > =
arch/arm/boot/zImage-dtb
>     mkimage -A arm -O linux -C none -T kernel -a 0x80008000 -e =
0x80008000 -n Linux -d arch/arm/boot/zImage-dtb arch/arm/boot/uImage-dtb
>=20
> I'm trying to figure out how to properly replicate this process in =
Yocto.
>=20
> I see that Poky's meta/classes/kernel-devicetree.bbclass uses the =
KERNEL_DEVICETREE_BUNDLE variable to do something similar. If I have =
KERNEL_IMAGETYPE set to "zImage", then it will create a zImage+DTB file.
>=20
> However, it expects the zImage file to be called "zImage", and the one =
that gets built is called "zImage-5.14.6-yocto-standard". Since it =
cannot find "zImage", the build fails.
>=20
>     cat: =
.../tmp/work/lpc3250-poky-linux-gnueabi/linux-yocto/5.14.6+gitAUTOINC+4f4a=
d2c808_7ae156be3b-r0/image/boot/zImage: No such file or directory
>=20
>=20
> I also see that meta-ti has a bundle-devicetree.inc file that has a =
similar aim, but it deals with uImages instead.
>=20
> =
https://git.yoctoproject.org/meta-ti/tree/recipes-kernel/linux/bundle-devi=
cetree.inc
>=20
> My concern with using this is that it appends the DTB directly to the =
uImage. However the uImage header structure includes a field for data =
size and another one for checksum. These fields are only computed =
correctly if the DTB is already appended before the uImage file is =
built.
>=20
>=20
> I think if I can figure out how to make KERNEL_DEVICETREE_BUNDLE =
create the zImage+DTB file, then I can write a do_deploy:append() =
function that invokes mkimage to produce the uImage. But I'm not sure =
how to diagnose the problem.
>=20
> Thanks,
> Ryan
>=20


