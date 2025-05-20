Return-Path: <joseph.maniaci@seagate.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF44C3ABDD
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 18:36:14 +0000 (UTC)
Subject: Re: [yocto] Yocto converting package.json into npm-shrinkwrap.json incorrectly
To: joseph.maniaci@seagate.com, yocto@lists.yoctoproject.org
From: joseph.maniaci@seagate.com
X-Originating-Location: Eden Prairie, Minnesota, US (134.204.180.68)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 20 May 2025 11:36:13 -0700
References: <UaT7.1747765712253527855.KxSx@lists.yoctoproject.org>
In-Reply-To: <UaT7.1747765712253527855.KxSx@lists.yoctoproject.org>
Message-ID: <7615.1747766173663051950@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="flJY2MhHk9fOXUieIfPh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 18:36:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65381

--flJY2MhHk9fOXUieIfPh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just to be explicit, 'npm install' executes without issue outside of a yoct=
o build/ environment. jq . package.json also executes without error, so we'=
re pretty sure package.json is syntactically sound.

--flJY2MhHk9fOXUieIfPh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Just to be explicit, 'npm install' executes without issue outside of a=
 yocto build/ environment. jq . package.json also executes without error, s=
o we're pretty sure package.json is syntactically sound.</div>

--flJY2MhHk9fOXUieIfPh--

