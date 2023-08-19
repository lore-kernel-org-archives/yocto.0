Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79C77EE49A0
	for <webhook@archiver.kernel.org>; Sat, 19 Aug 2023 02:38:38 +0000 (UTC)
Subject: Re: How to add a few lines in config.txt in Yocto project for Raspberry Pi
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 18 Aug 2023 19:38:31 -0700
References: <5592.1691528356775989906@lists.yoctoproject.org>
In-Reply-To: <5592.1691528356775989906@lists.yoctoproject.org>
Message-ID: <4677.1692412711420253123@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XPGz3OnYzj3wosnCkRyh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Aug 2023 02:38:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60827

--XPGz3OnYzj3wosnCkRyh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Finally find the correct way to do that.
Do "bitbake -c devshell <recipe>" and then in the folder created use "git f=
ormat-patch" to create the patch file.
This way, the patch can be applied.

--XPGz3OnYzj3wosnCkRyh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Finally find the correct way to do that.&nbsp;<br />Do "bitbake -c devshell=
 &lt;recipe&gt;" and then in the folder created use "git format-patch" to c=
reate the patch file.&nbsp;<br />This way, the patch can be applied.

--XPGz3OnYzj3wosnCkRyh--

