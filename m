Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A604CE00D08; Sat,  9 Jul 2016 11:28:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30E81E00D08
	for <yocto@yoctoproject.org>; Sat,  9 Jul 2016 11:28:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2016 11:28:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,337,1464678000"; d="scan'208";a="992033572"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 09 Jul 2016 11:28:43 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  9 Jul 2016 11:29:01 -0700
Message-Id: <1468088943-27081-2-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1468088943-27081-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1468088943-27081-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][mars][PATCH 1/3] Update to Mars.2 and new TM 4.0 sites
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
X-List-Received-Date: Sat, 09 Jul 2016 18:28:43 -0000

- Bump org.yocto.sdk feature version to 1.4.1
- Update org.yocto.sdk feature copyright year.
- Update org.yocto.bc feature copyright year.
- download rse.terminals (deprecated) from TM_SITE
- add TM TERMINAL (replacement for RSE.TERMINALS)
- re-export the packages from rse.terminals

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 features/org.yocto.bc/feature.properties           |  2 +-
 features/org.yocto.bc/feature.xml                  |  2 +-
 features/org.yocto.sdk/feature.properties          |  2 +-
 features/org.yocto.sdk/feature.xml                 |  7 ++--
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |  9 +++--
 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF     |  2 +-
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |  7 ++--
 scripts/setup.sh                                   | 42 +++++++++++++++-------
 8 files changed, 45 insertions(+), 28 deletions(-)

diff --git a/features/org.yocto.bc/feature.properties b/features/org.yocto.bc/feature.properties
index 71cd52d..6c81b46 100644
--- a/features/org.yocto.bc/feature.properties
+++ b/features/org.yocto.bc/feature.properties
@@ -24,7 +24,7 @@ Eclipse plug-in for developing bitbake commander project using Yocto Project
 
 # copyright
 copyright=\
-Copyright (c) 2012 Intel, Inc. and others. \
+Copyright (c) 2012, 2016 Intel, Inc. and others. \
 All rights reserved. This program and the accompanying materials \
 are made available under the terms of the Eclipse Public License v1.0 \
 which accompanies this distribution, and is available at \
diff --git a/features/org.yocto.bc/feature.xml b/features/org.yocto.bc/feature.xml
index dc31a18..cae953f 100644
--- a/features/org.yocto.bc/feature.xml
+++ b/features/org.yocto.bc/feature.xml
@@ -2,7 +2,7 @@
 <feature
       id="org.yocto.bc"
       label="%featureName"
-      version="1.4.0.qualifier"
+      version="1.4.1.qualifier"
       provider-name="%providerName">
 
    <description>
diff --git a/features/org.yocto.sdk/feature.properties b/features/org.yocto.sdk/feature.properties
index 1a2175d..bd34b67 100644
--- a/features/org.yocto.sdk/feature.properties
+++ b/features/org.yocto.sdk/feature.properties
@@ -24,7 +24,7 @@ Eclipse plug-ins for developing embedded applications using Yocto Project
 
 # copyright
 copyright=\
-Copyright (c) 2010 Intel, Inc. and others. \
+Copyright (c) 2010, 2016 Intel, Inc. and others. \
 All rights reserved. This program and the accompanying materials \
 are made available under the terms of the Eclipse Public License v1.0 \
 which accompanies this distribution, and is available at \
diff --git a/features/org.yocto.sdk/feature.xml b/features/org.yocto.sdk/feature.xml
index 5d8c51b..04f000d 100644
--- a/features/org.yocto.sdk/feature.xml
+++ b/features/org.yocto.sdk/feature.xml
@@ -13,7 +13,7 @@
 <feature
       id="org.yocto.sdk"
       label="%featureName"
-      version="1.4.0.qualifier"
+      version="1.4.1.qualifier"
       provider-name="%providerName">
 
    <description>
@@ -60,8 +60,6 @@
       <import plugin="org.eclipse.rse.files.ui" version="3.1.1" match="greaterOrEqual"/>
       <import plugin="org.eclipse.rse.subsystems.shells.core" version="3.1.0" match="greaterOrEqual"/>
       <import plugin="org.eclipse.cdt.launch.remote" version="2.2.0" match="greaterOrEqual"/>
