Return-Path: <bgctkd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89770C433EF
	for <webhook@archiver.kernel.org>; Sat, 15 Jan 2022 00:19:40 +0000 (UTC)
Subject: Re: wic create mkhybridiso core-image-minimal failure (honister)
To: yocto@lists.yoctoproject.org
From: bgctkd@gmail.com
X-Originating-Location: Boston, Massachusetts, US (136.226.72.101)
X-Originating-Platform: Windows Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 14 Jan 2022 16:19:40 -0800
References: <onyN.1642106075826628914.TiRh@lists.yoctoproject.org>
In-Reply-To: <onyN.1642106075826628914.TiRh@lists.yoctoproject.org>
Message-ID: <2802.1642205980044595442@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="oz5F5nuZC1DOc4K1O7WA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Jan 2022 00:19:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55885

--oz5F5nuZC1DOc4K1O7WA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Solution: I poked around and discovered the primary issue is that I was add=
ing wic, but not cpio.gz to IMAGE_FSTYPES

--oz5F5nuZC1DOc4K1O7WA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Solution: I poked around and discovered the primary issue is that I was add=
ing wic, but not cpio.gz to IMAGE_FSTYPES

--oz5F5nuZC1DOc4K1O7WA--

