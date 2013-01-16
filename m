Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDD9BE00527
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 14:52:47 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Jan 2013 14:52:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,481,1355126400"; d="scan'208";a="274689302"
Received: from unknown (HELO localhost.localdomain) ([10.252.35.143])
	by fmsmga001.fm.intel.com with ESMTP; 16 Jan 2013 14:52:44 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 17 Jan 2013 00:51:48 +0200
Message-Id: <1358376709-20375-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][branch:windows-build]Performance fix for Linux implementation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Jan 2013 22:52:48 -0000

- run each command in a separate shell - needs explicit sourcing of environment and closing for each command
- tested only against Linux host & Linux local host connection
- needs local patch for upstream API

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    1 +
 .../src/org/yocto/bc/bitbake/BBRecipe.java         |    5 +-
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   23 ++-
 .../org/yocto/bc/remote/utils/CommandRunnable.java |   90 +++++++++
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |   12 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   98 ++++------
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |  127 +++++++++++--
 .../remote/utils/YoctoHostShellProcessAdapter.java |  198 --------------------
 .../bc/remote/utils/YoctoRunnableWithProgress.java |  191 ++++++++++++++++---
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    2 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   71 ++++---
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   29 +--
 12 files changed, 467 insertions(+), 380 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index 1f0e63e..4e57f33 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -29,6 +29,7 @@ Import-Package: org.eclipse.cdt.managedbuilder.core,
  org.eclipse.rse.core,
  org.eclipse.rse.core.model,
  org.eclipse.rse.core.subsystems,
+ org.eclipse.rse.internal.services.local.shells,
  org.eclipse.rse.services,
  org.eclipse.rse.services.clientserver.messages,
  org.eclipse.rse.services.files,
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
index 6a33ade..6d003ce 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBRecipe.java
@@ -26,9 +26,9 @@ public class BBRecipe extends BBSession {
 		super(session.shell, session.pinfo.getURI());
 		this.session = session;
 		this.fileURI = filePath;
-		this.parsingCmd = "DISABLE_SANITY_CHECKS=\"1\" bitbake -e -b " + filePath.getPath();
+		this.parsingCmd = "DISABLE_SANITY_CHECKS=\"1\" bitbake -e -b " + filePath.getPath() + " >& " + BB_ENV_FILE;
 	}
