Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50FF2E00B85; Thu, 22 May 2014 02:04:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.245.222.98 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 429 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 May 2014 02:03:56 PDT
Received: from linuxmail.bmw-carit.de (unknown [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88A3FE0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 02:03:56 -0700 (PDT)
Received: from localhost (unknown [10.242.2.10])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id A6A9D40043;
	Thu, 22 May 2014 09:13:46 +0200 (CEST)
From: Timo Mueller <timo.mueller@oss.bmw-carit.de>
To: yocto@yoctoproject.org
Date: Thu, 22 May 2014 10:56:46 +0200
Message-Id: <a6e139dcaa3985049e715b122b53f4cd36e81456.1400743176.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.9.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [eclipse][PATCH] plugins/cmake: Add sysroot specific include paths
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
X-List-Received-Date: Thu, 22 May 2014 09:04:02 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

CDT sets default include paths when a defined toolchain does not provide
include paths of its own. The default include paths point to the host
system which does not make sense for cross compiled projects.

Instead of using the default include paths we provide our own path that
points to the usr/include folder in the defined sysroot. Once this
custom include path is defined CDT does not add any additional include
paths.

[BUGFIX #5544]

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.cmake.managedbuilder/plugin.xml | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.cmake.managedbuilder/plugin.xml b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
index 7aa6671..431de6e 100644
--- a/plugins/org.yocto.cmake.managedbuilder/plugin.xml
+++ b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
@@ -178,9 +178,10 @@
                 name="%config.debug.name"
                 parent="cdt.managedbuild.config.gnu.base">
                 <toolChain
-                    id="org.yocto.cmake.managedbuilder.toolchain.gnu.exe.debug"
-                    superClass="org.yocto.cmake.managedbuilder.toolchain.gnu.exe"
-                    supportsManagedBuild="true">
+                      id="org.yocto.cmake.managedbuilder.toolchain.gnu.exe.debug"
+                      languageSettingsProviders="org.yocto.cmake.managedbuilder.includeProvider"
+                      superClass="org.yocto.cmake.managedbuilder.toolchain.gnu.exe"
+                      supportsManagedBuild="true">
                     <targetPlatform
                         id="org.yocto.cmake.managedbuilder.target.gnu.exe.debug"
                         isAbstract="false"
@@ -280,4 +281,16 @@
             projectType="org.yocto.sdk.ide.buildArtefact.cmake.exe">
         </template>
     </extension>
+    <extension
+          point="org.eclipse.cdt.core.LanguageSettingsProvider">
+       <provider
+             id="org.yocto.cmake.managedbuilder.includeProvider"
+             name="IncludeProvider"
+             prefer-non-shared="false">
+          <entry
+                kind="includePath"
+                name="${Sysroot}/usr/include">
+          </entry>
+       </provider>
+    </extension>
 </plugin>
-- 
1.9.0


