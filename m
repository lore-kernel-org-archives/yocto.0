Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67643E004D1
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 10:03:34 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Jan 2013 10:03:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,453,1355126400"; d="scan'208";a="242857252"
Received: from unknown (HELO localhost.localdomain) ([10.252.51.32])
	by azsmga001.ch.intel.com with ESMTP; 11 Jan 2013 10:03:31 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Jan 2013 20:03:16 +0200
Message-Id: <1357927396-4172-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [Temp-Performance-Patch] Run each command in separate shell and close it accordingly
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
X-List-Received-Date: Fri, 11 Jan 2013 18:03:35 -0000

--needs more testing

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    1 +
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   10 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |  289 ++++++++++++++++----
 .../bc/remote/utils/YoctoRunnableWithProgress.java |    7 +-
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    3 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   78 +++---
 6 files changed, 295 insertions(+), 93 deletions(-)

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
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 6441029..449994c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -87,8 +87,11 @@ public class ShellSession {
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
@@ -107,7 +110,8 @@ public class ShellSession {
 
 		try {
 			if (projectInfo.getConnection() != null) {
-				hasErrors = RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
+//				hasErrors = RemoteHelper.runCommandRemote(projectInfo.getConnection(), new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
+				RemoteHelper.handleRunCommandRemote(projectInfo.getConnection(), new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""), new NullProgressMonitor());
 //				return RemoteHelper.getProcessBuffer(projectInfo.getConnection()).getMergedOutputLines();
 				return root.getAbsolutePath() + "/build/";
 			}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 814e3a5..6b8ebfc 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -10,9 +10,12 @@
  ********************************************************************************/
 package org.yocto.bc.remote.utils;
 
+import java.io.BufferedReader;
 import java.io.File;
+import java.io.InputStreamReader;
 import java.net.URI;
 import java.net.URISyntaxException;
+import java.util.ArrayList;
 import java.util.HashMap;
 import java.util.List;
 import java.util.Map;
@@ -25,16 +28,20 @@ import org.eclipse.core.runtime.OperationCanceledException;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.osgi.util.NLS;
 import org.eclipse.ptp.remote.core.IRemoteConnection;
 import org.eclipse.rse.core.RSECorePlugin;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.model.ISystemRegistry;
 import org.eclipse.rse.core.subsystems.ISubSystem;
+import org.eclipse.rse.internal.services.local.shells.LocalShellService;
 import org.eclipse.rse.services.IService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
+import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.model.RemoteFileUtility;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.FileServiceSubSystem;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
@@ -49,6 +56,78 @@ public class RemoteHelper {
 	public static final int TOTALWORKLOAD = 100;
 	private static Map<IHost, RemoteMachine> machines;
 
+	public static Map<String, String> environment;
+	public static final String PROXY = "proxy";
+
+	public static ISubSystem getCmdSubsystem(IHost host) {
+		if (host == null)
+			return null;
+		ISubSystem[] subSystems = host.getSubSystems();
+		for (int i = 0; i < subSystems.length; i++) {
+			if (subSystems[i] instanceof IRemoteCmdSubSystem)
+				return subSystems[i];
+		}
+		return null;
+	}
+	public static ISubSystem getConnectedCmdService(
+			IHost currentConnection, IProgressMonitor monitor) throws Exception {
+		final ISubSystem subsystem = getCmdSubsystem(currentConnection);
+
+		if (subsystem == null)
+			throw new Exception(Messages.ErrorNoSubsystem);
+
+		try {
+			subsystem.connect(monitor, false);
+		} catch (CoreException e) {
+			throw e;
+		} catch (OperationCanceledException e) {
+			throw new CoreException(Status.CANCEL_STATUS);
+		}
+
+		if (!subsystem.isConnected())
+			throw new Exception(Messages.ErrorConnectSubsystem);
+
+
+		return (subsystem);
+	}
+	public static void getRemoteEnvProxyVars(IHost connection, String initialDir,  IProgressMonitor monitor){
+		try {
+			if (environment != null && !environment.isEmpty())
+				return;
+
+			environment = new HashMap<String, String>();
+
+			IShellService shellService = (IShellService) getConnectedShellService(connection, new SubProgressMonitor(monitor, 7));
+
+
+			HostShellProcessAdapter p = null;
+			ProcessStreamBuffer buffer = null;
+			try {
+				SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 3);
+				IHostShell hostShell = shellService.runCommand(initialDir, "env" + " ; echo " + TERMINATOR + "; exit;", new String[]{}, subMonitor);
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
 	public static RemoteMachine getRemoteMachine(IHost connection){
 		if (!getMachines().containsKey(connection))
 			getMachines().put(connection, new RemoteMachine(connection));
@@ -198,15 +277,115 @@ public class RemoteHelper {
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
+			Process process = testRunCommandRemote(connection, cmd, monitor);
+			cmd.setProcessBuffer(processOutput(process, monitor));
+		} catch (Exception e) {
+			e.printStackTrace();
 		}
-		return null;
+	}
+	private static ProcessStreamBuffer processOutput(Process process, IProgressMonitor monitor) throws Exception {
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
+					if (str.trim().equals(TERMINATOR)) {
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
+					if (str.trim().equals(TERMINATOR)) {
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
+	public static String[] prepareEnvString(IHost connection, String initialDir, IProgressMonitor monitor){
+		IShellService shellService;
+		String[] env = null;
+		try {
+			shellService = (IShellService) getConnectedShellService(connection, new SubProgressMonitor(monitor, 7));
+			if (shellService instanceof LocalShellService) {
+				env  = shellService.getHostEnvironment();
+			} else {
+				List<String> envList = new ArrayList<String>();
+				getRemoteEnvProxyVars(connection, initialDir, monitor);
+				String value = "";
+				for (String varName : environment.keySet()){
+					value = varName + "=" + environment.get(varName);
+					envList.add(value);
+				}
+				env = envList.toArray(new String[envList.size()]);
+			}
+		} catch (Exception e) {
+			// TODO Auto-generated catch block
+			e.printStackTrace();
+		}
+
+		return env;
+	}
+	public static Process testRunCommandRemote(IHost connection, YoctoCommand cmd,
+			IProgressMonitor monitor) throws CoreException {
+
+		monitor.beginTask(NLS.bind(Messages.RemoteShellExec_1,
+				cmd, cmd.getArguments()), 10);
+
+		String remoteCommand = cmd + " " + cmd.getArguments() + " ; echo " + TERMINATOR + "; exit ;";
+
+		IShellService shellService;
+		Process p = null;
+//		boolean cancel = false;
+		try {
+			shellService = (IShellService) getConnectedShellService(connection, new SubProgressMonitor(monitor, 7));
+
+			String env[] = prepareEnvString(connection, cmd.getInitialDirectory(), monitor);
+
+			try {
+				IHostShell hostShell = shellService.runCommand(cmd.getInitialDirectory(), remoteCommand, env, new SubProgressMonitor(monitor, 3));
+				p = new HostShellProcessAdapter(hostShell);
+
+			} catch (Exception e) {
+				if (p != null) {
+					p.destroy();
+				}
+				e.printStackTrace();
+			}
+		} catch (Exception e1) {
+			e1.printStackTrace();
+		}
+ 		return p;
 	}
 
 	public static void getRemoteFile(IHost connection, String localExePath, String remoteExePath,
@@ -248,53 +427,53 @@ public class RemoteHelper {
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
+//	public static boolean runCommandRemote(final IHost connection, final YoctoCommand cmd) throws Exception {
+//		final String remoteCommand = cmd.getCommand() + " " + cmd.getArguments();
+//		final boolean hasErrors = false;
+//
+//		if (!cmd.getInitialDirectory().isEmpty()) {
+//			writeToShell(connection, "cd " + cmd.getInitialDirectory());
+//		}
+//		if (!hasErrors)
+//			writeToShell(connection, remoteCommand);
+//
+//		return hasErrors;
+//	}
+//
+//	public static boolean writeToShell(final IHost connection, final String remoteCommand){
+//		new Thread(new Runnable() {
+//			@Override
+//			public void run() {
+//				try {
+//					YoctoHostShellProcessAdapter adapter = getHostShellProcessAdapter(connection);
+//					String fullRemoteCommand = remoteCommand + "; echo " + TERMINATOR + "; exit ;";
+//					adapter.setLastCommand(fullRemoteCommand);
+//					getHostShell(connection).writeToShell(fullRemoteCommand);
+//					while (!adapter.isFinished())
+//						Thread.sleep(2);
+//				} catch (Exception e) {
+//					e.printStackTrace();
+//				}
+//			}
+//		}).run();
+//		return true;
+//	}
+
+//	public static void runBatchRemote(IHost connection, List<YoctoCommand> cmds, boolean displayOutput) throws CoreException {
+//		try {
+//			String remoteCommand = "";
+//			for (YoctoCommand cmd : cmds) {
+//				remoteCommand = cmd.getCommand() + " " + cmd.getArguments();
+//				if (!cmd.getInitialDirectory().isEmpty()) {
+//					writeToShell(connection, "cd " + cmd.getInitialDirectory());
+//				}
+//				writeToShell(connection, remoteCommand);
+//			}
+//
+//		} catch (Exception e1) {
+//			e1.printStackTrace();
+//		}
+//	}
 
 	/**
 	 * Throws a core exception with an error status object built from the given
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
index b6ed2b8..82ba0ba 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
@@ -20,7 +20,7 @@ public class YoctoRunnableWithProgress extends YoctoHostShellProcessAdapter
 	private String cmd;
 	private String args;
 	private IProgressMonitor monitor;
-	
+
 	public YoctoRunnableWithProgress(IHostShell hostShell,
 			ProcessStreamBuffer processStreamBuffer,
 			CommandResponseHandler commandResponseHandler) throws IOException {
@@ -33,7 +33,7 @@ public class YoctoRunnableWithProgress extends YoctoHostShellProcessAdapter
 		try {
 			this.monitor = monitor;
 			this.monitor.beginTask(taskName, RemoteHelper.TOTALWORKLOAD);
-			
+
 			if (!remoteConnection.isOpen()) {
 				try {
 					remoteConnection.open(monitor);
@@ -48,7 +48,8 @@ public class YoctoRunnableWithProgress extends YoctoHostShellProcessAdapter
 
 			try {
 				IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
-                RemoteHelper.runCommandRemote(connection, new YoctoCommand(cmd, "", args));
+//                RemoteHelper.runCommandRemote(connection, new YoctoCommand(cmd, "", args));
+				RemoteHelper.handleRunCommandRemote(connection, new YoctoCommand(cmd, "", args), monitor);
 			} catch (Exception e) {
 				e.printStackTrace();
 			} finally {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
index 7345b77..66c4b9d 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
@@ -204,7 +204,8 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 			public void run(IProgressMonitor monitor) throws InvocationTargetException {
 				try {
 					doFinish(element, monitor);
-					RemoteHelper.runCommandRemote(connection, new YoctoCommand("rm -rf " + element.getMetaDir() + "/temp", "", ""));
+//					RemoteHelper.runCommandRemote(connection, new YoctoCommand("rm -rf " + element.getMetaDir() + "/temp", "", ""));
+					RemoteHelper.handleRunCommandRemote(connection, new YoctoCommand("rm -rf " + element.getMetaDir() + "/temp", "", ""), monitor);
 				} catch (Exception e) {
 					throw new InvocationTargetException(e);
 				} finally {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index a52c2fe..114a484 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -91,7 +91,6 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private static final String MIRRORS_FILE = "mirrors.bbclass";
 	private static final String CLASSES_FOLDER = "classes";
 	private static final String COPYING_FILE = "COPYING";
-	private static final String WHITESPACES = "\\s+";
 	private static final String CMAKE_LIST = "cmakelists.txt";
 	private static final String CMAKE = "cmake";
 	private static final String SETUP_SCRIPT = "setup.py";
@@ -104,9 +103,9 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 
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
@@ -331,7 +330,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	}
 
 	private void handleLocalPopulate(URI srcURI, IProgressMonitor monitor) {
-		populateLicenseFileChecksum(srcURI);
+		populateLicenseFileChecksum(srcURI, monitor);
 		populateInheritance(srcURI, monitor);
 	}
 
@@ -345,47 +344,61 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			public void run(IProgressMonitor monitor) throws InvocationTargetException,
 					InterruptedException {
 				monitor.beginTask("Populating recipe fields ... ", 100);
-				List<YoctoCommand> commands = new ArrayList<YoctoCommand>();
+//				List<YoctoCommand> commands = new ArrayList<YoctoCommand>();
 
 				try {
 					String metaDirLocPath = metaDirLoc.getPath();
 
 					monitor.subTask("Cleaning environment");
-					commands.add(new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
-					commands.add(new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
+//					commands.add(new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
+					YoctoCommand rmYCmd = new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, rmYCmd, monitor);
+
+//					commands.add(new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
+					YoctoCommand mkdirYCmd = new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, mkdirYCmd, monitor);
+
 					updateTempFolderPath();
 					monitor.worked(10);
 
 					monitor.subTask("Downloading package sources");
-					commands.add(new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, ""));
+//					commands.add(new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, ""));
 
 					updateTempFolderPath();
-					RemoteHelper.runBatchRemote(connection, commands, true);
+//					RemoteHelper.runBatchRemote(connection, commands, true);
 
-					commands.clear();
+					YoctoCommand wgetYCmd = new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, wgetYCmd, monitor);
+
+//					commands.clear();
 					monitor.worked(50);
 
 					monitor.subTask("Compute package checksums");
 					String md5Cmd = "md5sum " + srcFileNameExt;
-					md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
-					RemoteHelper.runCommandRemote(connection, md5YCmd);
+					YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
+//					RemoteHelper.runCommandRemote(connection, md5YCmd);
+					RemoteHelper.handleRunCommandRemote(connection, md5YCmd, monitor);
+					md5Buffer =  md5YCmd.getProcessBuffer();
 
 					monitor.worked(60);
 
 					String sha256Cmd = "sha256sum " + srcFileNameExt;
-					sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
-					RemoteHelper.runCommandRemote(connection, sha256YCmd);
+					YoctoCommand sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
+//					RemoteHelper.runCommandRemote(connection, sha256YCmd);
+					RemoteHelper.handleRunCommandRemote(connection, sha256YCmd, monitor);
+					sha256Buffer = sha256YCmd.getProcessBuffer();
 
 					monitor.worked(70);
 
 					monitor.subTask("Extracting package");
-					extractDir = extractPackage(srcURI);
+					extractDir = extractPackage(srcURI, monitor);
 					monitor.worked(80);
 
-					licenseChecksumCmd = populateLicenseFileChecksum(extractDir);
+					YoctoCommand licenseChecksumCmd = populateLicenseFileChecksum(extractDir, monitor);
+					md5CopyingBuffer = 	licenseChecksumCmd.getProcessBuffer();
 
 					monitor.subTask("Creating mirror lookup table");
-					mirrorTable = createMirrorLookupTable();
+					mirrorTable = createMirrorLookupTable(monitor);
 
 					monitor.worked(90);
 					monitor.done();
@@ -397,20 +410,20 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
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
-		return buffer.getOutputLineContaining(arg, pattern);
-	}
+//	private String retrieveSum(String arg, String pattern) {
+//		ProcessStreamBuffer buffer = RemoteHelper.getProcessBuffer(this.connection);
+//		return buffer.getOutputLineContaining(arg, pattern);
+//	}
 
-	private URI extractPackage(URI srcURI) {
+	private URI extractPackage(URI srcURI, IProgressMonitor monitor) {
 		try {
 			String path = srcFileNameExt;
 			String tarCmd = "tar ";
@@ -420,7 +433,8 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 				tarCmd += "-xvf ";
 			}
 
-			RemoteHelper.runCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""));
+//			RemoteHelper.runCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""));
+			RemoteHelper.handleRunCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""), new NullProgressMonitor());
 
 			return RemoteHelper.createNewURI(metaDirLoc, TEMP_FOLDER_NAME + "/" + srcFileName);
 
@@ -456,13 +470,14 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		}
 	}
 
-	private YoctoCommand populateLicenseFileChecksum(URI extractDir) {
+	private YoctoCommand populateLicenseFileChecksum(URI extractDir, IProgressMonitor monitor) {
 		if (extractDir == null)
 			throw new RuntimeException("Something went wrong during source extraction!");
 
 		try {
 			YoctoCommand catCmd = new YoctoCommand("md5sum " + COPYING_FILE, extractDir.getPath(), "");
-			RemoteHelper.runCommandRemote(connection, catCmd);
+//			RemoteHelper.runCommandRemote(connection, catCmd);
+			RemoteHelper.handleRunCommandRemote(connection, catCmd, monitor);
 			return catCmd;
 		} catch (Exception e) {
 			throw new RuntimeException("Unable to process file for MD5 calculation", e);
@@ -491,11 +506,12 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		return "";
 	}
 
-	private HashMap<String, String> createMirrorLookupTable() throws Exception {
+	private HashMap<String, String> createMirrorLookupTable(IProgressMonitor monitor) throws Exception {
 		HashMap<String, String> mirrorMap = new HashMap<String, String>();
 
 		YoctoCommand cmd = new YoctoCommand("cat " + MIRRORS_FILE, getMetaFolderPath() + CLASSES_FOLDER, "");
-		RemoteHelper.runCommandRemote(connection, cmd);
+//		RemoteHelper.runCommandRemote(connection, cmd);
+		RemoteHelper.handleRunCommandRemote(connection, cmd, monitor);
 
 		if (!cmd.getProcessBuffer().hasErrors()){
 			String delims = "[\\t]+";
-- 
1.7.9.5


