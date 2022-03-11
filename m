Return-Path: <jussi.vanska@valmet.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 475D2C433EF
	for <webhook@archiver.kernel.org>; Fri, 11 Mar 2022 10:24:36 +0000 (UTC)
Subject: Re: Honister on Ubuntu 14.04
To: yocto@lists.yoctoproject.org
From: jussi.vanska@valmet.com
X-Originating-Location: Helsinki, Uusimaa, FI (188.67.204.151)
X-Originating-Platform: Windows Chrome 98
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Mar 2022 02:24:35 -0800
References: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
In-Reply-To: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
Message-ID: <32600.1646994275077789460@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Mar 2022 10:24:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56422

Building anything recent is probably not going to work as there are lots of=
 breaking changes in Python. You need at least python 3.6 to build Honister=
. It took me about a month to get Hardknott to build on top of Rocko host. =
I would say it is more or less a no-go to cross the 3.0 Yocto boundary. Roc=
ko is roughly equivalent to 16.04LTS distro.

