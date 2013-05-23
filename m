Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5696BE014F7
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 07:59:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 May 2013 07:59:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,728,1363158000"; d="scan'208";a="318423616"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2013 07:59:40 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 17:38:34 +0300
Message-Id: <1369319915-25590-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [eclipse-poky][branch:windows-build][PATCH 3/4] Refactor processing of commands output
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
X-List-Received-Date: Thu, 23 May 2013 14:59:42 -0000

- refactored the processing of commands output in order to offer a more extensible and abstract output processor that can be easily customized as needed for different purposes
	- the newly introduced OutputProcessor will offer:
		- a method for processing the buffer it receives(either error or output)
		- abstract methods for processing an output or error lines
		- abstract methods for deciding when an line(output or error) has ended by searching for a specific character

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../bc/remote/utils/CommandOutputProcessor.java    |   33 +++++++
 .../org/yocto/bc/remote/utils/CommandRunnable.java |    7 +-
 .../org/yocto/bc/remote/utils/OutputProcessor.java |  102 ++++++++++++++++++++
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   77 +--------------
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    7 +-
 .../bc/remote/utils/YoctoRunnableWithProgress.java |    2 +-
 6 files changed, 140 insertions(+), 88 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandOutputProcessor.java
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/OutputProcessor.java

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandOutputProcessor.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandOutputProcessor.java
new file mode 100644
index 0000000..4da33a4
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandOutputProcessor.java
@@ -0,0 +1,33 @@
+package org.yocto.bc.remote.utils;
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
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
index 7406f50..f1ab9b1 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
@@ -1,13 +1,8 @@
 package org.yocto.bc.remote.utils;
 
