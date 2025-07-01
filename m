Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5E2C83038
	for <webhook@archiver.kernel.org>; Tue,  1 Jul 2025 18:03:27 +0000 (UTC)
Subject: Re: [yocto] CMake + native devtool recipe seems lost #cmake #devtool
To: joseph.maniaci@seagate.com, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Jul 2025 11:03:26 -0700
References: <18523.1751392766208676907@lists.yoctoproject.org>
In-Reply-To: <18523.1751392766208676907@lists.yoctoproject.org>
Message-ID: <18523.1751393006722582239@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jov4DmMbWR9Fd8I4rU1L"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Jul 2025 18:03:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65583

--jov4DmMbWR9Fd8I4rU1L
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I sure hope my spam helps out someone.

So if you explicitly call do_configure() on a cmake inherited recipe, you a=
re then responsible for explictly calling cmake_do_configure at the end.

--jov4DmMbWR9Fd8I4rU1L
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I sure hope my spam helps out someone. </div>
<div>&nbsp;</div>
<div>So if you explicitly call do_configure() on a cmake inherited recipe, =
you are then responsible for explictly calling cmake_do_configure at the en=
d.</div>

--jov4DmMbWR9Fd8I4rU1L--

