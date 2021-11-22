Return-Path: <ddbabich@bootseeds.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F452C433EF
	for <webhook@archiver.kernel.org>; Mon, 22 Nov 2021 22:36:11 +0000 (UTC)
Subject: Problem installing python package from a wheel #bitbake #python
To: yocto@lists.yoctoproject.org
From: "David Babich" <ddbabich@bootseeds.com>
X-Originating-Location: Boardman, Oregon, US (52.61.197.79)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Nov 2021 14:36:10 -0800
Message-ID: <qUQg.1637620570327649228.fQLs@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fpP6qDfTSSFbMKWeaLrZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Nov 2021 22:36:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55389

--fpP6qDfTSSFbMKWeaLrZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm attempting to create a recipe for pytorch for the TX2i using a wheel fi=
le obtained from here:

https://forums.developer.nvidia.com/t/pytorch-for-jetson-version-1-10-now-a=
vailable/72048

Here is what I have so far for the recipe:

```

DESCRIPTION =3D "NVIDIA's Python Torch"

HOMEPAGE =3D "https://nvidia.com"

LICENSE =3D "BSD-3-Clause"

LIC_FILES_CHKSUM =3D "file://../LICENSE;md5=3D91a5dfdaccf53b27488cb3a639e98=
6d5"

inherit setuptools3

SRC_URI =3D "\

file://torch-1.10.0-cp36-cp36m-linux_aarch64.whl \

file://LICENSE \

"

COMPATIBLE_MACHINE =3D "jetson-tx2-devkit-tx2i"

PACKAGE_ARCH =3D "${MACHINE_ARCH}"

S =3D "${WORKDIR}/${PN}-${PV}"

do_configure() {

:

}

do_compile() {

:

}

do_install() {

pip3 install ${WORKDIR}/torch-1.10.0-cp36-cp36m-linux_aarch64.whl

}

DEPENDS =3D "python3-pip-native"

```

When I build I get the following ambiguous error during do_install:

| WARNING: The directory '/home/ddbabich/.cache/pip' or its parent director=
y is not owned or is not writable by the current user. The cache has been d=
isabled. Check the permissions and owner of that directory. If executing pi=
p with sudo, you should use sudo's -H flag.

| ERROR: torch-1.10.0-cp36-cp36m-linux_aarch64.whl is not a supported wheel=
 on this platform.

It seems like I'm missing something with the host vs. the target settings?=
=C2=A0 But I really don't have any ideas.=C2=A0 Any help is appreciated.
THanks
-David

--fpP6qDfTSSFbMKWeaLrZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br />I'm attempting to create a recipe for pytorch for the TX2i usin=
g a wheel file obtained from here:</p>
<p><a href=3D"https://forums.developer.nvidia.com/t/pytorch-for-jetson-vers=
ion-1-10-now-available/72048" target=3D"_blank" rel=3D"noopener">https://fo=
rums.developer.nvidia.com/t/pytorch-for-jetson-version-1-10-now-available/7=
2048</a><br /><br />Here is what I have so far for the recipe:</p>
<p>```</p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">DESCRIPTION =3D "NVIDIA's Python Torch"</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">HOMEPAGE =3D "https://nvidia.com"</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">LICENSE =3D "BSD-3-Clause"</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">LIC_FILES_CHKSUM =3D "file://../LICENSE;md5=3D91a5dfdaccf53b27488cb3a639=
e986d5"</span></p>
<p>&nbsp;</p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">inherit setuptools3</span></p>
<p>&nbsp;</p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">SRC_URI =3D "\</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">&nbsp; &nbsp; &nbsp; &nbsp; file://torch-1.10.0-cp36-cp36m-linux_aarch64=
.whl \</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">&nbsp; &nbsp; &nbsp; &nbsp; file://LICENSE \</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">"</span></p>
<p>&nbsp;</p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">COMPATIBLE_MACHINE =3D "jetson-tx2-devkit-tx2i"</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">PACKAGE_ARCH =3D "${MACHINE_ARCH}"</span></p>
<p>&nbsp;</p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">S =3D "${WORKDIR}/${PN}-${PV}"</span></p>
<p>&nbsp;</p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">do_configure() {</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">&nbsp; &nbsp; &nbsp; &nbsp; :</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">}</span></p>
<p>&nbsp;</p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">do_compile() {</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">&nbsp; &nbsp; &nbsp; &nbsp; :</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">}</span></p>
<p>&nbsp;</p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">do_install() {</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">&nbsp; &nbsp; &nbsp; &nbsp; pip3 install ${WORKDIR}/torch-1.10.0-cp36-cp=
36m-linux_aarch64.whl</span></p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">}</span></p>
<p>&nbsp;</p>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 10pt=
;">DEPENDS =3D "python3-pip-native"</span></p>
<p>```<br /><br />When I build I get the following ambiguous error during d=
o_install:</p>
<p>| WARNING: The directory '/home/ddbabich/.cache/pip' or its parent direc=
tory is not owned or is not writable by the current user. The cache has bee=
n disabled. Check the permissions and owner of that directory. If executing=
 pip with sudo, you should use sudo's -H flag.</p>
<p>| ERROR: torch-1.10.0-cp36-cp36m-linux_aarch64.whl is not a supported wh=
eel on this platform.</p>
<div><br />It seems like I'm missing something with the host vs. the target=
 settings?&nbsp; But I really don't have any ideas.&nbsp; Any help is appre=
ciated.<br />THanks<br />-David</div>
<p>&nbsp;</p>
<p>&nbsp;</p>

--fpP6qDfTSSFbMKWeaLrZ--

