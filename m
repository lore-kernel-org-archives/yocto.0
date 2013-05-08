Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA8FAE014D1
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 06:17:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 May 2013 06:17:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,634,1363158000"; d="scan'208";a="334393988"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 08 May 2013 06:17:14 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 May 2013 15:57:13 +0300
Message-Id: <1368017838-14883-8-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368017838-14883-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368017838-14883-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 07/12] Move CommonHelper to org.yocto.remote.utils separate plugin
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
X-List-Received-Date: Wed, 08 May 2013 13:17:15 -0000

- common helper is better suited to org.yocto.remote.utils since it is used for:
   - running commands
   - displaying error dialogs

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/remote/utils/CommonHelper.java   |   46 ++++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommonHelper.java

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
-- 
1.7.9.5


