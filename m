Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02E2AC4725D
	for <webhook@archiver.kernel.org>; Fri, 19 Jan 2024 08:10:25 +0000 (UTC)
Subject: Re: [yocto] [Question] [meta-atmel/kirkstone] do_fetch - failed with exit code 128, no output
To: Dharma Balasubiramani <dharma.b@microchip.com>,yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: =?UTF-8?B?Q2jDonRlYXVyb3V4LCBDZW50cmUtVmFsIGRlIExvaXJlLCBGUg==?= (78.114.34.160)
X-Originating-Platform: Linux Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 19 Jan 2024 00:10:19 -0800
References: <3cb67cd1-3670-4a54-a877-3fe9c5dc37ec@microchip.com>
In-Reply-To: <3cb67cd1-3670-4a54-a877-3fe9c5dc37ec@microchip.com>
Message-ID: <8099.1705651819811076529@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wGqglPRs6juCOjMMFdZY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jan 2024 08:10:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62195

--wGqglPRs6juCOjMMFdZY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I recently faced a similar one in my company, the issue was the new antivir=
us.
Has been discovered only for some few packages and so after a clean rebuild=
 (that has required t ore downloaded every packages). Errors were on do_fet=
ch and do_unpack depending of the packages.
Not sure it's related to your issue, but my be something to check.
I'm using kirkstone 4.0.10 actually.
Joel

--wGqglPRs6juCOjMMFdZY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />I recently faced a similar one in my company, the issue was the=
 new antivirus.<br />Has been discovered only for some few packages and so =
after a clean rebuild (that has required t ore downloaded every packages). =
Errors were on do_fetch and do_unpack depending of the packages.<br />Not s=
ure it's related to your issue, but my be something to check.<br />I'm usin=
g kirkstone 4.0.10 actually.<br />Joel

--wGqglPRs6juCOjMMFdZY--

