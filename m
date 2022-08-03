Return-Path: <c.finck@enlyze.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40213C19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 16:12:41 +0000 (UTC)
Subject: wireguard fails with "exports duplicate symbol blake2s_final (owned
 by kernel)" in latest poky / meta-openembedded #dunfell
To: yocto@lists.yoctoproject.org
From: "Colin Finck" <c.finck@enlyze.com>
X-Originating-Location: Cologne, North Rhine-Westphalia, DE (89.1.62.5)
X-Originating-Platform: Windows Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 Aug 2022 09:12:36 -0700
Message-ID: <CswA.1659543156268567471.pbrp@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 16:12:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57771

Hi all,

I've just upgraded to latest poky and meta-openembedded and deployed a buil=
d to one of our devices.
Unfortunately, wireguard no longer works. It fails with

    wireguard: exports duplicate symbol blake2s_final (owned by kernel)

when the module is loaded.

Judging from the message, it looks like https://git.yoctoproject.org/poky/c=
ommit/?h=3Ddunfell&id=3D387d23c02ea0e59ea31d52a40917556648389e96 is related=
.
Could someone have a look?

Thanks!

Colin

