Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DC1CE0051D
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2013 07:47:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Apr 2013 07:47:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,387,1363158000"; d="scan'208";a="310591755"
Received: from ideapad.rb.intel.com ([10.237.105.62])
	by orsmga002.jf.intel.com with ESMTP; 01 Apr 2013 07:47:43 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  1 Apr 2013 17:30:13 +0300
Message-Id: <1364826613-18120-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][windows-build] Fix message displaying & Recipe parsing
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
X-List-Received-Date: Mon, 01 Apr 2013 14:47:45 -0000

- customize output processing so that messages are displayed while a command sends interactive output (eg. git clone)
- collect command output from corresponding buffer: when not using a Local connection to create a new Recipe, there is only one buffer standing for both

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    1 +
 .../bc/remote/utils/CommandOutputProcessor.java    |   33 ++++++++
 .../org/yocto/bc/remote/utils/CommandRunnable.java |    7 +-
 .../org/yocto/bc/remote/utils/OutputProcessor.java |   85 ++++++++++++++++++++
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |   13 ++-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   65 +--------------
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |   13 +--
 .../org/yocto/bc/remote/utils/YoctoCommand.java    |    2 +-
 .../bc/remote/utils/YoctoRunnableWithProgress.java |   32 +++++++-
 9 files changed, 165 insertions(+), 86 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandOutputProcessor.java
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/OutputProcessor.java

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index 4e57f33..68fc49e 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -30,6 +30,7 @@ Import-Package: org.eclipse.cdt.managedbuilder.core,
  org.eclipse.rse.core.model,
  org.eclipse.rse.core.subsystems,
  org.eclipse.rse.internal.services.local.shells,
