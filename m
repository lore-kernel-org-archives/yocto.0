Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFA19E00EC0; Thu, 18 Jan 2018 13:13:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D3C1E006CA
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 13:12:44 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jan 2018 13:12:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,378,1511856000"; d="scan'208";a="194486329"
Received: from timo-fedora.jf.intel.com ([10.7.159.66])
	by orsmga005.jf.intel.com with ESMTP; 18 Jan 2018 13:12:44 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 18 Jan 2018 13:21:08 -0800
Message-Id: <20180118212108.8887-1-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.13.6
Cc: scottx.lewis@intel.com
Subject: [eclipse-poky][oxygen][PATCH] Update setup.sh to Oxygen.2 (4.7.2) release
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
X-List-Received-Date: Thu, 18 Jan 2018 21:13:14 -0000

From: Chin Huat Ang <chin.huat.ang@intel.com>

Signed-off-by: Chin Huat Ang <chin.huat.ang@intel.com>
Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 scripts/setup.sh | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 340364f..4b160ea 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -92,12 +92,12 @@ fi
 
 # prepare the base Eclipse installation in folder "eclipse"
 ep_rel="R-"
-ep_ver="4.7"
-ep_date="-201706120950"
+ep_ver="4.7.2"
+ep_date="-201711300510"
 P2_disabled=false
 P2_no_dropins=false
 
-if [ ! -f eclipse/plugins/org.eclipse.swt_3.106.0.v20170608-0516.jar ]; then
+if [ ! -f eclipse/plugins/org.eclipse.swt_3.106.2.v20171129-0543.jar ]; then
 
   pushd .
 
@@ -261,13 +261,18 @@ UPDATE_SITE="http://download.eclipse.org/eclipse/updates/4.7"
 
 #CDT related
 echo -e "\nPlease wait. Installing CDT.SDK.FEATURE.GROUP"
-CDTFEAT="9.3.0"
+CDTFEAT="9.4.0"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.sdk.feature.group ${CDTFEAT}
 
 echo -e "\nPlease wait. Installing CDT.LAUNCH.REMOTE.FEATURE.GROUP"
-CDTREMOTEVER="9.3.0"
+CDTREMOTEVER="9.4.0"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.launch.remote.feature.group ${CDTREMOTEVER}
 
+#AUTOTOOLS
+echo -e "\nPlease wait. Installing AUTOTOOLS.FEATURE.GROUP"
+ATVER="9.4.0"
+update_feature_remote ${MAIN_SITE} org.eclipse.cdt.autotools.feature.group ${ATVER}
+
 #TM Terminal (was RSE) related
 echo -e "\nPlease wait. Installing TM.TERMINAL.FEATURE.FEATURE.GROUP"
 TMTERMVER="4.3.0"
@@ -287,24 +292,19 @@ RSESDKVER="3.7.0"
 update_feature_remote ${TM_SITE} org.eclipse.rse.sdk.feature.group ${RSESDKVER}
 #echo -e "\nSkipping RSE.SDK.FEATURE.GROUP"
 
-RSE_TERMINALS
+#RSE_TERMINALS
 echo -e "\nPlease wait. Installing RSE.TERMINALS.FEATURE.GROUP"
 RSETERMVER="3.8.0"
 update_feature_remote ${TM_SITE} org.eclipse.rse.terminals.feature.group ${RSETERMVER}
 #echo -e "\nSkipping RSE.TERMINALS.FEATURE.GROUP"
 
-#AUTOTOOLS
-echo -e "\nPlease wait. Installing AUTOTOOLS.FEATURE.GROUP"
-ATVER="9.3.0"
-update_feature_remote ${MAIN_SITE} org.eclipse.cdt.autotools.feature.group ${ATVER}
-
 #Lttng2
-TMF_CTF_REL="3.0.0"
+TMF_CTF_REL="3.2.0"
 echo -e "\nPlease wait. Installing TRACECOMPASS.LTTNG2.UST.FEATURE.GROUP"
 update_feature_remote ${MAIN_SITE} org.eclipse.tracecompass.lttng2.ust.feature.group ${TMF_CTF_REL}
 
 echo -e "\nPlease wait. Installing OSGI.COMPATIBILITY.PLUGINS.FEATURE.FEATURE.GROUP"
-COMPAT_VER="1.1.0"
+COMPAT_VER="1.1.1"
 update_feature_remote ${UPDATE_SITE} org.eclipse.osgi.compatibility.plugins.feature.feature.group ${COMPAT_VER}
 
 echo -e "\nYour build environment is successfully created."
-- 
2.13.6


