Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 830B8E01489
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:08 -0700 (PDT)
Received: by mail-ee0-f54.google.com with SMTP id e50so1704343eek.41
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=gc6SJzSP/RJHULVdloKFwPEPaIP2nZOiXkLjLESNYiU=;
	b=TnsRDzuE0s1OaCMsKCNZf0Grjz2AA3eJZXu4X5aIv4lUyg/NGibpITRqQ07mkeu8Z8
	81SJHlS251TancVE+HI/D14v0364NHQKCFYKKAIibTYiszAwuMirSLuJt9suCay18RWS
	6HpZLBOgb7vmZhdX0iVY0xT2zxj+Op8T3HdSlrScls6t5XYqX6P7XBZI5wCMe8zi4sAP
	FHtsaOCUNwD4uV2BwM9gp6LiM0iLSGxybUnYJRcdI0oXvbw794726OnZ3+ged4xnBJr/
	0QZy4P4m7DWs4UoaonglZZ1cm7d3Tcug9G2Kmngb7vxExfcGcOmMMvHZXHz2u3RW/cn1
	QSOg==
X-Received: by 10.15.24.72 with SMTP id i48mr28819301eeu.37.1369298407728;
	Thu, 23 May 2013 01:40:07 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.06
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:07 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:47 +0200
Message-Id: <1369298392-4076-9-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 08/13] plugins/cmake: Defined the building toolchain
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
X-List-Received-Date: Thu, 23 May 2013 08:40:08 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The CMake build toolchain uses the previously
defined builder and the cmake configure tool. The
rest of the tools are the standard gnu compiler/
linker for C and C++.
---
 .../OSGI-INF/l10n/bundle.properties                |    3 ++
 plugins/org.yocto.cmake.managedbuilder/plugin.xml  |   45 ++++++++++++++++++++
 2 files changed, 48 insertions(+)

diff --git a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
index c66fcb9..e5db35f 100644
--- a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
@@ -18,6 +18,9 @@ extension.name=Yocto CMake Managed Builder
 # Builder
 builder.name=Yocto CMake Environment Builder
 
+# Toolchain
+toolchain=Yocto CMake Build (Toolchain)
+
 # CMake configure
 cmakeconfigure.name=CMake configure
 cmakeconfigure.options=CMake Options
diff --git a/plugins/org.yocto.cmake.managedbuilder/plugin.xml b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
index e8faadd..df1963b 100644
--- a/plugins/org.yocto.cmake.managedbuilder/plugin.xml
+++ b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
@@ -111,5 +111,50 @@
                 valueType="string">
             </option>
         </tool>
+        <toolChain
+            id="org.yocto.cmake.managedbuilder.toolchain.gnu.exe"
+            name="%toolchain"
+            supportsManagedBuild="true">
+            <targetPlatform
+                id="org.yocto.cmake.managedbuilder.target.gnu.exe"
+                isAbstract="false"
+                superClass="cdt.managedbuild.target.gnu.platform.base">
+            </targetPlatform>
+            <builder
+                id="org.yocto.cmake.managedbuilder.builder.gnu.exe"
+                isAbstract="false"
+                isVariableCaseSensitive="false"
+                superClass="org.yocto.cmake.managedbuilder.builder">
+            </builder>
+            <tool
+                id="org.yocto.cmake.managedbuilder.cmakeconfigure.gnu.exe"
+                isAbstract="false"
+                superClass="org.yocto.cmake.managedbuilder.cmakeconfigure">
+            </tool>
+            <tool
+                id="org.yocto.cmake.managedbuilder.compiler.gnu.exe"
+                isAbstract="false"
+                natureFilter="ccnature"
+                superClass="cdt.managedbuild.tool.gnu.cpp.compiler">
+            </tool>
+            <tool
+                id="org.yocto.cmake.managedbuilder.linker.gnu.exe"
+                isAbstract="false"
+                natureFilter="ccnature"
+                superClass="cdt.managedbuild.tool.gnu.cpp.linker">
+            </tool>
+            <tool
+                id="org.yocto.cmake.managedbuilder.compiler.gnu.c.exe"
+                isAbstract="false"
+                natureFilter="cnature"
+                superClass="cdt.managedbuild.tool.gnu.c.compiler">
+            </tool>
+            <tool
+                id="org.yocto.cmake.managedbuilder.linker.gnu.c.exe"
+                isAbstract="false"
+                natureFilter="cnature"
+                superClass="cdt.managedbuild.tool.gnu.c.linker">
+            </tool>
+        </toolChain>
     </extension>
 </plugin>
-- 
1.7.9.5


