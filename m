Return-Path: <philippe.coval@astrolabe.coop>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7591C04A95
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 12:27:48 +0000 (UTC)
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
 by mx.groups.io with SMTP id smtpd.web08.7260.1664368059001854767
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 05:27:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: hua.lan.rzr.cloudns.org,
 ip: 212.27.42.2, mailfrom: rzr@hua.lan.rzr.cloudns.org)
Received: from hua (unknown [78.197.125.113])
	(Authenticated sender: philippe.coval@free.fr)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id 7EE5B20039C;
	Wed, 28 Sep 2022 14:27:33 +0200 (CEST)
Received: by hua (Postfix, from userid 10000)
	id 17A3222630B; Wed, 28 Sep 2022 14:27:33 +0200 (CEST)
From: philippe.coval@astrolabe.coop
To: yocto@lists.yoctoproject.org
Cc: philippe.coval.pro+meta-zephyr-lists.yoctoproject.org@gmail.com,
	Philippe Coval <philippe.coval@astrolabe.coop>
Subject: [meta-zephyr][PATCH] frdm-kw41z.conf: Add new machine from NXP
Date: Wed, 28 Sep 2022 14:27:26 +0200
Message-Id: <20220928122726.1374956-1-philippe.coval@astrolabe.coop>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 12:27:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58208

From: Philippe Coval <philippe.coval@astrolabe.coop>

It was tested using zephyr-blinky and deployed manually using:

    udisksctl mount -b  "/dev/disk/by-label'FRDM-KW41ZJ"

Relate-to: https://gitlab.eclipse.org/pcoval/oniro-presentations/-/wikis/=
openthread
Forwarded: https://lists.yoctoproject.org/g/yocto/search?q=3Dposterid:659=
0488
Signed-off-by: Philippe Coval <philippe.coval@astrolabe.coop>
---
 .gitlab-ci.yml                               |  3 +++
 ci/frdm-kw41z.yml                            |  6 ++++++
 meta-zephyr-bsp/conf/machine/frdm-kw41z.conf | 11 +++++++++++
 3 files changed, 20 insertions(+)
 create mode 100644 ci/frdm-kw41z.yml
 create mode 100755 meta-zephyr-bsp/conf/machine/frdm-kw41z.conf

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index c185477..5752254 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -71,6 +71,9 @@ machine-coverage:
 arduino-nano-33-ble:
   extends: .build
=20
+frdm-kw41z:
+  extends: .build
+
 intel-x86-64:
   extends: .build
=20
diff --git a/ci/frdm-kw41z.yml b/ci/frdm-kw41z.yml
new file mode 100644
index 0000000..cb1ce1f
--- /dev/null
+++ b/ci/frdm-kw41z.yml
@@ -0,0 +1,6 @@
+header:
+  version: 11
+  includes:
+    - ci/base.yml
+
+machine: frdm-kw41z
diff --git a/meta-zephyr-bsp/conf/machine/frdm-kw41z.conf b/meta-zephyr-b=
sp/conf/machine/frdm-kw41z.conf
new file mode 100755
index 0000000..464e83a
--- /dev/null
+++ b/meta-zephyr-bsp/conf/machine/frdm-kw41z.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: frdm-kw41z
+#@DESCRIPTION: Machine configuration for frdm-kw41z=20
+#
+# This file was generated using generate-zephyr-machines
+
+require conf/machine/include/arm/armv6m/tune-cortexm0plus.inc
+
+ARCH:frdm-kw41z =3D "arm"
+
+DEFAULTUNE ?=3D "cortexm0plus"
--=20
2.34.1


