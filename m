Return-Path: <gavrosc@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 880A1C3DA7F
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 21:48:33 +0000 (UTC)
Subject: Kernel development: integrating device driver in Kernel (Patch)
To: yocto@lists.yoctoproject.org
From: gavrosc@yahoo.com
X-Originating-Location: =?UTF-8?B?VmFlc3RyYSBGcm9lbHVuZGEsIFbDpHN0cmEgR8O2dGFsYW5kIENvdW50eSwgU0U=?= (83.253.125.5)
X-Originating-Platform: Linux Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 30 Jul 2024 14:48:26 -0700
Message-ID: <DDps.1722376106311619367.40Mh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VYZPC0Lqp23nNgmujnZm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 21:48:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63616

--VYZPC0Lqp23nNgmujnZm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

hi
i am using ubuntu 22.04.4 LTS, bitbake 2.8.0, poky scarthgap branch and bea=
glebone black. I am trying to create my first device driver and integrate i=
t in the kernel (with patch).

I am executing the following steps and the result is either that the image =
is built but doesnt contain the driver or an error is generated during comp=
iling.
The steps are:
1. i am creating a folder with name tabdriver in the path /poky/build/tmp/w=
ork-shared/beaglebone-yocto/kernel-source/drivers/char/
2. I am creating Kconfig, Makefile and tabdriver.c files in this folder.

Kconfig
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
config TAB_DRIVER
tristate "CG Hello World Driver"
help
CG help
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Makefile
=3D=3D=3D=3D=3D=3D=3D
obj-$(CONFIG_TAB_DRIVER) :=3D tabdriver.o
=3D=3D=3D=3D=3D=3D=3D

3. in Kconfig which is located in the folder poky/build/tmp/work-shared/bea=
glebone-yocto/kernel-source/drivers/char, the following line is added:
source "drivers/char/tabdriver/Kconfig"

4. in Makefile which is located in the folder poky/build/tmp/work-shared/be=
aglebone-yocto/kernel-source/drivers/char, the following line is added:
obj-$(CONFIG_TAB_DRIVER) +=3D tabdriver/

5. A patch is created by using git git format-patch HEAD~1 which contains t=
he changes in the file files above

6. The patch is copied in the location poky/meta-mylayer/recipes-kernel/lin=
ux/linux-yocto
7. The file linux-yocto_6.6.bbappend which is located in the location poky/=
meta-mylayer/recipes-kernel/linux has the content

=3D=3D=3D=3D=3D=3D
FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
SRC_URI +=3D "file://0001-tab-char-driver.patch"
=3D=3D=3D=3D=3D=3D

8. Run bitbake -c cleansstate virtual/kernel
9. Run bitbake -c menuconfig virtual/kernel
10. The new driver is appearing in menu config and i am activating it
11. =C2=A0Run bitbake -c diffconfig virtual/kernel
12. Build image bitbake core-image-full-cmdline

Are the steps that i am following correct?
is there any debug procedure i can follow?

Br
Christos

--VYZPC0Lqp23nNgmujnZm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>hi</div>
<div>i am using ubuntu 22.04.4 LTS, bitbake 2.8.0, poky scarthgap branch an=
d beaglebone black. I am trying to create my first device driver and integr=
ate it in the kernel (with patch).</div>
<div>&nbsp;</div>
<div>I am executing the following steps and the result is either that the i=
mage is built but doesnt contain the driver or an error is generated during=
 compiling.</div>
<div>The steps are:</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. i am creating a folder with name tab=
driver in the path /poky/build/tmp/work-shared/beaglebone-yocto/kernel-sour=
ce/drivers/char/</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. I am creating Kconfig, Makefile and =
tabdriver.c files in this folder.</div>
<div>&nbsp;</div>
<div>Kconfig</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>config TAB_DRIVER<br />&nbsp; &nbsp; tristate "CG Hello World Driver"<=
br />&nbsp; &nbsp; help<br />&nbsp; &nbsp; &nbsp;&nbsp; CG help</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>&nbsp;</div>
<div>Makefile</div>
<div>=3D=3D=3D=3D=3D=3D=3D</div>
<div>obj-$(CONFIG_TAB_DRIVER) :=3D tabdriver.o</div>
<div>=3D=3D=3D=3D=3D=3D=3D</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. in Kconfig which is located in the f=
older poky/build/tmp/work-shared/beaglebone-yocto/kernel-source/drivers/cha=
r, the following line is added:</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; source "drivers=
/char/tabdriver/Kconfig"</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. in Makefile which is located in the =
folder poky/build/tmp/work-shared/beaglebone-yocto/kernel-source/drivers/ch=
ar, the following line is added:</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; obj-$(CON=
FIG_TAB_DRIVER) +=3D tabdriver/</div>
<div>&nbsp;</div>
<div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. A patch is created by using git git =
format-patch HEAD~1 which contains the changes in the file files above</div=
>
<div>&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. The patch is copied in the location =
poky/meta-mylayer/recipes-kernel/linux/linux-yocto</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7. The file linux-yocto_6.6.bbappend wh=
ich is located in the location poky/meta-mylayer/recipes-kernel/linux has t=
he content</div>
<div>&nbsp;</div>
<div>=3D=3D=3D=3D=3D=3D</div>
<div>
<div>FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"</div>
<div>SRC_URI +=3D "file://0001-tab-char-driver.patch"</div>
<div>=3D=3D=3D=3D=3D=3D</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8. Run bitbake -c cleansstate virtual/k=
ernel</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9. Run bitbake -c menuconfig virtual/ke=
rnel</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10. The new driver is appearing in menu=
 config and i am activating it</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11. &nbsp;Run bitbake -c diffconfig vir=
tual/kernel</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12. Build image bitbake core-image-full=
-cmdline</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Are the steps that i am following correct?</div>
<div>is there any debug procedure i can follow?</div>
<div>&nbsp;</div>
<div>Br</div>
<div>Christos</div>
<div>&nbsp;</div>
</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</div>
<div>&nbsp;</div>

--VYZPC0Lqp23nNgmujnZm--

