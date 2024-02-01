Return-Path: <timotheus.giuliani@philips.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0990C47DDB
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 12:33:51 +0000 (UTC)
Subject: Is there a way to speed up the initial fetch task?
To: yocto@lists.yoctoproject.org
From: timotheus.giuliani@philips.com
X-Originating-Location: Frankfurt am Main, Hesse, DE (155.190.35.4)
X-Originating-Platform: Windows Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 01 Feb 2024 04:33:42 -0800
Message-ID: <2lkB.1706790822146076422.hOyA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="A9WxTuCzQXw3rUXG118O"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 12:33:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62358

--A9WxTuCzQXw3rUXG118O
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

we run Yocto for pull request builds on cloud runners. Each run starts in a=
 clean workspace from scratch.
There is no local download directory and no option for network drives. The =
latest SSTATE cache is provided via HTTP.
The changes are small in most cases so that the pull request build spends t=
he most time fetching the sources.
All sources are provided by a mix of private git repositories and tarballs =
on a private HTTP source mirror.
Fetching big repositories like linux-yocto is in both cases slow, more than=
 5 minutes.
My question:
Is there a way to speed up the initial fetch task, e.g. by truncating the h=
istory of the repository and just fetching the sources needed to build?

Regards,

Timo

--A9WxTuCzQXw3rUXG118O
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,<br /><br />we run Yocto for pull request builds on cloud runners. =
Each run starts in a clean workspace from scratch.</div>
<div>There is no local download directory and no option for network drives.=
 The latest SSTATE cache is provided via HTTP.</div>
<div>The changes are small in most cases so that the pull request build spe=
nds the most time fetching the sources.</div>
<div>All sources are provided by a mix of private git repositories and tarb=
alls on a private HTTP source mirror.</div>
<div>Fetching big repositories like linux-yocto is in both cases slow, more=
 than 5 minutes.</div>
<div>My question:</div>
<div>Is there a way to speed up the initial fetch task, e.g. by truncating =
the history of the repository and just fetching the sources needed to build=
?</div>
<div><br />Regards,<br /><br />Timo</div>

--A9WxTuCzQXw3rUXG118O--

