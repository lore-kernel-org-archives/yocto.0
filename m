Return-Path: <sergey.forum@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E54C5B543
	for <webhook@archiver.kernel.org>; Sun,  1 Jun 2025 14:29:58 +0000 (UTC)
Subject: Re: [yocto] bitbake provided path does not contain path to git so fetch is stalled
To: "Sergey Kurdakov" <sergey.forum@gmail.com>, yocto@lists.yoctoproject.org
From: "Sergey Kurdakov" <sergey.forum@gmail.com>
X-Originating-Location: Moscow, RU (176.59.170.235)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 01 Jun 2025 07:29:58 -0700
References: <974.1748782411494543023@lists.yoctoproject.org>
In-Reply-To: <974.1748782411494543023@lists.yoctoproject.org>
Message-ID: <26404.1748788198160922261@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="X5eG3DRO0GcwO7GGXHBC"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Jun 2025 14:29:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65443

--X5eG3DRO0GcwO7GGXHBC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

so seems I found a solution: completely delete poky build directory and sta=
rt anew.
somehow it works now. It looks like an attempt to use bitbake without appar=
mor profile in Ubuntu makes some changes in cache which prevents later prop=
er functioning of bitbake.
so the correct way to proceed is not to try bitbake without apparmor profil=
e, and if there are problems after the try - just=C2=A0 start from clean yo=
cto, when apparmor profile is in place

Regards
Sergey

--X5eG3DRO0GcwO7GGXHBC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>so seems I found a solution: completely delete poky build directory an=
d start anew.</div>
<div>somehow it works now. It looks like an attempt to use bitbake without =
apparmor profile in Ubuntu makes some changes in cache which prevents later=
 proper functioning of bitbake.</div>
<div>so the correct way to proceed is not to try bitbake without apparmor p=
rofile, and if there are problems after the try - just&nbsp; start from cle=
an yocto, when apparmor profile is in place</div>
<div>&nbsp;</div>
<div>Regards</div>
<div>Sergey</div>

--X5eG3DRO0GcwO7GGXHBC--

