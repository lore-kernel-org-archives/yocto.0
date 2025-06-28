Return-Path: <ferdinand0022@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C9FC54ED1
	for <webhook@archiver.kernel.org>; Sat, 28 Jun 2025 13:26:23 +0000 (UTC)
Subject: WiFi driver on Radxa Zero 3W #devicedriver #make
To: yocto@lists.yoctoproject.org
From: ferdinand0022@gmail.com
X-Originating-Location: Turku, Southwest Finland, FI (194.111.69.129)
X-Originating-Platform: Linux Firefox 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 28 Jun 2025 06:26:15 -0700
Message-ID: <pqOU.1751117175071326506.9ARF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jeTnc56IqHNPx0JDnpYS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Jun 2025 13:26:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65559

--jeTnc56IqHNPx0JDnpYS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
I am building a custom linux for Radxa Zero 3W with Yocto. I am fairly new =
to yocto project.
As of now almost all the peripherals are running. But the WiFi chip on the =
board needs AIC8800 driver to run.
This driver should work: https://github.com/radxa-pkg/aic8800.
I tried building some custom recipes and running, but can never get it work=
ing.

>=20
> Here is the recipe I have written:
> SUMMARY =3D "Aicsemi aic8800 Wi-Fi driver"
> DESCRIPTION =3D "Aicsemi aic8800 Wi-Fi driver installation"
> LICENSE =3D "CLOSED"
> SRC_URI =3D
> "git://github.com/radxa-pkg/aic8800.git;branch=3Dmain;protocol=3Dhttps"
> SRCREV =3D "ac5c387ca74e17e91d14d87cd3ba140bb21faf6e"
> S =3D "${WORKDIR}"
> inherit module
> # If the Makefile is in the root of the repo, this is fine.
> # If it's in src/, set S =3D "${WORKDIR}/git/src" and adjust accordingly.
> EXTRA_OEMAKE =3D ""
> # Install the kernel module
> do_install() {
> install -d ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/extra
> install -m 0644 ${B}/src/*.ko
> ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/extra/
> }
> # Ensure the module is packaged
> FILES_${PN} +=3D
> "${nonarch_base_libdir}/modules/${KERNEL_VERSION}/extra/*.ko"
>=20
>=20

I am getting different errors, the last one being - no targets specified an=
d no makefile found.
I strongly believe there is a different way to write a recipie that install=
s the driver from git. Much obliged to anyone who can help me here.

--jeTnc56IqHNPx0JDnpYS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>I am building a custom linux for Radxa Zero 3W with Yocto. I am fairly=
 new to yocto project.<br />As of now almost all the peripherals are runnin=
g. But the WiFi chip on the board needs AIC8800 driver to run.<br />This dr=
iver should work: <a href=3D"https://github.com/radxa-pkg/aic8800" target=
=3D"_blank" rel=3D"noopener">https://github.com/radxa-pkg/aic8800</a>.</div=
>
<div>I tried building some custom recipes and running, but can never get it=
 working.</div>
<div>
<blockquote>Here is the recipe I have written:
<div>SUMMARY =3D "Aicsemi aic8800 Wi-Fi driver"<br />DESCRIPTION =3D "Aicse=
mi aic8800 Wi-Fi driver installation"<br />LICENSE =3D "CLOSED"</div>
<div>SRC_URI =3D "git://github.com/radxa-pkg/aic8800.git;branch=3Dmain;prot=
ocol=3Dhttps"<br />SRCREV =3D "ac5c387ca74e17e91d14d87cd3ba140bb21faf6e"</d=
iv>
<div>S =3D "${WORKDIR}"</div>
<div>inherit module</div>
<div># If the Makefile is in the root of the repo, this is fine.<br /># If =
it's in src/, set S =3D "${WORKDIR}/git/src" and adjust accordingly.</div>
<div>EXTRA_OEMAKE =3D ""</div>
<div># Install the kernel module<br />do_install() {<br />&nbsp; &nbsp; ins=
tall -d ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/extra<br />&nb=
sp; &nbsp; install -m 0644 ${B}/src/*.ko ${D}${nonarch_base_libdir}/modules=
/${KERNEL_VERSION}/extra/<br />}</div>
<div># Ensure the module is packaged<br />FILES_${PN} +=3D "${nonarch_base_=
libdir}/modules/${KERNEL_VERSION}/extra/*.ko"</div>
<div>&nbsp;</div>
</blockquote>
</div>
<div>I am getting different errors, the last one being - no targets specifi=
ed and no makefile found.<br />I strongly believe there is a different way =
to write a recipie that installs the driver from git. Much obliged to anyon=
e who can help me here.</div>

--jeTnc56IqHNPx0JDnpYS--