+ org.eclipse.rse.internal.services.shells,
  org.eclipse.rse.services,
  org.eclipse.rse.services.clientserver.messages,
  org.eclipse.rse.services.files,
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
index 0000000..877bb50
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/OutputProcessor.java
@@ -0,0 +1,85 @@
+package org.yocto.bc.remote.utils;
+
+import java.io.BufferedReader;
+import java.io.IOException;
+import java.util.concurrent.locks.Lock;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.internal.services.shells.TerminalServiceHostShell;
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
+		Lock lock = hostShell.getLock();
+		lock.lock();
+		BufferedReader inbr = hostShell.getReader(false);
+		BufferedReader errbr = hostShell.getReader(true);
+		boolean cancel = false;
+		while (!cancel) {
+			if(monitor.isCanceled()) {
+				cancel = true;
+				lock.unlock();
+				throw new InterruptedException("User Cancelled");
+			}
+			processBuffer(errbr, ERROR_BUFFER);
+			processBuffer(inbr, OUTPUT_BUFFER);
+			cancel = true;
+		}
+		lock.unlock();
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
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
index e0d502c..73d0805 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
@@ -8,8 +8,10 @@ public class ProcessStreamBuffer {
 	private static final String WHITESPACES = "\\s+";
 	List<String> errorLines;
 	List<String> outputLines;
+	boolean isTerminal;
 
-	ProcessStreamBuffer(){
+	ProcessStreamBuffer(boolean isTerminal){
+		this.isTerminal = isTerminal;
 		errorLines = new ArrayList<String>();
 		outputLines = new ArrayList<String>();
 	}
@@ -56,8 +58,13 @@ public class ProcessStreamBuffer {
 	}
 
 	public String getOutputLineContaining(String arg, String pattern) {
-		for (int i = outputLines.size() - 1; i >= 0; i--){
-			String line = outputLines.get(i);
+		List<String> lines = null;
+		if (isTerminal)
+			lines = errorLines;
+		else
+			lines = outputLines;
+		for (int i = lines.size() - 1; i >= 0; i--){
+			String line = lines.get(i);
 			if (line.contains(arg)) {
 				String[] tokens = line.split("\\s+");
 				if (Pattern.matches(pattern,  tokens[0])) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 507ac54..17d612b 100644
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
@@ -39,7 +35,6 @@ import org.eclipse.rse.services.IService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.model.RemoteFileUtility;
@@ -75,68 +70,12 @@ public class RemoteHelper {
 		return getRemoteMachine(connection).getCmdHandler();
 	}
 
-	public static ProcessStreamBuffer getProcessBuffer(IHost connection) {
-		return getRemoteMachine(connection).getProcessBuffer();
-	}
-
 	public static IHostShell getHostShell(IHost connection) {
 		return getRemoteMachine(connection).getHostShell();
 	}
 
-	public static ProcessStreamBuffer processOutput(IProgressMonitor monitor, IHostShell hostShell, CommandResponseHandler cmdHandler, char[] ending) throws Exception {
-		if (hostShell == null)
-			throw new Exception("An error has occured while trying to run remote command!");
-
-		Lock lock = hostShell.getLock();
-		lock.lock();
-		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
-		
-		BufferedReader inbr = hostShell.getReader(false);
-		BufferedReader errbr = hostShell.getReader(true);
-		
-		boolean cancel = false;
-		while (!cancel) {
-			if(monitor.isCanceled()) {
-				cancel = true;
-				lock.unlock();
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
-		lock.unlock();
-		return processBuffer;
+	public static ProcessStreamBuffer processOutput(IProgressMonitor monitor, IHostShell hostShell, CommandResponseHandler cmdHandler) throws Exception {
+		return new CommandOutputProcessor(monitor, hostShell, cmdHandler, "").processOutput();
 	}
 	
 	public static IHost getRemoteConnectionByName(String remoteConnection) {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
index 52bc011..0b9ca3b 100644
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
@@ -165,12 +160,6 @@ public class RemoteMachine {
 		return null;
 	}
 
-	public ProcessStreamBuffer getProcessBuffer() {
-		if (processBuffer == null)
-			processBuffer = new ProcessStreamBuffer();
-		return processBuffer;
-	}
-
 	public IHost getConnection() {
 		return connection;
 	}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoCommand.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoCommand.java
index 0fd4f32..9375806 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoCommand.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoCommand.java
@@ -11,7 +11,7 @@ public class YoctoCommand {
 		this.setCommand(command);
 		this.setInitialDirectory(initialDirectory);
 		this.setArguments(arguments);
-		this.setProcessBuffer(new ProcessStreamBuffer());
+		this.setProcessBuffer(new ProcessStreamBuffer(false));
 	}
 
 	public String getCommand() {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
index e748be7..81311fe 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
@@ -31,6 +31,7 @@ public class YoctoRunnableWithProgress implements IRunnableWithProgress {
 		this.calculator = new GitCalculatePercentage();
 	}
 
+	
 	private interface ICalculatePercentage {
 		public float calWorkloadDone(String info) throws IllegalArgumentException;
 	}
@@ -80,7 +81,36 @@ public class YoctoRunnableWithProgress implements IRunnableWithProgress {
 			e.printStackTrace();
 		}
 	}
+	class YoctoRunnableOutputProcessor extends OutputProcessor{
 
+		public YoctoRunnableOutputProcessor(IProgressMonitor monitor,
+				IHostShell hostShell, CommandResponseHandler cmdHandler,
+				String task) {
+			super(monitor, hostShell, cmdHandler, task);
+		}
+		@Override
+		protected boolean isErrChStop(char ch) {
+			return (ch == '\n' || ch == '\r');
+		}
+
+		@Override
+		protected boolean isOutChStop(char ch) {
+			return (ch == '\n');
+		}
+
+		@Override
+		protected void processOutputBufferLine(char ch, String str) {
+			processBuffer.addOutputLine(str);
+		}
+
+		@Override
+		protected void processErrorBufferLine(char ch, String str) {
+			processBuffer.addOutputLine(str);
+			if (ch == '\r')
+				reportProgress(str);
+		}
+		
+	}
 
 	class YoctoThread implements Runnable{
 		private IHost connection;
@@ -98,7 +128,7 @@ public class YoctoRunnableWithProgress implements IRunnableWithProgress {
 		public void run() {
 			try {
 				hostShell = RemoteHelper.runCommandRemote(this.connection, command, monitor);
-				command.setProcessBuffer(RemoteHelper.processOutput(monitor, hostShell, cmdHandler, new char[]{'\n', '\r'}));
+				command.setProcessBuffer(new YoctoRunnableOutputProcessor(monitor, hostShell, cmdHandler, taskName).processOutput());
 			} catch (CoreException e) {
 				e.printStackTrace();
 			} catch (Exception e) {
-- 
1.7.9.5


