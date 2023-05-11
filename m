Return-Path: <lancelot.kao@fii-usa.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E21C7EE24
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 22:30:58 +0000 (UTC)
Subject: Tried to enable vdso 
To: yocto@lists.yoctoproject.org
From: lancelot.kao@fii-usa.com
X-Originating-Location: Tomball, Texas, US (12.231.52.155)
X-Originating-Platform: Windows Chrome 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 11 May 2023 15:30:54 -0700
Message-ID: <lu7P.1683844254589014430.s8VA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lEZkW2WFVDKrcmnfaZnZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 22:30:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59998

--lEZkW2WFVDKrcmnfaZnZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I installed the eltt2(https://github.com/Infineon/eltt2) into my system and=
 it requires the=C2=A0linux-vdso.so.1.
So I add the two lines into my liunx-yocto_%.bbappend, but the vdso64.so di=
dn't install into the rootfs.
KERNEL_FEATURES +=3D "features/vdso/vdso.scc"
IMAGE_INSTALL +=3D "vdso"

I also add do_install to add vdso64.so
do_install:append () {
install -d ${D}${libdir}/modules/${KERNEL_VERSION}/vdso
install -m 644 -g root -o root ${B}/arch/x86/entry/vdso/vdso64.so ${D}${lib=
dir}/modules/${KERNEL_VERSION}/vdso/
}
I got the installed in the package folder
package/usr/lib/modules/6.1.25-yocto-standard/vdso/vdso64.so
However, it didn't work. is there any idea? or suggestion

--lEZkW2WFVDKrcmnfaZnZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I installed the eltt2(https://github.com/Infineon/eltt2) into my system and=
 it requires the&nbsp;linux-vdso.so.1.&nbsp;<br />So I add the two lines in=
to my liunx-yocto_%.bbappend, but the vdso64.so didn't install into the roo=
tfs.&nbsp;<br />&nbsp;KERNEL_FEATURES +=3D "features/vdso/vdso.scc"<br />IM=
AGE_INSTALL +=3D "vdso"<br /><br />I also add do_install to add vdso64.so<b=
r />
<div>do_install:append () {</div>
<div>&nbsp; &nbsp; &nbsp;install -d ${D}${libdir}/modules/${KERNEL_VERSION}=
/vdso</div>
<div>&nbsp; &nbsp; &nbsp;install -m 644 -g root -o root ${B}/arch/x86/entry=
/vdso/vdso64.so ${D}${libdir}/modules/${KERNEL_VERSION}/vdso/</div>
<div>}<br />I got the installed in the package folder<br />&nbsp; &nbsp; &n=
bsp; &nbsp;package/usr/lib/modules/6.1.25-yocto-standard/vdso/vdso64.so<br =
/>However, it didn't work. is there any idea? or suggestion</div>
<div>&nbsp;</div>

--lEZkW2WFVDKrcmnfaZnZ--

