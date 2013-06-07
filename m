Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC82E01511
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:13:54 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 Jun 2013 08:13:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="251999356"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jun 2013 08:13:34 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jun 2013 17:51:19 +0300
Message-Id: <1370616683-17239-5-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor[v2] 4/8] Add ConsoleRunnable utility class
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
X-List-Received-Date: Fri, 07 Jun 2013 15:13:54 -0000

- Console Runnable implements Runnable and is charge to display the specified console in the Console View

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/remote/utils/ConsoleRunnable.java    |   47 ++++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java
new file mode 100644
index 0000000..e5fe666
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java
@@ -0,0 +1,47 @@
+/*******************************************************************************
+ * Copyright (c) 2013 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Ioana Grigoropol(Intel) - initial API and implementation
+ *******************************************************************************/
+package org.yocto.remote.utils;
+
+import org.eclipse.ui.IWorkbench;
+import org.eclipse.ui.IWorkbenchPage;
+import org.eclipse.ui.IWorkbenchWindow;
+import org.eclipse.ui.PlatformUI;
+import org.eclipse.ui.console.IConsoleConstants;
+import org.eclipse.ui.console.IConsoleView;
+import org.eclipse.ui.console.MessageConsole;
+
+public class ConsoleRunnable implements Runnable{
+	MessageConsole console;
+	ConsoleRunnable (MessageConsole console){
+		this.console = console;
+	}
+	@Override
+	public void run() {
+		IWorkbench wb = PlatformUI.getWorkbench();
+		if (wb == null)
+			return;
+		IWorkbenchWindow win = wb.getActiveWorkbenchWindow();
+		if (win == null)
+			return;
+		IWorkbenchPage page = win.getActivePage();
+		if (page == null)
+			return;
+		String id = IConsoleConstants.ID_CONSOLE_VIEW;
+		try {
+			IConsoleView view = (IConsoleView) page.showView(id);
+			if (view == null)
+				return;
+			view.display(console);
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+}
\ No newline at end of file
-- 
1.7.9.5


