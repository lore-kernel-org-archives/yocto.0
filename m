Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EFDBC433F5
	for <webhook@archiver.kernel.org>; Tue, 31 May 2022 15:15:48 +0000 (UTC)
Subject: Re: host file contamination with recipes using cmake and find_package
To: yocto@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Letchworth Garden City, England, GB (86.16.192.236)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 31 May 2022 08:15:46 -0700
References: <YpDx8SvCLfnCooyz@korppu>
In-Reply-To: <YpDx8SvCLfnCooyz@korppu>
Message-ID: <953.1654010146507465768@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HeOeGPwMqoOQG8TRo0p4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 May 2022 15:15:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57237

--HeOeGPwMqoOQG8TRo0p4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks,
This did turn out be a a simple case of CMAKE_FIND_ROOT_PATH being clobbere=
d in our CMakeLists.txt files which I had missed on the first look.

--HeOeGPwMqoOQG8TRo0p4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks,<br />This did turn out be a a simple case of CMAKE_FIND_ROOT_PATH b=
eing clobbered in our CMakeLists.txt files which I had missed on the first =
look.

--HeOeGPwMqoOQG8TRo0p4--

