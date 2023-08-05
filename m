Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 272A5C001DE
	for <webhook@archiver.kernel.org>; Sat,  5 Aug 2023 16:05:32 +0000 (UTC)
Subject: Re: the way to create patch for Linux kernel configuration
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 05 Aug 2023 09:05:29 -0700
References: <DfV4.1691194788292637127.95jM@lists.yoctoproject.org>
In-Reply-To: <DfV4.1691194788292637127.95jM@lists.yoctoproject.org>
Message-ID: <28551.1691251529288891578@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kETj4i2AljrgiLVWDyZS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Aug 2023 16:05:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60717

--kETj4i2AljrgiLVWDyZS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Finally found two ways to do this and worked in my case:
1. use bitbake -c diffconfig to create a fragment config and then add the f=
ragment config to a .bbappend
2. add an out-of-tree defconfig in .bb
The documentation says out-of-tree defconfig takes precedence. But in my ca=
se KBUILD_DEFCONFIG is used and the out-of-tree defconfig is dropped.
No idea why. I have to use KBUILD_DEFCONFIG:remove to clear it.

--kETj4i2AljrgiLVWDyZS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Finally found two ways to do this and worked in my case:<br />1. use bitbak=
e -c diffconfig to create a fragment config and then add the fragment confi=
g to a .bbappend<br />2. add an out-of-tree defconfig in .bb<br />&nbsp; &n=
bsp; The documentation says out-of-tree defconfig takes precedence. But in =
my case KBUILD_DEFCONFIG is used and the out-of-tree defconfig is dropped.&=
nbsp;<br />&nbsp; &nbsp; No idea why. I have to use KBUILD_DEFCONFIG:remove=
 to clear it.

--kETj4i2AljrgiLVWDyZS--

