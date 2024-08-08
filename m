Return-Path: <bartiszosti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36A63C52D6F
	for <webhook@archiver.kernel.org>; Thu,  8 Aug 2024 14:18:28 +0000 (UTC)
Subject: Creata a .bin image
To: yocto@lists.yoctoproject.org
From: bartiszosti@gmail.com
X-Originating-Location: Gorzyce, Lesser Poland, PL (109.196.245.39)
X-Originating-Platform: Linux Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Aug 2024 07:18:21 -0700
Message-ID: <y349.1723126701773901469.SG4f@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rEJkflTIZJu0Nh7Sjxj3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Aug 2024 14:18:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63678

--rEJkflTIZJu0Nh7Sjxj3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
In my usecase I need a tiny varsion of Linux, because I have only 16 MB of =
persistence memory.
I manage to build an image which size is about a half of available memory.

>=20
> DISTRO =3D xware
> DISTRO_VERSION =3D 0.0.1
> USER_CLASSES =3D
> IMAGE_CLASSES =3D image-artifact-names license_image
> IMAGE_FEATURES =3D debug-tweaks hwcodecs
> IMAGE_LINGUAS =3D en-us en-gb
> IMAGE_INSTALL =3D packagegroup-core-boot
> BAD_RECOMMENDATIONS =3D
> NO_RECOMMENDATIONS =3D
> PACKAGE_EXCLUDE =3D
> ROOTFS_POSTPROCESS_COMMAND =3D write_package_manifest
> license_create_manifest =C2=A0 ssh_allow_empty_password =C2=A0ssh_allow_r=
oot_login =C2=A0
> postinst_enable_logging =C2=A0rootfs_update_timestamp =C2=A0 write_image_=
test_data =C2=A0
> empty_var_volatile =C2=A0tidy_shadowutils_files rootfs_reproducible
> IMAGE_POSTPROCESS_COMMAND =3D =C2=A0buildhistory_get_imageinfo
> IMAGESIZE =3D 8760
>=20

Looks well, but at the end of building I have .wic.gz file (9,6MB) and insi=
de it there is .wic file (131,6 MB).
How can I get a .bin file contains only u-boot, kernel and rootfs, which si=
ze is 8760?

--rEJkflTIZJu0Nh7Sjxj3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>In my usecase I need a tiny varsion of Linux, because I have only 16 M=
B of persistence memory.<br />I manage to build an image which size is abou=
t a half of available memory.</div>
<div>&nbsp;</div>
<blockquote>
<div>DISTRO =3D xware<br />DISTRO_VERSION =3D 0.0.1<br />USER_CLASSES =3D&n=
bsp;<br />IMAGE_CLASSES =3D image-artifact-names license_image<br />IMAGE_F=
EATURES =3D debug-tweaks hwcodecs<br />IMAGE_LINGUAS =3D en-us en-gb<br />I=
MAGE_INSTALL =3D packagegroup-core-boot<br />BAD_RECOMMENDATIONS =3D&nbsp;<=
br />NO_RECOMMENDATIONS =3D&nbsp;<br />PACKAGE_EXCLUDE =3D&nbsp;<br />ROOTF=
S_POSTPROCESS_COMMAND =3D write_package_manifest license_create_manifest &n=
bsp; ssh_allow_empty_password &nbsp;ssh_allow_root_login &nbsp; postinst_en=
able_logging &nbsp;rootfs_update_timestamp &nbsp; write_image_test_data &nb=
sp; empty_var_volatile &nbsp;tidy_shadowutils_files rootfs_reproducible&nbs=
p;<br />IMAGE_POSTPROCESS_COMMAND =3D &nbsp;buildhistory_get_imageinfo<br /=
>IMAGESIZE =3D 8760</div>
</blockquote>
<div>Looks well, but at the end of building I have .wic.gz file (9,6MB) and=
 inside it there is .wic file (131,6 MB).<br />How can I get a .bin file co=
ntains only u-boot, kernel and rootfs, which size is 8760?</div>

--rEJkflTIZJu0Nh7Sjxj3--

