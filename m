Return-Path: <gcblair@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFD90C636D4
	for <webhook@archiver.kernel.org>; Mon, 13 Feb 2023 09:02:16 +0000 (UTC)
Subject: openssh not working since updating to kernel 5.15
To: yocto@lists.yoctoproject.org
From: gcblair@gmail.com
X-Originating-Location: Jerusalem, IL (77.137.181.250)
X-Originating-Platform: Windows Chrome 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Feb 2023 01:02:13 -0800
Message-ID: <Nock.1676278933612778355.j3HL@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="m4M1Fo34RPBsG1DjUJa0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Feb 2023 09:02:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59213

--m4M1Fo34RPBsG1DjUJa0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We updated our kernel from 4.x to 5.15 and for some reason openssh has stop=
ped working

We see that sshd.socket is running but not sshd@.service
When I run sshd manually I cannot connect
Everything else seems fine - no error messages

The only thing I changed was the kernel version but I cant seem to understa=
nd how that could affect something like openssh
This is how I added opnessh:
IMAGE_FEATURES +=3D "ssh-server-openssh package-management tools-debug"

Would apprecaite any help!

--m4M1Fo34RPBsG1DjUJa0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />We updated our kernel from 4.x to 5.15 and for some reason o=
penssh has stopped working<br /><br />We see that sshd.socket is running bu=
t not <a href=3D"mailto:sshd@.service" target=3D"_blank" rel=3D"noopener">s=
shd@.service</a><br />When I run sshd manually I cannot connect&nbsp;<br />=
Everything else seems fine - no error messages<br /><br />The only thing I =
changed was the kernel version but I cant seem to understand how that could=
 affect something like openssh<br />This is how I added opnessh:<br />IMAGE=
_FEATURES +=3D "ssh-server-openssh package-management tools-debug"<br /><br=
 />Would apprecaite any help!<br />

--m4M1Fo34RPBsG1DjUJa0--

