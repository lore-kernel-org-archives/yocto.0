Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34A55ECAAD8
	for <webhook@archiver.kernel.org>; Fri, 16 Sep 2022 09:03:48 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.3936.1663319024369837802
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 02:03:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 777C01D34;
	Fri, 16 Sep 2022 02:03:50 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.88.114])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 69B413F73D;
	Fri, 16 Sep 2022 02:03:43 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: diego.sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 4/4] zephyr-core/zephyr-kernel: Update dtc.patch
 Upstream-Status
Date: Fri, 16 Sep 2022 10:03:18 +0100
Message-Id: <20220916090318.1293922-5-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220916090318.1293922-1-peter.hoyes@arm.com>
References: <20220916090318.1293922-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Sep 2022 09:03:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58058

From: Peter Hoyes <Peter.Hoyes@arm.com>

The patch dtc.patch used by 2.7.3 has been accepted upstream, so it is
now a Backport.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-zephyr-core/recipes-kernel/zephyr-kernel/files/dtc.patch | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/dtc.patc=
h b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/dtc.patch
index f23a438..971995b 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/dtc.patch
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/files/dtc.patch
@@ -1,4 +1,4 @@
-Upstream-Status: Submitted [https://github.com/zephyrproject-rtos/zephyr=
/pull/40364]
+Upstream-Status: Backport [https://github.com/zephyrproject-rtos/zephyr/=
commit/a4da64033dac55108215857659831b7d027513de]
 Signed-off-by: Ross Burton <ross.burton@arm.com>
=20
 From deb6e9b29d77f0d86eb188fb3c5fc6f470277d3d Mon Sep 17 00:00:00 2001
--=20
2.25.1


