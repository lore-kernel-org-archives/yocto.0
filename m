Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A7B9E0140D
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:13:54 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Jun 2013 08:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="251999351"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jun 2013 08:13:32 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jun 2013 17:51:18 +0300
Message-Id: <1370616683-17239-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor[v2] 3/8] Add CommandResponseHandler implementation of ICommandResponseHandler
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

- plain implementation of ICommandResponseHandler interface that prints all lines to the console stream

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    3 +-
 .../yocto/remote/utils/CommandResponseHandler.java |   44 ++++++++++++++++++++
 2 files changed, 46 insertions(+), 1 deletion(-)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java

diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index c7b57fe..e31d557 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -23,5 +23,6 @@ Import-Package: org.eclipse.rse.core,
  org.eclipse.rse.subsystems.terminals.core.elements,
  org.eclipse.rse.ui,
  org.eclipse.tm.internal.terminal.control,
- org.eclipse.tm.internal.terminal.provisional.api
+ org.eclipse.tm.internal.terminal.provisional.api,
+ org.eclipse.ui.console
 Export-Package: org.yocto.remote.utils
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java
new file mode 100644
index 0000000..f02fbfa
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java
@@ -0,0 +1,44 @@
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
+import org.eclipse.ui.console.MessageConsole;
+import org.eclipse.ui.console.MessageConsoleStream;
+
+public class CommandResponseHandler implements ICommandResponseHandler {
+	private MessageConsoleStream consoleStream;
+	private Boolean errorOccured = false;
+
+	public CommandResponseHandler(MessageConsole console) {
+		try {
+			this.consoleStream = console.newMessageStream();
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+
+	public Boolean hasError() {
+		return errorOccured;
+	}
+
+	@Override
+	public void response(String line, boolean isError) {
+		try {
+			if (isError) {
+				errorOccured = true;
+			}
+			consoleStream.println(line);
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+
+}
\ No newline at end of file
-- 
1.7.9.5