-      <import plugin="org.eclipse.tm.terminal" version="3.0.1" match="greaterOrEqual"/>
-      <import plugin="org.eclipse.rse.terminals.ui" version="1.0.100" match="greaterOrEqual"/>
       <import plugin="org.eclipse.debug.ui"/>
       <import plugin="org.eclipse.ui.forms"/>
       <import plugin="org.eclipse.jface.text"/>
@@ -69,6 +67,9 @@
       <import plugin="org.eclipse.ui.ide"/>
       <import plugin="org.eclipse.ui.console"/>
       <import plugin="org.eclipse.core.filesystem"/>
+      <import feature="org.eclipse.rse" version="3.7.0" match="greaterOrEqual"/>
+      <import feature="org.eclipse.tm.terminal.control.feature" version="4.0.0" match="greaterOrEqual"/>
+      <import feature="org.eclipse.rse.terminals" version="3.7.0" match="greaterOrEqual"/>
    </requires>
 
    <plugin
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index 796df0e..250d5d6 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -6,9 +6,13 @@ Bundle-Version: 1.4.0.qualifier
 Bundle-Activator: org.yocto.remote.utils.Activator
 Require-Bundle: org.eclipse.ui,
  org.eclipse.core.runtime,
- org.yocto.sdk.ide;bundle-version="1.4.0"
+ org.yocto.sdk.ide;bundle-version="1.4.1",
+ org.eclipse.rse.core;bundle-version="3.3.100",
+ org.eclipse.rse.subsystems.terminals.core;bundle-version="1.0.300";visibility:=reexport,
+ org.eclipse.rse.ui,
+ org.eclipse.rse.terminals.ui;bundle-version="1.3.0";visibility:=reexport
 Bundle-ActivationPolicy: lazy
-Bundle-RequiredExecutionEnvironment: JavaSE-1.6
+Bundle-RequiredExecutionEnvironment: JavaSE-1.7
 Import-Package: org.eclipse.core.internal.filesystem,
  org.eclipse.core.internal.resources,
  org.eclipse.core.resources,
@@ -33,7 +37,6 @@ Import-Package: org.eclipse.core.internal.filesystem,
  org.eclipse.rse.subsystems.terminals.core,
  org.eclipse.rse.subsystems.terminals.core.elements,
  org.eclipse.rse.ui,
- org.eclipse.rse.ui.model,
  org.eclipse.tm.internal.terminal.control,
  org.eclipse.tm.internal.terminal.provisional.api,
  org.eclipse.ui.console
diff --git a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
index de8c789..4a0599f 100644
--- a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
@@ -2,7 +2,7 @@ Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.sdk.ide;singleton:=true
-Bundle-Version: 1.4.0.qualifier
+Bundle-Version: 1.4.1.qualifier
 Bundle-Activator: org.yocto.sdk.ide.YoctoSDKPlugin
 Bundle-Vendor: %Bundle-Vendor
 Require-Bundle: org.eclipse.ui,
diff --git a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
index acc5dfe..e26cb45 100644
--- a/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.remotetools/META-INF/MANIFEST.MF
@@ -8,17 +8,14 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.core.runtime,
  org.eclipse.rse.core;bundle-version="3.0.0",
  org.yocto.sdk.ide,
- org.eclipse.cdt;bundle-version="7.0.0",
- org.eclipse.ui.ide;bundle-version="3.8.0",
- org.eclipse.ui.console;bundle-version="3.5.100"
+ org.eclipse.ui.console;bundle-version="3.5.100",
+ org.eclipse.tracecompass.tmf.core;bundle-version="1.2.0"
 Bundle-ActivationPolicy: lazy
 Bundle-RequiredExecutionEnvironment: JavaSE-1.6
 Import-Package: org.eclipse.core.resources,
- org.eclipse.debug.internal.ui,
  org.eclipse.rse.internal.terminals.ui,
  org.eclipse.rse.internal.terminals.ui.views,
  org.eclipse.rse.services.terminals,
- org.eclipse.rse.shells.ui,
  org.eclipse.rse.subsystems.terminals.core,
  org.eclipse.rse.subsystems.terminals.core.elements,
  org.eclipse.rse.ui,
