Return-Path: <egyszeregy@freemail.hu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995DDC77B73
	for <webhook@archiver.kernel.org>; Sun, 30 Apr 2023 23:01:34 +0000 (UTC)
Subject: Install complete Rust and toolchans for image? #rust #yocto #sdk
To: yocto@lists.yoctoproject.org
From: "Livius" <egyszeregy@freemail.hu>
X-Originating-Location: Budapest, HU (89.132.168.154)
X-Originating-Platform: Windows Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 30 Apr 2023 16:01:31 -0700
Message-ID: <idEi.1682895691085663545.uid1@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Apr 2023 23:01:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59825

Hi,

What recipes should I use in IMAGE_INSTALL to install all of Rust and toolc=
hains things for it on my target ARM board? What Yocto release was started =
to support Rust? Is ti possbile a make an SDK image with a Rust cross compi=
ler like it is possible with GCC via mingw for Windows 10?

