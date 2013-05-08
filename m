Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 765B5E0148E
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 06:14:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 08 May 2013 06:14:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,634,1363158000"; d="scan'208";a="238515913"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 08 May 2013 06:14:57 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 May 2013 15:55:04 +0300
Message-Id: <1368017704-14781-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368017704-14781-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368017704-14781-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 3/3] Move filtering of suitable connections to RSEHelper
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
X-List-Received-Date: Wed, 08 May 2013 13:14:58 -0000

- BaseSettingDialog performs an extra filtering for suitable connections for a given host by checking the remote system type
	- this checking should be done in RSEHelper since it involves a remote action and thus removing BaseSettingDialog dependency on RSE Api
	- modified RSEHelper.getSuitableConnections to include the filtering for connections with associated system type disabled
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/sdk/remotetools/RSEHelper.java   |    4 ++++
 .../sdk/remotetools/actions/BaseSettingDialog.java |   10 +++-------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
index d1a505d..8d0612a 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/RSEHelper.java
@@ -150,6 +150,10 @@ public class RSEHelper {
 			if(!terminalConnections.contains(fileConnection) && !shellConnections.contains(fileConnection)){
 				iter.remove();
 			}
+			IRSESystemType sysType = fileConnection.getSystemType();
+			if (sysType != null && sysType.isEnabled()) {
+				iter.remove();
+			}
 		}
 		
 		return (IHost[]) filConnections.toArray(new IHost[filConnections.size()]);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
index 06eeb00..962a20a 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
@@ -26,7 +26,6 @@ import org.yocto.sdk.remotetools.SWTFactory;
 import org.yocto.sdk.remotetools.RSEHelper;
 import org.eclipse.jface.dialogs.Dialog;
 import org.eclipse.jface.dialogs.IDialogConstants;
-import org.eclipse.rse.core.IRSESystemType;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.ui.actions.SystemNewConnectionAction;
 import org.eclipse.swt.SWT;
@@ -185,12 +184,9 @@ public class BaseSettingDialog extends Dialog {
 		connectionCombo.removeAll();
 		IHost[] connections = RSEHelper.getSuitableConnections();
 		for (int i = 0; i < connections.length; i++) {
-			IRSESystemType sysType = connections[i].getSystemType();
-			if (sysType != null && sysType.isEnabled()) {
-				connectionCombo.add(connections[i].getAliasName());
-				if(connections[i].getAliasName().equals(curConn))
-					index=i;
-			}
+			connectionCombo.add(connections[i].getAliasName());
+			if(connections[i].getAliasName().equals(curConn))
+				index=i;
 		}
 		
 		if(index>=0) {
-- 
1.7.9.5


