Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BF2BE0153D
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:13:57 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Jun 2013 08:13:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="251999363"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jun 2013 08:13:37 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jun 2013 17:51:21 +0300
Message-Id: <1370616683-17239-7-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor[v2] 6/8] Add OutputProcessor utility class
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
X-List-Received-Date: Fri, 07 Jun 2013 15:13:57 -0000

- OutputProcessor class is a stub class that will be used for processing the output of a remote command
    - the main method of this class is processOutput()
            - in this method, we retrieve the bufferes needed for output and error processing (from the host shell)
                    (using locks for local, and none for remote, as dictated by the upstream)
            - call processing for each buffer (output and error) using processBuffer method
                    - the processing of each buffer is basically done in the same way & the difference stands:
                            - in the way we determine the end of the line
                            - in the processing of a single line
                    - in order to provide a fully customizable approach for processing the output
                            each of the methods that differ are left as abstract
            - each line(output or error) is printed in the console and stored in the underlying ProcessStreamBuffer

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    2 +
 .../org/yocto/remote/utils/OutputProcessor.java    |  112 ++++++++++++++++++++
 .../src/org/yocto/remote/utils/RemoteHelper.java   |    2 +
 3 files changed, 116 insertions(+)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java

diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index e31d557..408e33a 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -11,6 +11,8 @@ Bundle-RequiredExecutionEnvironment: JavaSE-1.6
 Import-Package: org.eclipse.rse.core,
  org.eclipse.rse.core.model,
  org.eclipse.rse.core.subsystems,
+ org.eclipse.rse.internal.services.local.shells,
+ org.eclipse.rse.internal.services.shells,
  org.eclipse.rse.internal.terminals.ui,
  org.eclipse.rse.internal.terminals.ui.views,
  org.eclipse.rse.services,
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
new file mode 100644
index 0000000..401a782
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
@@ -0,0 +1,112 @@
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
+import java.io.BufferedReader;
+import java.io.IOException;
+import java.io.InputStreamReader;
+import java.util.concurrent.locks.Lock;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.internal.services.local.shells.LocalHostShell;
+import org.eclipse.rse.internal.services.shells.TerminalServiceHostShell;
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;
+import org.eclipse.rse.services.shells.IHostShell;
+
+public abstract class OutputProcessor{
+	private static final int ERROR_BUFFER = 1;
+	private static final int OUTPUT_BUFFER = 2;
+	protected String task;
+	protected ProcessStreamBuffer processBuffer;
+	protected IHostShell hostShell;
+	protected CommandResponseHandler cmdHandler;
+	protected IProgressMonitor monitor;
+
+	public OutputProcessor(IProgressMonitor monitor, IHostShell hostShell, CommandResponseHandler cmdHandler, String task){
+		this.monitor = monitor;
+		this.hostShell = hostShell;
+		this.processBuffer = new ProcessStreamBuffer(hostShell instanceof TerminalServiceHostShell);
+		this.cmdHandler = cmdHandler;
+		this.task = task;
+	}
+	public ProcessStreamBuffer processOutput() throws Exception{
+		if (hostShell == null)
+			throw new Exception("An error has occured while trying to run remote command!");
+		monitor.beginTask(this.task, RemoteHelper.TOTALWORKLOAD);
+		Lock lock = null;
+		if (hostShell instanceof LocalHostShell) {
+			lock = ((LocalHostShell)hostShell).getLock();
+			lock.lock();
+		}
+		BufferedReader inbr = null;
+		BufferedReader errbr = null;
+
+		if (hostShell instanceof LocalHostShell) {
+			inbr = ((LocalHostShell)hostShell).getReader(false);
+			errbr = ((LocalHostShell)hostShell).getReader(true);
+		} else {
+			Process p = new HostShellProcessAdapter(hostShell);
+			inbr = new BufferedReader(new InputStreamReader(p.getInputStream()));
+			errbr = new BufferedReader(new InputStreamReader(p.getErrorStream()));
+		}
+		boolean cancel = false;
+		while (!cancel) {
+			if(monitor.isCanceled()) {
+				cancel = true;
+				if (lock != null)
+					lock.unlock();
+				throw new InterruptedException("User Cancelled");
+			}
+			processBuffer(errbr, ERROR_BUFFER);
+			processBuffer(inbr, OUTPUT_BUFFER);
+			cancel = true;
+		}
+		if (lock != null)
+			lock.unlock();
+		return processBuffer;
+	}
+	protected abstract boolean isErrChStop(char ch);
+	protected abstract boolean isOutChStop(char ch);
+	protected boolean isChStop(char ch, int type){
+		if (type == ERROR_BUFFER)
+			return isErrChStop(ch);
+		else if(type == OUTPUT_BUFFER)
+			return isOutChStop(ch);
+		return false;
+	}
+	protected abstract void processOutputBufferLine(char ch, String str);
+	protected abstract void processErrorBufferLine(char ch, String str);
+	protected void processBufferLine(String str, char ch, int type){
+		if (type == ERROR_BUFFER)
+			processErrorBufferLine(ch, str);
+		else if(type == OUTPUT_BUFFER)
+			processOutputBufferLine(ch, str);
+	}
+	protected void processBuffer(BufferedReader br, int type) throws IOException{
+		StringBuffer buffer = new StringBuffer();
+		int c;
+		if (br != null)
+		while ((c = br.read()) != -1) {
+			char ch = (char) c;
+			buffer.append(ch);
+			if (isChStop(ch, type)){
+				String str = buffer.toString();
+				processBufferLine(str, ch, type);
+				System.out.println(str);
+				if (str.trim().equals(RemoteHelper.TERMINATOR)) {
+					break;
+				}
+				cmdHandler.response(str, false);
+				buffer.delete(0, buffer.length());
+			}
+		}
+	}
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
index a1e9a08..4d4f047 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
@@ -49,6 +49,8 @@ import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem;
 public class RemoteHelper {
 	private final static String EXIT_CMD = "exit"; //$NON-NLS-1$
 	private final static String CMD_DELIMITER = ";"; //$NON-NLS-1$
+	public static final String TERMINATOR = "234o987dsfkcqiuwey18837032843259d";//$NON-NLS-1$
+	public static final int TOTALWORKLOAD = 100;
 
 	public static IHost getRemoteConnectionByName(String remoteConnection) {
 		if (remoteConnection == null)
-- 
1.7.9.5


