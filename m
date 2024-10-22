Return-Path: <opullin@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68921D2C54F
	for <webhook@archiver.kernel.org>; Tue, 22 Oct 2024 13:22:45 +0000 (UTC)
Subject: Yocto eSDK devtool build-image
To: yocto@lists.yoctoproject.org
From: "Dumb_Monkey" <opullin@hotmail.com>
X-Originating-Location: Sevenoaks, England, GB (194.72.252.130)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Oct 2024 06:22:39 -0700
Message-ID: <e1nl.1729603359125032018.dGAP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vh1zlGkRP7lbbya426Mh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Oct 2024 13:22:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64085

--vh1zlGkRP7lbbya426Mh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
I have built the esdk from my open embedded yocto system in order to build =
my own kernel modules.
It's created in ~/nodistro_sdk.
In workspace/sources/mpfs-linux I have modified the device tree and added a=
 new uio driver.
Then I ran make defconfig and make menuconfig to selct and add the new UIO =
driver.
Then build the kernel sources with make.
Now when I do devtool build-image I get the message:
*** The source tree is not clean, please run 'make mrproper'
Running make mrproper deletes the .config file.
So my question is what is the correct process for this?
Does devtool build-image use a different .config file?
Thank you!

--vh1zlGkRP7lbbya426Mh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>I have built the esdk from my open embedded yocto system in order to b=
uild my own kernel modules.</div>
<div>It's created in ~/nodistro_sdk.</div>
<div>In workspace/sources/mpfs-linux I have modified the device tree and ad=
ded a new uio driver.</div>
<div>Then I ran make defconfig and make menuconfig to selct and add the new=
 UIO driver.</div>
<div>Then build the kernel sources with make.</div>
<div>Now when I do devtool build-image I get the message:</div>
<div>*** The source tree is not clean, please run 'make mrproper'</div>
<div>Running make mrproper deletes the .config file.</div>
<div>So my question is what is the correct process for this?</div>
<div>Does devtool build-image use a different .config file?</div>
<div>Thank you!</div>

--vh1zlGkRP7lbbya426Mh--

