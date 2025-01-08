Return-Path: <pratikfarkase94@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DED0E77188
	for <webhook@archiver.kernel.org>; Wed,  8 Jan 2025 13:08:31 +0000 (UTC)
Subject: Re: [yocto] RISC-V QEMU populate_sdk fails for core-image-minimal #sdk #yocto
To: "Mehmet Fide" <mehmet.fide@gmail.com>, yocto@lists.yoctoproject.org
From: "Pratik" <pratikfarkase94@gmail.com>
X-Originating-Location: Chandigarh, IN (223.185.41.111)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Jan 2025 05:08:28 -0800
References: <CAA7J33UqTYL9Fj2s8SF--D26Wo-YSp9LbsJrRkixkuK2_bCCiQ@mail.gmail.com>
In-Reply-To: <CAA7J33UqTYL9Fj2s8SF--D26Wo-YSp9LbsJrRkixkuK2_bCCiQ@mail.gmail.com>
Message-ID: <8177.1736341708957461395@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2025 13:08:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64522

I was able to build it this time after starting a fresh build with the exac=
t same sources. I Think the older build cache and artifacts created the pro=
blem. Thanks!

