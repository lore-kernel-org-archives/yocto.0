Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07B46E0152A
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:13:55 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Jun 2013 08:13:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="251999360"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jun 2013 08:13:36 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jun 2013 17:51:20 +0300
Message-Id: <1370616683-17239-6-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor[v2] 5/8] Add ConsoleHelper utility class
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
X-List-Received-Date: Fri, 07 Jun 2013 15:13:56 -0000

- ConsoleHelper class is to be used in order to find a console by a specified name and display it in the view (using ConsoleRunnble) on the GUI thread

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/remote/utils/ConsoleHelper.java  |   38 ++++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java
new file mode 100644
index 0000000..9c5c244
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java
@@ -0,0 +1,38 @@
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
+import org.eclipse.swt.widgets.Display;
+import org.eclipse.ui.console.ConsolePlugin;
+import org.eclipse.ui.console.IConsole;
+import org.eclipse.ui.console.IConsoleManager;
+import org.eclipse.ui.console.MessageConsole;
+
+public class ConsoleHelper {
+	public static final String YOCTO_CONSOLE = "Yocto Project Console";
+
+	public static MessageConsole findConsole(String name) {
+		ConsolePlugin plugin = ConsolePlugin.getDefault();
+		IConsoleManager conMan = plugin.getConsoleManager();
+		IConsole[] existing = conMan.getConsoles();
+		for (int i = 0; i < existing.length; i++)
+			if (name.equals(existing[i].getName()))
+				return (MessageConsole) existing[i];
+		// no console found, so create a new one
+		MessageConsole myConsole = new MessageConsole(name, null);
+		conMan.addConsoles(new IConsole[] { myConsole });
+		return myConsole;
+	}
+
+	public static void showConsole(MessageConsole console){
+		Display.getDefault().syncExec(new ConsoleRunnable(console));
+	}
+}
-- 
1.7.9.5


