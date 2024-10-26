Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F89DD149FE
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 02:00:12 +0000 (UTC)
Subject: Re: [yocto] error while adding device tree overlay for UART to the image #bitbake #linux
To: "Crane" <crane2018@gmail.com>, yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Oct 2024 19:00:05 -0700
References: <17483.1729906634778402189@lists.yoctoproject.org>
In-Reply-To: <17483.1729906634778402189@lists.yoctoproject.org>
Message-ID: <27982.1729908005041987530@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WP0625XrzzJPQSfFPS6d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 02:00:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64135

--WP0625XrzzJPQSfFPS6d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just follow the solution in the link, change two tabs to 8 spaces in front =
of "overlays/uart?-pi5.dtbo", then it works fine now.

--WP0625XrzzJPQSfFPS6d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Just follow the solution in the link, change two tabs to 8 spaces in f=
ront of "overlays/uart?-pi5.dtbo", then it works fine now.</div>

--WP0625XrzzJPQSfFPS6d--

