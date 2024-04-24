Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36E3DC4345F
	for <webhook@archiver.kernel.org>; Wed, 24 Apr 2024 14:39:17 +0000 (UTC)
Subject: How I can add/remove libxxxx-dev.ipk to the installed yocto SDK? SDK partial update #devtool #kirkstone #sdk #yocto
To: yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Apr 2024 07:39:12 -0700
Message-ID: <j9su.1713969552488817175.31Ed@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gcSplHGW04TBytmgsuFy"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Apr 2024 14:39:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62994

--gcSplHGW04TBytmgsuFy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am compiling new version of shared-libs are yocto recipes and plan to shi=
p these libraries to 3rd party without provide a complete SDK, can I only s=
hip the ibxxxx-dev.ipk and install to the already shipped SDK are increment=
al update.

From time to time I can provide a full update for the SDK, but I would like=
 to avoid frequent update.

what is the best practice to provide partial update without using devtool? =
is this possible?

Also, can I uninstall/replace these libs which not official released from t=
he installed SDK path?

show I use rpm instead of ipk?

Regards,

Salahaldeen

--gcSplHGW04TBytmgsuFy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>I am compiling new version of shared-libs are yocto recipes and plan to =
ship these libraries to 3rd party without provide a complete SDK, can I onl=
y ship the ibxxxx-dev.ipk and install to the already shipped SDK are increm=
ental update.</p>
<p>From time to time I can provide a full update for the SDK, but I would l=
ike to avoid frequent update.</p>
<p>what is the best practice to provide partial update without using devtoo=
l? is this possible?</p>
<p>Also, can I uninstall/replace these libs which not official released fro=
m the installed SDK path?</p>
<p>show I use rpm instead of ipk?</p>
<p>Regards,</p>
<p>Salahaldeen</p>

--gcSplHGW04TBytmgsuFy--

