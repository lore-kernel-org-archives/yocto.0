Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9604AE0124D; Thu, 11 Aug 2016 16:30:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34FFCE01249
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 16:30:22 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 11 Aug 2016 16:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,507,1464678000"; d="scan'208";a="1012911405"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2016 16:30:21 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 16:31:06 -0700
Message-Id: <1470958271-28279-4-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][PATCH 3/8] add script to update java version; update all to JavaSE-1.8
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
X-List-Received-Date: Thu, 11 Aug 2016 23:30:23 -0000

[YOCTO #9562]

Minimum required java version for Neon is 1.8

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 .../org.yocto.bc.headless.build/build.properties   |  4 +-
 .../org.yocto.doc.headless.build/build.properties  |  4 +-
 .../org.yocto.sdk.headless.build/build.properties  |  4 +-
 .../build.properties                               |  4 +-
 plugins/org.yocto.bc.ui/.classpath                 |  2 +-
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |  2 +-
 plugins/org.yocto.cmake.managedbuilder/.classpath  |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |  6 +-
 .../META-INF/MANIFEST.MF                           |  5 +-
 plugins/org.yocto.doc.user/.classpath              |  2 +-
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF    |  2 +-
 plugins/org.yocto.remote.utils/.classpath          |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |  6 +-
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |  2 +-
 plugins/org.yocto.sdk.ide.doc.user/.classpath      |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |  6 +-
 .../META-INF/MANIFEST.MF                           |  2 +-
 plugins/org.yocto.sdk.ide/.classpath               |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |  6 +-
 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF     |  2 +-
 plugins/org.yocto.sdk.ide/build.properties         |  3 +-
 plugins/org.yocto.sdk.remotetools/.classpath       |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs           |  6 +-
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |  2 +-
 plugins/org.yocto.sdk.remotetools/build.properties |  3 +-
 scripts/change-java-version.sh                     | 94 ++++++++++++++++++++++
 26 files changed, 137 insertions(+), 40 deletions(-)
 create mode 100755 scripts/change-java-version.sh

diff --git a/features/org.yocto.bc.headless.build/build.properties b/features/org.yocto.bc.headless.build/build.properties
index 7c27054..20995d4 100644
--- a/features/org.yocto.bc.headless.build/build.properties
+++ b/features/org.yocto.bc.headless.build/build.properties
@@ -247,10 +247,10 @@ javacVerbose=true
 #compilerArg=
 
 # Default value for the version of the source code. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacSource in build.properties
-javacSource=1.7
+javacSource=1.8
 
 # Default value for the version of the byte code targeted. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacTarget in build.properties.
-javacTarget=1.7
+javacTarget=1.8
 
 #individualSourceBundles=true
 
diff --git a/features/org.yocto.doc.headless.build/build.properties b/features/org.yocto.doc.headless.build/build.properties
index 8ffd039..99d8322 100644
--- a/features/org.yocto.doc.headless.build/build.properties
+++ b/features/org.yocto.doc.headless.build/build.properties
@@ -247,10 +247,10 @@ javacVerbose=true
 #compilerArg=
 
 # Default value for the version of the source code. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacSource in build.properties
-javacSource=1.7
+javacSource=1.8
 
 # Default value for the version of the byte code targeted. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacTarget in build.properties.
-javacTarget=1.7
+javacTarget=1.8
 
 #individualSourceBundles=true
 
diff --git a/features/org.yocto.sdk.headless.build/build.properties b/features/org.yocto.sdk.headless.build/build.properties
index 1e8e6ca..4b64f41 100644
--- a/features/org.yocto.sdk.headless.build/build.properties
+++ b/features/org.yocto.sdk.headless.build/build.properties
@@ -247,10 +247,10 @@ javacVerbose=true
 #compilerArg=
 
 # Default value for the version of the source code. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacSource in build.properties
-javacSource=1.7
+javacSource=1.8
 
 # Default value for the version of the byte code targeted. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacTarget in build.properties.
-javacTarget=1.7
+javacTarget=1.8
 
 #individualSourceBundles=true
 
diff --git a/features/org.yocto.utils.headless.build/build.properties b/features/org.yocto.utils.headless.build/build.properties
index 9c3e516..f9bc94b 100644
--- a/features/org.yocto.utils.headless.build/build.properties
+++ b/features/org.yocto.utils.headless.build/build.properties
@@ -247,10 +247,10 @@ javacVerbose=true
 #compilerArg=
 
 # Default value for the version of the source code. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacSource in build.properties
-javacSource=1.7
+javacSource=1.8
 
 # Default value for the version of the byte code targeted. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacTarget in build.properties.
-javacTarget=1.7
+javacTarget=1.8
 
 #individualSourceBundles=true
 
diff --git a/plugins/org.yocto.bc.ui/.classpath b/plugins/org.yocto.bc.ui/.classpath
index 3bc2475..22f3064 100644
--- a/plugins/org.yocto.bc.ui/.classpath
+++ b/plugins/org.yocto.bc.ui/.classpath
@@ -1,7 +1,7 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
 	<classpathentry kind="src" path="src"/>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.8"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="output" path="bin"/>
 </classpath>
diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index 213d80f..7b725ca 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -3,7 +3,7 @@ Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.bc.ui;singleton:=true
 Bundle-Version: 1.4.1.qualifier
-Bundle-RequiredExecutionEnvironment: JavaSE-1.7
+Bundle-RequiredExecutionEnvironment: JavaSE-1.8
 Bundle-Activator: org.yocto.bc.ui.Activator
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.ui,
diff --git a/plugins/org.yocto.cmake.managedbuilder/.classpath b/plugins/org.yocto.cmake.managedbuilder/.classpath
index 098194c..eca7bdb 100644
--- a/plugins/org.yocto.cmake.managedbuilder/.classpath
+++ b/plugins/org.yocto.cmake.managedbuilder/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.8"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="src" path="src"/>
 	<classpathentry kind="output" path="bin"/>
diff --git a/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
index 56e2566..ce97b29 100644
--- a/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
+++ b/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
@@ -1,8 +1,8 @@
 #Wed Jul 14 11:43:59 CEST 2010
 eclipse.preferences.version=1
 org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
-org.eclipse.jdt.core.compiler.compliance=1.7
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.8
+org.eclipse.jdt.core.compiler.compliance=1.8
 org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
 org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
-org.eclipse.jdt.core.compiler.source=1.7
+org.eclipse.jdt.core.compiler.source=1.8
diff --git a/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF b/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
index fd1e3de..6a1193a 100644
--- a/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
@@ -12,5 +12,8 @@ Require-Bundle: org.eclipse.cdt.managedbuilder.core,
  org.eclipse.ui.console;bundle-version="3.5.0",
  org.eclipse.ui;bundle-version="3.6.2",
  org.yocto.sdk.ide
-Bundle-RequiredExecutionEnvironment: JavaSE-1.7
+Bundle-RequiredExecutionEnvironment: JavaSE-1.8
 Bundle-ActivationPolicy: lazy
+Export-Package: org.yocto.cmake.managedbuilder,
+ org.yocto.cmake.managedbuilder.job,
+ org.yocto.cmake.managedbuilder.util
diff --git a/plugins/org.yocto.doc.user/.classpath b/plugins/org.yocto.doc.user/.classpath
index 67e2a52..075009d 100644
--- a/plugins/org.yocto.doc.user/.classpath
+++ b/plugins/org.yocto.doc.user/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.8"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="output" path="bin"/>
 </classpath>
diff --git a/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
index c8cd638..f6833a0 100644
--- a/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
@@ -6,4 +6,4 @@ Bundle-Version: 1.4.1.qualifier
 Bundle-ClassPath: org.yocto.doc.user
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.help
-Bundle-RequiredExecutionEnvironment: JavaSE-1.7
+Bundle-RequiredExecutionEnvironment: JavaSE-1.8
diff --git a/plugins/org.yocto.remote.utils/.classpath b/plugins/org.yocto.remote.utils/.classpath
index 098194c..eca7bdb 100644
--- a/plugins/org.yocto.remote.utils/.classpath
+++ b/plugins/org.yocto.remote.utils/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.8"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="src" path="src"/>
 	<classpathentry kind="output" path="bin"/>
diff --git a/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
index f42de36..0c68a61 100644
--- a/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
+++ b/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
@@ -1,7 +1,7 @@
 eclipse.preferences.version=1
 org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
-org.eclipse.jdt.core.compiler.compliance=1.7
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.8
+org.eclipse.jdt.core.compiler.compliance=1.8
 org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
 org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
-org.eclipse.jdt.core.compiler.source=1.7
+org.eclipse.jdt.core.compiler.source=1.8
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index db9150c..f60cc96 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -11,7 +11,7 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.rse.subsystems.terminals.core;bundle-version="1.0.300";visibility:=reexport,
  org.eclipse.rse.ui
 Bundle-ActivationPolicy: lazy
-Bundle-RequiredExecutionEnvironment: JavaSE-1.7
+Bundle-RequiredExecutionEnvironment: JavaSE-1.8
 Import-Package: org.eclipse.core.internal.filesystem,
  org.eclipse.core.internal.resources,
  org.eclipse.core.resources,
diff --git a/plugins/org.yocto.sdk.ide.doc.user/.classpath b/plugins/org.yocto.sdk.ide.doc.user/.classpath
index 67e2a52..075009d 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/.classpath
+++ b/plugins/org.yocto.sdk.ide.doc.user/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.8"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="output" path="bin"/>
 </classpath>
diff --git a/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
index 1232d8e..65fc94b 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
+++ b/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
@@ -1,8 +1,8 @@
 #Fri Mar 04 13:59:33 CET 2011
 eclipse.preferences.version=1
 org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
-org.eclipse.jdt.core.compiler.compliance=1.7
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.8
+org.eclipse.jdt.core.compiler.compliance=1.8
 org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
 org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
-org.eclipse.jdt.core.compiler.source=1.7
+org.eclipse.jdt.core.compiler.source=1.8
diff --git a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
index 0215a52..d420c28 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
@@ -6,4 +6,4 @@ Bundle-Version: 1.4.1.qualifier
 Bundle-ClassPath: org.yocto.sdk.ide.doc.user
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.ui.cheatsheets
-Bundle-RequiredExecutionEnvironment: JavaSE-1.7
+Bundle-RequiredExecutionEnvironment: JavaSE-1.8
diff --git a/plugins/org.yocto.sdk.ide/.classpath b/plugins/org.yocto.sdk.ide/.classpath
index 098194c..eca7bdb 100644
--- a/plugins/org.yocto.sdk.ide/.classpath
+++ b/plugins/org.yocto.sdk.ide/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.8"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="src" path="src"/>
 	<classpathentry kind="output" path="bin"/>
diff --git a/plugins/org.yocto.sdk.ide/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.sdk.ide/.settings/org.eclipse.jdt.core.prefs
index e779f8b..efa0708 100644
--- a/plugins/org.yocto.sdk.ide/.settings/org.eclipse.jdt.core.prefs
+++ b/plugins/org.yocto.sdk.ide/.settings/org.eclipse.jdt.core.prefs
@@ -1,8 +1,8 @@
 #Mon May 03 15:24:21 PDT 2010
 eclipse.preferences.version=1
 org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
-org.eclipse.jdt.core.compiler.compliance=1.7
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.8
+org.eclipse.jdt.core.compiler.compliance=1.8
 org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
 org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
-org.eclipse.jdt.core.compiler.source=1.7
+org.eclipse.jdt.core.compiler.source=1.8
diff --git a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
index 92741e0..077ba87 100644
--- a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
@@ -26,7 +26,7 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.cdt.managedbuilder.ui;bundle-version="8.2.0",
  org.eclipse.core.expressions;bundle-version="3.4.500",
  org.eclipse.cdt.dsf.gdb;bundle-version="4.7.0"
-Bundle-RequiredExecutionEnvironment: JavaSE-1.7
+Bundle-RequiredExecutionEnvironment: JavaSE-1.8
 Bundle-ActivationPolicy: lazy
 Export-Package: org.yocto.sdk.ide,
  org.yocto.sdk.ide.natures,
diff --git a/plugins/org.yocto.sdk.ide/build.properties b/plugins/org.yocto.sdk.ide/build.properties
index e763a45..738398f 100644
--- a/plugins/org.yocto.sdk.ide/build.properties
+++ b/plugins/org.yocto.sdk.ide/build.properties
@@ -5,5 +5,4 @@ bin.includes = META-INF/,\
                plugin.xml,\
                templates/,\
                OSGI-INF/
-src.includes = templates/,\
-               OSGI-INF/
+src.includes = templates/
diff --git a/plugins/org.yocto.sdk.remotetools/.classpath b/plugins/org.yocto.sdk.remotetools/.classpath
index d95593a..f49769d 100644
--- a/plugins/org.yocto.sdk.remotetools/.classpath
+++ b/plugins/org.yocto.sdk.remotetools/.classpath
@@ -1,7 +1,7 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
 	<classpathentry kind="lib" path="lib/json-simple-1.1.1.jar"/>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.8"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="src" path="src"/>
 	<classpathentry kind="output" path="bin"/>
diff --git a/plugins/org.yocto.sdk.remotetools/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.sdk.remotetools/.settings/org.eclipse.jdt.core.prefs
index 120d493..cbe8361 100644
--- a/plugins/org.yocto.sdk.remotetools/.settings/org.eclipse.jdt.core.prefs
+++ b/plugins/org.yocto.sdk.remotetools/.settings/org.eclipse.jdt.core.prefs
@@ -1,8 +1,8 @@
 #Wed Aug 11 12:07:02 CST 2010
 eclipse.preferences.version=1
 org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
-org.eclipse.jdt.core.compiler.compliance=1.7
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.8
+org.eclipse.jdt.core.compiler.compliance=1.8
 org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
 org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
-org.eclipse.jdt.core.compiler.source=1.7
+org.eclipse.jdt.core.compiler.source=1.8
diff --git a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
index 48864ad..10e0975 100644
--- a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
@@ -11,7 +11,7 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.ui.console;bundle-version="3.5.100",
  org.eclipse.tracecompass.tmf.core;bundle-version="1.2.0"
 Bundle-ActivationPolicy: lazy
-Bundle-RequiredExecutionEnvironment: JavaSE-1.7
+Bundle-RequiredExecutionEnvironment: JavaSE-1.8
 Import-Package: org.eclipse.core.resources,
  org.eclipse.rse.internal.terminals.ui,
  org.eclipse.rse.internal.terminals.ui.views,
diff --git a/plugins/org.yocto.sdk.remotetools/build.properties b/plugins/org.yocto.sdk.remotetools/build.properties
index de68275..1d21e82 100644
--- a/plugins/org.yocto.sdk.remotetools/build.properties
+++ b/plugins/org.yocto.sdk.remotetools/build.properties
@@ -6,5 +6,6 @@ bin.includes = plugin.xml,\
                icons/,\
                OSGI-INF/l10n/bundle.properties,\
                lib/,\
-               lib/json-simple-1.1.1.jar
+               lib/json-simple-1.1.1.jar,\
+               OSGI-INF/
 src.includes = lib/
diff --git a/scripts/change-java-version.sh b/scripts/change-java-version.sh
new file mode 100755
index 0000000..ce7c975
--- /dev/null
+++ b/scripts/change-java-version.sh
@@ -0,0 +1,94 @@
+#!/bin/sh
+
+# Original: Marc Khouzam (Ericsson)
+# https://git.eclipse.org/r/#/c/73853/
+#
+# This script was used to update most of CDT's plugins from
+# java 7 to java 8.
+# The script recursively updated all plugins starting
+# at $root_dir from java version $old_ver to $new_ver
+# for changes required to go from java 7 to java 8.
+#
+# To re-use this script in the future for a new version of java,
+# please make sure its behaviour mimics Eclipse behavior of
+# "Update the classpath settings" in the Overview tab of manifest
+# file editor.
+
+old_ver=1\\.7 # Need to escape the . to avoid it matching any character
+new_ver=1.8
+java_name=JavaSE
+javac_source_name=javacSource
+javac_target_name=javacTarget
+
+root_dir=.
+
+classpath_file=.classpath
+manifest_file=MANIFEST.MF
+jdt_pref_file=org.eclipse.jdt.core.prefs
+jdt_pref1=org.eclipse.jdt.core.compiler.codegen.targetPlatform
+jdt_pref2=org.eclipse.jdt.core.compiler.compliance
+jdt_pref3=org.eclipse.jdt.core.compiler.source
+
+fix_classpath_file()
+{
+    find $root_dir -type f -name ${classpath_file} \
+        -exec sed -i s,${java_name}-${old_ver},${java_name}-${new_ver}, '{}' \;
+}
+
+fix_manifest_file()
+{
+    find $root_dir -type f -name ${manifest_file} \
+        -exec sed -i s,${java_name}-${old_ver},${java_name}-${new_ver}, '{}' \;
+}
+
+fix_jdt_prefs_file()
+{
+    find $root_dir -type f -name ${jdt_pref_file} \
+        -exec sed -i s,${jdt_pref1}=$old_ver,${jdt_pref1}=$new_ver, '{}' \;
+    find $root_dir -type f -name ${jdt_pref_file} \
+        -exec sed -i s,${jdt_pref2}=$old_ver,${jdt_pref2}=$new_ver, '{}' \;
+    find $root_dir -type f -name ${jdt_pref_file} \
+        -exec sed -i s,${jdt_pref3}=$old_ver,${jdt_pref3}=$new_ver, '{}' \;
+}
+
+launch_file=StandaloneTests.launch
+fix_standalone_debugger_test_launch()
+{
+    find $root_dir -type f -name ${launch_file} \
+        -exec sed -i s,${java_name}-${old_ver},${java_name}-${new_ver}, '{}' \;
+}
+
+pom_file=pom.xml
+fix_pom()
+{
+    find $root_dir -type f -name ${pom_file} \
+        -exec sed -i s,sonar.java.source\>${old_ver},sonar.java.source\>${new_ver}, '{}' \;
+    find $root_dir -type f -name ${pom_file} \
+        -exec sed -i s,targetJdk\>${old_ver},targetJdk\>${new_ver}, '{}' \;
+}
+
+build_properties=build.properties
+fix_build_properties()
+{
+    find $root_dir -type f -name ${build_properties} \
+        -exec sed -i s,${javac_source_name}=${old_ver},${javac_source_name}=${new_ver}, '{}' \;
+    find $root_dir -type f -name ${build_properties} \
+        -exec sed -i s,${javac_target_name}=${old_ver},${javac_target_name}=${new_ver}, '{}' \;
+}
+
+old_ver_remaining_log=/tmp/remaingOldStrings.log
+grep_for_remaining_old_version_string()
+{
+    echo "Please CHECK the file\n   ${old_ver_remaining_log}\nfor any remaining instances"\
+         "of ${old_ver} below directory:\n   $root_dir\nto make sure they were not forgotten."
+    grep -r ${old_ver} ${root_dir} | grep -v "/target/" | grep -v "Binary file" | grep -vF .log | grep -v "Generated by javadoc" > ${old_ver_remaining_log}
+    echo "Please also CHECK that all changes made are correct before committing"
+}
+
+fix_classpath_file
+fix_manifest_file
+fix_jdt_prefs_file
+fix_standalone_debugger_test_launch
+fix_pom
+fix_build_properties
+grep_for_remaining_old_version_string
-- 
2.7.4


