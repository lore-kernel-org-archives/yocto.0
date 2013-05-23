Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C6C0E01493
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:03 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id b15so1723281eae.16
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=UZsbhRbxNrZZdWcZv6L3hBjU3PA2mbbYgWj321FWdgc=;
	b=N3pBZKjd5lxwol4Ip8SgBb5fRnMI0WJ2NNuFRjWIywK9qz5wsoGnasKDYoGl5LGZhH
	XA8rBSS6UPJ+eRHg4cKfBbKidzf2j9VlOrxIq8/I7jOTul1jOP11PzIzpSW+DSbcDRc3
	4p1Mbng+nA/U66eoivkX89H36Z9E1f8MOFVA3xc4ZeQ/cF+0ugsIp50JDTmlpkoY28SM
	DKRZjbL3RuA++gEq2Nr6G9oEiNx3c3UXl9AL/ocGY4hsc6TMNYWT9jIgWjmNzc5oZwU3
	0i4BX9zRHvqVEM5Su8Bjwbth0ZPZvWBwfOIJbFTNFLMcajsQ1GSwlUEYdKRNxruljnWR
	B9Kw==
X-Received: by 10.15.43.71 with SMTP id w47mr27689732eev.32.1369298402573;
	Thu, 23 May 2013 01:40:02 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.01
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:02 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:41 +0200
Message-Id: <1369298392-4076-3-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 02/13] plugins/cmake: Defined CMake tool with options
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
X-List-Received-Date: Thu, 23 May 2013 08:40:03 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Defined a tool using the cmake command with some
options and a free text-field for custom options.
This tool will become part of the builder
toolchain for building CMake projects.
---
 .../OSGI-INF/l10n/bundle.properties                |   14 +++
 plugins/org.yocto.cmake.managedbuilder/plugin.xml  |  102 ++++++++++++++++++++
 2 files changed, 116 insertions(+)

diff --git a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
index 86125e4..ff9b374 100644
--- a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
@@ -11,3 +11,17 @@
 
 Bundle-Vendor = yoctoproject.org
 Bundle-Name = Yocto CMake Plugin
+
+# Extension name
+extension.name=Yocto CMake Managed Builder
+
+# CMake configure
+cmakeconfigure.name=CMake configure
+cmakeconfigure.options=CMake Options
+cmakeconfigure.sourcepath=Relative source path
+cmakeconfigure.toolchaincmakefilepath=Relative toolchain.cmake path
+cmakeconfigure.debugsymbols=Compile with debug symbols
+cmakeconfigure.verbosemakefile=Generate verbose Makefiles
+cmakeconfigure.wdev=Enable developer warnings (-Wdev)
+cmakeconfigure.wnodev=Suppress developer warnings (-Wno-dev)
+cmakeconfigure.otherflags=Other flags
diff --git a/plugins/org.yocto.cmake.managedbuilder/plugin.xml b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
index f422d55..5b56628 100644
--- a/plugins/org.yocto.cmake.managedbuilder/plugin.xml
+++ b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
@@ -1,4 +1,106 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <?eclipse version="3.4"?>
 <plugin>
+    <extension
+        id="org.yocto.cmake.managedbuilder"
+        name="%extension.name"
+        point="org.eclipse.cdt.managedbuilder.core.buildDefinitions">
+        <managedBuildRevision
+            fileVersion="4.0.0">
+        </managedBuildRevision>
+        <tool
+            id="org.yocto.cmake.managedbuilder.cmakeconfigure"
+            name="%cmakeconfigure.name"
+            command="cmake"
+            commandLinePattern="${COMMAND} ${FLAGS} "
+            natureFilter="both">
+            <optionCategory
+                id="org.yocto.cmake.managedbuilder.cmakeconfigure.category.options"
+                name="%cmakeconfigure.options">
+            </optionCategory>
+            <option
+                category="org.yocto.cmake.managedbuilder.cmakeconfigure.category.options"
+                defaultValue="${OECMAKE_SOURCEPATH}"
+                id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.sourcepath"
+                isAbstract="false"
+                name="%cmakeconfigure.sourcepath"
+                resourceFilter="all"
+                valueType="string">
+            </option>
+            <option
+                category="org.yocto.cmake.managedbuilder.cmakeconfigure.category.options"
+                defaultValue="-DCMAKE_TOOLCHAIN_FILE=${OECMAKE_SOURCEPATH}/toolchain.cmake"
+                id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.toolchaincmakefilepath"
+                isAbstract="false"
+                name="%cmakeconfigure.toolchaincmakefilepath"
+                resourceFilter="all"
+                valueType="string">
+            </option>
+            <option
+                category="org.yocto.cmake.managedbuilder.cmakeconfigure.category.options"
+                id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.debugsymbols"
+                name="%cmakeconfigure.debugsymbols"
+                isAbstract="false"
+                resourceFilter="all"
+                valueType="enumerated">
+                <enumeratedOptionValue
+                    command="-DCMAKE_BUILD_TYPE=DEBUG"
+                    id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.debugsymbols.eOV1"
+                    isDefault="true"
+                    name="Yes (-DCMAKE_BUILD_TYPE=DEBUG)">
+                </enumeratedOptionValue>
+                <enumeratedOptionValue
+                    command=""
+                    id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.debugsymbols.eOV2"
+                    name="No">
+                </enumeratedOptionValue>
+            </option>
+            <option
+                category="org.yocto.cmake.managedbuilder.cmakeconfigure.category.options"
+                id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.verbosemakefile"
+                name="%cmakeconfigure.verbosemakefile"
+                isAbstract="false"
+                resourceFilter="all"
+                valueType="enumerated">
+                <enumeratedOptionValue
+                    command="-DCMAKE_VERBOSE_MAKEFILE=1"
+                    id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.verbosemakefile.eOV1"
+                    isDefault="true"
+                    name="Yes (-DCMAKE_VERBOSE_MAKEFILE=1)">
+                </enumeratedOptionValue>
+                <enumeratedOptionValue
+                    command="-DCMAKE_VERBOSE_MAKEFILE=0"
+                    id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.verbosemakefile.eOV2"
+                    name="No (-DCMAKE_VERBOSE_MAKEFILE=0)">
+                </enumeratedOptionValue>
+            </option>
+            <option
+                category="org.yocto.cmake.managedbuilder.cmakeconfigure.category.options"
+                command="-Wdev"
+                id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.enabledevwarn"
+                isAbstract="false"
+                name="%cmakeconfigure.wdev"
+                resourceFilter="all"
+                valueType="boolean">
+            </option>
+            <option
+                category="org.yocto.cmake.managedbuilder.cmakeconfigure.category.options"
+                command="-Wno-dev"
+                id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.suppressdevwarn"
+                isAbstract="false"
+                name="%cmakeconfigure.wnodev"
+                resourceFilter="all"
+                valueType="boolean">
+            </option>
+            <option
+                category="org.yocto.cmake.managedbuilder.cmakeconfigure.category.options"
+                id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.otherflags"
+                isAbstract="false"
+                name="%cmakeconfigure.otherflags"
+                resourceFilter="all"
+                tip="e.g.: --warn-unused-vars --debug-output -DCMAKE_SOME_OPTION=something"
+                valueType="string">
+            </option>
+        </tool>
+    </extension>
 </plugin>
-- 
1.7.9.5


