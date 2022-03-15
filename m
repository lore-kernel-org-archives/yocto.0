Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD2CC4332F
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 16:31:39 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net
 [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web11.13345.1647361898187566632
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 09:31:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.178.230,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2DF6424000F;
	Tue, 15 Mar 2022 16:31:35 +0000 (UTC)
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Subject: [PATCH yocto-autobuilder-helper 3/4] scripts: docs-build-patches: fix
 incorrect conf.py for yocto-3.4.1
Date: Tue, 15 Mar 2022 17:31:14 +0100
Message-Id: <20220315163115.2186540-3-foss+yocto@0leil.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220315163115.2186540-1-foss+yocto@0leil.net>
References: <20220315163115.2186540-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 16:31:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56450

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The patch was missing from yocto-3.4.1 release and only made it to
yocto-3.4.2 unfortunately so let's backport it.

Cc: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 ...honister-updates-for-recent-releases.patch | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)
 create mode 100644 scripts/docs-build-patches/yocto-3.4.1/0002-honister-updates-for-recent-releases.patch

diff --git a/scripts/docs-build-patches/yocto-3.4.1/0002-honister-updates-for-recent-releases.patch b/scripts/docs-build-patches/yocto-3.4.1/0002-honister-updates-for-recent-releases.patch
new file mode 100644
index 0000000..4e72db1
--- /dev/null
+++ b/scripts/docs-build-patches/yocto-3.4.1/0002-honister-updates-for-recent-releases.patch
@@ -0,0 +1,93 @@
+From a6b10a8e2491e284e7faf439fa196605ddf40943 Mon Sep 17 00:00:00 2001
+From: Michael Opdenacker <michael.opdenacker@bootlin.com>
+Date: Mon, 13 Dec 2021 16:17:47 +0100
+Subject: [PATCH] [honister] updates for recent releases
+
+Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
+---
+ documentation/conf.py                    | 2 +-
+ documentation/poky.yaml                  | 8 ++++----
+ documentation/releases.rst               | 8 ++++++++
+ documentation/sphinx-static/switchers.js | 4 ++--
+ 4 files changed, 15 insertions(+), 7 deletions(-)
+
+diff --git a/documentation/conf.py b/documentation/conf.py
+index eff758a7b..ef369b7f1 100644
+--- a/documentation/conf.py
++++ b/documentation/conf.py
+@@ -16,7 +16,7 @@ import os
+ import sys
+ import datetime
+ 
+-current_version = "3.4"
++current_version = "3.4.1"
+ bitbake_version = "1.52"
+ 
+ # String used in sidebar
+diff --git a/documentation/poky.yaml b/documentation/poky.yaml
+index 392e3bd63..11e209e30 100644
+--- a/documentation/poky.yaml
++++ b/documentation/poky.yaml
+@@ -1,12 +1,12 @@
+-DISTRO : "3.4"
++DISTRO : "3.4.1"
+ DISTRO_NAME_NO_CAP : "honister"
+ DISTRO_NAME : "Honister"
+ DISTRO_NAME_NO_CAP_MINUS_ONE : "hardknott"
+ DISTRO_NAME_NO_CAP_LTS : "dunfell"
+-YOCTO_DOC_VERSION : "3.4"
++YOCTO_DOC_VERSION : "3.4.1"
+ YOCTO_DOC_VERSION_MINUS_ONE : "3.3.4"
+-DISTRO_REL_TAG : "yocto-3.4"
+-POKYVERSION : "26.0.0"
++DISTRO_REL_TAG : "yocto-3.4.1"
++POKYVERSION : "26.0.1"
+ YOCTO_POKY : "poky-&DISTRO_NAME_NO_CAP;-&POKYVERSION;"
+ YOCTO_DL_URL : "https://downloads.yoctoproject.org"
+ YOCTO_AB_URL : "https://autobuilder.yoctoproject.org"
+diff --git a/documentation/releases.rst b/documentation/releases.rst
+index a6c9a47b8..16ecbf712 100644
+--- a/documentation/releases.rst
++++ b/documentation/releases.rst
+@@ -4,6 +4,13 @@
+  Supported Release Manuals
+ ===========================
+ 
++*****************************
++Release Series 3.4 (honister)
++*****************************
++
++- :yocto_docs:`3.4 Documentation </3.4>`
++- :yocto_docs:`3.4.1 Documentation </3.4.1>`
++
+ ******************************
+ Release Series 3.3 (hardknott)
+ ******************************
+@@ -30,6 +37,7 @@ Release Series 3.1 (dunfell)
+ - :yocto_docs:`3.1.9 Documentation </3.1.9>`
+ - :yocto_docs:`3.1.10 Documentation </3.1.10>`
+ - :yocto_docs:`3.1.11 Documentation </3.1.11>`
++- :yocto_docs:`3.1.12 Documentation </3.1.12>`
+ 
+ ==========================
+  Outdated Release Manuals
+diff --git a/documentation/sphinx-static/switchers.js b/documentation/sphinx-static/switchers.js
+index b15f5b3c1..056a8926b 100644
+--- a/documentation/sphinx-static/switchers.js
++++ b/documentation/sphinx-static/switchers.js
+@@ -3,10 +3,10 @@
+ 
+   var all_versions = {
+     'dev': 'dev (3.5)',
+-    '3.4': '3.4',
++    '3.4.1': '3.4.1',
+     '3.3.4': '3.3.4',
+     '3.2.4': '3.2.4',
+-    '3.1.11': '3.1.11',
++    '3.1.12': '3.1.12',
+     '3.0.4': '3.0.4',
+     '2.7.4': '2.7.4',
+   };
+-- 
+2.35.1
+
-- 
2.35.1


