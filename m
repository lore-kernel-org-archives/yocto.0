Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC89AE0124F; Thu, 11 Aug 2016 16:30:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C69DBE0124D
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 16:30:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 11 Aug 2016 16:30:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,507,1464678000"; d="scan'208";a="1012911447"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2016 16:30:25 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 16:31:09 -0700
Message-Id: <1470958271-28279-7-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][PATCH 6/8] org.yocto.remote.utils: fix or supress warnings
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
X-List-Received-Date: Thu, 11 Aug 2016 23:30:26 -0000

[YOCTO #9908]

Replace SubProgressMonitor usage with SubMonitor

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 .../org/yocto/remote/utils/OutputProcessor.java    |  2 ++
 .../src/org/yocto/remote/utils/RemoteHelper.java   | 31 +++++++++++-----------
 .../src/org/yocto/remote/utils/RemoteMachine.java  |  9 +++----
 .../org/yocto/remote/utils/TerminalHandler.java    |  1 +
 4 files changed, 23 insertions(+), 20 deletions(-)

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
index 401a782..45df3b1 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
@@ -21,6 +21,7 @@ import org.eclipse.rse.internal.services.shells.TerminalServiceHostShell;
 import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 
+@SuppressWarnings("restriction")
 public abstract class OutputProcessor{
 	private static final int ERROR_BUFFER = 1;
 	private static final int OUTPUT_BUFFER = 2;
@@ -37,6 +38,7 @@ public abstract class OutputProcessor{
 		this.cmdHandler = cmdHandler;
 		this.task = task;
 	}
+
 	public ProcessStreamBuffer processOutput() throws Exception{
 		if (hostShell == null)
 			throw new Exception("An error has occured while trying to run remote command!");
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
index 285b7cf..0532341 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
@@ -43,7 +43,7 @@ import org.eclipse.core.runtime.MultiStatus;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.Status;
-import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.core.runtime.SubMonitor;
 import org.eclipse.osgi.util.NLS;
 import org.eclipse.rse.core.IRSECoreRegistry;
 import org.eclipse.rse.core.IRSECoreStatusCodes;
@@ -76,6 +76,7 @@ import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem;
 import org.eclipse.rse.ui.RSEUIPlugin;
 import org.eclipse.ui.console.MessageConsole;
 
+@SuppressWarnings("restriction")
 public class RemoteHelper {
 	private final static String EXIT_CMD = "exit"; //$NON-NLS-1$
 	private final static String CMD_DELIMITER = ";"; //$NON-NLS-1$
@@ -235,7 +236,7 @@ public class RemoteHelper {
 		try {
 			fileService = getConnectedRemoteFileService(
 							connection,
-							new SubProgressMonitor(monitor, 5));
+							SubMonitor.convert(monitor, 5));
 			InputStream  inputStream = FileLocator.openStream(
 				    Activator.getDefault().getBundle(), new Path(locaPathInPlugin), false);
 			Path remotePath = new Path(remoteExePath);
@@ -255,12 +256,12 @@ public class RemoteHelper {
 			bos.close();
 			fileService.upload(tempFile, remotePath.removeLastSegments(1)
 					.toString(), remotePath.lastSegment(), true, null, null,
-					new SubProgressMonitor(monitor, 80));
+					SubMonitor.convert(monitor, 80));
 			// Need to change the permissions to match the original file
 			// permissions because of a bug in upload
 			remoteShellExec(
 					connection,
-					"", "chmod", "+x " + spaceEscapify(remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
+					"", "chmod", "+x " + spaceEscapify(remotePath.toString()), SubMonitor.convert(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
 
 		} finally {
 			monitor.done();
@@ -278,18 +279,18 @@ public class RemoteHelper {
 		try {
 			fileService = getConnectedRemoteFileService(
 							connection,
-							new SubProgressMonitor(monitor, 10));
+							SubMonitor.convert(monitor, 10));
 			File file = new File(localExePath);
 			monitor.worked(5);
 			Path remotePath = new Path(remoteExePath);
 			fileService.download(remotePath.removeLastSegments(1).toString(),
 					remotePath.lastSegment(),file,true, null,
-					new SubProgressMonitor(monitor, 85));
+					SubMonitor.convert(monitor, 85));
 			// Need to change the permissions to match the original file
 			// permissions because of a bug in upload
 			//RemoteApplication p = remoteShellExec(
 			//		config,
-			//		"", "chmod", "+x " + spaceEscapify(remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
+			//		"", "chmod", "+x " + spaceEscapify(remotePath.toString()), SubMonitor.convert(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
 			//Thread.sleep(500);
 			//p.destroy();
 
@@ -340,14 +341,14 @@ public class RemoteHelper {
 		try {
 			shellService = (IShellService) getConnectedShellService(
 							connection,
-							new SubProgressMonitor(monitor, 7));
+							SubMonitor.convert(monitor, 7));
 
 			// This is necessary because runCommand does not actually run the
 			// command right now.
 			String env[] = new String[0];
 			try {
 				IHostShell hostShell = shellService.launchShell(
-						"", env, new SubProgressMonitor(monitor, 3)); //$NON-NLS-1$
+						"", env, SubMonitor.convert(monitor, 3)); //$NON-NLS-1$
 				hostShell.writeToShell(remoteCommand);
 				p = new HostShellProcessAdapter(hostShell);
 			} catch (Exception e) {
@@ -530,12 +531,12 @@ public class RemoteHelper {
 
 		IShellService shellService;
 		try {
-			shellService = (IShellService) getConnectedShellService(connection, new SubProgressMonitor(monitor, 7));
+			shellService = (IShellService) getConnectedShellService(connection, SubMonitor.convert(monitor, 7));
 
 			String env[] = getRemoteMachine(connection).prepareEnvString(monitor);
 
 			try {
-				IHostShell hostShell = shellService.runCommand(cmd.getInitialDirectory(), remoteCommand, env, new SubProgressMonitor(monitor, 3));
+				IHostShell hostShell = shellService.runCommand(cmd.getInitialDirectory(), remoteCommand, env, SubMonitor.convert(monitor, 3));
 				return hostShell;
 			} catch (Exception e) {
 				e.printStackTrace();
@@ -551,9 +552,9 @@ public class RemoteHelper {
 		monitor.beginTask(Messages.InfoDownload, 100);
 
 		try {
-			IFileService fileService = getConnectedRemoteFileService(connection, new SubProgressMonitor(monitor, 10));
+			IFileService fileService = getConnectedRemoteFileService(connection, SubMonitor.convert(monitor, 10));
 			Path remotePath = new Path(remoteFilePath);
-			IHostFile remoteFile = fileService.getFile(remotePath.removeLastSegments(1).toString(), remotePath.lastSegment(), new SubProgressMonitor(monitor, 5));
+			IHostFile remoteFile = fileService.getFile(remotePath.removeLastSegments(1).toString(), remotePath.lastSegment(), SubMonitor.convert(monitor, 5));
 			return remoteFile;
 		} catch (Exception e) {
 			e.printStackTrace();
@@ -568,7 +569,7 @@ public class RemoteHelper {
 		monitor.beginTask(Messages.InfoDownload, 100);
 
 		try {
-			IFileService fileService = getConnectedRemoteFileService(connection, new SubProgressMonitor(monitor, 10));
+			IFileService fileService = getConnectedRemoteFileService(connection, SubMonitor.convert(monitor, 10));
 
 			return fileService.getInputStream(parentPath, remoteFilePath, false, monitor);
 		} catch (Exception e) {
@@ -649,7 +650,7 @@ public class RemoteHelper {
 		ISystemRegistry sr = RSECorePlugin.getTheSystemRegistry();
 		ISubSystemConfiguration[] configurations = sr.getSubSystemConfigurationsBySystemType(getSSHSystemType(), true);
 		
-		ArrayList configList = new ArrayList();
+		ArrayList<ISubSystemConfigurator> configList = new ArrayList<ISubSystemConfigurator>();
 		for (int i = 0; i < configurations.length; i++){
 			ISubSystemConfiguration configuration = configurations[i];
 			
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
index 92cfc15..8e02f37 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
@@ -17,14 +17,12 @@ import java.util.Map;
 
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.OperationCanceledException;
 import org.eclipse.core.runtime.Status;
-import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.core.runtime.SubMonitor;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.internal.services.local.shells.LocalShellService;
-import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
@@ -32,6 +30,7 @@ import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSys
 import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.IShellServiceSubSystem;
 import org.eclipse.ui.console.MessageConsole;
 
+@SuppressWarnings("restriction")
 public class RemoteMachine {
 	public static final String PROXY = "proxy";
 
@@ -76,11 +75,11 @@ public class RemoteMachine {
 
 			environment = new HashMap<String, String>();
 
-			IShellService shellService = getShellService(new SubProgressMonitor(monitor, 7));
+			IShellService shellService = getShellService(SubMonitor.convert(monitor, 7));
 
 			ProcessStreamBuffer buffer = null;
 			try {
-				SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 3);
+				SubMonitor subMonitor = SubMonitor.convert(monitor, 3);
 				IHostShell hostShell = shellService.runCommand("", "env" + " ; echo " + RemoteHelper.TERMINATOR + "; exit;", new String[]{}, subMonitor);
 				buffer = RemoteHelper.processOutput(subMonitor, hostShell, cmdHandler);
 				for(int i = 0; i < buffer.getOutputLines().size(); i++) {
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
index af5a5da..90ed28f 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
@@ -34,6 +34,7 @@ import org.eclipse.swt.widgets.Shell;
 import org.eclipse.tm.internal.terminal.control.ITerminalViewControl;
 import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector;
 
+@SuppressWarnings("restriction")
 abstract public class TerminalHandler extends AbstractHandler {
 
 
-- 
2.7.4


