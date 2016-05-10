Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6755DE00D7B; Tue, 10 May 2016 10:45:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AB54E00D43
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 10:45:27 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2016 10:45:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,605,1455004800"; d="scan'208";a="700000112"
Received: from jhibarra-desk.zpn.intel.com ([10.219.16.19])
	by FMSMGA003.fm.intel.com with ESMTP; 10 May 2016 10:45:02 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 May 2016 12:45:17 -0500
Message-Id: <1462902317-6493-1-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.4.11
Subject: [eclipse-poky][PATCH] bsp/MainPage.java: Fixing typo in bsp creation wizard
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
X-List-Received-Date: Tue, 10 May 2016 17:45:31 -0000

New bsp creation wizard has a typo. When giving an already
existing directory, the message spells "exiting" instead
of "existing".

[Yocto #9614]
---
 .../src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java             | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index 48c7509..cc3630f 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -275,7 +275,7 @@ public class MainPage extends WizardPage {
 				File outputDirectory = new File(outputDir);
 				if (outputDirectory.exists()){
 					status = new Status(IStatus.ERROR, "not_used", 0,
-							"Your BSP output directory points to an exiting directory!", null);
+							"Your BSP output directory points to an existing directory!", null);
 				}
 			}
 		} else if (buildDir.startsWith(metadataLoc) && !bspName.isEmpty()) {
-- 
2.4.11


