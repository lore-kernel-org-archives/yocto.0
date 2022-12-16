Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4677EC4332F
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 15:41:15 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.16289.1671205266212383429
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 07:41:06 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 926031042;
	Fri, 16 Dec 2022 07:41:46 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.88.145])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 52A2D3F5A1;
	Fri, 16 Dec 2022 07:41:05 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 4/5][langdale] zephyr-core/zephyr-kernel: Use layer-relative require for version file
Date: Fri, 16 Dec 2022 15:41:46 +0000
Message-Id: <20221216154147.1524548-4-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221216154147.1524548-1-peter.hoyes@arm.com>
References: <20221216154147.1524548-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 15:41:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58819

From: Peter Hoyes <Peter.Hoyes@arm.com>

The inclusion of the Zephyr version-specific .inc file is currently
using a local include. Change to be layer-relative to support including
files in other layers.

Change to use 'require' instead of 'include' so that an earlier error is
printed if the file does not exist.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-=
src.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src=
.inc
index f28d1d4..3383894 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -13,4 +13,4 @@ S =3D "${WORKDIR}/git"
=20
 # Default to a stable version
 PREFERRED_VERSION_zephyr-kernel ??=3D "3.1.0"
-include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
+require recipes-kernel/zephyr-kernel/zephyr-kernel-src-${PREFERRED_VERSI=
ON_zephyr-kernel}.inc
--=20
2.25.1


