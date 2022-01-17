Return-Path: <rgovostes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8234C433F5
	for <webhook@archiver.kernel.org>; Mon, 17 Jan 2022 05:41:59 +0000 (UTC)
Subject: Building uImage with appended DTB
To: yocto@lists.yoctoproject.org
From: rgovostes@gmail.com
X-Originating-Location: Jamaica Plain, Massachusetts, US (72.74.129.106)
X-Originating-Platform: Mac Safari 15.2
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 16 Jan 2022 21:41:59 -0800
Message-ID: <mt8I.1642398119365665679.kouk@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="oeC9NYRQVtVGPZW4K0YU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jan 2022 05:41:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55886

--oeC9NYRQVtVGPZW4K0YU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm a complete newcomer to Yocto, trying to translate a manual process of b=
uilding software for an embedded device based on the PHYTEC phyCORE-LPC3250=
 SOM. I did not find an existing BSP layer for this board so I am trying to=
 create my own.

When I build a kernel for this device manually, I use the CONFIG_APPENDED_D=
TB=3Dy option, which instructs the kernel to find the device tree right aft=
er the kernel image itself.=C2=A0I build the zImage, then append my DTB and=
 finally create the uImage file:

cat arch/arm/boot/zImage ./arch/arm/boot/dts/lpc3250-phy3250.dtb > arch/arm=
/boot/zImage-dtb
mkimage -A arm -O linux -C none -T kernel -a 0x80008000 -e 0x80008000 -n Li=
nux -d arch/arm/boot/zImage-dtb arch/arm/boot/uImage-dtb

I'm trying to figure out how to properly replicate this process in Yocto.

I see that Poky's meta/classes/kernel-devicetree.bbclass uses the=C2=A0KERN=
EL_DEVICETREE_BUNDLE variable to do something similar. If I have=C2=A0KERNE=
L_IMAGETYPE set to "zImage", then it will create a zImage+DTB file.

However, it expects the zImage file to be called "zImage", and the one that=
 gets built is called "zImage-5.14.6-yocto-standard". Since it cannot find =
"zImage", the build fails.

cat: .../tmp/work/lpc3250-poky-linux-gnueabi/linux-yocto/5.14.6+gitAUTOINC+=
4f4ad2c808_7ae156be3b-r0/image/boot/zImage: No such file or directory

I also see that meta-ti has a bundle-devicetree.inc file that has a similar=
 aim, but it deals with uImages instead.

https://git.yoctoproject.org/meta-ti/tree/recipes-kernel/linux/bundle-devic=
etree.inc

My concern with using this is that it appends the DTB directly to the uImag=
e. However the uImage header structure includes a field for data size and a=
nother one for checksum. These fields are only computed correctly if the DT=
B is already appended before the uImage file is built.

I think if I can figure out how to make KERNEL_DEVICETREE_BUNDLE create the=
 zImage+DTB file, then I can write a do_deploy:append() function that invok=
es mkimage to produce the uImage. But I'm not sure how to diagnose the prob=
lem.

Thanks,
Ryan

--oeC9NYRQVtVGPZW4K0YU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm a complete newcomer to Yocto, trying to translate a manual process of b=
uilding software for an embedded device based on the PHYTEC phyCORE-LPC3250=
 SOM. I did not find an existing BSP layer for this board so I am trying to=
 create my own.<br /><br />When I build a kernel for this device manually, =
I use the CONFIG_APPENDED_DTB=3Dy option, which instructs the kernel to fin=
d the device tree right after the kernel image itself.&nbsp;I build the zIm=
age, then append my DTB and finally create the uImage file:<br /><br />&nbs=
p; &nbsp; cat arch/arm/boot/zImage ./arch/arm/boot/dts/lpc3250-phy3250.dtb =
&gt; arch/arm/boot/zImage-dtb<br />
<div>&nbsp; &nbsp; mkimage -A arm -O linux -C none -T kernel -a 0x80008000 =
-e 0x80008000 -n Linux -d arch/arm/boot/zImage-dtb arch/arm/boot/uImage-dtb=
</div>
<div><br />I'm trying to figure out how to properly replicate this process =
in Yocto.<br /><br />I see that Poky's meta/classes/kernel-devicetree.bbcla=
ss uses the&nbsp;KERNEL_DEVICETREE_BUNDLE variable to do something similar.=
 If I have&nbsp;KERNEL_IMAGETYPE set to "zImage", then it will create a zIm=
age+DTB file.<br /><br />However, it expects the zImage file to be called "=
zImage", and the one that gets built is called "zImage-5.14.6-yocto-standar=
d". Since it cannot find "zImage", the build fails.<br /><br />&nbsp; &nbsp=
; cat: .../tmp/work/lpc3250-poky-linux-gnueabi/linux-yocto/5.14.6+gitAUTOIN=
C+4f4ad2c808_7ae156be3b-r0/image/boot/zImage: No such file or directory<br =
/><br /><br />I also see that meta-ti has a bundle-devicetree.inc file that=
 has a similar aim, but it deals with uImages instead.<br /><br /><a href=
=3D"https://git.yoctoproject.org/meta-ti/tree/recipes-kernel/linux/bundle-d=
evicetree.inc" target=3D"_blank" rel=3D"noopener">https://git.yoctoproject.=
org/meta-ti/tree/recipes-kernel/linux/bundle-devicetree.inc</a><br /><br />=
My concern with using this is that it appends the DTB directly to the uImag=
e. However the uImage header structure includes a field for data size and a=
nother one for checksum. These fields are only computed correctly if the DT=
B is already appended before the uImage file is built.<br /><br /><br />I t=
hink if I can figure out how to make KERNEL_DEVICETREE_BUNDLE create the zI=
mage+DTB file, then I can write a do_deploy:append() function that invokes =
mkimage to produce the uImage. But I'm not sure how to diagnose the problem=
.<br /><br />Thanks,<br />Ryan</div>

--oeC9NYRQVtVGPZW4K0YU--

