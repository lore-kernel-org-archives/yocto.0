Return-Path: <jmeyron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 831C6D0BB61
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 06:10:15 +0000 (UTC)
Subject: bitbake: enforce variables to be defined?
To: yocto@lists.yoctoproject.org
From: "Jocelyn Meyron" <jmeyron@gmail.com>
X-Originating-Location: Amsterdam, North Holland, NL (165.225.240.117)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Oct 2024 23:10:10 -0700
Message-ID: <KbL3.1729750210108161849.xEOv@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="el8qWIPXn5DL9vTLYJ9N"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 06:10:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64102

--el8qWIPXn5DL9vTLYJ9N
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I'm wondering if there is an easy way (or a not so hard one :D) to enforce =
that the variables used in BitBake tasks are defined, something akin to "se=
t -u" in sh/bash.
I had an issue recently where I removed one bbclass from one recipe and one=
 of my tasks was using a variable defined in the class and it took me some =
time to figure out the problem...

Thank you in advance.

--el8qWIPXn5DL9vTLYJ9N
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello everyone,</div>
<div>&nbsp;</div>
<div>I'm wondering if there is an easy way (or a not so hard one :D) to enf=
orce that the variables used in BitBake tasks are defined, something akin t=
o "set -u" in sh/bash.</div>
<div>I had an issue recently where I removed one bbclass from one recipe an=
d one of my tasks was using a variable defined in the class and it took me =
some time to figure out the problem...</div>
<div>&nbsp;</div>
<div>Thank you in advance.</div>

--el8qWIPXn5DL9vTLYJ9N--

