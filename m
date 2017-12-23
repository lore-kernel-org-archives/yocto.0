Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F4C0E00D48; Fri, 22 Dec 2017 18:26:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5014EE00D1C
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 18:26:53 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Dec 2017 18:26:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,443,1508828400"; d="scan'208";a="161159185"
Received: from timo-fedora.jf.intel.com ([10.7.159.66])
	by orsmga004.jf.intel.com with ESMTP; 22 Dec 2017 18:26:53 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 22 Dec 2017 18:35:57 -0800
Message-Id: <20171223023557.14226-1-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.13.6
Subject: [eclipse-poky][neon][PATCH] Update setup.sh to Neon.3 (4.6.3) release
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
X-List-Received-Date: Sat, 23 Dec 2017 02:26:56 -0000

org.eclipse.tm.terminal* are now available on MAIN_SITE

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 scripts/setup.sh | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 0764021b66c..4f7dc2b0a78 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -23,7 +23,7 @@ while getopts ":h" opt; do
   esac
 done
 
-err_exit() 
+err_exit()
 {
   echo "[FAILED $1]$2"
   exit $1
@@ -35,7 +35,7 @@ case ${uname_s}${uname_m} in
   Linuxppc*) ep_arch=linux-gtk-ppc
              cdt_arch=linux.ppc
              ;;
-  Linuxx86_64*) ep_arch=linux-gtk-x86_64 
+  Linuxx86_64*) ep_arch=linux-gtk-x86_64
                 cdt_arch=linux.x86_64
                 ;;
   Linuxi*86) ep_arch=linux-gtk
@@ -92,12 +92,12 @@ fi
 
 # prepare the base Eclipse installation in folder "eclipse"
 ep_rel="R-"
-ep_ver="4.6.2"
-ep_date="-201611241400"
+ep_ver="4.6.3"
+ep_date="-201703010400"
 P2_disabled=false
 P2_no_dropins=false
 
-if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.2.v20161122-0613.jar ]; then
+if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.3.v20170228-0512.jar ]; then
 
   pushd .
 
@@ -130,7 +130,7 @@ if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.2.v20161122-0613.jar ]; then
   popd
 
   if [ ! -d eclipse -o -h eclipse ]; then
-    if [ -e eclipse ]; then 
+    if [ -e eclipse ]; then
       rm eclipse
     fi
     ln -s eclipse-${ep_ver}-${ep_arch}/eclipse eclipse
@@ -150,7 +150,7 @@ if [ ! -f eclipse/startup.jar ]; then
   LAUNCHER="`ls org.eclipse.equinox.launcher_*.jar | sort | tail -1`"
 
   if [ "x${LAUNCHER}" != "x" ]; then
-    echo "eclipse LAUNCHER=${LAUNCHER}" 
+    echo "eclipse LAUNCHER=${LAUNCHER}"
     ln -s plugins/${LAUNCHER} ../startup.jar
   else
     echo "Eclipse: NO startup.jar LAUNCHER FOUND!"
@@ -261,24 +261,24 @@ UPDATE_SITE="http://download.eclipse.org/eclipse/updates/4.6"
 
 #CDT related
 echo -e "\nPlease wait. Installing CDT.SDK.FEATURE.GROUP"
-CDTFEAT="9.2.0"
+CDTFEAT="9.2.1"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.sdk.feature.group ${CDTFEAT}
 
 echo -e "\nPlease wait. Installing CDT.LAUNCH.REMOTE.FEATURE.GROUP"
-CDTREMOTEVER="9.2.0"
+CDTREMOTEVER="9.2.1"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.launch.remote.feature.group ${CDTREMOTEVER}
 
 #TM Terminal (was RSE) related
 echo -e "\nPlease wait. Installing TM.TERMINAL.FEATURE.FEATURE.GROUP"
-TMTERMVER="4.1.0"
-update_feature_remote ${TM_TERMINAL_SITE} org.eclipse.tm.terminal.feature.feature.group ${TMTERMVER}
+TMTERMVER="4.2.0"
+update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.feature.feature.group ${TMTERMVER}
 
 echo -e "\nPlease wait. Installing TM.TERMINAL.VIEW.RSE.FEATURE.GROUP"
-TMTERMVIEWRSEVER="4.1.0"
-update_feature_remote ${TM_TERMINAL_SITE} org.eclipse.tm.terminal.view.rse.feature.feature.group ${TMTERMVIEWRSEVER}
+TMTERMVIEWRSEVER="4.2.0"
+update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.view.rse.feature.feature.group ${TMTERMVIEWRSEVER}
 
 echo -e "\nPlease wait. Installing TM.TERMINAL.CONTROL.FEATURE.GROUP"
-TMCONTROLVER="4.1.0"
+TMCONTROLVER="4.2.0"
 update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.control.feature.feature.group ${TMCONTROLVER}
 
 #RSE_SDK
@@ -293,11 +293,11 @@ update_feature_remote ${TM_SITE} org.eclipse.rse.terminals.feature.group ${RSETE
 
 #AUTOTOOLS
 echo -e "\nPlease wait. Installing AUTOTOOLS.FEATURE.GROUP"
-ATVER="9.2.0"
+ATVER="9.2.1"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.autotools.feature.group ${ATVER}
 
 #Lttng2
-TMF_CTF_REL="2.2.0"
+TMF_CTF_REL="2.3.0"
 echo -e "\nPlease wait. Installing TRACECOMPASS.LTTNG2.UST.FEATURE.GROUP"
 update_feature_remote ${MAIN_SITE} org.eclipse.tracecompass.lttng2.ust.feature.group ${TMF_CTF_REL}
 
-- 
2.13.6


