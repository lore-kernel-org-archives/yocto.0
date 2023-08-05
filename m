Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25812C00528
	for <webhook@archiver.kernel.org>; Sat,  5 Aug 2023 00:19:51 +0000 (UTC)
Subject: the way to create patch for Linux kernel configuration
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Aug 2023 17:19:48 -0700
Message-ID: <DfV4.1691194788292637127.95jM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="To5YQDEP7Btimzqg9Vrm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Aug 2023 00:19:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60712

--To5YQDEP7Btimzqg9Vrm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

How do you create a patch for Linux kernel configuration in a customized la=
yer on top of an initial patch. It is a patch based on the original defconf=
ig from vendor meta layer? I tried different ways, but none of them work.

The initial .bbappend is like this. I would like to make further changes on=
 top of that.

SRCREV =3D "0086da6acd41600d47b87b05874f99704216426f"

FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"

SRC_URI +=3D "\
file://devtool-fragment.cfg \
"

1. use devtool to modify the current kernel configuration
After using devtool menuconfig to modify the kernel configuration, the .con=
fig is updated.
But, here is a big BUT, after using devtool build to build kernel image, th=
e kernel image is still built using the defconfig originally from the vendo=
r meta layer meta-raspberrypi.
If using devtool update-recipe to create a patch any way, then do devtool r=
eset and use bitbake to build the kernel image, the result is the same (the=
 kernel image uses original defconfig).

2. use git format-patch to create a patch file and then add the patch file =
into .bbappend.
Say, a patch 0001-update-kernel-config-to-enable-uart-console.patch is adde=
d into files folder.
Then add one line in .bbappend file like this:
SRCREV =3D "0086da6acd41600d47b87b05874f99704216426f"

FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"

SRC_URI +=3D "\
file://devtool-fragment.cfg \
file://0001-update-kernel-config-to-enable-uart-console.patch \
"
But this way, the patch couldn't be applied at all. An error is caused.

3. Tried to use git to create a patch in different folder
Most of tries got the same result.
One of them seems applied. But from the result, it is actually not applied.

So, which way should work? Anything missing in what I did.

Thanks for your help!

Crane

--To5YQDEP7Btimzqg9Vrm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />How do you create a patch for Linux kernel configuration =
in a customized layer on top of an initial patch. It is a patch based on th=
e original defconfig from vendor meta layer? I tried different ways, but no=
ne of them work.&nbsp;<br /><br />The initial .bbappend is like this. I wou=
ld like to make further changes on top of that.<br />
<div><br />SRCREV =3D "0086da6acd41600d47b87b05874f99704216426f"</div>
<div>&nbsp;</div>
<div>FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D "\</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; file://devtool-fragment.cfg \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; "</div>
<div>&nbsp;</div>
1. use devtool to modify the current kernel configuration<br />&nbsp; &nbsp=
; After using devtool menuconfig to modify the kernel configuration, the .c=
onfig is updated. <br />&nbsp; &nbsp; But, here is a big BUT, after using d=
evtool build to build kernel image, the kernel image is still built using t=
he defconfig originally from the vendor meta layer meta-raspberrypi.<br />&=
nbsp; &nbsp; If using devtool update-recipe to create a patch any way, then=
 do devtool reset and use bitbake to build the kernel image, the result is =
the same (the kernel image uses original defconfig).<br /><br />2. use git =
format-patch to create a patch file and then add the patch file into .bbapp=
end.<br />&nbsp; &nbsp; Say, a patch 0001-update-kernel-config-to-enable-ua=
rt-console.patch is added into files folder.<br />&nbsp; &nbsp; Then add on=
e line in .bbappend file like this:<br />
<div>SRCREV =3D "0086da6acd41600d47b87b05874f99704216426f"</div>
<div>&nbsp;</div>
<div>FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D "\</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; file://devtool-fragment.cfg \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; file://0001-update-kernel-config-to-enable=
-uart-console.patch \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; "</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;But this way, the patch couldn't be applied=
 at all. An error is caused.<br /><br />3. Tried to use git to create a pat=
ch in different folder<br />&nbsp; &nbsp; &nbsp;Most of tries got the same =
result.<br />&nbsp; &nbsp; &nbsp;One of them seems applied. But from the re=
sult, it is actually not applied.<br /><br />So, which way should work? Any=
thing missing in what I did.<br /><br />Thanks for your help!<br /><br />Cr=
ane</div>
<br /><br /><br /><br /><br /><br />

--To5YQDEP7Btimzqg9Vrm--

