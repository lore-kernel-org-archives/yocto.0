Return-Path: <anton.antonov@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CA1C433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 14:04:30 +0000 (UTC)
Subject: Re: running application in user mode instead of root #yocto
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: Cambridge, England, GB (86.26.33.70)
X-Originating-Platform: Mac Firefox 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 30 May 2022 07:04:27 -0700
References: <8694.1653901787911492198@lists.yoctoproject.org>
In-Reply-To: <8694.1653901787911492198@lists.yoctoproject.org>
Message-ID: <4843.1653919467353202082@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3yg1yWz3Iz3gTDiZsrbb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 14:04:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57218

--3yg1yWz3Iz3gTDiZsrbb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

You can use start-stop-daemon command with "--chiud" parameter. Here is an =
example:

https://git.yoctoproject.org/meta-security/tree/meta-parsec/recipes-parsec/=
parsec-service/files/parsec_init

Cheers,
Anton

--3yg1yWz3Iz3gTDiZsrbb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />&nbsp;&nbsp; You can use start-stop-daemon command with "--c=
hiud" parameter. Here is an example:<br /><br />https://git.yoctoproject.or=
g/meta-security/tree/meta-parsec/recipes-parsec/parsec-service/files/parsec=
_init<br /><br />Cheers,<br />Anton

--3yg1yWz3Iz3gTDiZsrbb--

