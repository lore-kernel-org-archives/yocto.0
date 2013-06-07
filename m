Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E851E00742
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:13:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 Jun 2013 08:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="251999348"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jun 2013 08:13:31 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jun 2013 17:51:17 +0300
Message-Id: <1370616683-17239-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor[v2] 2/8] Add YoctoCommand utility class
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
X-List-Received-Date: Fri, 07 Jun 2013 15:13:53 -0000

- YoctoCommand wraps all information needed for running a remote command
	- the actual command string
	- the command arguments
	- the directory in which to run the remote command
	- a ProcessStreamBuffer that will store the output of running this particular command
- this class will simplify the process of running a remote command by wrapping all needed data into one object

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/remote/utils/YoctoCommand.java   |   63 ++++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java
new file mode 100644
index 0000000..b37d526
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java
@@ -0,0 +1,63 @@
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
+
+public class YoctoCommand {
+	private String command;
+	private String initialDirectory;
+	private String arguments;
+	private ProcessStreamBuffer processBuffer;
+
+	public YoctoCommand(String command, String initialDirectory, String arguments){
+		this.setCommand(command);
+		this.setInitialDirectory(initialDirectory);
+		this.setArguments(arguments);
+		this.setProcessBuffer(new ProcessStreamBuffer(false));
+	}
+
+	public String getCommand() {
+		return command;
+	}
+
+	public void setCommand(String command) {
+		this.command = command;
+	}
+
+	public String getInitialDirectory() {
+		return initialDirectory;
+	}
+
+	public void setInitialDirectory(String initialDirectory) {
+		this.initialDirectory = initialDirectory;
+	}
+
+	public String getArguments() {
+		return arguments;
+	}
+
+	public void setArguments(String arguments) {
+		this.arguments = arguments;
+	}
+
+	public ProcessStreamBuffer getProcessBuffer() {
+		return processBuffer;
+	}
+
+	public void setProcessBuffer(ProcessStreamBuffer processBuffer) {
+		this.processBuffer = processBuffer;
+	}
+
+	@Override
+	public String toString() {
+		return command + " " + arguments;
+	}
+}
-- 
1.7.9.5


