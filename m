Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FC1FE014F1
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 01:14:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 May 2013 01:13:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,639,1363158000"; d="scan'208";a="239011832"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 09 May 2013 01:13:26 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 May 2013 10:53:21 +0300
Message-Id: <1368086011-24931-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368086011-24931-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368086011-24931-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 02/12] Move remote system type checkings from GUI Dialogs and to RSEHelper
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
X-List-Received-Date: Thu, 09 May 2013 08:14:00 -0000

- BaseSettingDialog contains code that checks whether the system type associated with a certain IHost is not null, enable and remote
- these checkings should be done in the RSEHelper for two reasons:
	- limit the dependecies to the RSE Api
	- isolate remote functionaties from GUI
- created method isHostViable in RSEHelper that performs all the checks need by BaseSettingDialog
- replace system type checkings in BaseSettingDialog with calls to isHostViable(IHost)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/sdk/remotetools/RSEHelper.java   |    8 ++++++++
 .../sdk/remotetools/actions/BaseSettingDialog.java |    9 ++-------
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
index de42801..bf48464 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
@@ -43,6 +43,7 @@ import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
 import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem;
+import org.eclipse.rse.core.IRSESystemType;
 
 public class RSEHelper {
 	
@@ -395,4 +396,11 @@ public class RSEHelper {
 		}
 		throw new CoreException(status);
 	}
+
+	public static boolean isHostViable(IHost host) {
+		IRSESystemType sysType = host.getSystemType();
+		if (sysType != null && sysType.isEnabled() && !sysType.isLocal())
+			return true;
+		return false;
+	}
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
index c88d0e5..5c76bf9 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
@@ -142,12 +142,9 @@ public class BaseSettingDialog extends Dialog {
 			button.setEnabled(false);
 		IHost currentConnectionSelected = getCurrentConnection();
 		if (currentConnectionSelected != null) {
-			IRSESystemType sysType = currentConnectionSelected.getSystemType();
-			if (sysType != null && sysType.isEnabled() && !sysType.isLocal()) {
-				if(button!=null) {
+			if (RSEHelper.isHostViable(currentConnectionSelected) && button != null){
 					button.setEnabled(true);
 					ret=true;
-				}
 			}
 		}
 		return ret;
@@ -156,10 +153,8 @@ public class BaseSettingDialog extends Dialog {
 	protected void updateCurConn() {
 		IHost currentConnectionSelected = getCurrentConnection();
 		if (currentConnectionSelected != null) {
-			IRSESystemType sysType = currentConnectionSelected.getSystemType();
-			if (sysType != null && sysType.isEnabled() && !sysType.isLocal()) {
+			if (RSEHelper.isHostViable(currentConnectionSelected))
 				curConn=currentConnectionSelected.getAliasName();
-			}
 		}
 		updateOkButton();
 	}
-- 
1.7.9.5


