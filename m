Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41CD8C02193
	for <webhook@archiver.kernel.org>; Wed, 29 Jan 2025 11:52:06 +0000 (UTC)
Subject: [scarthgap]  circular dependency issue  #kernel #rpi #scarthgap #yocto
To: yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.181)
X-Originating-Platform: Windows Chrome 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 Jan 2025 03:51:58 -0800
Message-ID: <XAWg.1738151518148913098.vKhK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pk3q43z2RSEiFnmnRc75"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2025 11:52:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64670

--pk3q43z2RSEiFnmnRc75
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to build scarthgap image using : bitbake -k wac-core-image

I got below error
ERROR: Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux=
-raspberrypi_6.6.bb:do_collect_spdx_deps has circular dependency on /home/b=
uild/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb=
:do_create_spdx
ERROR: Command execution failed: 1

above error is been fixed in this commit for scartrhgap : https://git.yocto=
project.org/poky/commit/?h=3Dscarthgap&id=3D15acbd10906568a1ed9c548b465f1cb=
6b5205202

But their is also a commit were in the function names have been changed : [=
03/11] classes/create-spdx-2.2: Fix build time dependency calculations - Pa=
tchwork ( https://patchwork.yoctoproject.org/project/oe-core/patch/20230602=
133453.229023-3-richard.purdie@linuxfoundation.org/ )
Above commits are for error mentioned above just that there is change in fu=
nction names for create-spdx-2.2

To get rid of the error i added INHERIT:remove +=3D "create-spdx" to my loc=
al.conf above issue resolved with the commit but i came across=C2=A0 below =
error
ERROR: Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux=
-raspberrypi_6.6.bb:do_package has circular dependency on /home/build/proje=
ct/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_packag=
edata
ERROR: Command execution failed: 1

Am I missing something i am working on scarthgap-5.0.5 version

Ganesh Mahajan

--pk3q43z2RSEiFnmnRc75
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am trying to build scarthgap image using : bitbake -k wac-core-image=
<br /><br />I got below error<br />ERROR: Task /home/build/project/meta-ras=
pberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_collect_spdx_deps=
 has circular dependency on /home/build/project/meta-raspberrypi/recipes-ke=
rnel/linux/linux-raspberrypi_6.6.bb:do_create_spdx<br />ERROR: Command exec=
ution failed: 1<br /><br />above error is been fixed in this commit for sca=
rtrhgap : <a href=3D"https://git.yoctoproject.org/poky/commit/?h=3Dscarthga=
p&amp;id=3D15acbd10906568a1ed9c548b465f1cb6b5205202" target=3D"_blank" rel=
=3D"noopener">https://git.yoctoproject.org/poky/commit/?h=3Dscarthgap&amp;i=
d=3D15acbd10906568a1ed9c548b465f1cb6b5205202</a><br /><br />But their is al=
so a commit were in the function names have been changed : <a href=3D"https=
://patchwork.yoctoproject.org/project/oe-core/patch/20230602133453.229023-3=
-richard.purdie@linuxfoundation.org/">[03/11] classes/create-spdx-2.2: Fix =
build time dependency calculations - Patchwork</a><br />Above commits are f=
or error mentioned above just that there is change in function names for cr=
eate-spdx-2.2<br /><br />To get rid of the error i added INHERIT:remove +=
=3D "create-spdx" to my local.conf above issue resolved with the commit but=
 i came across&nbsp; below error<br />ERROR: Task /home/build/project/meta-=
raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_package has ci=
rcular dependency on /home/build/project/meta-raspberrypi/recipes-kernel/li=
nux/linux-raspberrypi_6.6.bb:do_packagedata<br />ERROR: Command execution f=
ailed: 1<br /><br />Am I missing something i am working on scarthgap-5.0.5 =
version<br /><br /><br />Ganesh Mahajan</div>

--pk3q43z2RSEiFnmnRc75--

