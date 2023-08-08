Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85A2AEB64DD
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 01:29:16 +0000 (UTC)
Subject: How to add a few lines in config.txt in Yocto project for Raspberry Pi
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Aug 2023 18:29:10 -0700
Message-ID: <70z1.1691458150868170043.0Y3X@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QB9AqrpcaYSs3LirrO28"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 01:29:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60727

--QB9AqrpcaYSs3LirrO28
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to write a .bbappend for config.txt, cmdline.txt and /etc/init=
tab in my custom layer=C2=A0to make some changes.

The recipe append for config.txt is created like this:
FILESEXTRAPATHS:prepend :=3D "$(THISDIR)/files:"
SRC_URI +=3D "file://rpi-config.patch"

The paths of the recipe and patch are in the custom layer's bblayer.conf.
But Bitbake doesn't search the custom layer for the recipe append.

Is it a proper way to do that? If yes, what might be missing in the configu=
ration?

Thanks!
Crane

--QB9AqrpcaYSs3LirrO28
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I would like to write a .bbappend for config.txt, cmdline=
.txt and /etc/inittab in my custom layer&nbsp;to make some changes.<br /><b=
r />The recipe append for config.txt is created like this:<br />
<div>FILESEXTRAPATHS:prepend :=3D "$(THISDIR)/files:"</div>
<div>SRC_URI +=3D "file://rpi-config.patch"<br /><br />The paths of the rec=
ipe and patch are in the custom layer's bblayer.conf.<br />But Bitbake does=
n't search the custom layer for the recipe append.<br /><br />Is it a prope=
r way to do that? If yes, what might be missing in the configuration?<br />=
<br />Thanks!<br />Crane<br /><br /><br /><br /><br /></div>
<div>&nbsp;</div>

--QB9AqrpcaYSs3LirrO28--

