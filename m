Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E499E0152F
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:13:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Jun 2013 08:13:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="251999367"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jun 2013 08:13:39 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jun 2013 17:51:22 +0300
Message-Id: <1370616683-17239-8-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor[v2] 7/8] Add CommandOutputProcessor utilty class
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
X-List-Received-Date: Fri, 07 Jun 2013 15:13:58 -0000

- this is a simple implementation of the OutputProcessor abstract class
	- splitting the error and output lines is done by '\n' character

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/remote/utils/CommandOutputProcessor.java |   43 ++++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java
new file mode 100644
index 0000000..081e6d4
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java
@@ -0,0 +1,43 @@
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
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.services.shells.IHostShell;
+
+public class CommandOutputProcessor extends OutputProcessor {
+
+	public CommandOutputProcessor(IProgressMonitor monitor,
+			IHostShell hostShell, CommandResponseHandler cmdHandler, String task) {
+		super(monitor, hostShell, cmdHandler, task);
+	}
+
+	@Override
+	protected boolean isErrChStop(char ch) {
+		return (ch == '\n');
+	}
+
+	@Override
+	protected boolean isOutChStop(char ch) {
+		return (ch == '\n');
+	}
+
+	@Override
+	protected void processOutputBufferLine(char ch, String str) {
+		processBuffer.addOutputLine(str);
+	}
+
+	@Override
+	protected void processErrorBufferLine(char ch, String str) {
+		processBuffer.addErrorLine(str);
+	}
+
+}
-- 
1.7.9.5


