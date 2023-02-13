Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB71DC636D4
	for <webhook@archiver.kernel.org>; Mon, 13 Feb 2023 16:23:28 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.18864.1676305398929609171
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Feb 2023 08:23:19 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: jon.mason@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 187A71042
	for <yocto@lists.yoctoproject.org>; Mon, 13 Feb 2023 08:24:01 -0800 (PST)
Received: from jdm-VirtualBox.lan?044arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5B8CF3F703
	for <yocto@lists.yoctoproject.org>; Mon, 13 Feb 2023 08:23:18 -0800 (PST)
From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] zephyr-bsp/v2m-beetle: add support
Date: Mon, 13 Feb 2023 11:23:13 -0500
Message-Id: <20230213162313.393095-2-jon.mason@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230213162313.393095-1-jon.mason@arm.com>
References: <20230213162313.393095-1-jon.mason@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Feb 2023 16:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59216

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml                               |  3 +++
 ci/v2m-beetle.yml                            |  6 ++++++
 meta-zephyr-bsp/conf/machine/v2m-beetle.conf | 12 ++++++++++++
 3 files changed, 21 insertions(+)
 create mode 100644 ci/v2m-beetle.yml
 create mode 100644 meta-zephyr-bsp/conf/machine/v2m-beetle.conf

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index c7a9191..d5462a4 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -161,6 +161,9 @@ qemu-x86:
 stm32mp157c-dk2:
   extends: .build
=20
+v2m-beetle:
+  extends: .build
+
 v2m-musca-b1:
   extends: .build
=20
diff --git a/ci/v2m-beetle.yml b/ci/v2m-beetle.yml
new file mode 100644
index 0000000..df62469
--- /dev/null
+++ b/ci/v2m-beetle.yml
@@ -0,0 +1,6 @@
+header:
+  version: 11
+  includes:
+    - ci/base.yml
+
+machine: v2m-beetle
diff --git a/meta-zephyr-bsp/conf/machine/v2m-beetle.conf b/meta-zephyr-b=
sp/conf/machine/v2m-beetle.conf
new file mode 100644
index 0000000..37895c6
--- /dev/null
+++ b/meta-zephyr-bsp/conf/machine/v2m-beetle.conf
@@ -0,0 +1,12 @@
+# Configuration for Beetle development board
+
+#@TYPE: Machine
+#@NAME: Beetle machine
+#@DESCRIPTION: Machine configuration for Beetle
+
+require conf/machine/include/arm/armv7m/tune-cortexm3.inc
+
+# GLIBC will not work with Cortex-M.
+TCLIBC =3D "newlib"
+
+ARCH:beetle =3D "arm"
--=20
2.25.1


