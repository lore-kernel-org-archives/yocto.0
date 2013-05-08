Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2888EE01488
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 06:14:57 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 08 May 2013 06:14:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,634,1363158000"; d="scan'208";a="238515907"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 08 May 2013 06:14:55 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 May 2013 15:55:03 +0300
Message-Id: <1368017704-14781-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368017704-14781-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368017704-14781-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 2/3] Move logic for waiting for RSE initialization to RSEHelper
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
X-List-Received-Date: Wed, 08 May 2013 13:14:57 -0000

- BaseSettingsDialog contains code that ensures that RSE plug-in is initialized before performing any remote actions
	- this piece of code should be placed in the RSEHelper since it does not have any relevance for the GUI class
	- created method in RSEHelper called waitForRSEInitCompletition with this functionality
	- replaced code in BaseSettingsDialog with a call to waitForRSEInitCompletition

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/sdk/remotetools/RSEHelper.java   |    9 +++++++++
 .../sdk/remotetools/actions/BaseSettingDialog.java |    8 +-------
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
index bf48464..d1a505d 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
@@ -403,4 +403,13 @@ public class RSEHelper {
 			return true;
 		return false;
 	}
+
+	public static void waitForRSEInitCompletition() {
+		if (!RSECorePlugin.isInitComplete(RSECorePlugin.INIT_MODEL))
+			try {
+				RSECorePlugin.waitForInitCompletion(RSECorePlugin.INIT_MODEL);
+			} catch (InterruptedException e) {
+				return;
+			}
+	}
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
index 5c76bf9..06eeb00 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
@@ -27,7 +27,6 @@ import org.yocto.sdk.remotetools.RSEHelper;
 import org.eclipse.jface.dialogs.Dialog;
 import org.eclipse.jface.dialogs.IDialogConstants;
 import org.eclipse.rse.core.IRSESystemType;
-import org.eclipse.rse.core.RSECorePlugin;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.ui.actions.SystemNewConnectionAction;
 import org.eclipse.swt.SWT;
@@ -181,12 +180,7 @@ public class BaseSettingDialog extends Dialog {
 	
 	protected void updateConnectionPulldown() {
 		int index=-1;
-		if (!RSECorePlugin.isInitComplete(RSECorePlugin.INIT_MODEL))
-			try {
-				RSECorePlugin.waitForInitCompletion(RSECorePlugin.INIT_MODEL);
-			} catch (InterruptedException e) {
-				return;
-			}
+		RSEHelper.waitForRSEInitCompletition();
 		// already initialized
 		connectionCombo.removeAll();
 		IHost[] connections = RSEHelper.getSuitableConnections();
-- 
1.7.9.5