-	
+
 	@Override
 	public void initialize() throws Exception {
 		if (this.size() == 0) {
@@ -37,6 +37,7 @@ public class BBRecipe extends BBSession {
 		}
 	}
 
+	@Override
 	protected URI getDefaultDepends() {
 		return this.fileURI;
 	}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 6441029..ef01d96 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -48,6 +48,7 @@ public class ShellSession {
 	public static final String LT = System.getProperty("line.separator");
 	public static final String exportCmd = "export BB_ENV_EXTRAWHITE=\"DISABLE_SANITY_CHECKS $BB_ENV_EXTRAWHITE\"";
 	public static final String exportColumnsCmd = "export COLUMNS=1000";
+	private static final String BUILD_DIR = "/build/";
 
 	public static String getFilePath(String file) throws IOException {
 		File f = new File(file);
@@ -87,8 +88,11 @@ public class ShellSession {
 	private void initializeShell(IProgressMonitor monitor) throws IOException {
 		try {
 			if (root != null) {
-				RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""));
-				RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(exportCmd, root.getAbsolutePath(), ""));
+				IHost connection = projectInfo.getConnection();
+//				RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""));
+				RemoteHelper.handleRunCommandRemote(connection, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""), monitor);
+//				RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(exportCmd, root.getAbsolutePath(), ""));
+				RemoteHelper.handleRunCommandRemote(connection,  new YoctoCommand(exportCmd, root.getAbsolutePath(), ""), monitor);
 			} else {
 				throw new Exception("Root file not found!");
 			}
@@ -107,9 +111,11 @@ public class ShellSession {
 
 		try {
 			if (projectInfo.getConnection() != null) {
-				hasErrors = RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
+//				hasErrors = RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
+				command = getInitCmd() + command;
+				RemoteHelper.handleRunCommandRemote(projectInfo.getConnection(), new YoctoCommand(command, getBuildDirAbsolutePath(), ""), new NullProgressMonitor());
 //				return RemoteHelper.getProcessBuffer(projectInfo.getConnection()).getMergedOutputLines();
-				return root.getAbsolutePath() + "/build/";
+				return getBuildDirAbsolutePath();
 			}
 			return null;
 		} catch (Exception e) {
@@ -118,9 +124,16 @@ public class ShellSession {
 		return null;
 	}
 
+	private String getBuildDirAbsolutePath(){
+		return root.getAbsolutePath() + BUILD_DIR;
+	}
+
+    private String getInitCmd() {
+    	return "source " + initCmd + " " + getBuildDirAbsolutePath() + " > tempsf; rm -rf tempsf;";
+	}
+
 synchronized
 	public void execute(String command, ICommandResponseHandler handler) throws IOException {
-		System.out.println(command);
 		execute(command, TERMINATOR, handler);
 	}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
new file mode 100644
index 0000000..fe8b7a7
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandRunnable.java
@@ -0,0 +1,90 @@
+package org.yocto.bc.remote.utils;
+
+import java.io.BufferedReader;
+import java.util.concurrent.locks.Lock;
+
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.shells.IHostShell;
+
+public class CommandRunnable implements Runnable{
+	private IHostShell hostShell;
+	private IHost connection;
+	private YoctoCommand cmd;
+	private IProgressMonitor monitor;
+	private CommandResponseHandler cmdHandler;
+
+	CommandRunnable(IHost connection, YoctoCommand cmd, IProgressMonitor monitor){
+		this.connection = connection;
+		this.cmdHandler = RemoteHelper.getCommandHandler(connection);
+		this.cmd = cmd;
+		this.monitor = monitor;
+		this.hostShell = null;
+	}
+	@Override
+	public void run() {
+		try {
+			hostShell = RemoteHelper.runCommandRemote(connection, cmd, monitor);
+			cmd.setProcessBuffer(processOutput());
+		} catch (CoreException e) {
+			e.printStackTrace();
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+
+	private ProcessStreamBuffer processOutput() throws Exception {
+		if (hostShell == null)
+			throw new Exception("An error has occured while trying to run remote command!");
+
+		Lock lock = hostShell.getStandardOutputReader().getReaderLock();
+		lock.lock();
+		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
+		BufferedReader inbr = hostShell.getStandardOutputReader().getReader();
+		BufferedReader errbr = hostShell.getStandardErrorReader().getReader();
+		boolean cancel = false;
+		while (!cancel) {
+			if(monitor.isCanceled()) {
+				cancel = true;
+				lock.unlock();
+				throw new InterruptedException("User Cancelled");
+			}
+			StringBuffer buffer = new StringBuffer();
+			int c;
+			while ((c = errbr.read()) != -1) {
+				char ch = (char) c;
+				buffer.append(ch);
+				if (ch == '\n'){
+					String str = buffer.toString();
+					processBuffer.addErrorLine(str);
+					System.out.println(str);
+					if (str.trim().equals(RemoteHelper.TERMINATOR)) {
+						break;
+					}
+					cmdHandler.response(str, true);
+					buffer.delete(0, buffer.length());
+				}
+			}
+
+			while ((c = inbr.read()) != -1) {
+				char ch = (char) c;
+				buffer.append(ch);
+				if (ch == '\n'){
+					String str = buffer.toString();
+					processBuffer.addOutputLine(str);
+					System.out.println(str);
+					if (str.trim().equals(RemoteHelper.TERMINATOR)) {
+						break;
+					}
+					cmdHandler.response(str, false);
+					buffer.delete(0, buffer.length());
+				}
+			}
+			cancel = true;
+		}
+		lock.unlock();
+		return processBuffer;
+	}
+
+}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
index 2c6d122..e0d502c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
@@ -8,27 +8,27 @@ public class ProcessStreamBuffer {
 	private static final String WHITESPACES = "\\s+";
 	List<String> errorLines;
 	List<String> outputLines;
-	
+
 	ProcessStreamBuffer(){
 		errorLines = new ArrayList<String>();
 		outputLines = new ArrayList<String>();
 	}
-	
+
 	public void addErrorLine(String line){
 		errorLines.add(line);
 	}
 	public void addOutputLine(String line){
 		outputLines.add(line);
 	}
-	
+
 	public List<String> getOutputLines(){
 		return outputLines;
 	}
-	
+
 	public List<String> getErrorLines(){
 		return errorLines;
 	}
-	
+
 	public String getMergedOutputLines(){
 		String returnVal = "";
 		for (int i = 0; i < outputLines.size(); i++) {
@@ -65,6 +65,6 @@ public class ProcessStreamBuffer {
 				}
 			}
 		}
-		return null;
+		return "";
 	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 814e3a5..1134c8e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -14,7 +14,6 @@ import java.io.File;
 import java.net.URI;
 import java.net.URISyntaxException;
 import java.util.HashMap;
-import java.util.List;
 import java.util.Map;
 
 import org.eclipse.core.runtime.CoreException;
@@ -25,6 +24,7 @@ import org.eclipse.core.runtime.OperationCanceledException;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.osgi.util.NLS;
 import org.eclipse.ptp.remote.core.IRemoteConnection;
 import org.eclipse.rse.core.RSECorePlugin;
 import org.eclipse.rse.core.model.IHost;
@@ -35,11 +35,11 @@ import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
 import org.eclipse.rse.services.shells.IHostShell;
+import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.model.RemoteFileUtility;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.FileServiceSubSystem;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
 import org.eclipse.rse.subsystems.files.core.subsystems.IRemoteFileSubSystem;
-import org.eclipse.rse.subsystems.shells.core.subsystems.IRemoteCmdSubSystem;
 import org.eclipse.ui.console.MessageConsole;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.wizards.install.Messages;
@@ -69,10 +69,6 @@ public class RemoteHelper {
 		return getRemoteMachine(connection).getCmdHandler();
 	}
 
-	public static YoctoHostShellProcessAdapter getHostShellProcessAdapter(IHost connection) {
-		return getRemoteMachine(connection).getHostShellProcessAdapter();
-	}
-
 	public static ProcessStreamBuffer getProcessBuffer(IHost connection) {
 		return getRemoteMachine(connection).getProcessBuffer();
 	}
@@ -198,13 +194,37 @@ public class RemoteHelper {
 		return getRemoteMachine(connection).getShellService(monitor);
 	}
 
-	public static ISubSystem getCmdSubsystem(IHost host) {
-		if (host == null)
-			return null;
-		ISubSystem[] subSystems = host.getSubSystems();
-		for (int i = 0; i < subSystems.length; i++) {
-			if (subSystems[i] instanceof IRemoteCmdSubSystem)
-				return subSystems[i];
+	public static void handleRunCommandRemote(IHost connection, YoctoCommand cmd, IProgressMonitor monitor){
+		try {
+			CommandRunnable cmdRun = new CommandRunnable(connection, cmd, monitor);
+			cmdRun.run();
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+
+	public static IHostShell runCommandRemote(IHost connection, YoctoCommand cmd,
+			IProgressMonitor monitor) throws CoreException {
+
+		monitor.beginTask(NLS.bind(Messages.RemoteShellExec_1,
+				cmd, cmd.getArguments()), 10);
+
+		String remoteCommand = cmd.getCommand() + " " + cmd.getArguments() + " ; echo " + TERMINATOR + "; exit ;";
+
+		IShellService shellService;
+		try {
+			shellService = (IShellService) getConnectedShellService(connection, new SubProgressMonitor(monitor, 7));
+
+			String env[] = getRemoteMachine(connection).prepareEnvString(monitor);
+
+			try {
+				IHostShell hostShell = shellService.runCommand(cmd.getInitialDirectory(), remoteCommand, env, new SubProgressMonitor(monitor, 3));
+				return hostShell;
+			} catch (Exception e) {
+				e.printStackTrace();
+			}
+		} catch (Exception e1) {
+			e1.printStackTrace();
 		}
 		return null;
 	}
@@ -248,54 +268,6 @@ public class RemoteHelper {
 		return null;
 	}
 
-	public static boolean runCommandRemote(final IHost connection, final YoctoCommand cmd) throws Exception {
-		final String remoteCommand = cmd.getCommand() + " " + cmd.getArguments();
-		final boolean hasErrors = false;
-
-		if (!cmd.getInitialDirectory().isEmpty()) {
-			writeToShell(connection, "cd " + cmd.getInitialDirectory());
-		}
-		if (!hasErrors)
-			writeToShell(connection, remoteCommand);
-
-		return hasErrors;
-	}
-
-	public static boolean writeToShell(final IHost connection, final String remoteCommand){
-		new Thread(new Runnable() {
-			@Override
-			public void run() {
-				try {
-					YoctoHostShellProcessAdapter adapter = getHostShellProcessAdapter(connection);
-					String fullRemoteCommand = remoteCommand + "; echo " + TERMINATOR + ";";
-					adapter.setLastCommand(fullRemoteCommand);
-					getHostShell(connection).writeToShell(fullRemoteCommand);
-					while (!adapter.isFinished())
-						Thread.sleep(2);
-				} catch (Exception e) {
-					e.printStackTrace();
-				}
-			}
-		}).run();
-		return true;
-	}
-
-	public static void runBatchRemote(IHost connection, List<YoctoCommand> cmds, boolean displayOutput) throws CoreException {
-		try {
-			String remoteCommand = "";
-			for (YoctoCommand cmd : cmds) {
-				remoteCommand = cmd.getCommand() + " " + cmd.getArguments();
-				if (!cmd.getInitialDirectory().isEmpty()) {
-					writeToShell(connection, "cd " + cmd.getInitialDirectory());
-				}
-				writeToShell(connection, remoteCommand);
-			}
-
-		} catch (Exception e1) {
-			e1.printStackTrace();
-		}
-	}
-
 	/**
 	 * Throws a core exception with an error status object built from the given
 	 * message, lower level exception, and error code.
@@ -345,8 +317,4 @@ public class RemoteHelper {
 		return false;
 	}
 
-	public static void clearProcessBuffer(IHost connection) {
-		getHostShellProcessAdapter(connection).clearProcessBuffer();
-	}
-
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
index d4cdb23..18c41e1 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
@@ -1,6 +1,10 @@
 package org.yocto.bc.remote.utils;
 
-import java.io.IOException;
+import java.io.BufferedReader;
+import java.io.InputStreamReader;
+import java.util.ArrayList;
+import java.util.HashMap;
+import java.util.List;
 import java.util.Map;
 
 import org.eclipse.core.runtime.CoreException;
@@ -8,10 +12,13 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.OperationCanceledException;
 import org.eclipse.core.runtime.Status;
+import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.subsystems.ISubSystem;
+import org.eclipse.rse.internal.services.local.shells.LocalShellService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
@@ -26,7 +33,6 @@ public class RemoteMachine {
 	private MessageConsole console;
 	private CommandResponseHandler cmdHandler;
 	private IHostShell hostShell;
-	private YoctoHostShellProcessAdapter hostShellProcessAdapter;
 	private IShellService shellService;
 	private ProcessStreamBuffer processBuffer;
 	private IHost connection;
@@ -37,6 +43,111 @@ public class RemoteMachine {
 	public RemoteMachine(IHost connection) {
 		setConnection(connection);
 	}
+	private ProcessStreamBuffer processOutput(Process process, IProgressMonitor monitor) throws Exception {
+		if (process == null)
+			throw new Exception("An error has occured while trying to run remote command!");
+		ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
+
+		BufferedReader inbr = new BufferedReader(new InputStreamReader(process.getInputStream()));
+		BufferedReader errbr = new BufferedReader(new InputStreamReader(process.getErrorStream()));
+		boolean cancel = false;
+		while (!cancel) {
+			if(monitor.isCanceled()) {
+				cancel = true;
+				throw new InterruptedException("User Cancelled");
+			}
+			StringBuffer buffer = new StringBuffer();
+			int c;
+			while ((c = errbr.read()) != -1) {
+				char ch = (char) c;
+				buffer.append(ch);
+				if (ch == '\n'){
+					String str = buffer.toString();
+					processBuffer.addErrorLine(str);
+					System.out.println(str);
+					if (str.trim().equals(RemoteHelper.TERMINATOR)) {
+						break;
+					}
+					buffer.delete(0, buffer.length());
+				}
+			}
+
+			while ((c = inbr.read()) != -1) {
+				char ch = (char) c;
+				buffer.append(ch);
+				if (ch == '\n'){
+					String str = buffer.toString();
+					processBuffer.addOutputLine(str);
+					System.out.println(str);
+					if (str.trim().equals(RemoteHelper.TERMINATOR)) {
+						break;
+					}
+					buffer.delete(0, buffer.length());
+				}
+			}
+			cancel = true;
+		}
+		return processBuffer;
+	}
+
+	public String[] prepareEnvString(IProgressMonitor monitor){
+		String[] env = null;
+		try {
+			if (shellService instanceof LocalShellService) {
+				env  = shellService.getHostEnvironment();
+			} else {
+				List<String> envList = new ArrayList<String>();
+				getRemoteEnvProxyVars(monitor);
+				String value = "";
+				for (String varName : environment.keySet()){
+					value = varName + "=" + environment.get(varName);
+					envList.add(value);
+				}
+				env = envList.toArray(new String[envList.size()]);
+			}
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+
+		return env;
+	}
+	public void getRemoteEnvProxyVars(IProgressMonitor monitor){
+		try {
+			if (environment != null && !environment.isEmpty())
+				return;
+
+			environment = new HashMap<String, String>();
+
+			IShellService shellService = getShellService(new SubProgressMonitor(monitor, 7));
+
+			HostShellProcessAdapter p = null;
+			ProcessStreamBuffer buffer = null;
+			try {
+				SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 3);
+				IHostShell hostShell = shellService.runCommand("", "env" + " ; echo " + RemoteHelper.TERMINATOR + "; exit;", new String[]{}, subMonitor);
+				p = new HostShellProcessAdapter(hostShell);
+				buffer = processOutput(p, subMonitor);
+				for(int i = 0; i < buffer.getOutputLines().size(); i++) {
+					String out = buffer.getOutputLines().get(i);
+					String[] tokens = out.split("=");
+					if (tokens.length != 2)
+						continue;
+					String varName = tokens[0];
+					String varValue = tokens[1];
+					if (varName.contains(PROXY))
+						environment.put(varName, varValue);
+				}
+			} catch (Exception e) {
+				if (p != null) {
+					p.destroy();
+				}
+				e.printStackTrace();
+			}
+
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
 
 	public Map<String, String> getEnvironment() {
 		return environment;
@@ -60,6 +171,7 @@ public class RemoteMachine {
 		try {
 			if (hostShell == null) {
 				hostShell = getShellService(new NullProgressMonitor()).launchShell("", new String[]{}, new NullProgressMonitor());
+				prepareEnvString(new NullProgressMonitor());
 			}
 		} catch (SystemMessageException e) {
 			e.printStackTrace();
@@ -69,17 +181,6 @@ public class RemoteMachine {
 		return hostShell;
 	}
 
-	public YoctoHostShellProcessAdapter getHostShellProcessAdapter() {
-		try {
-			if (hostShellProcessAdapter == null)
-				hostShellProcessAdapter = new YoctoRunnableWithProgress(getHostShell(), getProcessBuffer(), getCmdHandler());
-			return hostShellProcessAdapter;
-		} catch (IOException e) {
-			e.printStackTrace();
-			return null;
-		}
-	}
-
 	public IShellService getShellService(IProgressMonitor monitor) throws Exception {
 		if (shellService != null)
 			return shellService;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
deleted file mode 100644
index aca6a6e..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
+++ /dev/null
@@ -1,198 +0,0 @@
-package org.yocto.bc.remote.utils;
-
-import java.io.IOException;
-import java.util.HashMap;
-import java.util.Map;
-import java.util.concurrent.Semaphore;
-import java.util.regex.Matcher;
-import java.util.regex.Pattern;
-
-import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.NullProgressMonitor;
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;
-import org.eclipse.rse.services.shells.IHostOutput;
-import org.eclipse.rse.services.shells.IHostShell;
-import org.eclipse.rse.services.shells.IHostShellChangeEvent;
-import org.eclipse.rse.services.shells.IHostShellOutputReader;
-import org.eclipse.swt.widgets.Display;
-
-public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
-	private ProcessStreamBuffer processStreamBuffer;
-	private CommandResponseHandler commandResponseHandler;
-	private boolean isFinished;
-	private ICalculatePercentage calculator;
-	private int reportedWorkload;
-	private boolean isAlive;
-
-	private String command;
-	private Map<String, IProgressMonitor> commandMonitors;
-
-	private Semaphore sem;
-
-
-	public YoctoHostShellProcessAdapter(IHostShell hostShell, ProcessStreamBuffer processStreamBuffer, CommandResponseHandler commandResponseHandler) throws IOException {
-		super(hostShell);
-		this.processStreamBuffer = processStreamBuffer;
-		this.commandResponseHandler = commandResponseHandler;
-		this.calculator = new GitCalculatePercentage();
-		this.sem = new Semaphore(1);
-		this.command = "";
-		this.commandMonitors = new HashMap<String, IProgressMonitor>();
-	}
-
-	public String getLastCommand() {
-		return command;
-	}
-
-	public synchronized void setLastCommand(String lastCommand) {
-		try {
-			// there are still some processes that might take a long time and if we do not wait for them,
-			// then the semaphore will not be released, because an interrupted exception will occur
-			Thread.sleep(2000);
-			isFinished = false;
-			sem.acquire();
-			this.command = lastCommand.trim();
-			this.commandMonitors.put(command, getOwnMonitor());
-		} catch (InterruptedException e) {
-			e.printStackTrace();
-		}
-	}
-
-	private interface ICalculatePercentage {
-		public float calWorkloadDone(String info) throws IllegalArgumentException;
-	}
-
-	private class GitCalculatePercentage implements ICalculatePercentage {
-		final Pattern pattern = Pattern.compile("^Receiving objects:\\s*(\\d+)%.*");
-		@Override
-		public float calWorkloadDone(String info) throws IllegalArgumentException {
-			Matcher m = pattern.matcher(info.trim());
-			if(m.matches()) {
-				return new Float(m.group(1)) / 100;
-			}else {
-				throw new IllegalArgumentException();
-			}
-		}
-	}
-
-	private IProgressMonitor getMonitor() {
-		if (command == null) {
-			return null;
-		}
-		return commandMonitors.get(command);
-	}
-
-	private void updateMonitor(final int work){
-
-		Display.getDefault().asyncExec(new Runnable() {
-
-			@Override
-			public void run() {
-				if (getMonitor() != null) {
-					getMonitor().worked(work);
-				}
-			}
-
-		});
-	}
-
-	private void doneMonitor(){
-		Display.getDefault().asyncExec(new Runnable() {
-			@Override
-			public void run() {
-				getMonitor().done();
-			}
-		});
-	}
-
-	private void reportProgress(String info) {
-		if(calculator == null) {
-			updateMonitor(1);
-		} else {
-			float percentage;
-			try {
-				percentage = calculator.calWorkloadDone(info);
-			} catch (IllegalArgumentException e) {
-				System.out.println(info);
-				//can't get percentage
-				return;
-			}
-			int delta = (int) (RemoteHelper.TOTALWORKLOAD * percentage - reportedWorkload);
-			if( delta > 0 ) {
-				updateMonitor(delta);
-				reportedWorkload += delta;
-			}
-
-			if (reportedWorkload == RemoteHelper.TOTALWORKLOAD)
-				doneMonitor();
-		}
-	}
-
-	@Override
-	public void shellOutputChanged(IHostShellChangeEvent event) {
-		IHostShellOutputReader reader = event.getReader();
-		IHostOutput[] lines = event.getLines();
-		if (reader.isErrorReader()) {
-			for (IHostOutput line : lines) {
-				String value = line.getString();
-				if (value.isEmpty()) {
-					continue;
-				}
-				System.out.println(value);
-				this.processStreamBuffer.addErrorLine(value);
-				if (this.commandResponseHandler != null)
-					this.commandResponseHandler.response(value, false);
-			}
-		} else {
-			for (IHostOutput line : lines) {
-				String value = line.getString().trim();
-				if (value.isEmpty()) {
-					continue;
-				}
-				if (value.endsWith(RemoteHelper.TERMINATOR)) {
-					sem.release();
-					isFinished = true;
-				}
-
-				reportProgress(value);
-				System.out.println(value);
-				this.processStreamBuffer.addOutputLine(value);
-				if (this.commandResponseHandler != null)
-					this.commandResponseHandler.response(value, false);
-			}
-		}
-
-	}
-	public boolean isFinished() {
-		return isFinished;
-	}
-	public boolean hasErrors(){
-		return this.processStreamBuffer.errorLines.size() != 0;
-	}
-
-	public boolean isAlive() {
-		return isAlive;
-	}
-
-	public void setAlive(boolean isAlive) {
-		this.isAlive = isAlive;
-	}
-
-	public void clearProcessBuffer() {
-		this.processStreamBuffer.outputLines.clear();
-		this.processStreamBuffer.errorLines.clear();
-	}
-
-	public IProgressMonitor getOwnMonitor() {
-		return new NullProgressMonitor();
-	}
-
-	public CommandResponseHandler getCommandResponseHandler() {
-		return commandResponseHandler;
-	}
-
-	public void setCommandResponseHandler(CommandResponseHandler commandResponseHandler) {
-		this.commandResponseHandler = commandResponseHandler;
-	}
-
-}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
index b6ed2b8..5aa6fd2 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
@@ -1,8 +1,13 @@
 package org.yocto.bc.remote.utils;
 
+import java.io.BufferedReader;
 import java.io.IOException;
 import java.lang.reflect.InvocationTargetException;
+import java.util.concurrent.locks.Lock;
+import java.util.regex.Matcher;
+import java.util.regex.Pattern;
 
+import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.ptp.remote.core.IRemoteConnection;
@@ -10,21 +15,39 @@ import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.ptp.remote.core.exception.RemoteConnectionException;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.services.shells.IHostShell;
+import org.eclipse.swt.widgets.Display;
 
-public class YoctoRunnableWithProgress extends YoctoHostShellProcessAdapter
-		implements IRunnableWithProgress {
+public class YoctoRunnableWithProgress implements IRunnableWithProgress {
 
 	private String taskName;
 	private IRemoteConnection remoteConnection;
 	private IRemoteServices remoteServices;
-	private String cmd;
-	private String args;
 	private IProgressMonitor monitor;
-	
-	public YoctoRunnableWithProgress(IHostShell hostShell,
-			ProcessStreamBuffer processStreamBuffer,
-			CommandResponseHandler commandResponseHandler) throws IOException {
-		super(hostShell, processStreamBuffer, commandResponseHandler);
+	private ICalculatePercentage calculator;
+	private int reportedWorkload;
+
+	private YoctoCommand command;
+
+	public YoctoRunnableWithProgress(YoctoCommand command) throws IOException {
+		this.command = command;
+		this.calculator = new GitCalculatePercentage();
+	}
+
+	private interface ICalculatePercentage {
+		public float calWorkloadDone(String info) throws IllegalArgumentException;
+	}
+
+	private class GitCalculatePercentage implements ICalculatePercentage {
+		final Pattern pattern = Pattern.compile("^Receiving objects:\\s*(\\d+)%.*");
+		@Override
+		public float calWorkloadDone(String info) throws IllegalArgumentException {
+			Matcher m = pattern.matcher(info.trim());
+			if(m.matches()) {
+				return new Float(m.group(1)) / 100;
+			}else {
+				throw new IllegalArgumentException();
+			}
+		}
 	}
 
 	@Override
@@ -33,7 +56,7 @@ public class YoctoRunnableWithProgress extends YoctoHostShellProcessAdapter
 		try {
 			this.monitor = monitor;
 			this.monitor.beginTask(taskName, RemoteHelper.TOTALWORKLOAD);
-			
+
 			if (!remoteConnection.isOpen()) {
 				try {
 					remoteConnection.open(monitor);
@@ -48,7 +71,8 @@ public class YoctoRunnableWithProgress extends YoctoHostShellProcessAdapter
 
 			try {
 				IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
-                RemoteHelper.runCommandRemote(connection, new YoctoCommand(cmd, "", args));
+				YoctoThread th = new YoctoThread(connection, command);
+				th.run();
 			} catch (Exception e) {
 				e.printStackTrace();
 			} finally {
@@ -59,9 +83,132 @@ public class YoctoRunnableWithProgress extends YoctoHostShellProcessAdapter
 		}
 	}
 
-	@Override
-	public IProgressMonitor getOwnMonitor() {
-		return monitor;
+
+	class YoctoThread implements Runnable{
+		private IHost connection;
+		private YoctoCommand command;
+		private CommandResponseHandler cmdHandler;
+		private IHostShell hostShell;
+
+		YoctoThread(IHost connection, YoctoCommand command){
+			this.connection = connection;
+			this.cmdHandler = RemoteHelper.getCommandHandler(connection);
+			this.command = command;
+		}
+
+		@Override
+		public void run() {
+			try {
+				hostShell = RemoteHelper.runCommandRemote(this.connection, command, monitor);
+				command.setProcessBuffer(processOutput());
+			} catch (CoreException e) {
+				e.printStackTrace();
+			} catch (Exception e) {
+				e.printStackTrace();
+			}
+		}
+		private ProcessStreamBuffer processOutput() throws Exception {
+			if (hostShell == null)
+				throw new Exception("An error has occured while trying to run remote command!");
+			monitor.beginTask(taskName, RemoteHelper.TOTALWORKLOAD);
+			Lock lock = hostShell.getStandardOutputReader().getReaderLock();
+			lock.lock();
+			ProcessStreamBuffer processBuffer = new ProcessStreamBuffer();
+			BufferedReader inbr = hostShell.getStandardOutputReader().getReader();
+			BufferedReader errbr = hostShell.getStandardErrorReader().getReader();
+			boolean cancel = false;
+			while (!cancel) {
+				if(monitor.isCanceled()) {
+					cancel = true;
+					lock.unlock();
+					throw new InterruptedException("User Cancelled");
+				}
+				StringBuffer buffer = new StringBuffer();
+				int c;
+				if (errbr != null) {
+					while ((c = errbr.read()) != -1) {
+						char ch = (char) c;
+						buffer.append(ch);
+						if (ch == '\n' || ch == '\r'){
+							String str = buffer.toString();
+							processBuffer.addOutputLine(str);
+							System.out.println(str);
+							if (ch == '\r')
+								reportProgress(str);
+							if (str.trim().equals(RemoteHelper.TERMINATOR)) {
+								break;
+							}
+							cmdHandler.response(str, false);
+							buffer.delete(0, buffer.length());
+						}
+					}
+				}
+				if (inbr != null) {
+					while ((c = inbr.read()) != -1) {
+						char ch = (char) c;
+						buffer.append(ch);
+						if (ch == '\n'){
+							String str = buffer.toString();
+							processBuffer.addOutputLine(str);
+							System.out.println(str);
+							if (str.trim().equals(RemoteHelper.TERMINATOR)) {
+								break;
+							}
+							cmdHandler.response(str, false);
+							buffer.delete(0, buffer.length());
+						}
+					}
+				}
+				cancel = true;
+			}
+			lock.unlock();
+			return processBuffer;
+		}
+	}
+	private void updateMonitor(final int work){
+
+		Display.getDefault().asyncExec(new Runnable() {
+
+			@Override
+			public void run() {
+				if (monitor != null) {
+					monitor.worked(work);
+				}
+			}
+
+		});
+	}
+
+	private void doneMonitor(){
+		Display.getDefault().asyncExec(new Runnable() {
+			@Override
+			public void run() {
+				monitor.done();
+			}
+		});
+	}
+
+	public void reportProgress(String info) {
+		if(calculator == null) {
+			updateMonitor(1);
+		} else {
+			float percentage;
+			try {
+				percentage = calculator.calWorkloadDone(info);
+			} catch (IllegalArgumentException e) {
+				System.out.println(info);
+				//can't get percentage
+				return;
+			}
+			int delta = (int) (RemoteHelper.TOTALWORKLOAD * percentage - reportedWorkload);
+			if( delta > 0 ) {
+				updateMonitor(delta);
+				reportedWorkload += delta;
+			}
+
+			if (reportedWorkload == RemoteHelper.TOTALWORKLOAD)
+				doneMonitor();
+		}
 	}
 
 	public IRemoteConnection getRemoteConnection() {
@@ -87,20 +234,4 @@ public class YoctoRunnableWithProgress extends YoctoHostShellProcessAdapter
 	public void setRemoteServices(IRemoteServices remoteServices) {
 		this.remoteServices = remoteServices;
 	}
-
-	public String getCmd() {
-		return cmd;
-	}
-
-	public void setCmd(String cmd) {
-		this.cmd = cmd;
-	}
-
-	public String getArgs() {
-		return args;
-	}
-
-	public void setArgs(String args) {
-		this.args = args;
-	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
index 7345b77..1f15922 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
@@ -204,7 +204,7 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 			public void run(IProgressMonitor monitor) throws InvocationTargetException {
 				try {
 					doFinish(element, monitor);
-					RemoteHelper.runCommandRemote(connection, new YoctoCommand("rm -rf " + element.getMetaDir() + "/temp", "", ""));
+					RemoteHelper.handleRunCommandRemote(connection, new YoctoCommand("rm -rf " + element.getMetaDir() + "/temp", "", ""), monitor);
 				} catch (Exception e) {
 					throw new InvocationTargetException(e);
 				} finally {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index c55f8d7..dd6feea 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -28,6 +28,7 @@ import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Path;
+import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.IStructuredSelection;
@@ -91,7 +92,6 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private static final String MIRRORS_FILE = "mirrors.bbclass";
 	private static final String CLASSES_FOLDER = "classes";
 	private static final String COPYING_FILE = "COPYING";
-	private static final String WHITESPACES = "\\s+";
 	private static final String CMAKE_LIST = "cmakelists.txt";
 	private static final String CMAKE = "cmake";
 	private static final String SETUP_SCRIPT = "setup.py";
@@ -104,9 +104,9 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 
 	private HashMap<String, String> mirrorTable;
 	private URI extractDir;
-	private YoctoCommand licenseChecksumCmd;
-	protected YoctoCommand md5YCmd;
-	protected YoctoCommand sha256YCmd;
+	protected ProcessStreamBuffer md5Buffer;
+	protected ProcessStreamBuffer sha256Buffer;
+	protected ProcessStreamBuffer md5CopyingBuffer;
 
 	public NewBitBakeFileRecipeWizardPage(ISelection selection, IHost connection) {
 		super("wizardPage");
@@ -331,12 +331,11 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	}
 
 	private void handleLocalPopulate(URI srcURI, IProgressMonitor monitor) {
-		populateLicenseFileChecksum(srcURI);
+		populateLicenseFileChecksum(srcURI, monitor);
 		populateInheritance(srcURI, monitor);
 	}
 
 	private void handleRemotePopulate(final URI srcURI, IProgressMonitor monitor) throws Exception {
-		RemoteHelper.clearProcessBuffer(connection);
 		populateRecipeName(srcURI);
 
 		this.getContainer().run(true, true, new IRunnableWithProgress() {
@@ -345,47 +344,53 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			public void run(IProgressMonitor monitor) throws InvocationTargetException,
 					InterruptedException {
 				monitor.beginTask("Populating recipe fields ... ", 100);
-				List<YoctoCommand> commands = new ArrayList<YoctoCommand>();
 
 				try {
 					String metaDirLocPath = metaDirLoc.getPath();
-
 					monitor.subTask("Cleaning environment");
-					commands.add(new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
-					commands.add(new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
+					YoctoCommand rmYCmd = new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, rmYCmd, new SubProgressMonitor(monitor, 5));
+
+					YoctoCommand mkdirYCmd = new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, mkdirYCmd, new SubProgressMonitor(monitor, 5));
+
 					updateTempFolderPath();
 					monitor.worked(10);
 
 					monitor.subTask("Downloading package sources");
-					commands.add(new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, ""));
 
 					updateTempFolderPath();
-					RemoteHelper.runBatchRemote(connection, commands, true);
 
-					commands.clear();
+					YoctoCommand wgetYCmd = new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, wgetYCmd, new SubProgressMonitor(monitor, 40));
+
 					monitor.worked(50);
 
 					monitor.subTask("Compute package checksums");
 					String md5Cmd = "md5sum " + srcFileNameExt;
-					md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
-					RemoteHelper.runCommandRemote(connection, md5YCmd);
+					YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
+
+					RemoteHelper.handleRunCommandRemote(connection, md5YCmd, new SubProgressMonitor(monitor, 10));
+					md5Buffer =  md5YCmd.getProcessBuffer();
 
 					monitor.worked(60);
 
 					String sha256Cmd = "sha256sum " + srcFileNameExt;
-					sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
-					RemoteHelper.runCommandRemote(connection, sha256YCmd);
+					YoctoCommand sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, sha256YCmd, new SubProgressMonitor(monitor, 10));
+					sha256Buffer = sha256YCmd.getProcessBuffer();
 
 					monitor.worked(70);
 
 					monitor.subTask("Extracting package");
-					extractDir = extractPackage(srcURI);
+					extractDir = extractPackage(srcURI, new SubProgressMonitor(monitor, 0));
 					monitor.worked(80);
 
-					licenseChecksumCmd = populateLicenseFileChecksum(extractDir);
+					YoctoCommand licenseChecksumCmd = populateLicenseFileChecksum(extractDir, new SubProgressMonitor(monitor, 10));
+					md5CopyingBuffer = 	licenseChecksumCmd.getProcessBuffer();
 
 					monitor.subTask("Creating mirror lookup table");
-					mirrorTable = createMirrorLookupTable();
+					mirrorTable = createMirrorLookupTable(new SubProgressMonitor(monitor, 10));
 
 					monitor.worked(90);
 					monitor.done();
@@ -397,23 +402,15 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		updateSrcUri(mirrorTable, srcURI);
 		populateInheritance(extractDir, monitor);
 
-		String md5Val = retrieveSum(srcFileNameExt, md5Pattern);
+		String md5Val = md5Buffer.getOutputLineContaining(srcFileNameExt, md5Pattern);
 		md5sumText.setText(Pattern.matches(md5Pattern,  md5Val) ? md5Val : "");
-		String sha256Val = retrieveSum(srcFileNameExt, sha256Pattern);
+		String sha256Val = sha256Buffer.getOutputLineContaining(srcFileNameExt, sha256Pattern);
 		sha256sumText.setText(Pattern.matches(sha256Pattern,  sha256Val) ? sha256Val : "");
-		String checkSumVal =  retrieveSum(COPYING_FILE, md5Pattern);
+		String checkSumVal =  md5CopyingBuffer.getOutputLineContaining(COPYING_FILE, md5Pattern);
 		checksumText.setText(RemoteHelper.createNewURI(extractDir, COPYING_FILE).toString() + ";md5=" + (Pattern.matches(md5Pattern,  checkSumVal) ? checkSumVal : ""));
 	}
 
-	private String retrieveSum(String arg, String pattern) {
-		ProcessStreamBuffer buffer = RemoteHelper.getProcessBuffer(this.connection);
-		String sum = buffer.getOutputLineContaining(arg, pattern);
-		if (sum == null)
-			return "";
-		return sum;
-	}
-
-	private URI extractPackage(URI srcURI) {
+	private URI extractPackage(URI srcURI, IProgressMonitor monitor) {
 		try {
 			String path = srcFileNameExt;
 			String tarCmd = "tar ";
@@ -423,7 +420,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 				tarCmd += "-xvf ";
 			}
 
-			RemoteHelper.runCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""));
+			RemoteHelper.handleRunCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""), monitor);
 
 			return RemoteHelper.createNewURI(metaDirLoc, TEMP_FOLDER_NAME + "/" + srcFileName);
 
@@ -459,13 +456,13 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		}
 	}
 
-	private YoctoCommand populateLicenseFileChecksum(URI extractDir) {
+	private YoctoCommand populateLicenseFileChecksum(URI extractDir, IProgressMonitor monitor) {
 		if (extractDir == null)
 			throw new RuntimeException("Something went wrong during source extraction!");
 
 		try {
 			YoctoCommand catCmd = new YoctoCommand("md5sum " + COPYING_FILE, extractDir.getPath(), "");
-			RemoteHelper.runCommandRemote(connection, catCmd);
+			RemoteHelper.handleRunCommandRemote(connection, catCmd, monitor);
 			return catCmd;
 		} catch (Exception e) {
 			throw new RuntimeException("Unable to process file for MD5 calculation", e);
@@ -494,11 +491,11 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		return "";
 	}
 
-	private HashMap<String, String> createMirrorLookupTable() throws Exception {
+	private HashMap<String, String> createMirrorLookupTable(IProgressMonitor monitor) throws Exception {
 		HashMap<String, String> mirrorMap = new HashMap<String, String>();
 
 		YoctoCommand cmd = new YoctoCommand("cat " + MIRRORS_FILE, getMetaFolderPath() + CLASSES_FOLDER, "");
-		RemoteHelper.runCommandRemote(connection, cmd);
+		RemoteHelper.handleRunCommandRemote(connection, cmd, monitor);
 
 		if (!cmd.getProcessBuffer().hasErrors()){
 			String delims = "[\\t]+";
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 4fbaca3..071f6aa 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -6,7 +6,6 @@ import java.util.Hashtable;
 import java.util.Map;
 
 import org.eclipse.core.runtime.IStatus;
-import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.wizard.IWizardContainer;
@@ -20,6 +19,7 @@ import org.eclipse.ui.console.MessageConsole;
 import org.yocto.bc.remote.utils.CommandResponseHandler;
 import org.yocto.bc.remote.utils.ConsoleWriter;
 import org.yocto.bc.remote.utils.RemoteHelper;
+import org.yocto.bc.remote.utils.YoctoCommand;
 import org.yocto.bc.remote.utils.YoctoRunnableWithProgress;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
@@ -112,18 +112,17 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 			IRemoteServices remoteServices = ((IRemoteServices)model.get(InstallWizard.SELECTED_REMOTE_SERVICE));
 			final IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
 			final CommandResponseHandler cmdHandler = RemoteHelper.getCommandHandler(connection);
-			final YoctoRunnableWithProgress adapter = (YoctoRunnableWithProgress)RemoteHelper.getHostShellProcessAdapter(connection);
 			final IWizardContainer container = this.getContainer();
 			if (((Boolean)options.get(GIT_CLONE)).booleanValue()) {
 				String cmd = "/usr/bin/git clone --progress";
 				String args = "git://git.yoctoproject.org/poky.git " + uri.getPath();
 				String taskName = "Checking out Yocto git repository";
 
+				YoctoRunnableWithProgress adapter = new YoctoRunnableWithProgress(new YoctoCommand(cmd, "", args));
+
 				adapter.setRemoteConnection(remoteConnection);
 				adapter.setRemoteServices(remoteServices);
 				adapter.setTaskName(taskName);
-				adapter.setCmd(cmd);
-				adapter.setArgs(args);
 				try {
 					container.run(true, true, adapter);
 				} catch (InvocationTargetException e) {
@@ -148,31 +147,15 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 				pinfo.setRemoteServices(remoteServices);
 
 				final ConsoleWriter cw = new ConsoleWriter();
-				final ProjectInfo pInfoFinal = pinfo;
-
-				Thread t = new Thread(new Runnable() {
-
-					@Override
-					public void run() {
-						try {
-							Thread.sleep(2000);
-							new BBConfigurationInitializeOperation(pInfoFinal, null).run(new NullProgressMonitor());
-						} catch (InvocationTargetException e) {
-							e.printStackTrace();
-						} catch (InterruptedException e) {
-							e.printStackTrace();
-						}
-					}
-				});
-
+//				final ProjectInfo pInfoFinal = pinfo;
+				container.run(false, false, new BBConfigurationInitializeOperation(pinfo, null));
 				console = RemoteHelper.getConsole(connection);
 				console.newMessageStream().println(cw.getContents());
 
 				model.put(InstallWizard.KEY_PINFO, pinfo);
 				Activator.putProjInfo(pinfo.getURI(), pinfo);
 
-				container.run(true, true, new CreateBBCProjectOperation(pinfo));
-				t.start();
+				container.run(false, false, new CreateBBCProjectOperation(pinfo));
 				return true;
 			}
 		} catch (Exception e) {
-- 
1.7.9.5


