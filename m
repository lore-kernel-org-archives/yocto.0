Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AB22E00655; Sat, 14 Jan 2017 10:55:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C32B3E00563
	for <yocto@yoctoproject.org>; Sat, 14 Jan 2017 10:55:38 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 14 Jan 2017 10:55:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,229,1477983600"; d="scan'208";a="53048873"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga005.jf.intel.com with ESMTP; 14 Jan 2017 10:55:38 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat, 14 Jan 2017 10:59:15 -0800
Message-Id: <1484420355-12038-2-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484420355-12038-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1484420355-12038-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][PATCH 2/2] Update setup.sh to Neon.2 (4.6.2) release
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
X-List-Received-Date: Sat, 14 Jan 2017 18:55:40 -0000

[YOCTO #10927]

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 scripts/setup.sh | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/scripts/setup.sh b/scripts/setup.sh
index 93d5147..0764021 100755
--- a/scripts/setup.sh
+++ b/scripts/setup.sh
@@ -92,12 +92,12 @@ fi
 
 # prepare the base Eclipse installation in folder "eclipse"
 ep_rel="R-"
-ep_ver="4.6.1"
-ep_date="-201609071200"
+ep_ver="4.6.2"
+ep_date="-201611241400"
 P2_disabled=false
 P2_no_dropins=false
 
-if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.1.v20160907-0248.jar ]; then
+if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.2.v20161122-0613.jar ]; then
 
   pushd .
 
@@ -261,11 +261,11 @@ UPDATE_SITE="http://download.eclipse.org/eclipse/updates/4.6"
 
 #CDT related
 echo -e "\nPlease wait. Installing CDT.SDK.FEATURE.GROUP"
-CDTFEAT="9.1.0"
+CDTFEAT="9.2.0"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.sdk.feature.group ${CDTFEAT}
 
 echo -e "\nPlease wait. Installing CDT.LAUNCH.REMOTE.FEATURE.GROUP"
-CDTREMOTEVER="9.1.0"
+CDTREMOTEVER="9.2.0"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.launch.remote.feature.group ${CDTREMOTEVER}
 
 #TM Terminal (was RSE) related
@@ -293,11 +293,11 @@ update_feature_remote ${TM_SITE} org.eclipse.rse.terminals.feature.group ${RSETE
 
 #AUTOTOOLS
 echo -e "\nPlease wait. Installing AUTOTOOLS.FEATURE.GROUP"
-ATVER="9.1.0"
+ATVER="9.2.0"
 update_feature_remote ${MAIN_SITE} org.eclipse.cdt.autotools.feature.group ${ATVER}
 
 #Lttng2
-TMF_CTF_REL="1.0.0"
+TMF_CTF_REL="2.2.0"
 echo -e "\nPlease wait. Installing TRACECOMPASS.LTTNG2.UST.FEATURE.GROUP"
 update_feature_remote ${MAIN_SITE} org.eclipse.tracecompass.lttng2.ust.feature.group ${TMF_CTF_REL}
 
-- 
2.7.4


