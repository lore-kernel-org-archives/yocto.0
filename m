Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E354EE01466
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 11:04:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 May 2013 11:04:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,636,1363158000"; d="scan'208";a="334521844"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 08 May 2013 11:04:17 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 May 2013 20:44:20 +0300
Message-Id: <1368035063-19401-5-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368035063-19401-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368035063-19401-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v2 4/7] Move CommonHelper to org.yocto.remote.utils separate plugin
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
X-List-Received-Date: Wed, 08 May 2013 18:04:19 -0000

- common helper is better suited to org.yocto.remote.utils since it is used for:
   - running commands
   - displaying error dialogs
- remove common helper from remote tools plugin and add it to a separated plugin
- modify org.yocto.sdk.remotetools to use implementation from org.yocto.remote.utils

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/remote/utils/CommonHelper.java   |   46 ++++++++++++++++++++
 .../org/yocto/sdk/remotetools/CommonHelper.java    |   44 -------------------
 .../sdk/remotetools/actions/OprofileModel.java     |    2 +-
 .../actions/SystemtapSettingDialog.java            |    2 +-
 .../sdk/remotetools/actions/TerminalHandler.java   |    2 +-
 5 files changed, 49 insertions(+), 47 deletions(-)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommonHelper.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/CommonHelper.java

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommonHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommonHelper.java
new file mode 100644
index 0000000..c01e866
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommonHelper.java
@@ -0,0 +1,46 @@
+/*******************************************************************************
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+ *******************************************************************************/
+package org.yocto.remote.utils;
+
+import org.eclipse.core.runtime.IStatus;
+import org.eclipse.core.runtime.Status;
+import org.eclipse.jface.dialogs.ErrorDialog;
+import org.eclipse.swt.widgets.Display;
+
+public class CommonHelper {
+
+	static public boolean isExecAvail(String exec) {
+		boolean ret = false;
+		try {
+			Process p = Runtime.getRuntime().exec(new String[] {"which", exec});
+			p.waitFor();
+			if(p.exitValue() == 0) {
+				ret = true;
+			}
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+		return ret;
+	}
+
+	public static void showErrorDialog(final String dialogTitle, final String errorMessage, final String reason) {
+		//needs to be run in the ui thread otherwise swt throws invalid thread access
+		Display.getDefault().syncExec(new Runnable() {
+			@Override
+			public void run() {
+				ErrorDialog.openError(null, dialogTitle, errorMessage,
+						new Status(IStatus.ERROR,Activator.PLUGIN_ID,reason));
+			}
+		});
+
+	}
+
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/CommonHelper.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/CommonHelper.java
deleted file mode 100644
index 72a5dfd..0000000
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/CommonHelper.java
+++ /dev/null
@@ -1,44 +0,0 @@
-/*******************************************************************************
- * Copyright (c) 2010 Intel Corporation.
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Intel - initial API and implementation
- *******************************************************************************/
-package org.yocto.sdk.remotetools;
-
-import org.eclipse.core.runtime.IStatus;
-import org.eclipse.core.runtime.Status;
-import org.eclipse.jface.dialogs.ErrorDialog;
-import org.eclipse.swt.widgets.Display;
-
-public class CommonHelper {
-
-	static public boolean isExecAvail(String exec) {
-		boolean ret=false;	
-		try {
-			Process p=Runtime.getRuntime().exec(new String[] {"which",exec});
-			p.waitFor();
-			if(p.exitValue()==0) {
-				ret=true;
-			}
-		} catch (Exception e) {
-			e.printStackTrace();
-		}
-		return ret;
-	}
-	
-	public static void showErrorDialog(final String dialogTitle, final String errorMessage, final String reason) {
-		//needs to be run in the ui thread otherwise swt throws invalid thread access 
-		Display.getDefault().syncExec(new Runnable() {
-			public void run() {
-				ErrorDialog.openError(null, dialogTitle, errorMessage, new Status(IStatus.ERROR,Activator.PLUGIN_ID,reason));
-			}
-		});
-
-	}
-	
-}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
index c125df7..7fbe7c6 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/OprofileModel.java
@@ -21,9 +21,9 @@ import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
+import org.yocto.remote.utils.CommonHelper;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
-import org.yocto.sdk.remotetools.CommonHelper;
 import org.yocto.sdk.remotetools.LocalJob;
 import org.yocto.sdk.remotetools.Messages;
 
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
index 8b4703c..c447569 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
@@ -27,8 +27,8 @@ import org.eclipse.swt.widgets.FileDialog;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Shell;
 import org.eclipse.swt.widgets.Text;
+import org.yocto.remote.utils.CommonHelper;
 import org.yocto.sdk.remotetools.Activator;
-import org.yocto.sdk.remotetools.CommonHelper;
 import org.yocto.sdk.remotetools.Messages;
 import org.yocto.sdk.remotetools.SWTFactory;
 
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
index 4ad8688..ae04dc9 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
@@ -33,8 +33,8 @@ import org.eclipse.swt.events.DisposeListener;
 import org.eclipse.swt.widgets.Shell;
 import org.eclipse.tm.internal.terminal.control.ITerminalViewControl;
 import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector;
+import org.yocto.remote.utils.CommonHelper;
 import org.yocto.remote.utils.RSEHelper;
-import org.yocto.sdk.remotetools.CommonHelper;
 
 abstract public class TerminalHandler extends AbstractHandler {
 	
-- 
1.7.9.5


