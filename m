Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72F71E0152F
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:13:59 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Jun 2013 08:13:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="251999372"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jun 2013 08:13:41 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jun 2013 17:51:23 +0300
Message-Id: <1370616683-17239-9-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor[v2] 8/8] Refactor RemoteHelper class
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
X-List-Received-Date: Fri, 07 Jun 2013 15:14:00 -0000

- added utility class CommandRunnable that will be used for running a remote command in a different thread & processing the output
- add RemoteMachine utility class
	- RemoteMachine class holds all the information needed for a remote/local machine
        	- environment map of all variables in the remote env
       		- message console & command response handler to log the commands ran against the remote machine and their output
        	- the host connection use to connect to the remote machine
        	- the connected subsytem of the remote system and its file service(needed for any operations on the file system)
	- all the information that is stored in the RemoteMachine makes it easier to map connections to remote machines

RemoteHelper:
- refactor helper to be used as a lazy singleton class-> all fields are initialized upon demand
- refactor helper to group all fields that are machine specific togheter:
	- added map for storing connection->remote machine associations
		- retrieve console for remote machine implementation instead of using a different one for each invocation
		- retrieve command response handler for the remote machine instead of using one global one
		- retrive file service for particular remote machine given the connection
		- retrieve connected shell service for the remote machine given the connection
- refactor helper to be able to run commands on remote hosts in a synchronous way (wait for the command to finish, process output/error)
	- run all commands using CommandRunnable wrapper(handleRunCommandRemote method)
- added methods for:
	- creating a new URI given a parent URI
	- retrieving remote input stream for a specific file
	- checking if a file exists on the remote host
	- retriving a remote IHostFile
	- retrieve remote directory content
	- retrieve connection for given URI

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    3 +
 .../org/yocto/remote/utils/CommandRunnable.java    |   44 ++++
 .../src/org/yocto/remote/utils/RemoteHelper.java   |  253 ++++++++++++++++----
 .../src/org/yocto/remote/utils/RemoteMachine.java  |  202 ++++++++++++++++
 4 files changed, 454 insertions(+), 48 deletions(-)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java

diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index 408e33a..06d14f8 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -16,10 +16,13 @@ Import-Package: org.eclipse.rse.core,
  org.eclipse.rse.internal.terminals.ui,
  org.eclipse.rse.internal.terminals.ui.views,
  org.eclipse.rse.services,
+ org.eclipse.rse.services.clientserver.messages,
  org.eclipse.rse.services.files,
  org.eclipse.rse.services.shells,
  org.eclipse.rse.services.terminals,
+ org.eclipse.rse.subsystems.files.core.model,
  org.eclipse.rse.subsystems.files.core.servicesubsystem,
