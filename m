Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD800D609D3
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 11:06:09 +0000 (UTC)
Subject: KERNEL_VERSION inconsistency using out-of-tree module with patched kernel source
To: yocto@lists.yoctoproject.org
From: "Christian Gudrian" <cgu@ivu.de>
X-Originating-Location: Berlin, Land Berlin, DE (91.212.245.20)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 Nov 2024 01:20:58 -0800
Message-ID: <YNAR.1732699258241337524.5mwe@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kG2wJQfbaXdcNguomiBK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 11:06:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64363

--kG2wJQfbaXdcNguomiBK
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hello!

Kernel modules depend on a specific version of the kernel package that incl=
udes the Git commit hash of the kernel source tree at compile time (KERNEL_=
VERSION). When using a patched kernel source this Git commit hash changes e=
ach time the patches get applied, making each kernel binary effectively uni=
que. This KERNEL_VERSION, however, is not part of the shared state hash sig=
nature, as for this purpose it gets replaced by the plain LINUX_VERSION.

Building out-of-tree kernel modules depends on a locally compiled kernel. P=
erforming this in a clean working directory leads to a newly patched kernel=
 source which in turn results in a new KERNEL_VERSION.

--kG2wJQfbaXdcNguomiBK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello!</p>

<p>Kernel modules depend on a specific version of the kernel package that i=
ncludes the Git commit hash of the kernel source tree at compile time (KERN=
EL_VERSION). When using a patched kernel source this Git commit hash change=
s each time the patches get applied, making each kernel binary effectively =
unique. This KERNEL_VERSION, however, is not part of the shared state hash =
signature, as for this purpose it gets replaced by the plain LINUX_VERSION.=
</p>

<p>Building out-of-tree kernel modules depends on a locally compiled kernel=
. Performing this in a clean working directory leads to a newly patched ker=
nel source which in turn results in a new KERNEL_VERSION.</p>

--kG2wJQfbaXdcNguomiBK--

