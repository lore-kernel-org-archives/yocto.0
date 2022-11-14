Return-Path: <sebastien.fabre31@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 272EFC4332F
	for <webhook@archiver.kernel.org>; Mon, 14 Nov 2022 13:50:50 +0000 (UTC)
Subject: #kirkstone: boot script section not added in the fitimage
To: yocto@lists.yoctoproject.org
From: sebastien.fabre31@gmail.com
X-Originating-Location: FR (185.146.41.250)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 14 Nov 2022 05:50:42 -0800
Message-ID: <IaM3.1668433842895128362.FuTB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gNn6qxXo3MnnNhAPv7yW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Nov 2022 13:50:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58554

--gNn6qxXo3MnnNhAPv7yW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am working on kirkstone. If UBOOT_ENV is specified and kernel-fitimage is=
 in KERNEL_CLASSES, boot script section is not added in the fitimage.

In fitimage_assemble (kernel-fitimage.bbclass), the 3 rd step is not perfor=
med because boot directory is not in STAGING_DIR_HOST. Indeed, u-boot.inc i=
nstalls UBOOT_ENV_BINARY in boot directory but boot is not in SYSROOT_DIRS =
so it is not present in kernel STAGING_DIR_HOST.

Should we add the following line in u-boot.inc ?

SYSROOT_DIRS:append =3D "${@' /boot' if d.getVar('UBOOT_ENV') else ''}"

Best regards,
S=C3=A9bastien Fabre

--gNn6qxXo3MnnNhAPv7yW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">Hello,</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">I am working on kirkstone. If UBOOT_ENV =
is specified and kernel-fitimage is in KERNEL_CLASSES, boot script section =
is not added in the fitimage. </span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">In fitimage_assemble (kernel-fitimage.bb=
class), the 3<sup>rd</sup> step is not performed because boot directory is =
not in STAGING_DIR_HOST. Indeed, u-boot.inc installs UBOOT_ENV_BINARY in bo=
ot directory but boot is not in SYSROOT_DIRS so it is not present in kernel=
 STAGING_DIR_HOST.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">Should we add the following line in u-bo=
ot.inc ?</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">SYSROOT_DIRS:append =3D &#34;${@&#39; /b=
oot&#39; if d.getVar(&#39;UBOOT_ENV&#39;) else &#39;&#39;}&#34;</span></p>
<br/>Best regards,<br/>S=C3=A9bastien Fabre

--gNn6qxXo3MnnNhAPv7yW--

