Return-Path: <veilleux.cedric@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DBF41125865
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 18:18:32 +0000 (UTC)
Subject: go regression in scarthgap related to CVE-2025-61726 patch
To: yocto@lists.yoctoproject.org
From: "Cedric Veilleux" <veilleux.cedric@gmail.com>
X-Originating-Location: Montreal, Quebec, CA (66.254.49.99)
X-Originating-Platform: Linux Firefox 148
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 Mar 2026 11:18:24 -0700
Message-ID: <7IZh.1773253104984679443.MaYv@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Mar 2026 18:18:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66324

After the recent golang patchset in scarthgap, go programs are crashing wit=
h:

> panic: godebug: Value of name not listed in godebugs.All: urlmaxquerypara=
ms goroutine 1 [running]: internal/godebug

This is observed in the podman recipe from meta-virtualization but I don't =
think it is related to podman only.

I've traced it to this commit:

> commit 242963f4cd1597d31a3efae2422016bf888c6e25
> Author: Deepak Rathore <deeratho@cisco.com>
> Date:   Wed Feb 11 20:59:00 2026 -0800
>=20
>     go 1.22.12: Fix CVE-2025-61726

Removing this patch fixes the issue.


