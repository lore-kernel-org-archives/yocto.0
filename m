Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88250C54ED1
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 21:37:34 +0000 (UTC)
Subject: Re: [yocto] AUTOREV not functioning #bitbake #devtool #github
To: joseph.maniaci@seagate.com, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Shakopee, Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 May 2025 14:37:27 -0700
References: <2503.1747947566766525516@lists.yoctoproject.org>
In-Reply-To: <2503.1747947566766525516@lists.yoctoproject.org>
Message-ID: <2503.1747949847974942334@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6E0awLH16SThoRsk1kde"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 21:37:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65410

--6E0awLH16SThoRsk1kde
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Attempting to use `devtool sync recipe /full/path/to/sources/recipe/` resul=
ts in:

ERROR: Task do_patch does not exist for target recipe

From what I found searching, this looks like it expects a do_path function =
that works with literal .patch files....

--6E0awLH16SThoRsk1kde
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Attempting to use `devtool sync recipe /full/path/to/sources/recipe/` =
results in: </div>
<div>&nbsp;</div>
<div>ERROR: Task do_patch does not exist for target recipe</div>
<div>&nbsp;</div>
<div>From what I found searching, this looks like it expects a do_path func=
tion that works with literal .patch files....</div>

--6E0awLH16SThoRsk1kde--

