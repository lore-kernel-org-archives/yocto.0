Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 898C0C05027
	for <webhook@archiver.kernel.org>; Fri,  3 Feb 2023 22:08:32 +0000 (UTC)
Subject: error when try to use sudo command in recipe
To: yocto@lists.yoctoproject.org
From: "SIMON BABY" <simonkbaby@gmail.com>
X-Originating-Location: San Diego, California, US (130.50.200.1)
X-Originating-Platform: Windows Chrome 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Feb 2023 14:08:26 -0800
Message-ID: <xRdO.1675462106161585364.jj30@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SZnhFkHhPfSySVJ1kTKl"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 22:08:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59161

--SZnhFkHhPfSySVJ1kTKl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello team,
I am getting the below error whe try to execute command in bitbake recipe h=
aving sudo. eg: sudo kill

sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid bit set

Can some please help how to fix it. The same errot did not see when i execu=
te outside bitbake.

--SZnhFkHhPfSySVJ1kTKl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello team,<br/>I am getting the below error whe try to execute command in =
bitbake recipe having sudo. eg: sudo kill<br/>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span class=3D"ui-prov=
ider"><br/>sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid b=
it set<br/><br/>Can some please help how to fix it. The same errot did not =
see when i execute outside bitbake.</span></p>

--SZnhFkHhPfSySVJ1kTKl--

