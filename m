Return-Path: <sancelot@numalliance.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29F2DC25B76
	for <webhook@archiver.kernel.org>; Tue, 11 Jun 2024 07:09:15 +0000 (UTC)
Subject: generic name for overlayfs-etc device 
To: yocto@lists.yoctoproject.org
From: "sancelot" <sancelot@numalliance.com>
X-Originating-Location: Pauillac, Nouvelle-Aquitaine, FR (90.84.192.134)
X-Originating-Platform: Windows Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Jun 2024 00:09:12 -0700
Message-ID: <UHIh.1718089752060710812.NpM9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sSJy7BEnLp38Mu59m42Z"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jun 2024 07:09:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63314

--sSJy7BEnLp38Mu59m42Z
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

overlayfs-etc

Hi, I would like to use overlayfs-etc on my usb device that serves as test =
and next in the deployed image on hdd image on a /dev/sdx

is there another way to set etc_device as "third partition" instead of /dev=
/sda3 or /dev/sdb3 to enable easy porting ?

here it is hardcoded , I understand it is ok on a mobile device with nand d=
evices , but not on a PC computer
OVERLAYFS_ETC_DEVICE =3D "/dev/mmcblk0p2"

--sSJy7BEnLp38Mu59m42Z
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

overlayfs-etc&nbsp;<br /><br />Hi, I would like to use overlayfs-etc on my =
usb device that serves as test and next in the deployed image on hdd image =
on a /dev/sdx<br /><br />is there another way to set etc_device as "third p=
artition" instead of /dev/sda3 or /dev/sdb3 to enable easy porting ?<br />&=
nbsp;<br />here it is hardcoded , I understand it is ok on a mobile device =
with nand devices , but not on a PC computer<br />
<pre style=3D"box-sizing: border-box; line-height: 1.4; font-family: SFMono=
-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', Courie=
r, monospace; font-size: 12px; white-space: pre; margin: 0px; padding: 12px=
; display: block; overflow: auto; color: #333333; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial;">OVERLAYFS_ETC_DEVICE =3D "/dev/mmcblk0p2"</pr=
e>

--sSJy7BEnLp38Mu59m42Z--

