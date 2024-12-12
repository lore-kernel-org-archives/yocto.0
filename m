Return-Path: <pierre.daye@p3lab.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 098A4E77182
	for <webhook@archiver.kernel.org>; Thu, 12 Dec 2024 13:14:11 +0000 (UTC)
Subject: Scarthgap recipe to save and package to secondary partition
To: yocto@lists.yoctoproject.org
From: pierre.daye@p3lab.com
X-Originating-Location: Etterbeek, Brussels Capital, BE (178.51.208.136)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Dec 2024 05:14:04 -0800
Message-ID: <vnCM.1734009244366914529.Gp65@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="frfAmSfn2e2vA6yjp7TP"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Dec 2024 13:14:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64435

--frfAmSfn2e2vA6yjp7TP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am updating our system from Honnister to Scarthgap.
I do have a wks file that prepare the system with multiple partitions (a bo=
ot, two rootfs, one persistent media and one swap).

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
> 4096
> part /media --rootfs-dir=3D${IMAGE_ROOTFS}/media --size=3D128M --ondisk
> mmcblk1 --fstype=3Dext4 --label data --align 4096
> part swap --ondisk mmcblk1 --size 44 --label swap --fstype=3Dswap
> --size=3D2048M --overhead-factor 1
>=20

I am trying to store configuration files onto the persistent media partitio=
n in one of my recipes. I am showing here the relevant part:

>=20
> do_install:append() {
> mkdir -p ${D}/media/data/calibrations
> install -m 0644 ${S}/../system_config.json
> ${D}/media/data/system_config.json
> install -m 0644 ${S}/../system_config_temperature.json
> ${D}/media/data/system_config_temperature.json
> install -m 0644 ${S}/../calib_0000_00_00_00_00_00.raw
> ${D}/media/data/calibrations/calib_0000_00_00_00_00_00.raw
> }
> FILES:${PN} +=3D "/usr/share/p3_paradigms/*"
> FILES:${PN} +=3D "/media/data/* "
> FILES:${PN} +=3D "/media/data/calibrations/* "
>=20

The recipe was working great under honnister and my wic file contained the =
media partition and all the files I copied into it with the recipe. However=
, when I use the same approach with Scarthgap, I have QA error for empty-di=
rs

>=20
> do_package_qa: QA Issue: embedded-services installs files in /media, but
> it is expected to be empty [empty-dirs]
>=20

Any idea on how I can solve this? What am I doing wrongly?
Thanks!

--frfAmSfn2e2vA6yjp7TP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I am updating our system from Honnister to Scarthgap.</div>
<div>I do have a wks file that prepare the system with multiple partitions =
(a boot, two rootfs, one persistent media and one swap).</div>
<div>&nbsp;</div>
<blockquote>
<div>part /boot --source bootimg-partition --ondisk mmcblk1 --fstype=3Dvfat=
 --label boot_A --active --align 4096 --size 20 --fsoptions "vfat rw,relati=
me,fmask=3D0022,dmask=3D0022,codepage=3D437,iocharset=3Diso8859-1,shortname=
=3Dmixed,errors=3Dremount-ro"<br />part / --source rootfs --ondisk mmcblk1 =
--fstype=3Dext4 --label root_A --align 4096 --exclude-path=3Dmedia/<br />pa=
rt --source rootfs --ondisk mmcblk1 --fstype=3Dext4 --label root_B --align =
4096<br />part /media --rootfs-dir=3D${IMAGE_ROOTFS}/media --size=3D128M --=
ondisk mmcblk1 --fstype=3Dext4 --label data --align 4096<br />part swap --o=
ndisk mmcblk1 --size 44 --label swap --fstype=3Dswap --size=3D2048M --overh=
ead-factor 1</div>
</blockquote>
<div>&nbsp;</div>
<div>I am trying to store configuration files onto the persistent media par=
tition in one of my recipes. I am showing here the relevant part:</div>
<div>&nbsp;</div>
<blockquote>
<div>
<div>do_install:append() {<br />&nbsp; &nbsp; &nbsp; &nbsp; mkdir -p ${D}/m=
edia/data/calibrations<br />&nbsp; &nbsp; &nbsp; &nbsp; install -m 0644 ${S=
}/../system_config.json ${D}/media/data/system_config.json<br />&nbsp; &nbs=
p; &nbsp; &nbsp; install -m 0644 ${S}/../system_config_temperature.json ${D=
}/media/data/system_config_temperature.json<br />&nbsp; &nbsp; &nbsp; &nbsp=
; install -m 0644 ${S}/../calib_0000_00_00_00_00_00.raw ${D}/media/data/cal=
ibrations/calib_0000_00_00_00_00_00.raw<br />}</div>
<div>FILES:${PN} +=3D "/usr/share/p3_paradigms/*"<br />FILES:${PN} +=3D "/m=
edia/data/* "<br />FILES:${PN} +=3D "/media/data/calibrations/* "</div>
</div>
</blockquote>
<div>&nbsp;</div>
<div>The recipe was working great under honnister and my wic file contained=
 the media partition and all the files I copied into it with the recipe. Ho=
wever, when I use the same approach with Scarthgap, I have QA error for emp=
ty-dirs<br /><br /></div>
<blockquote>
<div>do_package_qa: QA Issue: embedded-services installs files in /media, b=
ut it is expected to be empty [empty-dirs]</div>
</blockquote>
<div>&nbsp;</div>
<div>Any idea on how I can solve this? What am I doing wrongly?</div>
<div>Thanks!</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--frfAmSfn2e2vA6yjp7TP--

