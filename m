Return-Path: <freddy.boman@bastec.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE3AE6896D
	for <webhook@archiver.kernel.org>; Thu, 31 Oct 2024 10:07:16 +0000 (UTC)
Subject: Re: [yocto] Building SDK fails after update to scarthgap
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: freddy.boman@bastec.se
X-Originating-Location: Johanneshov, Stockholm County, SE (98.128.186.98)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 31 Oct 2024 03:07:12 -0700
References: <CANNYZj_kRMKckjcLJBXqY5APZ2eHn90rhdOHSJzZSvAP6-3+yg@mail.gmail.com>
In-Reply-To: <CANNYZj_kRMKckjcLJBXqY5APZ2eHn90rhdOHSJzZSvAP6-3+yg@mail.gmail.com>
Message-ID: <9791.1730369232509801976@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xtRpwR6OuGKAWAlK11LS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 10:07:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64194

--xtRpwR6OuGKAWAlK11LS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Doesn't actually look like it.
But i just realized that the version being built when it failed is NXPs ver=
sion of qemu which apparently is almost but not entirely the same.
I think it is easiest to simply ignore the problem for now and chalk it up =
to NXPs QA.
Thank you so much for the assistance.

/Freddy

--xtRpwR6OuGKAWAlK11LS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Doesn't actually look like it.</div>
<div>But i just realized that the version being built when it failed is NXP=
s version of qemu which apparently is almost but not entirely the same.</di=
v>
<div>I think it is easiest to simply ignore the problem for now and chalk i=
t up to NXPs QA.</div>
<div>Thank you so much for the assistance.</div>
<div>&nbsp;</div>
<div>/Freddy</div>

--xtRpwR6OuGKAWAlK11LS--

