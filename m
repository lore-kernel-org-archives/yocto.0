Return-Path: <marcus.flyckt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A474BD0E6C0
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 07:32:06 +0000 (UTC)
Subject: Question Regarding MACHINE_EXTRA_RDEPENDS vs MACHINE_EXTRA_RRECOMMENDS
To: yocto@lists.yoctoproject.org
From: "Marcus Flyckt" <marcus.flyckt@gmail.com>
X-Originating-Location: =?UTF-8?B?S2FybHNrb2dhLCDDlnJlYnJvIENvdW50eSwgU0U=?= (195.22.86.94)
X-Originating-Platform: Linux Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Oct 2024 00:32:04 -0700
Message-ID: <wQRX.1729495924467332184.Nfcl@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="V1qyvV3wHsluT2bQup9p"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 07:32:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64056

--V1qyvV3wHsluT2bQup9p
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a question regarding the use of MACHINE_EXTRA_RDEPENDS and MACHINE_E=
XTRA_RRECOMMENDS.

I've written a kernel module to handle a specific aspect of our custom hard=
ware, and I added it to
MACHINE_EXTRA_RDEPENDS to ensure it's always installed. However, this trigg=
ered the following SPDX error:

ERROR:[...] do_rootfs: Unable to find package with name 'kernel-module-my-m=
odule' in SPDX file [...]/kernel-module-my-module-6.6.23-lf-6.6.y-lf-6.6.y-=
06244-g79c903fdc910.spdx.json
ERROR: Logfile of failure stored in: [...]/1.0/temp/log.do_rootfs.725497
ERROR: Task ([...]:do_rootfs) failed with exit code '1'

It seems that `create-spdx` is confusing the `kernel-module-my-module` pack=
age with
`kernel-module-my-module-$KERNEL_VERSION`. The error disappears when I use
MACHINE_EXTRA_RRECOMMENDS instead.

So my question is: is this a bug, or am I misusing MACHINE_EXTRA_RDEPENDS?

Kind regards
Marcus

--V1qyvV3wHsluT2bQup9p
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I have a question regarding the use of MACHINE_EXTRA_RDEPENDS and MACH=
INE_EXTRA_RRECOMMENDS.</div>
<div>&nbsp;</div>
<div>I've written a kernel module to handle a specific aspect of our custom=
 hardware, and I added it to</div>
<div>MACHINE_EXTRA_RDEPENDS to ensure it's always installed. However, this =
triggered the following SPDX error:</div>
<div>&nbsp;</div>
<div>ERROR:[...] do_rootfs: Unable to find package with name 'kernel-module=
-my-module' in SPDX file [...]/kernel-module-my-module-6.6.23-lf-6.6.y-lf-6=
.6.y-06244-g79c903fdc910.spdx.json<br />ERROR: Logfile of failure stored in=
: [...]/1.0/temp/log.do_rootfs.725497<br />ERROR: Task ([...]:do_rootfs) fa=
iled with exit code '1'</div>
<div>&nbsp;</div>
<div>It seems that `create-spdx` is confusing the `kernel-module-my-module`=
 package with</div>
<div>`kernel-module-my-module-$KERNEL_VERSION`. The error disappears when I=
 use</div>
<div>MACHINE_EXTRA_RRECOMMENDS instead.</div>
<div>&nbsp;</div>
<div>So my question is: is this a bug, or am I misusing MACHINE_EXTRA_RDEPE=
NDS?</div>
<div>&nbsp;</div>
<div>Kind regards<br />Marcus</div>

--V1qyvV3wHsluT2bQup9p--

