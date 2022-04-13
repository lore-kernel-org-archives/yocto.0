Return-Path: <computerengineering058@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A41AC35296
	for <webhook@archiver.kernel.org>; Thu, 14 Apr 2022 16:03:53 +0000 (UTC)
Subject: library not getting added to target Sysroot in esdk #esdk
To: yocto@lists.yoctoproject.org
From: computerengineering058@yahoo.com
X-Originating-Location: Austin, Texas, US (66.68.45.150)
X-Originating-Platform: Mac Safari 15.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Apr 2022 11:45:24 -0700
Message-ID: <EmNB.1649875524220340314.8mu6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0QAmaOODByb3maaEqWR7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Apr 2022 16:03:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56766

--0QAmaOODByb3maaEqWR7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I was building esdk using Honister release and added a single package (usin=
g IMAGE_INSTALL), providing a library. As per documentation, target Sysroot=
 must contain all the libraries and header files needed to build applicatio=
ns for target. I do not need to explicitly add my library providing package=
 to TOOLCHAIN_TARGET_TASK, since it will get all packages getting installed=
 in the final image. However, I do not see my library in target Sysroot. I =
tried to add poky provided package `libyaml`, to see if my library providin=
g recipe is doing something wrong, but result was the same and no libyaml c=
ould be found in target Sysroot, but it was only added to the host sysroot.

I checked the same on dunfell branch and could not find libyaml in target S=
ysroot, however it was in the host Sysroot for esdk.

I also checked the same for sdk on Dunfell, but could see libyaml in target=
 Sysroot.

So, It seems there is something broken for esdk.

--0QAmaOODByb3maaEqWR7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I was building esdk using Honister release and added a single package (u=
sing IMAGE_INSTALL), providing a library. As per documentation, target Sysr=
oot must contain all the libraries and header files needed to build applica=
tions for target. I do not need to explicitly add my library providing pack=
age to TOOLCHAIN_TARGET_TASK, since it will get all packages getting instal=
led in the final image. However, I do not see my library in target Sysroot.=
 I tried to add poky provided package `libyaml`, to see if my library provi=
ding recipe is doing something wrong, but result was the same and no libyam=
l could be found in target Sysroot, but it was only added to the host sysro=
ot.</p>
<p>I checked the same on dunfell branch and could not find libyaml in targe=
t Sysroot, however it was in the host Sysroot for esdk.</p>
<p>I also checked the same for sdk on Dunfell, but could see libyaml in tar=
get Sysroot.&nbsp;</p>
<p>So, It seems there is something broken for esdk.</p>
<p>&nbsp;</p>

--0QAmaOODByb3maaEqWR7--

