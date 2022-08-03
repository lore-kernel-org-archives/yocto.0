Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D61C19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 13:37:03 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.8454.1659533813595860792
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 06:36:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC50A11FB;
	Wed,  3 Aug 2022 06:36:53 -0700 (PDT)
Received: from e125920.arm.com (unknown [10.57.84.163])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2D22D3F70D;
	Wed,  3 Aug 2022 06:36:51 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Diego.Sueiro@arm.com,
	Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 1/3] zephyr-kernel: Add synchronization sample
 recipe
Date: Wed,  3 Aug 2022 14:35:29 +0100
Message-Id: <20220803133531.3823518-1-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 13:37:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57763

From: Peter Hoyes <Peter.Hoyes@arm.com>

The Zephyr documentation [1] lists 3 "classic samples" that "can be run
on any of the supported platforms": Hello World, Synchronization and
Dining Philosophers. meta-zephyr already includes the first two but not
synchronization so add a recipe for it.

[1] https://docs.zephyrproject.org/3.1.0/samples/classic.html

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 .../zephyr-kernel/zephyr-synchronization.bb               | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-=
synchronization.bb

diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-synchro=
nization.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-synchr=
onization.bb
new file mode 100644
index 0000000..4cb207d
--- /dev/null
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-synchronizatio=
n.bb
@@ -0,0 +1,8 @@
+SUMMARY =3D "Synchronization Zephyr Sample"
+DESCRIPTION =3D "A simple Zephyr application that demonstrates basic san=
ity of \
+the kernel. It demonstrates that kernel scheduling, communication and ti=
ming \
+operate correctly by printing a greeting to the console from two threads=
."
+
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR =3D "${S}/samples/synchronization"
--=20
2.25.1


