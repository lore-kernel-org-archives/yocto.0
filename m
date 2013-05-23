Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f182.google.com (mail-ea0-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 515D1E014E1
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:09 -0700 (PDT)
Received: by mail-ea0-f182.google.com with SMTP id r16so1680767ead.41
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=wlhW1QDsLOQRueHxQejHisQHQMFxQL0jpvus1m+QZfg=;
	b=YwTp20HOSrcrMypnq03SJ2UCrdliJWUZZjJmwpTDbgdtnGPujl9+8gRVdp8tQ8v2YV
	upS/XcOfDR9D+RbUCzDeqzXl501uLucy0IUFU8HVTwweVyjcFUKdsDL5BXgUisQgtSRL
	jzTm+HmkWUSREdzjzffIOSmvVQjMwTpRCEdoCV0vz0/7Llcs2XxotMn7Ay5J246Fc65E
	gj58OtBGZCKDF5hM58Nz/UILQMhxq2I8nHZHvMgeN41pkSx5kBc0g+Uxx8LwrNbGjrs2
	kXyLxFIoB9LFBznc86nBr1j64u2R5B8HELS+opVZ/FCeRstV8ZbUwiImDUHRXXWTwqLg
	i+CA==
X-Received: by 10.14.172.195 with SMTP id t43mr28755990eel.34.1369298408496;
	Thu, 23 May 2013 01:40:08 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.07
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:08 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:48 +0200
Message-Id: <1369298392-4076-10-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 09/13] plugins/cmake: Added a new category for CMake projects
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 May 2013 08:40:09 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Yocto CMake template projects should use this
category. It appears in the new project wizard
additionally to the existing category "Yocto
Project ADT CMake Project".
---
 .../OSGI-INF/l10n/bundle.properties                |    3 +++
 plugins/org.yocto.cmake.managedbuilder/plugin.xml  |    8 ++++++++
 2 files changed, 11 insertions(+)

diff --git a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
index e5db35f..d5d6dfe 100644
--- a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
@@ -12,6 +12,9 @@
 Bundle-Vendor = yoctoproject.org
 Bundle-Name = Yocto CMake Plugin
 
+# Artefact type
+yocto.cmake.artefactType=Yocto Project ADT CMake Project
+
 # Extension name
 extension.name=Yocto CMake Managed Builder
 
diff --git a/plugins/org.yocto.cmake.managedbuilder/plugin.xml b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
index df1963b..af26e18 100644
--- a/plugins/org.yocto.cmake.managedbuilder/plugin.xml
+++ b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
@@ -2,6 +2,14 @@
 <?eclipse version="3.4"?>
 <plugin>
     <extension
+        point="org.eclipse.cdt.managedbuilder.core.buildProperties">
+        <propertyValue
+            id="org.yocto.sdk.ide.buildArtefact.cmake.exe"
+            name="%yocto.cmake.artefactType"
+            property="org.eclipse.cdt.build.core.buildArtefactType">
+        </propertyValue>
+    </extension>
+    <extension
         id="org.yocto.cmake.managedbuilder"
         name="%extension.name"
         point="org.eclipse.cdt.managedbuilder.core.buildDefinitions">
-- 
1.7.9.5


