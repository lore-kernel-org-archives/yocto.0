Return-Path: <rroyce@textronsystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01696C54E65
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 10:31:49 +0000 (UTC)
Subject: Do_package is changing permissions of files
To: yocto@lists.yoctoproject.org
From: rroyce@textronsystems.com
X-Originating-Location: York, Pennsylvania, US (73.130.100.117)
X-Originating-Platform: Android Phone Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 May 2025 03:31:43 -0700
Message-ID: <zaAO.1747909903312722330.F7i9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kMuHPiFLj3nm1ATK3YvS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 10:31:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65393

--kMuHPiFLj3nm1ATK3YvS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

When the do_package step executes it is changing permissions of files in {S=
}/{B}. These files with changed permissions are stored in the cache so the =
next time do_compile executes against the cached files the files are differ=
ent from the last time it executed. Is this is a bug or a feature of do_pac=
kage that isn't well documented? Or it could be that I am doing something i=
ncorrectly with setting up the source directory that do_package sets permis=
sions in it?

Any insight is appreciated

--kMuHPiFLj3nm1ATK3YvS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>When the do_package step executes it is changing permissions of files =
in {S}/{B}. These files with changed permissions are stored in the cache so=
 the next time do_compile executes against the cached files the files are d=
ifferent from the last time it executed. Is this is a bug or a feature of d=
o_package that isn't well documented? Or it could be that I am doing someth=
ing incorrectly with setting up the source directory that do_package sets p=
ermissions in it?</div>
<div>&nbsp;</div>
<div>Any insight is appreciated</div>

--kMuHPiFLj3nm1ATK3YvS--

