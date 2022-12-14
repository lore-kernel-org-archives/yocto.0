Return-Path: <d.antliff@unsw.edu.au>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DAAC4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 21:49:27 +0000 (UTC)
Subject: Re: Yocto with Monorepo - best practice for building apps that have source within the repo?
To: yocto@lists.yoctoproject.org
From: "David Antliff" <d.antliff@unsw.edu.au>
X-Originating-Location: Auckland, NZ (210.54.32.107)
X-Originating-Platform: Linux Firefox 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 Dec 2022 13:49:26 -0800
References: <SY4PR01MB67976B0BD0BCE06B33F69603B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
In-Reply-To: <SY4PR01MB67976B0BD0BCE06B33F69603B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
Message-ID: <3197.1671054566175620802@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dbQ2EAerubOmfE9Fkpwf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 21:49:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58803

--dbQ2EAerubOmfE9Fkpwf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Alexander Kanavin wrote:
> I would symlink the sources directory to the sub-directory of 'files'
> ('files' is in the same directory as the recipe), then list the
> symlink in SRC_URI, so bitbake can copy the content into $WORKDIR. But
> I have no idea if it's going to work. It's not a setup that is tested
> or used much.

I've given this a try and as far as I can tell, it seems to work, and devto=
ol remains operational.

Between this or using FILESEXTRAPATHS, I think I have a way forward, thank =
you. Now I just need to decide which to use...

--dbQ2EAerubOmfE9Fkpwf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"font-family: Calibri, sans-serif;">Alexander Kanavin wrote:<=
/span><br /><span style=3D"font-size: 11pt;">&gt; I would symlink the sourc=
es directory to the sub-directory of 'files'<br />&gt; ('files' is in the s=
ame directory as the recipe), then list the<br />&gt; symlink in SRC_URI, s=
o bitbake can copy the content into $WORKDIR. But<br />&gt; I have no idea =
if it's going to work. It's not a setup that is tested<br />&gt; or used mu=
ch.<br /><br />I've given this a try and as far as I can tell, it seems to =
work, and devtool remains operational.<br /><br />Between this or using FIL=
ESEXTRAPATHS, I think I have a way forward, thank you. Now I just need to d=
ecide which to use...<br /></span>

--dbQ2EAerubOmfE9Fkpwf--

