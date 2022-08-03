Return-Path: <c.finck@enlyze.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F228DC19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 17:46:09 +0000 (UTC)
Subject: Re: wireguard fails with "exports duplicate symbol blake2s_final
 (owned by kernel)" in latest poky / meta-openembedded #dunfell
To: yocto@lists.yoctoproject.org
From: "Colin Finck" <c.finck@enlyze.com>
X-Originating-Location: Cologne, North Rhine-Westphalia, DE (89.1.62.5)
X-Originating-Platform: Windows Firefox 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 Aug 2022 10:46:05 -0700
References: <CswA.1659543156268567471.pbrp@lists.yoctoproject.org>
In-Reply-To: <CswA.1659543156268567471.pbrp@lists.yoctoproject.org>
Message-ID: <9931.1659548765376137569@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 17:46:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57773

I confirm that this problem doesn't occur when reverting poky back to 232fd=
bf0e5fe27ab1a6130f9435b359d975e1c72.
Which makes it even more likely that 387d23c02ea0e59ea31d52a40917556648389e=
96 is the culprit.

