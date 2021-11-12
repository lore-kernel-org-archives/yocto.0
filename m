Return-Path: <bojanjov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63171C433EF
	for <webhook@archiver.kernel.org>; Fri, 12 Nov 2021 19:38:04 +0000 (UTC)
Subject: Re: Cross-compile custom ROS2 package for Yocto #bitbake
To: yocto@lists.yoctoproject.org
From: "bojankoce" <bojanjov@gmail.com>
X-Originating-Location: =?utf-8?b?QXJwYWpvbiwgw45sZS1kZS1GcmFuY2UsIEZSICg5?=
 =?utf-8?b?MS4xNzQuMjM1LjIwMSk=?=
X-Originating-Platform: Windows Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 12 Nov 2021 11:38:03 -0800
References: <55121fce-4a5c-381d-6829-958f1789b5de@googlemail.com>
In-Reply-To: <55121fce-4a5c-381d-6829-958f1789b5de@googlemail.com>
Message-ID: <18988.1636745883858363081@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YS5l01fZq5SE4175nWME"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Nov 2021 19:38:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55324

--YS5l01fZq5SE4175nWME
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, Matthias.

It seems the issue was around naming. Now it works fine even without FILES:=
${PN} at the end of .bb file.
I am now good to move forward.

Thank you very much for your assistance. It is really appreciated.

Sincerely,
Bojan.

--YS5l01fZq5SE4175nWME
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, Matthias. <br /><br />It seems the issue was around naming. Now it w=
orks fine even without <code></code><code>FILES:${PN}</code> at the end of =
.bb file. <br />I am now good to move forward. <br /><br />Thank you very m=
uch for your assistance. It is really appreciated. <br /><br />Sincerely,<b=
r />Bojan.

--YS5l01fZq5SE4175nWME--

