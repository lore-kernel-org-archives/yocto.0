Return-Path: <haimbachar2008@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEBFD10BF7
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 11:26:15 +0000 (UTC)
Subject: How to set real time patch correctly?  #honister
To: yocto@lists.yoctoproject.org
From: "Haimbach" <haimbachar2008@gmail.com>
X-Originating-Location: Ness Ziona, Central District, IL (77.137.75.189)
X-Originating-Platform: Linux Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 26 Oct 2024 04:26:08 -0700
Message-ID: <mi4v.1729941968245217599.qLzF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NQOuK6aB9q1PTEXR6E6X"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 11:26:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64138

--NQOuK6aB9q1PTEXR6E6X
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm wondering what is the *best way to* patch properly kernel with RT-PATCH=
 in distribution?(specific in HONISTER)

For an example I checkout HONISTER commit with has the kernel 5.15.36 which=
 is LTS and now I want to patch with correct RT-patch to this version.
which I can be found here: https://cdn.kernel.org/pub/linux/kernel/projects=
/rt/5.15/older/patch-5.15.36-rt41.patch.gz

Regards,
Haim

--NQOuK6aB9q1PTEXR6E6X
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I'm wondering what is the <strong>best way to</strong> patch properly =
kernel with RT-PATCH in distribution?(specific in HONISTER)</div>
<div>&nbsp;</div>
<div>For an example I checkout HONISTER commit with has the kernel 5.15.36 =
which is LTS and now I want to patch with correct RT-patch to this version.=
</div>
<div>which I can be found here: https://cdn.kernel.org/pub/linux/kernel/pro=
jects/rt/5.15/older/patch-5.15.36-rt41.patch.gz<span style=3D"background-co=
lor: #f5f5f5; color: #000000; font-family: Menlo, Monaco, Consolas, 'Courie=
r New', monospace; font-size: 13px;"></span></div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Haim</div>

--NQOuK6aB9q1PTEXR6E6X--

