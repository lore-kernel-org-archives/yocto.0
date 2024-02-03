Return-Path: <patrick.vogelaar@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82E1AC4828F
	for <webhook@archiver.kernel.org>; Sat,  3 Feb 2024 22:34:04 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by mx.groups.io with SMTP id smtpd.web11.27356.1706999638447311131
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Feb 2024 14:33:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TlKH/F33;
 spf=pass (domain: kernel.org, ip: 139.178.84.217, mailfrom: devnull+patrick.vogelaar.belden.com@kernel.org)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A868460686;
	Sat,  3 Feb 2024 22:33:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 58275C433C7;
	Sat,  3 Feb 2024 22:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706999637;
	bh=sLHdP0GzPlNCcnjbjgXYQ2bg1dzqCbaL9QDMadsh1wg=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=TlKH/F33qj4vqVkSf88W6BYfiZVY8UUDU27+gT+6CehbGc3Eebb2ladSL4FARevpa
	 phHJlLsI6qIenn2fAoTxMlgfDTCQDK871AlnsVYRHTXX20yumrzndLgjoLm0Azduq2
	 MIDKMTAUvBWWY2CiqJIjjqX0XXG71KB2bNv6XFNQ6NqKVkraWeGyqWo8nd9w3uVMRB
	 Rqv/qMs0cjKNU7xG/WmB1G5i3yHuOTuwmbmepklh1EqzWvSSvXdkIvXVQltig2xpGQ
	 YKpS7d8NmHTejBGgcau5bxAUrnthV1CK0/UyVGMhOv6kmAylkRJWAqdBpUfNGPLNn5
	 wWDMxRRuqZEmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43F19C4828D;
	Sat,  3 Feb 2024 22:33:57 +0000 (UTC)
From: Patrick Vogelaar via B4 Relay
 <devnull+patrick.vogelaar.belden.com@kernel.org>
Date: Sat, 03 Feb 2024 23:33:53 +0100
Subject: [PATCH ][meta-spdxscanner] python3-patch: fix an error in
 kirkstone
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: 
 <20240203-fix-build-error-in-kirkstone-v1-1-fc36c4870de5@belden.com>
X-B4-Tracking: v=1; b=H4sIAFC/vmUC/x3M0QqDMAxA0V+RPC/Q1sJwvyI+dG22BbdUEh2C+
 O8rezxwuQcYKZPBrTtA6cvGVRr8pYP8SvIk5NIMwYXoguvxwTveN34XJNWqyIIz62xrFcI8+Oh
 piNfeE7TFotT6/36EafzQmtCWsltOIqQwnecPlptBrIIAAAA=
To: yocto@lists.yoctoproject.org, leimaohui@fujitsu.com
Cc: Patrick Vogelaar <patrick.vogelaar@belden.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706999636; l=2266;
 i=patrick.vogelaar@belden.com; s=20240201; h=from:subject:message-id;
 bh=/ipllgqYvYnyn8bHr49PCWaOduZulz+s5ILAwMy00fg=;
 b=8KDEjO3zw/MItKsRnzC0KS06S4GtRM7E4W8iLtn97sm0jJPXznG6cZqJt3TmJxtgMsHJeeqpm
 TRjxeECVFK3ACiQO0fGR5R6ig+AeLlD/Vntn+SxlaNr7v4fK4autVXn
X-Developer-Key: i=patrick.vogelaar@belden.com; a=ed25519;
 pk=w0QU8RmOR3hQv1DxMcz6KmySeE8yqbvO0xC1ZSSUNqY=
X-Endpoint-Received: 
 by B4 Relay for patrick.vogelaar@belden.com/20240201 with auth_id=125
X-Original-From: Patrick Vogelaar <patrick.vogelaar@belden.com>
Reply-To: <patrick.vogelaar@belden.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 Feb 2024 22:34:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62387

From: Patrick Vogelaar <patrick.vogelaar@belden.com>

Patch python3-patch to use setuptools instead of distutils.
This fixes a build error.

Signed-off-by: Patrick Vogelaar <patrick.vogelaar@belden.com>
---
 .../0001-PATCH-setup.py-switch-to-setuptools.patch | 24 ++++++++++++++++++++++
 recipes-devtools/python/python3-patch_1.16.bb      |  4 +++-
 2 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/python/python3-patch/0001-PATCH-setup.py-switch-to-setuptools.patch b/recipes-devtools/python/python3-patch/0001-PATCH-setup.py-switch-to-setuptools.patch
new file mode 100644
index 0000000..9f9963f
--- /dev/null
+++ b/recipes-devtools/python/python3-patch/0001-PATCH-setup.py-switch-to-setuptools.patch
@@ -0,0 +1,24 @@
+From 314be675a933ed262687b25ea70f23d3454e3651 Mon Sep 17 00:00:00 2001
+From: Patrick Vogelaar <patrick.vogelaar@belden.com>
+Date: Thu, 1 Feb 2024 10:59:45 +0100
+Subject: [PATCH] setup.py: switch to setuptools
+
+In Python 3.10, 'distutils' has been deprecated and is slated for
+removal in Python 3.12.
+
+Switch from 'distutils.core' to 'setuptools'. This also allows for the
+'wheel' binary archive format to be built with 'setup.py bdist_wheel'.
+---
+ setup.py | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/setup.py b/setup.py
+index 0307afd..1289f25 100644
+--- a/setup.py
++++ b/setup.py
+@@ -1,4 +1,4 @@
+-from distutils.core import setup
++from setuptools import setup
+ 
+ setup(
+     name='patch',
diff --git a/recipes-devtools/python/python3-patch_1.16.bb b/recipes-devtools/python/python3-patch_1.16.bb
index 6627a2b..6e7ff15 100755
--- a/recipes-devtools/python/python3-patch_1.16.bb
+++ b/recipes-devtools/python/python3-patch_1.16.bb
@@ -12,7 +12,9 @@ SRC_URI[sha256sum] = "c62073f356cff054c8ac24496f1a3d7cfa137835c31e9af39a9f5292fd
 
 inherit pypi
 
-SRC_URI = "${PYPI_SRC_URI};subdir=${PYPI_PACKAGE}-${PV}"
+SRC_URI = "${PYPI_SRC_URI};subdir=${PYPI_PACKAGE}-${PV} \
+           file://0001-PATCH-setup.py-switch-to-setuptools.patch \
+           "
 
 inherit setuptools3
 

---
base-commit: 8b07df1535fe1203b07fc87f8c6a1e34311e2a1d
change-id: 20240203-fix-build-error-in-kirkstone-c9141e94731e

Best regards,
-- 
Patrick Vogelaar <patrick.vogelaar@belden.com>


