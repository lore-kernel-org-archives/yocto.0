Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5FF2E014C6
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 03:54:02 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Mar 2013 03:54:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,794,1355126400"; d="scan'208";a="300019216"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2013 03:54:00 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Mar 2013 13:37:25 +0200
Message-Id: <1362569845-2418-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][branch:danny]Use bash instead of sh for yocto-bsp build directory
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
X-List-Received-Date: Wed, 06 Mar 2013 11:54:02 -0000

[Yocto #3968]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index fea1c76..94c7f07 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -314,7 +314,7 @@ public class MainPage extends WizardPage {
 		String createBuildDirCmd = "cd " + metadataDir + ";source " + metadataDir + "/oe-init-build-env " + buildLoc;
 
 		try {
-			ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", createBuildDirCmd});
+			ProcessBuilder builder = new ProcessBuilder(new String[] {"bash", "-c", createBuildDirCmd});
 			Process proc = builder.start();
 			InputStream errorStream = proc.getErrorStream();
 			InputStreamReader isr = new InputStreamReader(errorStream);
-- 
1.7.9.5


