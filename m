Return-Path: <kkubkowski@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 448F8C433EF
	for <webhook@archiver.kernel.org>; Fri,  3 Dec 2021 16:16:04 +0000 (UTC)
Subject: native tool from target recipe
To: yocto@lists.yoctoproject.org
From: kkubkowski@gmail.com
X-Originating-Location: PL (194.181.198.154)
X-Originating-Platform: Linux Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Dec 2021 08:16:03 -0800
Message-ID: <01xb.1638548163207924225.zrOc@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Dec 2021 16:16:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55478

Hi all,
I have what I believe is a basic question yet I cannot find any definitive =
answer: is it possible for a target recipe (e.g. u-boot or barebox) to prov=
ide a native tool (i.e. mkimage) for the build system without the need to r=
ebuild the providing recipe as a native one? To be more specific: I am usin=
g barebox as a bootloader and it always builds mkimage for host. I would li=
ke to use it later during the build process in another recipe (e.g. after t=
he kernel is built) but I don't want to rebuild the bootloader as a native =
package. Given how flexible the build system is I suppose it is doable, but=
 what is "the proper" way?

Kind regards,
Kacper

