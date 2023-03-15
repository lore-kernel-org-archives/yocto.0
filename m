Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 465F4C6FD1D
	for <webhook@archiver.kernel.org>; Wed, 15 Mar 2023 12:20:20 +0000 (UTC)
Subject: Writing the recipes to add new custom DTS file in to the image and configure as as default DTS file to boot image   #imx6
To: yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Surat, Gujarat, IN (103.238.13.196)
X-Originating-Platform: Linux Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Mar 2023 05:20:18 -0700
Message-ID: <Jp1N.1678882818713736772.Kopy@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KMAthvLdRLG1saHoPB6p"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 12:20:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59431

--KMAthvLdRLG1saHoPB6p
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello geeks
Hope all are doing well!

Right now, I'm using the i.mx6 SOM from Variscite

I have created the custom image by adding my custom meta layers
Previously, the kernel generated the .wic image along with the default hard=
ware configuration as mentioned in the DTS file through=C2=A0 meta-variscit=
e-bsp layers

Now, I wanted to add my own custom DTS file.. (I'm not intended to modify t=
he default DTS configuration, as it's a fresh DTS file)
And that's how I followed the below steps

*Procedure That I followed*

1. Created the recipes file called "recipes-kernel" in my custom meta-mylay=
er

2. added the new DTS file as followed the file configuration as.. *recipes-=
kernel/linux/files/imx6ul-var-som-aio-controller-board-v2-emmc-sd-card.dts*

3. Created the recipe file as, *"linux-aio-controller_1.0.bb"* by adding th=
e following contents
---------------------------------------------------------------------------=
--------------------------------------------
DESCRIPTION=3D "AIO Controller board v2 custom kernel configuration"

LICENSE=3D "MIT"

LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"

SRC_URI +=3D "file://imx6ul-var-som-aio-controller-board-v2-emmc-sd-card.dt=
s"
#LINUX_KERNEL_TYPE =3D "custom"

S =3D "${WORKDIR}"
DTS_DIR =3D "${S}/arch/arm/boot/dts"
DTS_NAME =3D "imx6ul-var-som-aio-controller-board-v2-emmc-sd-card.dts"
DTS_DEST =3D "${DTS_DIR}/${DTS_NAME}"

do_install() {
install -d ${DTS_DIR}
install -m 0644 ${WORKDIR}/${DTS_NAME} ${DTS_DEST}
}

do_compile() {
oe_runmake -C ${S} ARCH=3D${ARCH} dtbs
}

DEPENDS =3D "virtual/kernel"
---------------------------------------------------------------------------=
------------------------------

4. instead the image with the custom recipes as...
*INSTALLED_IMAGE_append =3D "=C2=A0 linux-aio-controller"*

5. Listed the dtb file in to the Makefile of the dtb list in /arc/arm/boot/=
dts directory

*Problem statement
---------------------------------------------------------------------------=
----------------------------
* During the baking the image, the dts file get parsed
However, it's failed to compile
As the logs shows....

*|ERROR: oe_runmake failed*
*|make: * No rule to make target 'dtbs'.=C2=A0 Stop.

The brief logs are as follows

*

*| DEBUG: Executing shell function do_compile*

*| NOTE: make -j 4 -C /home/mahendra/Documents/AIO_System/Yocto_Src/var-fsl=
c-yocto/build_aio/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/linux-aio-con=
troller/1.0-r0 ARCH=3D dtbs*

*| ERROR: oe_runmake failed*

*| make: Entering directory '/home/mahendra/Documents/AIO_System/Yocto_Src/=
var-fslc-yocto/build_aio/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/linux-=
aio-controller/1.0-r0'*

*| make: Leaving directory '/home/mahendra/Documents/AIO_System/Yocto_Src/v=
ar-fslc-yocto/build_aio/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/linux-a=
io-controller/1.0-r0'*

*| WARNING: exit code 1 from a shell command.*

*| make: * No rule to make target 'dtbs'.=C2=A0 Stop.*

*| ERROR: ExecutionError('/home/mahendra/Documents/AIO_System/Yocto_Src/var=
-fslc-yocto/build_aio/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/linux-aio=
-controller/1.0-r0/temp/run.do_compile.21607', 1, None, None)

---------------------------------------------------------------------------=
-------------------

* Can anyone help me here to figure out the issue?

Thanks
Mahendra

--KMAthvLdRLG1saHoPB6p
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello geeks&nbsp;<br />Hope all are doing well!<br /><br />Right now, I'm u=
sing the i.mx6 SOM from Variscite<br /><br />I have created the custom imag=
e by adding my custom meta layers&nbsp;<br />Previously, the kernel generat=
ed the .wic image along with the default hardware configuration as mentione=
d in the DTS file through&nbsp; meta-variscite-bsp layers&nbsp;<br /><br />=
Now, I wanted to add my own custom DTS file.. (I'm not intended to modify t=
he default DTS configuration, as it's a fresh DTS file)<br />And that's how=
 I followed the below steps&nbsp;<br /><br /><strong>Procedure That I follo=
wed&nbsp;</strong><br /><br />1. Created the recipes file called "recipes-k=
ernel" in my custom meta-mylayer<br /><br />2. added the new DTS file as fo=
llowed the file configuration as.. <strong>recipes-kernel/linux/files/imx6u=
l-var-som-aio-controller-board-v2-emmc-sd-card.dts</strong><br /><br />3. C=
reated the recipe file as, <strong>"linux-aio-controller_1.0.bb"</strong> b=
y adding the following contents<br />--------------------------------------=
---------------------------------------------------------------------------=
------<br />
<div>DESCRIPTION=3D "AIO Controller board v2 custom kernel configuration"</=
div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>LICENSE=3D "MIT"</div>
<div>&nbsp;</div>
<div>LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade69=
8e0bcf8506ecda2f7b4f302"</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D "file://imx6ul-var-som-aio-controller-board-v2-emmc-sd-ca=
rd.dts"</div>
<div>#LINUX_KERNEL_TYPE =3D "custom"</div>
<div>&nbsp;</div>
<div>S =3D "${WORKDIR}"</div>
<div>DTS_DIR =3D "${S}/arch/arm/boot/dts"</div>
<div>DTS_NAME =3D "imx6ul-var-som-aio-controller-board-v2-emmc-sd-card.dts"=
</div>
<div>DTS_DEST =3D "${DTS_DIR}/${DTS_NAME}"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>do_install() {</div>
<div>&nbsp; &nbsp; install -d ${DTS_DIR}</div>
<div>&nbsp; &nbsp; install -m 0644 ${WORKDIR}/${DTS_NAME} ${DTS_DEST}</div>
<div>}</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>do_compile() {</div>
<div>&nbsp; &nbsp; oe_runmake -C ${S} ARCH=3D${ARCH} dtbs</div>
<div>}</div>
<div>&nbsp;</div>
<p>DEPENDS =3D "virtual/kernel"&nbsp;<br />--------------------------------=
-------------------------------------------------------------------------<b=
r /><br />4. instead the image with the custom recipes as...<br />&nbsp; &n=
bsp;<strong> INSTALLED_IMAGE_append =3D "&nbsp; linux-aio-controller"</stro=
ng></p>
<p>&nbsp;</p>
<p>5. Listed the dtb file in to the Makefile of the dtb list in /arc/arm/bo=
ot/dts directory&nbsp;<br /><br /><br /><strong>Problem statement&nbsp;<br =
/>-------------------------------------------------------------------------=
------------------------------<br /></strong>During the baking the image, t=
he dts file get parsed<br />However, it's failed to compile&nbsp;<br />As t=
he logs shows....&nbsp;<br /><br /><strong>&nbsp;|ERROR: oe_runmake failed<=
/strong><br /><strong>&nbsp;|make: * No rule to make target 'dtbs'.&nbsp; S=
top.<br /><br /><br />The brief logs are as follows&nbsp;<br /><br /></stro=
ng></p>
<p><strong>| DEBUG: Executing shell function do_compile</strong></p>
<p><strong>| NOTE: make -j 4 -C /home/mahendra/Documents/AIO_System/Yocto_S=
rc/var-fslc-yocto/build_aio/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi/lin=
ux-aio-controller/1.0-r0 ARCH=3D dtbs</strong></p>
<p><strong>| ERROR: oe_runmake failed</strong></p>
<p><strong>| make: Entering directory '/home/mahendra/Documents/AIO_System/=
Yocto_Src/var-fslc-yocto/build_aio/tmp/work/imx6ul_var_dart-fslc-linux-gnue=
abi/linux-aio-controller/1.0-r0'</strong></p>
<p><strong>| make: Leaving directory '/home/mahendra/Documents/AIO_System/Y=
octo_Src/var-fslc-yocto/build_aio/tmp/work/imx6ul_var_dart-fslc-linux-gnuea=
bi/linux-aio-controller/1.0-r0'</strong></p>
<p><strong>| WARNING: exit code 1 from a shell command.</strong></p>
<p><strong>| make: * No rule to make target 'dtbs'.&nbsp; Stop.</strong></p=
>
<p>&nbsp;</p>
<p><strong>| ERROR: ExecutionError('/home/mahendra/Documents/AIO_System/Yoc=
to_Src/var-fslc-yocto/build_aio/tmp/work/imx6ul_var_dart-fslc-linux-gnueabi=
/linux-aio-controller/1.0-r0/temp/run.do_compile.21607', 1, None, None)<br =
/><br />-------------------------------------------------------------------=
---------------------------<br /><br /><br /></strong>Can anyone help me he=
re to figure out the issue?<br /><br /><br />Thanks&nbsp;<br />Mahendra&nbs=
p;</p>

--KMAthvLdRLG1saHoPB6p--

