Return-Path: <lorenzo.arena@powersoft.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 481F4C48BF6
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 09:58:18 +0000 (UTC)
Subject: Bundling an image artifacts into another image
To: yocto@lists.yoctoproject.org
From: lorenzo.arena@powersoft.com
X-Originating-Location: IT (93.44.179.48)
X-Originating-Platform: Windows Chrome 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 04 Mar 2024 01:58:12 -0800
Message-ID: <sH98.1709546292003941347.n1Jf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ohNfIompIgbpQjKs78b9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 09:58:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62660

--ohNfIompIgbpQjKs78b9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm currently trying to set up a production system for a board based on the=
 Raspberry Pi CM4. I'd like to be able to build a kernel with bundled initr=
amfs which allows me to flash the on-board eMMC; such "flasher" image howev=
er should include the artifacts of another image (which would be the "real"=
 image, so the output wic and bmap files). Is there a way to do this? I can=
 build this two things separately but I'd like a single build step which al=
lows me to get the full "flasher" image

--ohNfIompIgbpQjKs78b9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm currently trying to set up a production system for a board based on the=
 Raspberry Pi CM4. I'd like to be able to build a kernel with bundled initr=
amfs which allows me to flash the on-board eMMC; such "flasher" image howev=
er should include the artifacts of another image (which would be the "real"=
 image, so the output wic and bmap files). Is there a way to do this? I can=
 build this two things separately but I'd like a single build step which al=
lows me to get the full "flasher" image

--ohNfIompIgbpQjKs78b9--