diff --git a/scripts/setup.sh b/scripts/setup.sh
index 914d929..8b2ccd6 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -69,12 +69,12 @@ fi
 
 # prepare the base Eclipse installation in folder "eclipse"
 ep_rel="R-"
-ep_ver="4.5"
-ep_date="-201506032000"
+ep_ver="4.5.2"
+ep_date="-201602121500"
 P2_disabled=false
 P2_no_dropins=false
 
-if [ ! -f eclipse/plugins/org.eclipse.swt_3.103.1.v20140903-1938.jar ]; then
+if [ ! -f eclipse/plugins/org.eclipse.swt_3.104.2.v20160212-1350.jar ]; then
 
   pushd .
 
@@ -224,8 +224,10 @@ if [[ "$1" = "--upstream" ]]
 then
         MAIN_SITE="http://download.eclipse.org/releases/mars"
         DEPRECATED_SITE="http://download.eclipse.org/releases/luna"
+        TM_SITE="http://download.eclipse.org/tm/updates/4.0/GA"
 else
         MAIN_SITE="http://downloads.yoctoproject.org/eclipse/mars/"
+        TM_SITE="http://downloads.yoctoproject.org/tm/updates/4.0/"
         DEPRECATED_SITE="http://downloads.yoctoproject.org/eclipse/luna/ftp.osuosl.org/pub/eclipse/releases/luna"
 fi
 
@@ -234,25 +236,39 @@ UPDATE_SITE="http://download.eclipse.org/eclipse/updates/4.5"
 
 #CDT related
 echo -e "\nPlease wait. Installing CDT.SDK.FEATURE.GROUP"
-CDTFEAT="8.7.0"
+CDTFEAT="8.8.1"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.sdk.feature.group ${CDTFEAT}
 
 echo -e "\nPlease wait. Installing CDT.LAUNCH.REMOTE.FEATURE.GROUP"
-CDTREMOTEVER="8.7.0"
+CDTREMOTEVER="8.8.1"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.launch.remote.feature.group ${CDTREMOTEVER}
 
-#RSE
-echo -e "\nPlease wait. Installing RSE.FEATURE.GROUP"
-RSEVER="3.7.0"
-update_feature_remote ${MAIN_SITE} org.eclipse.rse.feature.group ${RSEVER}
+#TM Terminal (was RSE) related
+echo -e "\nPlease wait. Installing TM.TERMINAL.FEATURE.FEATURE.GROUP"
+TMTERMVER="4.0.0"
+update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.feature.feature.group ${TMTERMVER}
 
-#echo -e "\nPlease wait. Installing RSE.TERMINALS.FEATURE.GROUP"
-TMVER="1.2.0"
-update_feature_remote ${DEPRECATED_SITE} org.eclipse.rse.terminals.feature.group ${TMVER}
+echo -e "\nPlease wait. Installing TM.TERMINAL.VIEW.RSE.FEATURE.GROUP"
+TMTERMVIEWRSEVER="4.0.0"
+update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.view.rse.feature.feature.group ${TMTERMVIEWRSEVER}
+
+echo -e "\nPlease wait. Installing TM.TERMINAL.CONTROL.FEATURE.GROUP"
+TMCONTROLVER="4.0.0"
+update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.control.feature.feature.group ${TMCONTROLVER}
+
+#RSE_SDK
+echo -e "\nPlease wait. Installing RSE.SDK.FEATURE.GROUP"
+RSESDKVER="3.7.0"
+update_feature_remote ${TM_SITE} org.eclipse.rse.sdk.feature.group ${RSESDKVER}
+
+#RSE_TERMINALS
+echo -e "\nPlease wait. Installing RSE.TERMINALS.FEATURE.GROUP"
+RSETERMVER="3.8.0"
+update_feature_remote ${TM_SITE} org.eclipse.rse.terminals.feature.group ${RSETERMVER}
 
 #AUTOTOOLS
 echo -e "\nPlease wait. Installing AUTOTOOLS.FEATURE.GROUP"
-ATVER="8.7.0"
+ATVER="8.8.1"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.autotools.feature.group ${ATVER}
 
 #Lttng2 
-- 
2.7.4


