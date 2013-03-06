Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2DBEE014CD
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 04:06:05 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Mar 2013 04:06:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,794,1355126400"; d="scan'208";a="209668691"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Mar 2013 04:06:01 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Mar 2013 13:49:07 +0200
Message-Id: <1362570547-2760-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][branch:master]Use bash instead of sh for yocto-bsp build directory
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Mar 2013 12:06:06 -0000

[Yocto #3747]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index 5c35904..d84cc24 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -322,7 +322,7 @@ public class MainPage extends WizardPage {
 		String createBuildDirCmd = "cd " + metadataDir + ";source " + metadataDir + "/oe-init-build-env " + buildLoc;
 
 		try {
-			ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", createBuildDirCmd});
+			ProcessBuilder builder = new ProcessBuilder(new String[] {"bash", "-c", createBuildDirCmd});
 			Process proc = builder.start();
 			InputStream errorStream = proc.getErrorStream();
 			InputStreamReader isr = new InputStreamReader(errorStream);
-- 
1.7.9.5


