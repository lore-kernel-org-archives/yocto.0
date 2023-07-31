Return-Path: <daniel_herrmann22@web.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ED2FC04E69
	for <webhook@archiver.kernel.org>; Mon, 31 Jul 2023 06:19:15 +0000 (UTC)
Subject: Re: systemd service not enabled #kirkstone
To: yocto@lists.yoctoproject.org
From: daniel_herrmann22@web.de
X-Originating-Location: Nanzdietschweiler, Rheinland-Pfalz, DE (156.67.136.243)
X-Originating-Platform: Mac Safari 16.5
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 30 Jul 2023 23:19:14 -0700
References: <6598355dcbaa0333b251923fbea69a5308344b50.camel@gmail.com>
In-Reply-To: <6598355dcbaa0333b251923fbea69a5308344b50.camel@gmail.com>
Message-ID: <17159.1690784354140046699@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="eO28Hq31GGRlexWpAa6v"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Jul 2023 06:19:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60688

--eO28Hq31GGRlexWpAa6v
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

SYSTEMD_SERVICE *:${PN}* fixed my issue.

And thanks for your hint regarding systctl service, I will try it

--eO28Hq31GGRlexWpAa6v
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p><span style=3D"white-space: pre-wrap;">SYSTEMD_SERVICE<strong>:${PN}</st=
rong> fixed my issue.</span></p>
<p><span style=3D"white-space: pre-wrap;">And thanks for your hint regardin=
g systctl service, I will try it </span></p>

--eO28Hq31GGRlexWpAa6v--

