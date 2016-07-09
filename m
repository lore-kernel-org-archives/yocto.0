Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A953E00DA2; Sat,  9 Jul 2016 11:28:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA867E00D08
	for <yocto@yoctoproject.org>; Sat,  9 Jul 2016 11:28:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2016 11:28:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,337,1464678000"; d="scan'208";a="992033574"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 09 Jul 2016 11:28:44 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  9 Jul 2016 11:29:02 -0700
Message-Id: <1468088943-27081-3-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1468088943-27081-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1468088943-27081-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][mars][PATCH 2/3] org.yocto.sdk.site: add TM 4.0 Updates site to category.xml
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
X-List-Received-Date: Sat, 09 Jul 2016 18:28:46 -0000

This makes it possible for the user to simply download
Eclipse for C/C++ Developers and then install the plugin,
without having to manually add any additional (e.g, rse.terminals)
update sites that would not be available in a default Eclipse
installation.

[YOCTO #9105]

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 features/org.yocto.sdk.site/category.xml            | 1 +
 features/org.yocto.sdk/build.properties             | 3 ++-
 features/org.yocto.sdk/feature.xml                  | 2 +-
 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF | 3 +--
 plugins/org.yocto.remote.utils/build.properties     | 2 +-
 5 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/features/org.yocto.sdk.site/category.xml b/features/org.yocto.sdk.site/category.xml
index 4dd0178..dfc6b06 100644
--- a/features/org.yocto.sdk.site/category.xml
+++ b/features/org.yocto.sdk.site/category.xml
@@ -15,4 +15,5 @@
    <category-def name="Yocto Project ADT" label="Yocto Project ADT Plug-in"/>
    <category-def name="Yocto Project Bitbake Commander" label="Yocto Project Bitbake Commander Plug-in"/>
    <category-def name="Yocto Project Documentation" label="Yocto Project Documentation plug-in"/>
+   <repository-reference location="http://download.eclipse.org/tm/updates/4.0/" enabled="true" />
 </site>
diff --git a/features/org.yocto.sdk/build.properties b/features/org.yocto.sdk/build.properties
index efef74e..5d8f888 100644
--- a/features/org.yocto.sdk/build.properties
+++ b/features/org.yocto.sdk/build.properties
@@ -1,6 +1,7 @@
 bin.includes = feature.xml,\
                license.html,\
-               feature.properties
+               feature.properties, \
+               p2.inf
                
 generate.feature@org.yocto.sdk.source=org.yocto.sdk
 
diff --git a/features/org.yocto.sdk/feature.xml b/features/org.yocto.sdk/feature.xml
index 04f000d..98aa403 100644
--- a/features/org.yocto.sdk/feature.xml
+++ b/features/org.yocto.sdk/feature.xml
@@ -69,7 +69,7 @@
       <import plugin="org.eclipse.core.filesystem"/>
       <import feature="org.eclipse.rse" version="3.7.0" match="greaterOrEqual"/>
       <import feature="org.eclipse.tm.terminal.control.feature" version="4.0.0" match="greaterOrEqual"/>
-      <import feature="org.eclipse.rse.terminals" version="3.7.0" match="greaterOrEqual"/>
+      <import feature="org.eclipse.rse.terminals" version="3.8.0.201505221634" match="greaterOrEqual"/>
    </requires>
 
    <plugin
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index 250d5d6..1bea6dd 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -9,8 +9,7 @@ Require-Bundle: org.eclipse.ui,
  org.yocto.sdk.ide;bundle-version="1.4.1",
  org.eclipse.rse.core;bundle-version="3.3.100",
  org.eclipse.rse.subsystems.terminals.core;bundle-version="1.0.300";visibility:=reexport,
- org.eclipse.rse.ui,
- org.eclipse.rse.terminals.ui;bundle-version="1.3.0";visibility:=reexport
+ org.eclipse.rse.ui
 Bundle-ActivationPolicy: lazy
 Bundle-RequiredExecutionEnvironment: JavaSE-1.7
 Import-Package: org.eclipse.core.internal.filesystem,
diff --git a/plugins/org.yocto.remote.utils/build.properties b/plugins/org.yocto.remote.utils/build.properties
index c3d44a1..990eb12 100644
--- a/plugins/org.yocto.remote.utils/build.properties
+++ b/plugins/org.yocto.remote.utils/build.properties
@@ -1,5 +1,5 @@
 source.. = src/
 output.. = bin/
 bin.includes = META-INF/,\
-				resources/,\
+               resources/,\
                .
-- 
2.7.4


