Return-Path: <Joshua.Schueler@tesat.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1876FC54756
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 07:56:08 +0000 (UTC)
Subject: sstate-cache: Ignore ERROR_QA entry for local build
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?Sm9zaHVhIFNjaMO8bGVy?= <Joshua.Schueler@tesat.de>
X-Originating-Location: =?UTF-8?B?RMO8c3NlbGRvcmYsIE5vcnRoIFJoaW5lLVdlc3RwaGFsaWEsIERF?= (62.156.155.14)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 May 2025 00:55:59 -0700
Message-ID: <dKmM.1747900559708910814.bgCt@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 07:56:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65391

Hi,

We use a shared sstate-cache which is populated by our CI pipeline. Our dev=
eloper machines have read-only access to this cache.
For my local builds, I like to set ERROR_QA:remove =3D "version-going-backw=
ards" as I'm jumping around git branches a lot. However, this invalidates t=
he shared cache (verified by bitbake-diffsigs).
I tried to remedy this with

ERROR_QA:remove =3D "version-going-backwards"
ERROR_QA[vardepvalue] =3D "${ERROR_QA} version-going-backwards"

But it does not seem to get picked up correctly, the shared cache is still =
not used. Am I misunderstanding vardepvalue or the parsing order?

Regards
Joshua