-import java.io.BufferedReader;
-import java.io.InputStreamReader;
-import java.util.concurrent.locks.Lock;
-
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.rse.core.model.IHost;
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 
 public class CommandRunnable implements Runnable{
@@ -28,7 +23,7 @@ public class CommandRunnable implements Runnable{
 	public void run() {
 		try {
 			hostShell = RemoteHelper.runCommandRemote(connection, cmd, monitor);
-			cmd.setProcessBuffer(RemoteHelper.processOutput(monitor, hostShell, cmdHandler, new char[]{'\n'}));
+			cmd.setProcessBuffer(RemoteHelper.processOutput(monitor, hostShell, cmdHandler));
 		} catch (CoreException e) {
 			e.printStackTrace();
 		} catch (Exception e) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/OutputProcessor.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/OutputProcessor.java
new file mode 100644
index 0000000..6d109e5
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/OutputProcessor.java
@@ -0,0 +1,102 @@
+package org.yocto.bc.remote.utils;
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
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 5b82e13..17d612b 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -10,16 +10,12 @@
  ********************************************************************************/
 package org.yocto.bc.remote.utils;
 
-import java.io.BufferedReader;
 import java.io.File;
 import java.io.InputStream;
-import java.io.InputStreamReader;
 import java.net.URI;
 import java.net.URISyntaxException;
-import java.util.Arrays;
 import java.util.HashMap;
 import java.util.Map;
-import java.util.concurrent.locks.Lock;
 
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
@@ -35,13 +31,10 @@ import org.eclipse.rse.core.RSECorePlugin;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.model.ISystemRegistry;
 import org.eclipse.rse.core.subsystems.ISubSystem;
-import org.eclipse.rse.internal.services.local.shells.LocalHostShell;
-import org.eclipse.rse.internal.services.shells.TerminalServiceHostShell;
 import org.eclipse.rse.services.IService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.model.RemoteFileUtility;
@@ -81,74 +74,8 @@ public class RemoteHelper {
 		return getRemoteMachine(connection).getHostShell();
 	}
 
-	public static ProcessStreamBuffer processOutput(IProgressMonitor monitor, IHostShell hostShell, CommandResponseHandler cmdHandler, char[] ending) throws Exception {
-		if (hostShell == null)
-			throw new Exception("An error has occured while trying to run remote command!");
-
-		Lock lock = null;
-		if (hostShell instanceof LocalHostShell) {
-			lock = ((LocalHostShell)hostShell).getLock();
-			lock.lock();
-		}
-		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer(hostShell instanceof TerminalServiceHostShell);
-		
-		BufferedReader inbr = null;
-		BufferedReader errbr = null;
-
-		if (hostShell instanceof LocalHostShell) {
-			inbr = ((LocalHostShell)hostShell).getReader(false);
-			errbr = ((LocalHostShell)hostShell).getReader(true);
-		} else {
-			Process p = new HostShellProcessAdapter(hostShell);
-			inbr = new BufferedReader(new InputStreamReader(p.getInputStream()));
-			errbr = new BufferedReader(new InputStreamReader(p.getErrorStream()));
-		}
-		
-		boolean cancel = false;
-		while (!cancel) {
-			if(monitor.isCanceled()) {
-				cancel = true;
-				if (lock != null)
-					lock.unlock();
-				throw new InterruptedException("User Cancelled");
-			}
-			StringBuffer buffer = new StringBuffer();
-			int c;
-			if (errbr != null)
-				while ((c = errbr.read()) != -1) {
-					char ch = (char) c;
-					buffer.append(ch);
-					if (Arrays.asList(ending).contains(ch)){
-						String str = buffer.toString();
-						processBuffer.addErrorLine(str);
-						System.out.println(str);
-						if (str.trim().equals(RemoteHelper.TERMINATOR)) {
-							break;
-						}
-						cmdHandler.response(str, true);
-						buffer.delete(0, buffer.length());
-					}
-				}
-			if (inbr != null)
-				while ((c = inbr.read()) != -1) {
-					char ch = (char) c;
-					buffer.append(ch);
-					if (ch == '\n'){
-						String str = buffer.toString();
-						processBuffer.addOutputLine(str);
-						System.out.println(str);
-						if (str.trim().equals(RemoteHelper.TERMINATOR)) {
-							break;
-						}
-						cmdHandler.response(str, false);
-						buffer.delete(0, buffer.length());
-					}
-				}
-			cancel = true;
-		}
-		if (lock != null)
-			lock.unlock();
-		return processBuffer;
+	public static ProcessStreamBuffer processOutput(IProgressMonitor monitor, IHostShell hostShell, CommandResponseHandler cmdHandler) throws Exception {
+		return new CommandOutputProcessor(monitor, hostShell, cmdHandler, "").processOutput();
 	}
 	
 	public static IHost getRemoteConnectionByName(String remoteConnection) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
index 14501e4..0b9ca3b 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
@@ -1,12 +1,9 @@
 package org.yocto.bc.remote.utils;
 
-import java.io.BufferedReader;
-import java.io.InputStreamReader;
 import java.util.ArrayList;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
-import java.util.concurrent.locks.Lock;
 
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
@@ -19,7 +16,6 @@ import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.internal.services.local.shells.LocalShellService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
@@ -35,7 +31,6 @@ public class RemoteMachine {
 	private CommandResponseHandler cmdHandler;
 	private IHostShell hostShell;
 	private IShellService shellService;
-	private ProcessStreamBuffer processBuffer;
 	private IHost connection;
 
 	private ISubSystem fileSubSystem;
@@ -79,7 +74,7 @@ public class RemoteMachine {
 			try {
 				SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 3);
 				IHostShell hostShell = shellService.runCommand("", "env" + " ; echo " + RemoteHelper.TERMINATOR + "; exit;", new String[]{}, subMonitor);
-				buffer = RemoteHelper.processOutput(subMonitor, hostShell, cmdHandler, new char[]{'\n'});
+				buffer = RemoteHelper.processOutput(subMonitor, hostShell, cmdHandler);
 				for(int i = 0; i < buffer.getOutputLines().size(); i++) {
 					String out = buffer.getOutputLines().get(i);
 					String[] tokens = out.split("=");
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
index e748be7..7eb7172 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
@@ -98,7 +98,7 @@ public class YoctoRunnableWithProgress implements IRunnableWithProgress {
 		public void run() {
 			try {
 				hostShell = RemoteHelper.runCommandRemote(this.connection, command, monitor);
-				command.setProcessBuffer(RemoteHelper.processOutput(monitor, hostShell, cmdHandler, new char[]{'\n', '\r'}));
+				command.setProcessBuffer(RemoteHelper.processOutput(monitor, hostShell, cmdHandler));
 			} catch (CoreException e) {
 				e.printStackTrace();
 			} catch (Exception e) {
-- 
1.7.9.5