+ org.eclipse.rse.subsystems.files.core.subsystems,
  org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem,
  org.eclipse.rse.subsystems.terminals.core,
  org.eclipse.rse.subsystems.terminals.core.elements,
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java
new file mode 100644
index 0000000..8cbda18
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java
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
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.shells.IHostShell;
+
+public class CommandRunnable implements Runnable{
+	private IHostShell hostShell;
+	private final IHost connection;
+	private final YoctoCommand cmd;
+	private final IProgressMonitor monitor;
+	private final CommandResponseHandler cmdHandler;
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
+			cmd.setProcessBuffer(RemoteHelper.processOutput(monitor, hostShell, cmdHandler));
+		} catch (CoreException e) {
+			e.printStackTrace();
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
index 4d4f047..e9118d6 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
@@ -16,16 +16,19 @@ import java.io.BufferedOutputStream;
 import java.io.File;
 import java.io.FileOutputStream;
 import java.io.InputStream;
+import java.net.URI;
+import java.net.URISyntaxException;
 import java.util.ArrayList;
 import java.util.Arrays;
+import java.util.HashMap;
 import java.util.Iterator;
+import java.util.Map;
 
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.FileLocator;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.MultiStatus;
-import org.eclipse.core.runtime.OperationCanceledException;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.core.runtime.SubProgressMonitor;
@@ -38,19 +41,26 @@ import org.eclipse.rse.core.model.ISubSystemConfigurationCategories;
 import org.eclipse.rse.core.model.ISystemRegistry;
 import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.services.IService;
+import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.files.IHostFile;
 import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
+import org.eclipse.rse.subsystems.files.core.model.RemoteFileUtility;
+import org.eclipse.rse.subsystems.files.core.servicesubsystem.FileServiceSubSystem;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
+import org.eclipse.rse.subsystems.files.core.subsystems.IRemoteFileSubSystem;
 import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.IShellServiceSubSystem;
 import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem;
+import org.eclipse.ui.console.MessageConsole;
 
 public class RemoteHelper {
 	private final static String EXIT_CMD = "exit"; //$NON-NLS-1$
 	private final static String CMD_DELIMITER = ";"; //$NON-NLS-1$
 	public static final String TERMINATOR = "234o987dsfkcqiuwey18837032843259d";//$NON-NLS-1$
 	public static final int TOTALWORKLOAD = 100;
+	private static Map<IHost, RemoteMachine> machines;
 
 	public static IHost getRemoteConnectionByName(String remoteConnection) {
 		if (remoteConnection == null)
@@ -59,30 +69,7 @@ public class RemoteHelper {
 		for (int i = 0; i < connections.length; i++)
 			if (connections[i].getAliasName().equals(remoteConnection))
 				return connections[i];
-		return null; // TODO Connection is not found in the list--need to react
-		// somehow, throw the exception?
-
-	}
-
-	public static IService getConnectedRemoteFileService(
-			IHost currentConnection, IProgressMonitor monitor) throws Exception {
-		final ISubSystem subsystem = getFileSubsystem(currentConnection);
-
-		if (subsystem == null)
-			throw new Exception(Messages.ErrorNoSubsystem);
-
-		try {
-			subsystem.connect(monitor, false);
-		} catch (CoreException e) {
-			throw e;
-		} catch (OperationCanceledException e) {
-			throw new CoreException(Status.CANCEL_STATUS);
-		}
-
-		if (!subsystem.isConnected())
-			throw new Exception(Messages.ErrorConnectSubsystem);
-
-		return ((IFileServiceSubSystem) subsystem).getFileService();
+		return null;
 	}
 
 	public static ISubSystem getFileSubsystem(IHost host) {
@@ -96,27 +83,6 @@ public class RemoteHelper {
 		return null;
 	}
 
-	public static IService getConnectedShellService(
-			IHost currentConnection, IProgressMonitor monitor) throws Exception {
-		final ISubSystem subsystem = getShellSubsystem(currentConnection);
-
-		if (subsystem == null)
-			throw new Exception(Messages.ErrorNoSubsystem);
-
-		try {
-			subsystem.connect(monitor, false);
-		} catch (CoreException e) {
-			throw e;
-		} catch (OperationCanceledException e) {
-			throw new CoreException(Status.CANCEL_STATUS);
-		}
-
-		if (!subsystem.isConnected())
-			throw new Exception(Messages.ErrorConnectSubsystem);
-
-		return ((IShellServiceSubSystem) subsystem).getShellService();
-	}
-
 	public static ISubSystem getShellSubsystem(IHost host) {
 		if (host == null)
 			return null;
@@ -163,7 +129,7 @@ public class RemoteHelper {
 
 		IFileService fileService;
 		try {
-			fileService = (IFileService) getConnectedRemoteFileService(
+			fileService = getConnectedRemoteFileService(
 							connection,
 							new SubProgressMonitor(monitor, 5));
 			InputStream  inputStream = FileLocator.openStream(
@@ -206,7 +172,7 @@ public class RemoteHelper {
 
 		IFileService fileService;
 		try {
-			fileService = (IFileService) getConnectedRemoteFileService(
+			fileService = getConnectedRemoteFileService(
 							connection,
 							new SubProgressMonitor(monitor, 10));
 			File file = new File(localExePath);
@@ -343,4 +309,195 @@ public class RemoteHelper {
 				return;
 			}
 	}
+	public static RemoteMachine getRemoteMachine(IHost connection){
+		if (!getMachines().containsKey(connection))
+			getMachines().put(connection, new RemoteMachine(connection));
+		return getMachines().get(connection);
+	}
+
+	private static Map<IHost, RemoteMachine> getMachines() {
+		if (machines == null)
+			machines = new HashMap<IHost, RemoteMachine>();
+		return machines;
+	}
+
+	public static MessageConsole getConsole(IHost connection) {
+		return getRemoteMachine(connection).getConsole();
+	}
+
+	public static CommandResponseHandler getCommandHandler(IHost connection) {
+		return getRemoteMachine(connection).getCmdHandler();
+	}
+
+	public static ProcessStreamBuffer processOutput(IProgressMonitor monitor, IHostShell hostShell, CommandResponseHandler cmdHandler) throws Exception {
+		return new CommandOutputProcessor(monitor, hostShell, cmdHandler, "").processOutput();
+	}
+
+	public static IHost getRemoteConnectionForURI(URI uri, IProgressMonitor monitor) {
+		if (uri == null)
+			return null;
+
+		String host = uri.getHost();
+		if (host == null) {
+			// this is a local connection
+			ISystemRegistry sr = RSECorePlugin.getTheSystemRegistry();
+			IHost local = null;
+			while (local == null) {
+				local = sr.getLocalHost();
+			}
+			return local;
+		}
+		ISystemRegistry sr = RSECorePlugin.getTheSystemRegistry();
+		IHost[] connections = sr.getHosts();
+
+		IHost unconnected = null;
+		for (IHost conn : connections) {
+			if (host.equalsIgnoreCase(conn.getHostName())) {
+				IRemoteFileSubSystem fss = getRemoteFileSubSystem(conn);
+				if (fss != null && fss.isConnected())
+					return conn;
+				unconnected = conn;
+			}
+		}
+
+		return unconnected;
+	}
+
+	public static IRemoteFileSubSystem getRemoteFileSubSystem(IHost host) {
+		IRemoteFileSubSystem candidate = null;
+		IRemoteFileSubSystem otherServiceCandidate = null;
+		IRemoteFileSubSystem[] subSystems = RemoteFileUtility.getFileSubSystems(host);
+
+		for (IRemoteFileSubSystem subSystem : subSystems) {
+			if (subSystem instanceof FileServiceSubSystem) {
+				if (subSystem.isConnected())
+					return subSystem;
+
+				if (otherServiceCandidate == null)
+					otherServiceCandidate = subSystem;
+
+			} else if (candidate == null || (subSystem.isConnected() && !candidate.isConnected()))
+				candidate = subSystem;
+
+		}
+		if (candidate != null && candidate.isConnected())
+			return candidate;
+		if (otherServiceCandidate != null)
+			return otherServiceCandidate;
+		return null;
+	}
+
+	public static IFileService getConnectedRemoteFileService(IHost connection, IProgressMonitor monitor) throws Exception {
+		return getRemoteMachine(connection).getRemoteFileService(monitor);
+	}
+
+	public static IHostFile[] getRemoteDirContent(IHost connection, String remoteParent, String fileFilter, int fileType, IProgressMonitor monitor){
+
+		try {
+			IFileService fileServ = getConnectedRemoteFileService(connection, monitor);
+			return fileServ.list(remoteParent, fileFilter, fileType, monitor);
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+		return null;
+	}
+
+	public static IService getConnectedShellService(IHost connection, IProgressMonitor monitor) throws Exception {
+		return getRemoteMachine(connection).getShellService(monitor);
+	}
+
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
+		}
+		return null;
+	}
+
+	public static IHostFile getRemoteHostFile(IHost connection, String remoteFilePath, IProgressMonitor monitor){
+		assert(connection != null);
+		monitor.beginTask(Messages.InfoDownload, 100);
+
+		try {
+			IFileService fileService = getConnectedRemoteFileService(connection, new SubProgressMonitor(monitor, 10));
+			Path remotePath = new Path(remoteFilePath);
+			IHostFile remoteFile = fileService.getFile(remotePath.removeLastSegments(1).toString(), remotePath.lastSegment(), new SubProgressMonitor(monitor, 5));
+			return remoteFile;
+		} catch (Exception e) {
+			e.printStackTrace();
+	    }finally {
+			monitor.done();
+		}
+		return null;
+	}
+
+	public static InputStream getRemoteInputStream(IHost connection, String parentPath, String remoteFilePath, IProgressMonitor monitor){
+		assert(connection != null);
+		monitor.beginTask(Messages.InfoDownload, 100);
+
+		try {
+			IFileService fileService = getConnectedRemoteFileService(connection, new SubProgressMonitor(monitor, 10));
+
+			return fileService.getInputStream(parentPath, remoteFilePath, false, monitor);
+		} catch (Exception e) {
+			e.printStackTrace();
+	    }finally {
+			monitor.done();
+		}
+		return null;
+	}
+
+	public static URI createNewURI(URI oldURI, String name) {
+		try {
+			String sep = oldURI.getPath().endsWith("/") ? "" : "/";
+			return new URI(oldURI.getScheme(), oldURI.getHost(), oldURI.getPath() + sep + name, oldURI.getFragment());
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
+			return null;
+		}
+	}
+
+	public static boolean fileExistsRemote(IHost conn, IProgressMonitor monitor, String path) {
+		try {
+			IFileService fs = getConnectedRemoteFileService(conn, monitor);
+			int nameStart = path.lastIndexOf("/");
+			String parentPath = path.substring(0, nameStart);
+			String name = path.substring(nameStart + 1);
+			IHostFile hostFile = fs.getFile(parentPath, name, monitor);
+
+			return hostFile.exists();
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+		return false;
+	}
 }
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
new file mode 100644
index 0000000..92cfc15
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
@@ -0,0 +1,202 @@
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
+import java.util.ArrayList;
+import java.util.HashMap;
+import java.util.List;
+import java.util.Map;
+
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.core.runtime.OperationCanceledException;
+import org.eclipse.core.runtime.Status;
+import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.core.subsystems.ISubSystem;
+import org.eclipse.rse.internal.services.local.shells.LocalShellService;
+import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
+import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.shells.IHostShell;
+import org.eclipse.rse.services.shells.IShellService;
+import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
+import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.IShellServiceSubSystem;
+import org.eclipse.ui.console.MessageConsole;
+
+public class RemoteMachine {
+	public static final String PROXY = "proxy";
+
+	private Map<String, String> environment;
+	private MessageConsole console;
+	private CommandResponseHandler cmdHandler;
+	private IShellService shellService;
+	private IHost connection;
+
+	private ISubSystem fileSubSystem;
+	private IFileService fileService;
+
+	public RemoteMachine(IHost connection) {
+		setConnection(connection);
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
+			ProcessStreamBuffer buffer = null;
+			try {
+				SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 3);
+				IHostShell hostShell = shellService.runCommand("", "env" + " ; echo " + RemoteHelper.TERMINATOR + "; exit;", new String[]{}, subMonitor);
+				buffer = RemoteHelper.processOutput(subMonitor, hostShell, cmdHandler);
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
+				e.printStackTrace();
+			}
+
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+
+	public Map<String, String> getEnvironment() {
+		return environment;
+	}
+	public void setEnvironment(Map<String, String> environment) {
+		this.environment = environment;
+	}
+	public MessageConsole getConsole() {
+		if (console == null)
+			console = ConsoleHelper.findConsole(ConsoleHelper.YOCTO_CONSOLE);
+
+		ConsoleHelper.showConsole(console);
+		return console;
+	}
+	public CommandResponseHandler getCmdHandler() {
+		if (cmdHandler == null)
+			cmdHandler = new CommandResponseHandler(getConsole());
+		return cmdHandler;
+	}
+
+	public IShellService getShellService(IProgressMonitor monitor) throws Exception {
+		if (shellService != null)
+			return shellService;
+
+		final ISubSystem subsystem = getShellSubsystem();
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
+		shellService = ((IShellServiceSubSystem) subsystem).getShellService();
+		return shellService;
+	}
+
+	private ISubSystem getShellSubsystem() {
+		if (connection == null)
+			return null;
+		ISubSystem[] subSystems = connection.getSubSystems();
+		for (int i = 0; i < subSystems.length; i++) {
+			if (subSystems[i] instanceof IShellServiceSubSystem)
+				return subSystems[i];
+		}
+		return null;
+	}
+
+	public IHost getConnection() {
+		return connection;
+	}
+	public void setConnection(IHost connection) {
+		this.connection = connection;
+	}
+
+	public IFileService getRemoteFileService(IProgressMonitor monitor) throws Exception {
+		if (fileService == null) {
+
+			while(getFileSubsystem() == null)
+				Thread.sleep(2);
+			try {
+				getFileSubsystem().connect(monitor, false);
+			} catch (CoreException e) {
+				throw e;
+			} catch (OperationCanceledException e) {
+				throw new CoreException(Status.CANCEL_STATUS);
+			}
+
+			if (!getFileSubsystem().isConnected())
+				throw new Exception(Messages.ErrorConnectSubsystem);
+
+			fileService = ((IFileServiceSubSystem) getFileSubsystem()).getFileService();
+		}
+		return fileService;
+	}
+
+	public ISubSystem getFileSubsystem() {
+		if (fileSubSystem == null) {
+			if (connection == null)
+				return null;
+			ISubSystem[] subSystems = connection.getSubSystems();
+			for (int i = 0; i < subSystems.length; i++) {
+				if (subSystems[i] instanceof IFileServiceSubSystem) {
+					fileSubSystem = subSystems[i];
+					break;
+				}
+			}
+		}
+		return fileSubSystem;
+	}
+
+}
-- 
1.7.9.5


