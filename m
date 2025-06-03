Return-Path: <arthur52666@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B8DEC5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 10:43:38 +0000 (UTC)
Subject: Re: [yocto] Pseudo abort errors
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org
From: arthur52666@gmail.com
X-Originating-Location: Tokyo, JP (64.104.44.103)
X-Originating-Platform: Mac Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 03 Jun 2025 03:43:33 -0700
References: <10697945e6b651b23eb0d7e056baecee4d0e900e.camel@linuxfoundation.org>
In-Reply-To: <10697945e6b651b23eb0d7e056baecee4d0e900e.camel@linuxfoundation.org>
Message-ID: <27417.1748947413448041986@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6P2GIfgoZhbiBO2z5tdn"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 10:43:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65457

--6P2GIfgoZhbiBO2z5tdn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

thanks for your reply.
I confirm that the issue is always on the /tmp filesystem, I am wondering w=
hy the issue is only reported at my docker container(running at my Linux se=
rver), but not reported at other team member's docker container(running at =
their Linux server). We are following the same document to setup the Yocto =
build environment.
Which container configuration may cause the issue ?

Mario

--6P2GIfgoZhbiBO2z5tdn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>&nbsp;</div>
<div>Hi Richard,</div>
<div>&nbsp;</div>
<div>thanks for your reply.</div>
<div>I confirm that the issue is always on the /tmp filesystem, I am wonder=
ing why the issue is only reported at my docker container(running at my Lin=
ux server), but not reported at other team member's docker container(runnin=
g at their Linux server). We are following the same document to setup the Y=
octo build environment.</div>
<div>Which container configuration may cause the issue ?</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Mario</div>

--6P2GIfgoZhbiBO2z5tdn--

