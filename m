Return-Path: <dspore@parraid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04286C54EAA
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 00:05:57 +0000 (UTC)
Subject: Java jdk-11  #kirkstone #imx8
To: yocto@lists.yoctoproject.org
From: dspore@parraid.com
X-Originating-Location: US (66.52.56.54)
X-Originating-Platform: Windows Chrome 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 26 Jan 2023 16:05:48 -0800
Message-ID: <ljXi.1674777948961346683.Lzo7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="l5tBpZJo1eZiMGNBsA1s"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 00:05:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59068

--l5tBpZJo1eZiMGNBsA1s
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!

I am working with Kirkstone release and need to add java jdk-11.=C2=A0 I ha=
ve a program which requires it.=C2=A0 When trying to deploy the rpm package=
 I get this error:

nothing provides *java-11-openjdk-devel* needed by ...

How do I get this version of java included with my Yocto image?=C2=A0 Best =
I can find is using meta-java, which appears to only support up to jdk-8.=
=C2=A0 I tried including the current meta-java layer and specifying:
IMAGE_INSTALL +=3D " openjdk-11"

That doesn't work.. but it accepts openjdk-8.

Hoping somebody can=C2=A0 help!=C2=A0 Thanks.

David

--l5tBpZJo1eZiMGNBsA1s
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!<br /><br />I am working with Kirkstone release and need to add java =
jdk-11.&nbsp; I have a program which requires it.&nbsp; When trying to depl=
oy the rpm package I get this error:<br /><br />nothing provides<strong> ja=
va-11-openjdk-devel</strong> needed by ...<br /><br />How do I get this ver=
sion of java included with my Yocto image?&nbsp; Best I can find is using m=
eta-java, which appears to only support up to jdk-8.&nbsp; I tried includin=
g the current meta-java layer and specifying:<br />IMAGE_INSTALL +=3D " ope=
njdk-11"<br /><br />That doesn't work.. but it accepts openjdk-8.&nbsp; &nb=
sp;<br /><br />Hoping somebody can&nbsp; help!&nbsp; Thanks.<br /><br />Dav=
id<br /><br /><br /><br /><br />

--l5tBpZJo1eZiMGNBsA1s--

