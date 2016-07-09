Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31E2BE00D9B; Sat,  9 Jul 2016 11:28:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AAF5E00D98
	for <yocto@yoctoproject.org>; Sat,  9 Jul 2016 11:28:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2016 11:28:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,337,1464678000"; d="scan'208";a="992033582"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 09 Jul 2016 11:28:47 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  9 Jul 2016 11:29:03 -0700
Message-Id: <1468088943-27081-4-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1468088943-27081-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1468088943-27081-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][mars][PATCH 3/3] Cleanup - drop all references to ADT and HOB
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
X-List-Received-Date: Sat, 09 Jul 2016 18:28:50 -0000

- minimum Java 1.7 for Mars
- bump all plugins/features to 1.4.1 release
- update copyright year
- cheatsheet -> /opt/poky/2.1

[YOCTO #7820]
[YOCTO #9561]

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 features/org.yocto.bc.headless.build/build.properties    |  4 ++--
 features/org.yocto.bc/feature.properties                 |  2 +-
 features/org.yocto.doc.headless.build/build.properties   |  4 ++--
 features/org.yocto.doc/feature.properties                |  2 +-
 features/org.yocto.doc/feature.xml                       |  2 +-
 features/org.yocto.sdk.headless.build/build.properties   |  4 ++--
 features/org.yocto.sdk.headless.build/customTargets.xml  |  2 +-
 features/org.yocto.sdk.site/category.xml                 |  6 +++---
 features/org.yocto.sdk.site/site.xml                     |  6 +++---
 features/org.yocto.sdk/build.properties                  |  3 +--
 features/org.yocto.sdk/feature.properties                |  4 ++--
 features/org.yocto.sdk/feature.xml                       |  4 ++--
 .../sourceTemplateFeature/feature.properties             |  6 +++---
 .../org.yocto.sdk/sourceTemplatePlugin/plugin.properties |  6 +++---
 features/org.yocto.utils.headless.build/build.properties |  4 ++--
 features/org.yocto.utils/feature.properties              |  4 ++--
 features/org.yocto.utils/feature.xml                     |  2 +-
 plugins/org.yocto.bc.ui/.classpath                       |  2 +-
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF             |  3 ++-
 .../src/org/yocto/bc/ui/actions/LaunchToasterDialog.java |  2 +-
 .../src/org/yocto/bc/ui/builder/BitbakeBuilder.java      |  2 +-
 .../org/yocto/bc/ui/builder/BitbakeCommanderNature.java  |  6 +++---
 plugins/org.yocto.cmake.managedbuilder/.classpath        |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs                 |  6 +++---
 .../org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF  |  4 ++--
 .../OSGI-INF/l10n/bundle.properties                      |  4 +++-
 plugins/org.yocto.doc.user/.classpath                    |  2 +-
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF          |  4 ++--
 plugins/org.yocto.remote.utils/.classpath                |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs                 |  6 +++---
 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF      |  2 +-
 plugins/org.yocto.sdk.ide.doc.user/.classpath            |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs                 |  6 +++---
 plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF  |  4 ++--
 .../cheatsheets/createNewHelloWorldProject.xml           | 12 ++++++------
 plugins/org.yocto.sdk.ide/.classpath                     |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs                 |  6 +++---
 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF           |  2 +-
 .../org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties    |  4 ++--
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java           |  6 +++---
 .../src/org/yocto/sdk/ide/YoctoSDKMessages.properties    | 16 ++++++++--------
 .../src/org/yocto/sdk/ide/YoctoSDKPlugin.java            |  4 ++--
 .../org/yocto/sdk/ide/preferences/LoggerConstants.java   |  6 +++---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java       |  2 +-
 plugins/org.yocto.sdk.remotetools/.classpath             |  2 +-
 .../.settings/org.eclipse.jdt.core.prefs                 |  6 +++---
 plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF   |  4 ++--
 plugins/org.yocto.sdk.remotetools/plugin.xml             |  2 +-
 48 files changed, 100 insertions(+), 98 deletions(-)

diff --git a/features/org.yocto.bc.headless.build/build.properties b/features/org.yocto.bc.headless.build/build.properties
index 9d9a9cc..7c27054 100644
--- a/features/org.yocto.bc.headless.build/build.properties
+++ b/features/org.yocto.bc.headless.build/build.properties
@@ -247,10 +247,10 @@ javacVerbose=true
 #compilerArg=
 
 # Default value for the version of the source code. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacSource in build.properties
-javacSource=1.6
+javacSource=1.7
 
 # Default value for the version of the byte code targeted. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacTarget in build.properties.
-javacTarget=1.6
+javacTarget=1.7
 
 #individualSourceBundles=true
 
diff --git a/features/org.yocto.bc/feature.properties b/features/org.yocto.bc/feature.properties
index 6c81b46..972c399 100644
--- a/features/org.yocto.bc/feature.properties
+++ b/features/org.yocto.bc/feature.properties
@@ -1,5 +1,5 @@
 ###############################################################################
-# Copyright (c) 2010 Intel, Inc. and others.
+# Copyright (c) 2010, 2016 Intel, Inc. and others.
 # All rights reserved. This program and the accompanying materials
 # are made available under the terms of the Eclipse Public License v1.0
 # which accompanies this distribution, and is available at
diff --git a/features/org.yocto.doc.headless.build/build.properties b/features/org.yocto.doc.headless.build/build.properties
index 6a857f8..8ffd039 100644
--- a/features/org.yocto.doc.headless.build/build.properties
+++ b/features/org.yocto.doc.headless.build/build.properties
@@ -247,10 +247,10 @@ javacVerbose=true
 #compilerArg=
 
 # Default value for the version of the source code. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacSource in build.properties
-javacSource=1.6
+javacSource=1.7
 
 # Default value for the version of the byte code targeted. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacTarget in build.properties.
-javacTarget=1.6
+javacTarget=1.7
 
 #individualSourceBundles=true
 
diff --git a/features/org.yocto.doc/feature.properties b/features/org.yocto.doc/feature.properties
index 46883e8..4c87a24 100644
--- a/features/org.yocto.doc/feature.properties
+++ b/features/org.yocto.doc/feature.properties
@@ -1,5 +1,5 @@
 ###############################################################################
-# Copyright (c) 2010 Intel, Inc. and others.
+# Copyright (c) 2010, 2016 Intel, Inc. and others.
 # All rights reserved. This program and the accompanying materials
 # are made available under the terms of the Eclipse Public License v1.0
 # which accompanies this distribution, and is available at
diff --git a/features/org.yocto.doc/feature.xml b/features/org.yocto.doc/feature.xml
index ed8687e..52b07c9 100644
--- a/features/org.yocto.doc/feature.xml
+++ b/features/org.yocto.doc/feature.xml
@@ -2,7 +2,7 @@
 <feature
       id="org.yocto.doc"
       label="%featureName"
-      version="1.4.0.qualifier"
+      version="1.4.1.qualifier"
       provider-name="%providerName">
 
    <description>
diff --git a/features/org.yocto.sdk.headless.build/build.properties b/features/org.yocto.sdk.headless.build/build.properties
index 5a9b637..1e8e6ca 100644
--- a/features/org.yocto.sdk.headless.build/build.properties
+++ b/features/org.yocto.sdk.headless.build/build.properties
@@ -247,10 +247,10 @@ javacVerbose=true
 #compilerArg=
 
 # Default value for the version of the source code. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacSource in build.properties
-javacSource=1.6
+javacSource=1.7
 
 # Default value for the version of the byte code targeted. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacTarget in build.properties.
-javacTarget=1.6
+javacTarget=1.7
 
 #individualSourceBundles=true
 
diff --git a/features/org.yocto.sdk.headless.build/customTargets.xml b/features/org.yocto.sdk.headless.build/customTargets.xml
index f92454a..5f9e860 100644
--- a/features/org.yocto.sdk.headless.build/customTargets.xml
+++ b/features/org.yocto.sdk.headless.build/customTargets.xml
@@ -177,7 +177,7 @@
 		<property file="${buildDirectory}/finalFeaturesVersions.properties" />
 		<copy file="${otherSrcDirectory}/features/org.yocto.sdk.site/site.xml" todir="${buildDirectory}" />
 		<replace file="${buildDirectory}/site.xml">
-			<replacefilter token="@ADTGenVersion@" value="${org.yocto.sdk}"/>
+			<replacefilter token="@SDKGenVersion@" value="${org.yocto.sdk}"/>
 		</replace>
 		<zip destfile="${buildDirectory}/${buildLabel}/org.yocto.sdk-${buildId}-group.group.group.zip" update="true">
 			<zipfileset dir="${buildDirectory}">
diff --git a/features/org.yocto.sdk.site/category.xml b/features/org.yocto.sdk.site/category.xml
index dfc6b06..f98fc4e 100644
--- a/features/org.yocto.sdk.site/category.xml
+++ b/features/org.yocto.sdk.site/category.xml
@@ -1,10 +1,10 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <site>
    <feature url="features/org.yocto.sdk_@featureVersion@.jar" id="org.yocto.sdk" version="@featureVersion@">
-      <category name="Yocto Project ADT"/>
+      <category name="Yocto Project SDK"/>
    </feature>
    <feature url="features/org.yocto.sdk.source_@featureVersion@.jar" id="org.yocto.sdk.source" version="@featureVersion@">
-      <category name="Yocto Project ADT"/>
+      <category name="Yocto Project SDK"/>
    </feature>
    <feature url="features/org.yocto.bc_@bcfeatureVersion@.jar" id="org.yocto.bc" version="@bcfeatureVersion@">
       <category name="Yocto Project Bitbake Commander"/>
@@ -12,7 +12,7 @@
    <feature url="features/org.yocto.doc_@docFeatureVersion@.jar" id="org.yocto.doc" version="@docFeatureVersion@">
       <category name="Yocto Project Documentation"/>
    </feature>
-   <category-def name="Yocto Project ADT" label="Yocto Project ADT Plug-in"/>
+   <category-def name="Yocto Project SDK" label="Yocto Project SDK Plug-in"/>
    <category-def name="Yocto Project Bitbake Commander" label="Yocto Project Bitbake Commander Plug-in"/>
    <category-def name="Yocto Project Documentation" label="Yocto Project Documentation plug-in"/>
    <repository-reference location="http://download.eclipse.org/tm/updates/4.0/" enabled="true" />
diff --git a/features/org.yocto.sdk.site/site.xml b/features/org.yocto.sdk.site/site.xml
index a087084..b0507b0 100644
--- a/features/org.yocto.sdk.site/site.xml
+++ b/features/org.yocto.sdk.site/site.xml
@@ -3,10 +3,10 @@
    <description name="Yocto Project update site" url="http://yoctoproject.org/downloads/eclipse-plugin/">
       Yocto Project update site
    </description>
-   <feature url="features/org.yocto.sdk_@ADTGenVersion@.jar" id="org.yocto.sdk" version="@ADTGenVersion@">
-      <category name="Yocto Project ADT"/>
+   <feature url="features/org.yocto.sdk_@SDKGenVersion@.jar" id="org.yocto.sdk" version="@SDKGenVersion@">
+      <category name="Yocto Project SDK"/>
    </feature>
-   <category-def name="Yocto Project ADT" label="Yocto Project ADT plug-in"/>
+   <category-def name="Yocto Project SDK" label="Yocto Project SDK plug-in"/>
    <feature url="features/org.yocto.bc_@bcGenVersion@.jar" id="org.yocto.bc" version="@bcGenVersion@">
       <category name="Yocto Project Bitbake Commander"/>
    </feature>
diff --git a/features/org.yocto.sdk/build.properties b/features/org.yocto.sdk/build.properties
index 5d8f888..efef74e 100644
--- a/features/org.yocto.sdk/build.properties
+++ b/features/org.yocto.sdk/build.properties
@@ -1,7 +1,6 @@
 bin.includes = feature.xml,\
                license.html,\
-               feature.properties, \
-               p2.inf
+               feature.properties
                
 generate.feature@org.yocto.sdk.source=org.yocto.sdk
 
diff --git a/features/org.yocto.sdk/feature.properties b/features/org.yocto.sdk/feature.properties
index bd34b67..2144305 100644
--- a/features/org.yocto.sdk/feature.properties
+++ b/features/org.yocto.sdk/feature.properties
@@ -1,5 +1,5 @@
 ###############################################################################
-# Copyright (c) 2010 Intel, Inc. and others.
+# Copyright (c) 2010, 2016 Intel, Inc. and others.
 # All rights reserved. This program and the accompanying materials
 # are made available under the terms of the Eclipse Public License v1.0
 # which accompanies this distribution, and is available at
@@ -10,7 +10,7 @@
 ###############################################################################
 
 # "featureName" property - name of the feature
-featureName=Yocto Project ADT Plug-in
+featureName=Yocto Project SDK Plug-in
 
 # "providerName" property - name of the company that provides the feature
 providerName=yoctoproject.org 
diff --git a/features/org.yocto.sdk/feature.xml b/features/org.yocto.sdk/feature.xml
index 98aa403..9ab19af 100644
--- a/features/org.yocto.sdk/feature.xml
+++ b/features/org.yocto.sdk/feature.xml
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <!--
-    Copyright (c) 2011 Intel, Inc. and others.
+    Copyright (c) 2011, 2016 Intel, Inc. and others.
     All rights reserved. This program and the accompanying materials
     are made available under the terms of the Eclipse Public License v1.0
     which accompanies this distribution, and is available at
@@ -69,7 +69,7 @@
       <import plugin="org.eclipse.core.filesystem"/>
       <import feature="org.eclipse.rse" version="3.7.0" match="greaterOrEqual"/>
       <import feature="org.eclipse.tm.terminal.control.feature" version="4.0.0" match="greaterOrEqual"/>
-      <import feature="org.eclipse.rse.terminals" version="3.8.0.201505221634" match="greaterOrEqual"/>
+      <import feature="org.eclipse.rse.terminals" version="3.7.0" match="greaterOrEqual"/>
    </requires>
 
    <plugin
diff --git a/features/org.yocto.sdk/sourceTemplateFeature/feature.properties b/features/org.yocto.sdk/sourceTemplateFeature/feature.properties
index f0519b3..ba1b949 100644
--- a/features/org.yocto.sdk/sourceTemplateFeature/feature.properties
+++ b/features/org.yocto.sdk/sourceTemplateFeature/feature.properties
@@ -1,5 +1,5 @@
 ###############################################################################
-# Copyright (c) 2011 Intel, Inc. and others.
+# Copyright (c) 2011, 2016 Intel, Inc. and others.
 # All rights reserved. This program and the accompanying materials
 # are made available under the terms of the Eclipse Public License v1.0
 # which accompanies this distribution, and is available at
@@ -10,7 +10,7 @@
 ###############################################################################
 
 # "featureName" property - name of the feature
-featureName=Yocto Project ADT Plug-in - Source
+featureName=Yocto Project SDK Plug-in - Source
 
 # "providerName" property - name of the company that provides the feature
 providerName=yoctoproject.org 
@@ -24,7 +24,7 @@ Eclipse plug-ins for developing embedded applications using Yocto Project
 
 # copyright
 copyright=\
-Copyright (c) 2011 Intel, Inc. and others. \
+Copyright (c) 2011, 2016 Intel, Inc. and others. \
 All rights reserved. This program and the accompanying materials \
 are made available under the terms of the Eclipse Public License v1.0 \
 which accompanies this distribution, and is available at \
diff --git a/features/org.yocto.sdk/sourceTemplatePlugin/plugin.properties b/features/org.yocto.sdk/sourceTemplatePlugin/plugin.properties
index 91baf99..448e022 100644
--- a/features/org.yocto.sdk/sourceTemplatePlugin/plugin.properties
+++ b/features/org.yocto.sdk/sourceTemplatePlugin/plugin.properties
@@ -1,5 +1,5 @@
 ###############################################################################
-# Copyright (c) 2011 Intel, Inc. and others.
+# Copyright (c) 2011, 2016 Intel, Inc. and others.
 # All rights reserved. This program and the accompanying materials
 # are made available under the terms of the Eclipse Public License v1.0
 # which accompanies this distribution, and is available at
@@ -10,7 +10,7 @@
 ###############################################################################
 
 # "featureName" property - name of the feature
-pluginName=Yocto Project ADT Plug-in - Source
+pluginName=Yocto Project SDK Plug-in - Source
 
 # "providerName" property - name of the company that provides the feature
 providerName=yoctoproject.org 
@@ -24,7 +24,7 @@ Eclipse plug-ins for developing embedded applications using Yocto Project
 
 # copyright
 copyright=\
-Copyright (c) 2011 Intel, Inc. and others. \
+Copyright (c) 2011, 2016 Intel, Inc. and others. \
 All rights reserved. This program and the accompanying materials \
 are made available under the terms of the Eclipse Public License v1.0 \
 which accompanies this distribution, and is available at \
diff --git a/features/org.yocto.utils.headless.build/build.properties b/features/org.yocto.utils.headless.build/build.properties
index 6043293..9c3e516 100644
--- a/features/org.yocto.utils.headless.build/build.properties
+++ b/features/org.yocto.utils.headless.build/build.properties
@@ -247,10 +247,10 @@ javacVerbose=true
 #compilerArg=
 
 # Default value for the version of the source code. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacSource in build.properties
-javacSource=1.6
+javacSource=1.7
 
 # Default value for the version of the byte code targeted. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacTarget in build.properties.
-javacTarget=1.6
+javacTarget=1.7
 
 #individualSourceBundles=true
 
diff --git a/features/org.yocto.utils/feature.properties b/features/org.yocto.utils/feature.properties
index 41b365b..941958a 100644
--- a/features/org.yocto.utils/feature.properties
+++ b/features/org.yocto.utils/feature.properties
@@ -1,5 +1,5 @@
 ###############################################################################
-# Copyright (c) 2013 Intel, Inc. and others.
+# Copyright (c) 2013, 2016 Intel, Inc. and others.
 # All rights reserved. This program and the accompanying materials
 # are made available under the terms of the Eclipse Public License v1.0
 # which accompanies this distribution, and is available at
@@ -24,7 +24,7 @@ Eclipse plug-in for common utils for Yocto Project plug-ins
 
 # copyright
 copyright=\
-Copyright (c) 2013 Intel, Inc. and others. \
+Copyright (c) 2013, 2016 Intel, Inc. and others. \
 All rights reserved. This program and the accompanying materials \
 are made available under the terms of the Eclipse Public License v1.0 \
 which accompanies this distribution, and is available at \
diff --git a/features/org.yocto.utils/feature.xml b/features/org.yocto.utils/feature.xml
index 2306a3a..f4e9d89 100644
--- a/features/org.yocto.utils/feature.xml
+++ b/features/org.yocto.utils/feature.xml
@@ -2,7 +2,7 @@
 <feature
       id="org.yocto.utils"
       label="%featureName"
-      version="1.4.0.qualifier"
+      version="1.4.1.qualifier"
       provider-name="%providerName">
 
    <description>
diff --git a/plugins/org.yocto.bc.ui/.classpath b/plugins/org.yocto.bc.ui/.classpath
index 121e527..3bc2475 100644
--- a/plugins/org.yocto.bc.ui/.classpath
+++ b/plugins/org.yocto.bc.ui/.classpath
@@ -1,7 +1,7 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
 	<classpathentry kind="src" path="src"/>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="output" path="bin"/>
 </classpath>
diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index cc99243..4922f30 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -2,7 +2,8 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.bc.ui;singleton:=true
-Bundle-Version: 1.4.0.qualifier
+Bundle-Version: 1.4.1.qualifier
+Bundle-RequiredExecutionEnvironment: JavaSE-1.7
 Bundle-Activator: org.yocto.bc.ui.Activator
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.ui,
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchToasterDialog.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchToasterDialog.java
index c418d50..124ae39 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchToasterDialog.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchToasterDialog.java
@@ -128,7 +128,7 @@ public class LaunchToasterDialog extends Dialog {
 			{
 				for (int i = 0; i < buildSpec.length; i++) {
 					ICommand cmd = buildSpec[i];
-					if (cmd.getBuilderName().equalsIgnoreCase(BitbakeBuilder.HOB_BUILD_ID))
+					if (cmd.getBuilderName().equalsIgnoreCase(BitbakeBuilder.TOASTER_BUILD_ID))
 					{
 						Map<String, String> args = cmd.getArguments();
 						if ((args != null) && !args.isEmpty())
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeBuilder.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeBuilder.java
index 3705d9b..aead213 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeBuilder.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeBuilder.java
@@ -92,7 +92,7 @@ public class BitbakeBuilder extends IncrementalProjectBuilder {
 	}
 */
 	public static final String BUILDER_ID = "org.yocto.bc.ui.builder.BitbakeBuilder";
-	public static final String HOB_BUILD_ID = "org.yocto.bc.ui.builder.HOB";
+	public static final String TOASTER_BUILD_ID = "org.yocto.bc.ui.builder.TOASTER";
 																 
 	private static final String MARKER_TYPE = "org.yocto.bc.ui.xmlProblem";
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java
index 25f7894..300d00e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java
@@ -34,19 +34,19 @@ public class BitbakeCommanderNature implements IProjectNature {
 	public static final String BUILD_DIR_KEY = "org.yocto.bc.ui.builder.BitbakeCommander.BuildDir";
 	private IProject project;
 
-	public static void launchHob(IProject project, String buildDir) {
+	public static void launchToaster(IProject project, String buildDir) {
 		try {
 			ILaunchManager lManager = DebugPlugin.getDefault().getLaunchManager();
 			ILaunchConfigurationType configType = 
 				lManager.getLaunchConfigurationType("org.eclipse.ui.externaltools.ProgramLaunchConfigurationType");
-			ILaunchConfigurationWorkingCopy w_copy = configType.newInstance(null, "hob");
+			ILaunchConfigurationWorkingCopy w_copy = configType.newInstance(null, "toaster");
 			ArrayList<String> listValue = new ArrayList<String>();
 			listValue.add(new String("org.eclipse.ui.externaltools.launchGroup"));
 			w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);		
 			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_LOCATION", "/usr/bin/xterm");
 
 			String init_script = project.getLocationURI().getPath() + "/oe-init-build-env ";
-			String argument = "-e \"source " + init_script + buildDir + ";hob";// + ";bash\"";
+			String argument = "-e \"source " + init_script + buildDir + ";toaster";// + ";bash\"";
 
 			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS", argument);
 			w_copy.launch(ILaunchManager.RUN_MODE, null);
diff --git a/plugins/org.yocto.cmake.managedbuilder/.classpath b/plugins/org.yocto.cmake.managedbuilder/.classpath
index ad32c83..098194c 100644
--- a/plugins/org.yocto.cmake.managedbuilder/.classpath
+++ b/plugins/org.yocto.cmake.managedbuilder/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="src" path="src"/>
 	<classpathentry kind="output" path="bin"/>
diff --git a/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
index c1a4ce9..56e2566 100644
--- a/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
+++ b/plugins/org.yocto.cmake.managedbuilder/.settings/org.eclipse.jdt.core.prefs
@@ -1,8 +1,8 @@
 #Wed Jul 14 11:43:59 CEST 2010
 eclipse.preferences.version=1
 org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
-org.eclipse.jdt.core.compiler.compliance=1.6
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
+org.eclipse.jdt.core.compiler.compliance=1.7
 org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
 org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
-org.eclipse.jdt.core.compiler.source=1.6
+org.eclipse.jdt.core.compiler.source=1.7
diff --git a/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF b/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
index 2ed5451..fd1e3de 100644
--- a/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.cmake.managedbuilder/META-INF/MANIFEST.MF
@@ -2,7 +2,7 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.cmake.managedbuilder;singleton:=true
-Bundle-Version: 1.4.0.qualifier
+Bundle-Version: 1.4.1.qualifier
 Bundle-Activator: org.yocto.cmake.managedbuilder.Activator
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.cdt.managedbuilder.core,
@@ -12,5 +12,5 @@ Require-Bundle: org.eclipse.cdt.managedbuilder.core,
  org.eclipse.ui.console;bundle-version="3.5.0",
  org.eclipse.ui;bundle-version="3.6.2",
  org.yocto.sdk.ide
-Bundle-RequiredExecutionEnvironment: JavaSE-1.6
+Bundle-RequiredExecutionEnvironment: JavaSE-1.7
 Bundle-ActivationPolicy: lazy
diff --git a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
index b2c067f..ed3219a 100644
--- a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
@@ -1,5 +1,6 @@
 #/*******************************************************************************
 # * Copyright (c) 2013 BMW Car IT GmbH.
+# * Copyright (c) 2016 Intel Corporation
 # * All rights reserved. This program and the accompanying materials
 # * are made available under the terms of the Eclipse Public License v1.0
 # * which accompanies this distribution, and is available at
@@ -7,13 +8,14 @@
 # *
 # * Contributors:
 # * BMW Car IT - initial implementation
+# * Intel Corporation - ADT -> SDK
 # *******************************************************************************/
 
 Bundle-Vendor = yoctoproject.org
 Bundle-Name = Yocto CMake Plugin
 
 # Artefact type
-yocto.cmake.artefactType=Yocto Project ADT CMake Project
+yocto.cmake.artefactType=Yocto Project SDK CMake Project
 
 # Extension name
 extension.name=Yocto CMake Managed Builder
diff --git a/plugins/org.yocto.doc.user/.classpath b/plugins/org.yocto.doc.user/.classpath
index bc74aab..67e2a52 100644
--- a/plugins/org.yocto.doc.user/.classpath
+++ b/plugins/org.yocto.doc.user/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="output" path="bin"/>
 </classpath>
diff --git a/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
index 2bf5123..c8cd638 100644
--- a/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
@@ -2,8 +2,8 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.doc.user;singleton:=true
-Bundle-Version: 1.4.0.qualifier
+Bundle-Version: 1.4.1.qualifier
 Bundle-ClassPath: org.yocto.doc.user
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.help
-Bundle-RequiredExecutionEnvironment: JavaSE-1.6
+Bundle-RequiredExecutionEnvironment: JavaSE-1.7
diff --git a/plugins/org.yocto.remote.utils/.classpath b/plugins/org.yocto.remote.utils/.classpath
index ad32c83..098194c 100644
--- a/plugins/org.yocto.remote.utils/.classpath
+++ b/plugins/org.yocto.remote.utils/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="src" path="src"/>
 	<classpathentry kind="output" path="bin"/>
diff --git a/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
index c537b63..f42de36 100644
--- a/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
+++ b/plugins/org.yocto.remote.utils/.settings/org.eclipse.jdt.core.prefs
@@ -1,7 +1,7 @@
 eclipse.preferences.version=1
 org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
-org.eclipse.jdt.core.compiler.compliance=1.6
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
+org.eclipse.jdt.core.compiler.compliance=1.7
 org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
 org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
-org.eclipse.jdt.core.compiler.source=1.6
+org.eclipse.jdt.core.compiler.source=1.7
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index 1bea6dd..db9150c 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -2,7 +2,7 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: Utils
 Bundle-SymbolicName: org.yocto.remote.utils
-Bundle-Version: 1.4.0.qualifier
+Bundle-Version: 1.4.1.qualifier
 Bundle-Activator: org.yocto.remote.utils.Activator
 Require-Bundle: org.eclipse.ui,
  org.eclipse.core.runtime,
diff --git a/plugins/org.yocto.sdk.ide.doc.user/.classpath b/plugins/org.yocto.sdk.ide.doc.user/.classpath
index bc74aab..67e2a52 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/.classpath
+++ b/plugins/org.yocto.sdk.ide.doc.user/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="output" path="bin"/>
 </classpath>
diff --git a/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
index f90fa9c..1232d8e 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
+++ b/plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
@@ -1,8 +1,8 @@
 #Fri Mar 04 13:59:33 CET 2011
 eclipse.preferences.version=1
 org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
-org.eclipse.jdt.core.compiler.compliance=1.6
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
+org.eclipse.jdt.core.compiler.compliance=1.7
 org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
 org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
-org.eclipse.jdt.core.compiler.source=1.6
+org.eclipse.jdt.core.compiler.source=1.7
diff --git a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
index 3432990..0215a52 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
@@ -2,8 +2,8 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.sdk.ide.doc.user;singleton:=true
-Bundle-Version: 1.4.0.qualifier
+Bundle-Version: 1.4.1.qualifier
 Bundle-ClassPath: org.yocto.sdk.ide.doc.user
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.ui.cheatsheets
-Bundle-RequiredExecutionEnvironment: JavaSE-1.6
+Bundle-RequiredExecutionEnvironment: JavaSE-1.7
diff --git a/plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNewHelloWorldProject.xml b/plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNewHelloWorldProject.xml
index 310dce6..0786411 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNewHelloWorldProject.xml
+++ b/plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNewHelloWorldProject.xml
@@ -39,10 +39,10 @@
 		</description>
 		<subitem>
 			<description>
-			The global settings can be modified in the <b>Yocto Project ADT</b>
+			The global settings can be modified in the <b>Yocto Project SDK</b>
 			section of the eclipse preferences. Select <b>Window</b> &gt;
 			<b>Preferences</b> from the menu bar and then select the section
-			<b>Yocto Project ADT</b>. These settings are the default ones for
+			<b>Yocto Project SDK</b>. These settings are the default ones for
 			every project you create in the workspace.
 			</description>
 			<command
@@ -59,7 +59,7 @@
 		<subitem>
 			<description>
 			Provide a <b>Toolchain Root Location</b> (e.g.
-			/opt/poky/1.3 or some other location on the filesystem).
+			/opt/poky/2.1 or some other location on the filesystem).
 			</description>
 		</subitem>
 		<subitem>
@@ -105,7 +105,7 @@
 	</item>
 	<item title="Create a Hello World Autotools Project">
 		<description>
-			Create a Yocto Project ADT Project &quot;Hello World ANSI C Autotools
+			Create a Yocto Project SDK Project &quot;Hello World ANSI C Autotools
 			Project&quot; or &quot;Hello World C++ Autotools Project&quot;
 			by using the appropriate Project wizard.
 		</description>
@@ -135,7 +135,7 @@
 			<subitem when="C++">
 				<description>
 					Enter <b>HelloWorld</b> as the project name, then select
-					<b>Yocto Project ADT Project</b> &gt;
+					<b>Yocto Project SDK Project</b> &gt;
 					<b>Hello World C++ Autotools Project</b> from the Project type
 					list and click <b>Next</b>.
 				</description>
@@ -143,7 +143,7 @@
 			<subitem when="C">
 				<description>
 					Enter <b>HelloWorld</b> as the project name, then select
-					<b>Yocto Project ADT Project</b> &gt;
+					<b>Yocto Project SDK Project</b> &gt;
 					<b>Hello World ANSI C Autotools Project</b> from the Project type
 					list and click <b>Next</b>.
 				</description>
diff --git a/plugins/org.yocto.sdk.ide/.classpath b/plugins/org.yocto.sdk.ide/.classpath
index ad32c83..098194c 100644
--- a/plugins/org.yocto.sdk.ide/.classpath
+++ b/plugins/org.yocto.sdk.ide/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="src" path="src"/>
 	<classpathentry kind="output" path="bin"/>
diff --git a/plugins/org.yocto.sdk.ide/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.sdk.ide/.settings/org.eclipse.jdt.core.prefs
index 6745823..e779f8b 100644
--- a/plugins/org.yocto.sdk.ide/.settings/org.eclipse.jdt.core.prefs
+++ b/plugins/org.yocto.sdk.ide/.settings/org.eclipse.jdt.core.prefs
@@ -1,8 +1,8 @@
 #Mon May 03 15:24:21 PDT 2010
 eclipse.preferences.version=1
 org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
-org.eclipse.jdt.core.compiler.compliance=1.6
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
+org.eclipse.jdt.core.compiler.compliance=1.7
 org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
 org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
-org.eclipse.jdt.core.compiler.source=1.6
+org.eclipse.jdt.core.compiler.source=1.7
diff --git a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
index 4a0599f..b0972ba 100644
--- a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
@@ -27,7 +27,7 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.cdt.managedbuilder.ui;bundle-version="8.2.0",
  org.eclipse.core.expressions;bundle-version="3.4.500",
  org.eclipse.cdt.dsf.gdb;bundle-version="4.7.0"
-Bundle-RequiredExecutionEnvironment: JavaSE-1.6
+Bundle-RequiredExecutionEnvironment: JavaSE-1.7
 Bundle-ActivationPolicy: lazy
 Export-Package: org.yocto.sdk.ide,
  org.yocto.sdk.ide.natures,
diff --git a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
index 2031154..a2f7602 100644
--- a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
@@ -1,5 +1,5 @@
 #Properties file for org.Yocto.sdk.ide
-page.name.0 = Yocto Project ADT
+page.name.0 = Yocto Project SDK
 extension.name.0 = YoctoSDKNature
 extension.name.1 = YoctoSDKAutotoolsNature
 extension.name.2 = YoctoSDKCMakeNature
@@ -10,7 +10,7 @@ command.targetProfileSwitch.name = Change Target Profile
 command.targetProfileSwitch.label = Target Profiles
 command.targetProfileSwitch.description = Changes the target profile of a selected project
 command.targetProfileSwitch.parameter.name = Selected Target Profile
-projectType.name.0 = Yocto Project ADT Autotools Project
+projectType.name.0 = Yocto Project SDK Autotools Project
 projectProperties.label.0 = Yocto Project Settings
 Bundle-Vendor = yoctoproject.org
 Bundle-Name = Yocto Plugin IDE
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
index 714470b..8e48852 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
@@ -49,8 +49,8 @@ public class YoctoSDKChecker {
 				"Poky.Qemu.Kernel.Empty", true),
 		QEMU_KERNEL_NONEXIST(
 				"Poky.Qemu.Kernel.Nonexist", true),
-		WRONG_ADT_VERSION(
-				"Poky.ADT.Sysroot.Wrongversion", false),
+		WRONG_SDK_VERSION(
+				"Poky.SDK.Sysroot.Wrongversion", false),
 		ENV_SETUP_SCRIPT_NONEXIST(
 				"Poky.Env.Script.Nonexist", false),
 		TOOLCHAIN_NO_SYSROOT(
@@ -211,7 +211,7 @@ public class YoctoSDKChecker {
 					}
 
 					if (!bVersion)
-						return SDKCheckResults.WRONG_ADT_VERSION;
+						return SDKCheckResults.WRONG_SDK_VERSION;
 				}
 			} catch (IOException e) {
 				e.printStackTrace();
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index e3f3308..6b51cf1 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -1,5 +1,5 @@
 /*******************************************************************************
- * Copyright (c) 2010 Intel Corporation.
+ * Copyright (c) 2010, 2016 Intel Corporation.
  * All rights reserved. This program and the accompanying materials
  * are made available under the terms of the Eclipse Public License v1.0
  * which accompanies this distribution, and is available at
@@ -9,7 +9,7 @@
  * Intel - initial API and implementation
  * BMW Car IT - added keys for target profiles
  *******************************************************************************/
-Wizard.SDK.Warning.Title = Invalid Yocto Project ADT Location
+Wizard.SDK.Warning.Title = Invalid Yocto Project SDK Location
 Wizard.SDK.Error.ProjectName = Project name "{0}" is invalid! \nNone of these characters are accepted inside project names: whitespaces, {1}
 
 Poky.SDK.Location.Empty = Specified Toolchain Root Location is empty.
@@ -28,8 +28,8 @@ Poky.Qemu.Kernel.Empty =  Specified QEMU kernel location is emtpy.
 Poky.Qemu.Kernel.Empty.Advice = You need specify QEMU kernel image file Location before building any project.
 Poky.Qemu.Kernel.Nonexist = Specified QEMU kernel image file does not exist.
 Poky.Qemu.Kernel.Empty.Advice = You need specify a valid QEMU kernel image file before building any project.
-Poky.ADT.Sysroot.Wrongversion = The ADT version you're using is too old.
-Poky.ADT.Sysroot.Wrongversion.Advice = OECORE related items are not found in environment setup files.\nPlease upgrade to our latest ADT Version!
+Poky.SDK.Sysroot.Wrongversion = The SDK version you're using is too old.
+Poky.SDK.Sysroot.Wrongversion.Advice = OECORE related items are not found in environment setup files.\nPlease upgrade to our latest SDK Version!
 Poky.Env.Script.Nonexist = Specified toolchain directory does not contain a toolchain generated with "bitbake meta-ide-support".
 Poky.Env.Script.Nonexist.Advice = Please run "bitbake meta-ide-support" to build the toolchain.
 Poky.Toolchain.No.Sysroot = Specified Toolchain Root Location does not contain a sysroot directory.
@@ -37,7 +37,7 @@ Poky.Toolchain.No.Sysroot.Advice = Please install a valid toolchain sysroot.
 Poky.Toolchain.Host.Mismatch = Toolchain and host arch mismatch.
 Poky.Toolchain.Host.Mismatch.Advice = Make sure you use 32bit toolchain for 32bit host and same for 64bit machines!
 
-Default.Advice = \nDo IDE-wide settings from Window > Preferences > Yocto Project ADT\nOr do Project-wide settings from Project > Change Yocto Project Settings.
+Default.Advice = \nDo IDE-wide settings from Window > Preferences > Yocto Project SDK\nOr do Project-wide settings from Project > Change Yocto Project Settings.
 Poky.SDK.Revalidation.Message = Please apply the changes to revalidate.
 
 Poky.SDK.Error.Origin.Wizard = Yocto Wizard Configuration Error:
@@ -45,7 +45,7 @@ Poky.SDK.Error.Origin.Menu = Yocto Menu Configuration Error:
 Poky.SDK.Error.Origin.Preferences = Yocto Preferences Configuration Error:
 Poky.SDK.Error.Origin.Other = Yocto Configuration Error:
 
-Menu.SDK.Console.Configure.Message    = The Yocto Project ADT has been successfully set up for this project.\nTo see the environment variables created during setup,\ngo to Project > Properties > C/C++ Build > Environment. 
+Menu.SDK.Console.Configure.Message    = The Yocto Project SDK has been successfully set up for this project.\nTo see the environment variables created during setup,\ngo to Project > Properties > C/C++ Build > Environment. 
 Menu.SDK.Console.Deploy.Action.Message   = \nDeploying {0} to {1} ...\n
 Menu.SDK.Console.Deploy.Extract.Message   = \nExtracting {0} into {1} ...\n
 Menu.SDK.Console.Deploy.Success.Message   = \nThe project {0} has been successfully deployed to {1}\n
@@ -63,8 +63,8 @@ Menu.Undeploy.Message  = Please specify a directory:
 
 Preferences.Yocto.Config.Name = Preferences: 
 Preferences.SDK.Target.name = Target Preferences:
-Preferences.SDK.Informing.Title   = Yocto Project ADT has been successfully set up. 
-Preferences.SDK.Informing.Message = You might need to reconfigure your existing Yocto Project Autotools Projects to use the Yocto Project ADT. Do this from Project > Reconfigure Project!
+Preferences.SDK.Informing.Title   = Yocto Project SDK has been successfully set up. 
+Preferences.SDK.Informing.Message = You might need to reconfigure your existing Yocto Project Autotools Projects to use the Yocto Project SDK. Do this from Project > Reconfigure Project!
 
 Preferences.Profile.Validator.InvalidName.Comma = Warning: The profile name cannot contain a comma (,).
 Preferences.Profile.Validator.InvalidName.Quote = Warning: The profile name cannot contain a double quote (\").
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKPlugin.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKPlugin.java
index 184e451..c43b2fa 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKPlugin.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKPlugin.java
@@ -52,7 +52,7 @@ public class YoctoSDKPlugin extends AbstractUIPlugin {
 	public void start(BundleContext context) throws Exception {
 		super.start(context);
 		plugin = this;
-		logger = YoctoSDKUtils.registerLogger(LoggerConstants.ADT_LOGGER_NAME, LoggerConstants.ADT_LOG_FILE) ;
+		logger = YoctoSDKUtils.registerLogger(LoggerConstants.SDK_LOGGER_NAME, LoggerConstants.SDK_LOG_FILE) ;
 	}
 
 	/*
@@ -62,7 +62,7 @@ public class YoctoSDKPlugin extends AbstractUIPlugin {
 	public void stop(BundleContext context) throws Exception {
 		plugin = null;
 		super.stop(context);
-		YoctoSDKUtils.unRegisterLogger(logger, LoggerConstants.ADT_LOG_FILE) ;
+		YoctoSDKUtils.unRegisterLogger(logger, LoggerConstants.SDK_LOG_FILE) ;
 	}
 
 	/**
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/LoggerConstants.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/LoggerConstants.java
index 8258106..0ebeadc 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/LoggerConstants.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/LoggerConstants.java
@@ -2,7 +2,7 @@ package org.yocto.sdk.ide.preferences;
 
 public class LoggerConstants {
 
-		public static final String ADT_LOGGER_NAME = "adt_logger";
+		public static final String SDK_LOGGER_NAME = "sdk_logger";
 
 		public static final String BC_LOGGER_NAME = "bc_logger";
 
@@ -10,7 +10,7 @@ public class LoggerConstants {
 
 		public static final String RU_LOGGER_NAME = "ru_logger";
 
-		public static final String ADT_LOG_FILE =  "adt.log";
+		public static final String SDK_LOG_FILE =  "sdk.log";
 
 		public static final String BC_LOG_FILE =  "bitbake_commander.log";
 
@@ -18,7 +18,7 @@ public class LoggerConstants {
 
 		public static final String RU_LOG_FILE =  "remote_utils.log";
 
-		public static final String ENV_LOG_FILE = "ENABLE_ADT_LOGS";
+		public static final String ENV_LOG_FILE = "ENABLE_SDK_LOGS";
 
 		public static final int LOG_SIZE = 50000000;
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index 5fe74a5..d49281e 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -496,7 +496,7 @@ public class YoctoSDKUtils {
 				e.printStackTrace();
 			}
 		} else {
-			System.out.println("Logging is not enabled. Set ENABLE_ADT_LOGS=1 environment variable to enable the logger") ;
+			System.out.println("Logging is not enabled. Set ENABLE_SDK_LOGS=1 environment variable to enable the logger") ;
 		}
 		return logger ;
 	}
diff --git a/plugins/org.yocto.sdk.remotetools/.classpath b/plugins/org.yocto.sdk.remotetools/.classpath
index da264cc..d95593a 100644
--- a/plugins/org.yocto.sdk.remotetools/.classpath
+++ b/plugins/org.yocto.sdk.remotetools/.classpath
@@ -1,7 +1,7 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
 	<classpathentry kind="lib" path="lib/json-simple-1.1.1.jar"/>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="src" path="src"/>
 	<classpathentry kind="output" path="bin"/>
diff --git a/plugins/org.yocto.sdk.remotetools/.settings/org.eclipse.jdt.core.prefs b/plugins/org.yocto.sdk.remotetools/.settings/org.eclipse.jdt.core.prefs
index 9b2f22e..120d493 100644
--- a/plugins/org.yocto.sdk.remotetools/.settings/org.eclipse.jdt.core.prefs
+++ b/plugins/org.yocto.sdk.remotetools/.settings/org.eclipse.jdt.core.prefs
@@ -1,8 +1,8 @@
 #Wed Aug 11 12:07:02 CST 2010
 eclipse.preferences.version=1
 org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode=enabled
-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
-org.eclipse.jdt.core.compiler.compliance=1.6
+org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
+org.eclipse.jdt.core.compiler.compliance=1.7
 org.eclipse.jdt.core.compiler.problem.assertIdentifier=error
 org.eclipse.jdt.core.compiler.problem.enumIdentifier=error
-org.eclipse.jdt.core.compiler.source=1.6
+org.eclipse.jdt.core.compiler.source=1.7
diff --git a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
index e26cb45..48864ad 100644
--- a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
@@ -2,7 +2,7 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.sdk.remotetools; singleton:=true
-Bundle-Version: 1.4.0.qualifier
+Bundle-Version: 1.4.1.qualifier
 Bundle-Activator: org.yocto.sdk.remotetools.Activator
 Require-Bundle: org.eclipse.ui,
  org.eclipse.core.runtime,
@@ -11,7 +11,7 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.ui.console;bundle-version="3.5.100",
  org.eclipse.tracecompass.tmf.core;bundle-version="1.2.0"
 Bundle-ActivationPolicy: lazy
-Bundle-RequiredExecutionEnvironment: JavaSE-1.6
+Bundle-RequiredExecutionEnvironment: JavaSE-1.7
 Import-Package: org.eclipse.core.resources,
  org.eclipse.rse.internal.terminals.ui,
  org.eclipse.rse.internal.terminals.ui.views,
diff --git a/plugins/org.yocto.sdk.remotetools/plugin.xml b/plugins/org.yocto.sdk.remotetools/plugin.xml
index 3361729..41f3f1b 100644
--- a/plugins/org.yocto.sdk.remotetools/plugin.xml
+++ b/plugins/org.yocto.sdk.remotetools/plugin.xml
@@ -81,7 +81,7 @@
             locationURI="menu:org.eclipse.ui.main.menu?after=additions">
          <menu
                id="runYoctoTools"
-               label="&amp;YoctoProjectTools">    
+               label="&amp;Yocto Project Tools">    
          </menu>
       </menuContribution>
       <menuContribution
-- 
2.7.4


