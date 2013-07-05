Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CBAAE0140D
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2013 04:03:56 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Jul 2013 04:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1001,1363158000"; d="scan'208";a="327144748"
Received: from ideapad.rb.intel.com ([10.237.105.140])
	by azsmga001.ch.intel.com with ESMTP; 05 Jul 2013 04:03:54 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Jul 2013 13:42:28 +0300
Message-Id: <1373020948-20527-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Fix retrieval of System tap parameters
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
X-List-Received-Date: Fri, 05 Jul 2013 11:04:01 -0000

- the parameters for runnin crosstap are populated before the window is actually open so they remain null
	-> retrieve them after the window has closed & run the script

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/actions/SystemtapHandler.java  |   11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
index 9d27e5a..184582a 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
@@ -33,13 +33,14 @@ public class SystemtapHandler extends AbstractHandler {
 				shell, "Systemtap"
 				);
 		
-		String metadata_location = ((SystemtapSettingDialog)setting).getMetadataLocation();
-		String remote_host = ((SystemtapSettingDialog)setting).getRemoteHost();
-		String user_id = ((SystemtapSettingDialog)setting).getUserID();
-		String systemtap_script = ((SystemtapSettingDialog)setting).getSystemtapScript();
-		String systemtap_args = ((SystemtapSettingDialog)setting).getSystemtapArgs();
 
 		if(setting.open() == BaseSettingDialog.OK) {
+
+			String metadata_location = ((SystemtapSettingDialog)setting).getMetadataLocation();
+			String remote_host = ((SystemtapSettingDialog)setting).getRemoteHost();
+			String user_id = ((SystemtapSettingDialog)setting).getUserID();
+			String systemtap_script = ((SystemtapSettingDialog)setting).getSystemtapScript();
+			String systemtap_args = ((SystemtapSettingDialog)setting).getSystemtapArgs();
 			IProgressService progressService = PlatformUI.getWorkbench().getProgressService();
 			SystemtapModel op = new SystemtapModel(metadata_location,remote_host, user_id, systemtap_script,
 					systemtap_args,window.getShell().getDisplay());
-- 
1.7.9.5


