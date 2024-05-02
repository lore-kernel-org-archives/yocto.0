Return-Path: <f.louveau@lacroix.group>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89278C4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 13:04:56 +0000 (UTC)
Subject: Re: [yocto] Adding extra pam modules to the image #debian #kirkstone #poky #yocto
To: ruom9900@gmail.com, yocto@lists.yoctoproject.org
From: f.louveau@lacroix.group
X-Originating-Location: =?UTF-8?B?UGFyaXMsIMOObGUtZGUtRnJhbmNlLCBGUg==?= (81.250.230.22)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 May 2024 06:04:51 -0700
References: <teIu.1714654781553005811.LEju@lists.yoctoproject.org>
In-Reply-To: <teIu.1714654781553005811.LEju@lists.yoctoproject.org>
Message-ID: <2135.1714655091682548141@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="neLLxDzCdriTp9eFuJGw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 13:04:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63022

--neLLxDzCdriTp9eFuJGw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

You probably need to add libpwquality ( https://layers.openembedded.org/lay=
erindex/recipe/68564/ ).
This recipe provides the pam plugin you want

--neLLxDzCdriTp9eFuJGw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />You probably need to add <a href=3D"https://layers.openem=
bedded.org/layerindex/recipe/68564/" target=3D"_blank" rel=3D"noopener">lib=
pwquality</a>.<br />This recipe provides the pam plugin you want

--neLLxDzCdriTp9eFuJGw--

