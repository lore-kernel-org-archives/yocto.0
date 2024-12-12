Return-Path: <pierre.daye@p3lab.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C334EE7717F
	for <webhook@archiver.kernel.org>; Thu, 12 Dec 2024 14:37:01 +0000 (UTC)
Subject: Re: [yocto] Scarthgap recipe to save and package to secondary partition
To: pierre.daye@p3lab.com, yocto@lists.yoctoproject.org
From: pierre.daye@p3lab.com
X-Originating-Location: Etterbeek, Brussels Capital, BE (178.51.208.136)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Dec 2024 06:36:59 -0800
References: <13220.1734010644129182159@lists.yoctoproject.org>
In-Reply-To: <13220.1734010644129182159@lists.yoctoproject.org>
Message-ID: <13220.1734014219872736910@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hMeziNdLTNzOa0aINpQ2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Dec 2024 14:37:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64439

--hMeziNdLTNzOa0aINpQ2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

... I finally figured it out!

This is how the wks file should be defined:

>=20
> part /boot --source bootimg-partition --ondisk mmcblk1 --fstype=3Dvfat
> --label boot_A --active --align 4096 --size 20 --fsoptions "vfat
> rw,relatime,fmask=3D0022,dmask=3D0022,codepage=3D437,iocharset=3Diso8859-=
1,shortname=3Dmixed,errors=3Dremount-ro"
>=20
> part / --source rootfs --ondisk mmcblk1 --fstype=3Dext4 --label root_A
> --align 4096 --exclude-path=3Dmedia/
> part --source rootfs --ondisk mmcblk1 --fstype=3Dext4 --label root_B --al=
ign
> 4096 --exclude-path=3Dmedia/
> part /media --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/media --size=
=3D128M
> --ondisk mmcblk1 --fstype=3Dext4 --label data --align 4096
> part swap --ondisk mmcblk1 --size 44 --label swap --fstype=3Dswap
> --size=3D2048M --overhead-factor 1
>=20
>=20

Notice the fact that:

* The mounted point should be excluded from both the root_A and root_B
* The media partition should be sourced on rootfs
* The media partition needs the --rootfs-dir=3D${IMAGE_ROOTFS}/media option=
s (otherwise the whole rootfs is copied onto /media

Using this in the original method in the recipe above makes it works as exp=
ected (if you add the QA_EMPTY_DIRS:remove =3D "/media"

Thanks

--hMeziNdLTNzOa0aINpQ2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>... I finally figured it out!</div>
<div>&nbsp;</div>
<div>This is how the wks file should be defined:</div>
<div>&nbsp;</div>
<blockquote>
<div>part /boot --source bootimg-partition --ondisk mmcblk1 --fstype=3Dvfat=
 --label boot_A --active --align 4096 --size 20 --fsoptions "vfat rw,relati=
me,fmask=3D0022,dmask=3D0022,codepage=3D437,iocharset=3Diso8859-1,shortname=
=3Dmixed,errors=3Dremount-ro"<br />part / --source rootfs --ondisk mmcblk1 =
--fstype=3Dext4 --label root_A --align 4096 --exclude-path=3Dmedia/<br />pa=
rt --source rootfs --ondisk mmcblk1 --fstype=3Dext4 --label root_B --align =
4096 --exclude-path=3Dmedia/<br />part /media --source rootfs --rootfs-dir=
=3D${IMAGE_ROOTFS}/media --size=3D128M --ondisk mmcblk1 --fstype=3Dext4 --l=
abel data --align 4096<br />part swap --ondisk mmcblk1 --size 44 --label sw=
ap --fstype=3Dswap --size=3D2048M --overhead-factor 1&nbsp;</div>
<div>&nbsp;</div>
</blockquote>
<div>&nbsp;</div>
<div>Notice the fact that:</div>
<ul>
<li>The mounted point should be excluded from both the root_A and root_B</l=
i>
<li>The media partition should be sourced on rootfs</li>
<li>The media partition needs the --rootfs-dir=3D${IMAGE_ROOTFS}/media opti=
ons (otherwise the whole rootfs is copied onto /media</li>
</ul>
<div>Using this in the original method in the <span style=3D"color: #333333=
; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans'=
, 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoj=
i', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: nor=
mal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; white-space: normal; background-color: #ffffff; text-decorati=
on-thickness: initial; text-decoration-style: initial; text-decoration-colo=
r: initial; display: inline !important; float: none;">recipe above makes it=
 works as expected (if you add the </span>&nbsp; <span style=3D"color: #333=
333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sa=
ns', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI E=
moji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: =
normal; font-variant-ligatures: normal; font-variant-caps: normal; font-wei=
ght: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inden=
t: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-dec=
oration-thickness: initial; text-decoration-style: initial; text-decoration=
-color: initial; display: inline !important; float: none;">QA_EMPTY_DIRS:re=
move =3D "/media"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;">Thanks</span></div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--hMeziNdLTNzOa0aINpQ2--

