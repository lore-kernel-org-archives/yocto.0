Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E0FFC54E65
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 20:59:32 +0000 (UTC)
Subject: Re: [yocto] AUTOREV not functioning #bitbake #devtool #github
To: joseph.maniaci@seagate.com, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Shakopee, Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 May 2025 13:59:26 -0700
References: <g1fd.1747941350140121827.kmBu@lists.yoctoproject.org>
In-Reply-To: <g1fd.1747941350140121827.kmBu@lists.yoctoproject.org>
Message-ID: <2503.1747947566766525516@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9lwE48sHhdnKqekr3LWp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 20:59:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65409

--9lwE48sHhdnKqekr3LWp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yeh, definitely can't touch the sources/ directory without significant fail=
ure.

Can't manually execute 'git pull' what is in sources/ since all git metadat=
a has been stripped.

I even reverted the PV mechanism and manually set the SRCREV value, still w=
ouldn't update.

--9lwE48sHhdnKqekr3LWp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Yeh, definitely can't touch the sources/ directory without significant=
 failure.</div>
<div>&nbsp;</div>
<div>Can't manually execute 'git pull' what is in sources/ since all git me=
tadata has been stripped.</div>
<div>&nbsp;</div>
<div>I even reverted the PV mechanism and manually set the SRCREV value, st=
ill wouldn't update.</div>

--9lwE48sHhdnKqekr3LWp--

