Return-Path: <cgu@ivu.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C45AD609C1
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 09:29:29 +0000 (UTC)
Subject: KERNEL_VERSION inconsistency using out-of-tree module with patched kernel source
To: yocto@lists.yoctoproject.org
From: "Christian Gudrian" <cgu@ivu.de>
X-Originating-Location: Berlin, Land Berlin, DE (91.212.245.20)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 Nov 2024 01:29:28 -0800
Message-ID: <gJ1l.1732699768315470195.YfEf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FiIRMf3wJpM9mhnT1Z1q"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 09:29:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64358

--FiIRMf3wJpM9mhnT1Z1q
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hello!

Kernel modules depend on a specific version of the kernel package that incl=
udes the Git commit hash of the kernel source tree at compile time (KERNEL_=
VERSION). When using a patched kernel source this Git commit hash changes e=
ach time the patches get applied, making each kernel binary effectively uni=
que. This KERNEL_VERSION, however, is not part of the shared state hash sig=
nature, as for this purpose it gets replaced by the plain LINUX_VERSION.

Building out-of-tree kernel modules depend on a locally compiled kernel. Do=
ing this in a clean working directory leads to a freshly patched kernel sou=
rce which in turn results in a new KERNEL_VERSION. The out-of-tree kernel m=
odule then RDEPENDS on a kernel package with this new KERNEL_VERSION. As th=
e shared state signature of the newly compiled kernel matches the existing =
one (the LINUX_VERSION hasn't changed) the new kernel is not packaged and d=
oesn't end up in the package feed.

Consequently installation of the out-of-tree kernel module fails as the req=
uired kernel package is not available.

I have tried to make the packages aware of the specific KERNEL_VERSION. But=
 as this variable gets re-assigned during parsing I get unstable basehash v=
alues.

Another approach would be to apply the patches in the upstream repository t=
o circumvent the need for local patching.

Is there an easier way?

Christian


--FiIRMf3wJpM9mhnT1Z1q
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

<p>Building out-of-tree kernel modules depend on a locally compiled kernel.=
 Doing this in a clean working directory leads to a freshly patched kernel =
source which in turn results in a new KERNEL_VERSION. The out-of-tree kerne=
l module then RDEPENDS on a kernel package with this new KERNEL_VERSION. As=
 the shared state signature of the newly compiled kernel matches the existi=
ng one (the LINUX_VERSION hasn't changed) the new kernel is not packaged an=
d doesn't end up in the package feed.</p>

<p>Consequently installation of the out-of-tree kernel module fails as the =
required kernel package is not available.</p>

<p>I have tried to make the packages aware of the specific KERNEL_VERSION. =
But as this variable gets re-assigned during parsing I get unstable basehas=
h values.</p>

<p>Another approach would be to apply the patches in the upstream repositor=
y to circumvent the need for local patching.</p>

<p>Is there an easier way?</p>

<p>Christian</p>

--FiIRMf3wJpM9mhnT1Z1q--

