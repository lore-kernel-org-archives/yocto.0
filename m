Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0D49E01248; Thu, 11 Aug 2016 16:30:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10692E0103E
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 16:30:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 11 Aug 2016 16:30:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,507,1464678000"; d="scan'208";a="1012911348"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2016 16:30:18 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 16:31:04 -0700
Message-Id: <1470958271-28279-2-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][PATCH 1/8] Update to Neon (4.6.0) release
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
X-List-Received-Date: Thu, 11 Aug 2016 23:30:20 -0000

[YOCTO #9907]

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 scripts/build.sh |  2 +-
 scripts/setup.sh | 36 +++++++++++++++++++-----------------
 2 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/scripts/build.sh b/scripts/build.sh
index cc696e7..4cbb273 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -1,6 +1,6 @@
 #!/bin/bash
 
-#setup Yocto Eclipse plug-in build environment for Mars
+#setup Yocto Eclipse plug-in build environment for Neon
 #comment out the following line if you wish to use your own http proxy settings
 #export http_proxy=http://proxy.yourproxyinfo.com:8080
 
diff --git a/scripts/setup.sh b/scripts/setup.sh
index 233309f..30f4463 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -1,6 +1,6 @@
 #!/bin/bash
 
-#setup Yocto Eclipse plug-in build environment for Mars
+#setup Yocto Eclipse plug-in build environment for Neon
 #comment out the following line if you wish to use your own http proxy settings
 #export http_proxy=http://proxy.yourproxyinfo.com:8080
 
@@ -69,12 +69,12 @@ fi
 
 # prepare the base Eclipse installation in folder "eclipse"
 ep_rel="R-"
-ep_ver="4.5.2"
-ep_date="-201602121500"
+ep_ver="4.6"
+ep_date="-201606061100"
 P2_disabled=false
 P2_no_dropins=false
 
-if [ ! -f eclipse/plugins/org.eclipse.swt_3.104.2.v20160212-1350.jar ]; then
+if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.0.v20160603-0902.jar ]; then
 
   pushd .
 
@@ -222,38 +222,40 @@ update_feature_remote()
 #Main Site
 if [[ "$1" = "--upstream" ]]
 then
-        MAIN_SITE="http://download.eclipse.org/releases/mars"
-        DEPRECATED_SITE="http://download.eclipse.org/releases/luna"
+        MAIN_SITE="http://download.eclipse.org/releases/neon"
+        DEPRECATED_SITE="http://download.eclipse.org/releases/mars"
         TM_SITE="http://download.eclipse.org/tm/updates/4.0/GA"
+        TM_TERMINAL_SITE="http://download.eclipse.org/tm/terminal/marketplace"
 else
         MAIN_SITE="http://downloads.yoctoproject.org/eclipse/mars/"
-        TM_SITE="http://downloads.yoctoproject.org/eclipse/tm/updates/4.0/"
         DEPRECATED_SITE="http://downloads.yoctoproject.org/eclipse/luna/ftp.osuosl.org/pub/eclipse/releases/luna"
+        TM_SITE="http://downloads.yoctoproject.org/eclipse/tm/updates/4.0/"
+        TM_TERMINAL_SITE="http://downloads.yoctoproject.org/eclipse/tm/terminal/marketplace"
 fi
 
 #Update Site - always use updates from upstream
-UPDATE_SITE="http://download.eclipse.org/eclipse/updates/4.5"
+UPDATE_SITE="http://download.eclipse.org/eclipse/updates/4.6"
 
 #CDT related
 echo -e "\nPlease wait. Installing CDT.SDK.FEATURE.GROUP"
-CDTFEAT="8.8.1"
+CDTFEAT="9.0.0"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.sdk.feature.group ${CDTFEAT}
 
 echo -e "\nPlease wait. Installing CDT.LAUNCH.REMOTE.FEATURE.GROUP"
-CDTREMOTEVER="8.8.1"
+CDTREMOTEVER="9.0.0"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.launch.remote.feature.group ${CDTREMOTEVER}
 
 #TM Terminal (was RSE) related
 echo -e "\nPlease wait. Installing TM.TERMINAL.FEATURE.FEATURE.GROUP"
-TMTERMVER="4.0.0"
-update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.feature.feature.group ${TMTERMVER}
+TMTERMVER="4.1.0"
+update_feature_remote ${TM_TERMINAL_SITE} org.eclipse.tm.terminal.feature.feature.group ${TMTERMVER}
 
 echo -e "\nPlease wait. Installing TM.TERMINAL.VIEW.RSE.FEATURE.GROUP"
-TMTERMVIEWRSEVER="4.0.0"
-update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.view.rse.feature.feature.group ${TMTERMVIEWRSEVER}
+TMTERMVIEWRSEVER="4.1.0"
+update_feature_remote ${TM_TERMINAL_SITE} org.eclipse.tm.terminal.view.rse.feature.feature.group ${TMTERMVIEWRSEVER}
 
 echo -e "\nPlease wait. Installing TM.TERMINAL.CONTROL.FEATURE.GROUP"
-TMCONTROLVER="4.0.0"
+TMCONTROLVER="4.1.0"
 update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.control.feature.feature.group ${TMCONTROLVER}
 
 #RSE_SDK
@@ -268,10 +270,10 @@ update_feature_remote ${TM_SITE} org.eclipse.rse.terminals.feature.group ${RSETE
 
 #AUTOTOOLS
 echo -e "\nPlease wait. Installing AUTOTOOLS.FEATURE.GROUP"
-ATVER="8.8.1"
+ATVER="9.0.0"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.autotools.feature.group ${ATVER}
 
-#Lttng2 
+#Lttng2
 TMF_CTF_REL="1.0.0"
 echo -e "\nPlease wait. Installing TRACECOMPASS.LTTNG2.UST.FEATURE.GROUP"
 update_feature_remote ${MAIN_SITE} org.eclipse.tracecompass.lttng2.ust.feature.group ${TMF_CTF_REL}
-- 
2.7.4


