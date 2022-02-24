Return-Path: <Hariom@avinsystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBC0C433EF
	for <webhook@archiver.kernel.org>; Thu, 24 Feb 2022 18:31:59 +0000 (UTC)
Subject: Creating Package Feed for An Application Using SDK build #yocto #sdk
To: yocto@lists.yoctoproject.org
From: Hariom@avinsystems.com
X-Originating-Location: Bengaluru, Karnataka, IN (182.156.244.26)
X-Originating-Platform: Windows Firefox 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 24 Feb 2022 10:31:58 -0800
Message-ID: <UksV.1645727518440884553.Wb0t@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CmYARvO4VzRMVrcQjIzQ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Feb 2022 18:31:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56279

--CmYARvO4VzRMVrcQjIzQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I came to know about the package feed feature, through which we can update =
the application in the target image by using apt-get commands. I just read =
about it on following link.
https://subscription.packtpub.com/book/virtualization-and-cloud/97817843951=
86/1/ch01lvl1sec21/setting-up-a-package-feed.

This link at high level ask user to set up a server for build/tmp/deploy/de=
b repo and updating /etc/apt/sources.list file at target with repo path.

I followed the steps and I am able to update the application on target usin=
g apt-get commands

For my work i use Yocto SDK for building the application software as a resu=
lt i get application executable that i deploy in target using SCP command.

So my question is, Can I also setup a package feed for my target if I use Y=
octo SDK ? If yes, Can you please guide me how can I set it up and update t=
he application easily on the target using apt-get commands.

--CmYARvO4VzRMVrcQjIzQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"auto">Hi,</p>
<p dir=3D"auto">I came to know about the package feed feature, through whic=
h we can update the application in the target image by using apt-get comman=
ds. I just read about it on following link.<br /><a href=3D"https://subscri=
ption.packtpub.com/book/virtualization-and-cloud/9781784395186/1/ch01lvl1se=
c21/setting-up-a-package-feed" rel=3D"nofollow">https://subscription.packtp=
ub.com/book/virtualization-and-cloud/9781784395186/1/ch01lvl1sec21/setting-=
up-a-package-feed</a>.</p>
<p dir=3D"auto">This link at high level ask user to set up a server for bui=
ld/tmp/deploy/deb repo and updating /etc/apt/sources.list file at target wi=
th repo path.</p>
<p dir=3D"auto">I followed the steps and I am able to update the applicatio=
n on target using apt-get commands</p>
<p dir=3D"auto">For my work i use Yocto SDK for building the application so=
ftware as a result i get application executable that i deploy in target usi=
ng SCP command.</p>
<p dir=3D"auto">So my question is, Can I also setup a package feed for my t=
arget if I use Yocto SDK ? If yes, Can you please guide me how can I set it=
 up and update the application easily on the target using apt-get commands.=
</p>

--CmYARvO4VzRMVrcQjIzQ--

