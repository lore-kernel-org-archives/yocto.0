Return-Path: <alexander.lussier-cullen@savoirfairelinux.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D154C61DF7
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 15:07:38 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.92805.1700752047524441176
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 07:07:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=BDnA8M8E;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: alexander.lussier-cullen@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 536399C0CAC
	for <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 10:07:26 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id cGmmWlMzDuvp; Thu, 23 Nov 2023 10:07:26 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id EAD6C9C352F;
	Thu, 23 Nov 2023 10:07:25 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com EAD6C9C352F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1700752046; bh=6XTBmMxf29hjZuvZKi3+c5wrXLxIsJxQZLCg4/72kpg=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=BDnA8M8EwMzvgh9hIO2R8DBVS5yPorr34Tg59MSjxnez/qbsDlna2L8tR957glaWx
	 m9Yr96Mqu0eKi61IHHycy2Jyf9joIiFmxQGZRJDhljuzeVSLzUj1THvfOhb15phM0m
	 EUNF3VVXRW/sm9h/2I7TvzckQg3tl4HOcukWGRIq9D1QwWugY7WSClGw1obGalc+/g
	 t306IQM4E3Na8/gLs/yOxcYA7/6xYctaZu1x3D+PotIOzLseqW63wZ4zvV7PBLwBZt
	 XPpXVvMnM1Vnwh90FRwB4ZjbTvhuifB1qrYe43qOqT8K8yPRk2it+aCkCNx4QXgTCt
	 9/LzD2wq54y4A==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id VVwj-Aa8O04N; Thu, 23 Nov 2023 10:07:25 -0500 (EST)
Received: from alex-GA-78LMT-USB3.home (bras-base-mtrlpq427kw-grc-24-184-147-255-35.dsl.bell.ca [184.147.255.35])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id CA6029C0CAC;
	Thu, 23 Nov 2023 10:07:25 -0500 (EST)
From: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfairelinux.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfairelinux.com>
Subject: [yocto-autobuilder-helper] scripts/run-toaster-tests.py: Add environment variables
Date: Thu, 23 Nov 2023 10:07:03 -0500
Message-Id: <20231123150703.4342-1-alexander.lussier-cullen@savoirfairelinux.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 15:07:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61743

Pass the toaster test environment SSTATE_DIR and DL_DIR for faster
builds and TOASTER_DJANGO_TMPDIR to remove problematic temp files
from the root level '/tmp' directory.

Signed-off-by: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirf=
airelinux.com>
---
 scripts/run-toaster-tests | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/run-toaster-tests b/scripts/run-toaster-tests
index a785c36..516965e 100755
--- a/scripts/run-toaster-tests
+++ b/scripts/run-toaster-tests
@@ -14,6 +14,12 @@ builddir=3D$(realpath "$1")
 pokydir=3D$(realpath "$2")
=20
 cd $builddir
+
+bitbake -e > bbenv
+export SSTATE_DIR=3D$(grep '^SSTATE_DIR=3D' bbenv | cut -d "=3D" -f2-)
+export DL_DIR=3D$(grep '^DL_DIR=3D' bbenv | cut -d "=3D" -f2-)
+export TOASTER_DJANGO_TMPDIR=3D$builddir
+
 mkdir -p toaster_logs
 python3 -m venv venv --without-pip --system-site-packages
 source venv/bin/activate
--=20
2.34.1


