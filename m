Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28593E0156E
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:48:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 04 Jun 2013 06:48:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,799,1363158000"; d="scan'208";a="344571070"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2013 06:48:30 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 16:26:00 +0300
Message-Id: <1370352368-18730-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 1/9] Rename RSEHelper to RemoteHelper to match usages in org.yocto.bc.ui.plugin
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
X-List-Received-Date: Tue, 04 Jun 2013 13:48:44 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/remote/utils/RSEHelper.java      |  344 --------------------
 .../src/org/yocto/remote/utils/RemoteHelper.java   |  344 ++++++++++++++++++++
 .../org/yocto/remote/utils/RemoteShellExec.java    |    2 +-
 .../org/yocto/remote/utils/TerminalHandler.java    |    2 +-
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    6 +-
 .../sdk/remotetools/actions/BaseSettingDialog.java |   12 +-
 6 files changed, 355 insertions(+), 355 deletions(-)
 delete mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java

diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
deleted file mode 100644
index 201c944..0000000
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
+++ /dev/null
@@ -1,344 +0,0 @@
-/********************************************************************************
- * Copyright (c) 2013 MontaVista Software, Inc and Others.
- * This program and the accompanying materials are made available under the terms
- * of the Eclipse Public License v1.0 which accompanies this distribution, and is
- * available at http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Anna Dushistova (MontaVista) - initial API and implementation
- * Lianhao Lu (Intel)			- Modified to add other file operations.
- * Ioana Grigoropol (Intel)     - Separated remote functionality
- ********************************************************************************/
-package org.yocto.remote.utils;
-
-import java.io.BufferedInputStream;
-import java.io.BufferedOutputStream;
-import java.io.File;
-import java.io.FileOutputStream;
-import java.io.InputStream;
-import java.util.ArrayList;
-import java.util.Arrays;
-import java.util.Iterator;
-
-import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.FileLocator;
-import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.IStatus;
-import org.eclipse.core.runtime.MultiStatus;
-import org.eclipse.core.runtime.OperationCanceledException;
-import org.eclipse.core.runtime.Path;
-import org.eclipse.core.runtime.Status;
-import org.eclipse.core.runtime.SubProgressMonitor;
-import org.eclipse.osgi.util.NLS;
-import org.eclipse.rse.core.IRSECoreStatusCodes;
-import org.eclipse.rse.core.IRSESystemType;
-import org.eclipse.rse.core.RSECorePlugin;
-import org.eclipse.rse.core.model.IHost;
-import org.eclipse.rse.core.model.ISubSystemConfigurationCategories;
-import org.eclipse.rse.core.model.ISystemRegistry;
-import org.eclipse.rse.core.subsystems.ISubSystem;
-import org.eclipse.rse.services.IService;
-import org.eclipse.rse.services.files.IFileService;
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;
-import org.eclipse.rse.services.shells.IHostShell;
-import org.eclipse.rse.services.shells.IShellService;
-import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
-import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.IShellServiceSubSystem;
-import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem;
-
-public class RSEHelper {
-	private final static String EXIT_CMD = "exit"; //$NON-NLS-1$
-	private final static String CMD_DELIMITER = ";"; //$NON-NLS-1$
-	
-	public static IHost getRemoteConnectionByName(String remoteConnection) {
-		if (remoteConnection == null)
-			return null;
-		IHost[] connections = RSECorePlugin.getTheSystemRegistry().getHosts();
-		for (int i = 0; i < connections.length; i++)
-			if (connections[i].getAliasName().equals(remoteConnection))
-				return connections[i];
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
-	}
-
-	public static ISubSystem getFileSubsystem(IHost host) {
-		if (host == null)
-			return null;
-		ISubSystem[] subSystems = host.getSubSystems();
-		for (int i = 0; i < subSystems.length; i++) {
-			if (subSystems[i] instanceof IFileServiceSubSystem)
-				return subSystems[i];
-		}
-		return null;
-	}
-
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
-	public static ISubSystem getShellSubsystem(IHost host) {
-		if (host == null)
-			return null;
-		ISubSystem[] subSystems = host.getSubSystems();
-		for (int i = 0; i < subSystems.length; i++) {
-			if (subSystems[i] instanceof IShellServiceSubSystem)
-				return subSystems[i];
-		}
-		return null;
-	}
-
-	public static IHost[] getSuitableConnections() {
-
-		//we only get RSE connections with files&cmds subsystem
-		ArrayList <IHost> filConnections = new ArrayList <IHost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()
-				.getHostsBySubSystemConfigurationCategory(ISubSystemConfigurationCategories.SUBSYSTEM_CATEGORY_FILES))); //$NON-NLS-1$
-
-		ArrayList <IHost> terminalConnections = new ArrayList <IHost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()
-				.getHostsBySubSystemConfigurationCategory("terminal")));//$NON-NLS-1$
-
-		ArrayList <IHost> shellConnections = new ArrayList <IHost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()
-				.getHostsBySubSystemConfigurationCategory("shells"))); //$NON-NLS-1$
-
-		Iterator <IHost>iter = filConnections.iterator();
-		while(iter.hasNext()){
-			IHost fileConnection = iter.next();
-			if(!terminalConnections.contains(fileConnection) && !shellConnections.contains(fileConnection)){
-				iter.remove();
-			}
-			IRSESystemType sysType = fileConnection.getSystemType();
-			if (sysType == null || !sysType.isEnabled()) {
-				iter.remove();
-			}
-		}
-
-		return filConnections.toArray(new IHost[filConnections.size()]);
-	}
-
-	public static void putRemoteFileInPlugin(IHost connection, String locaPathInPlugin, String remoteExePath,
-			IProgressMonitor monitor) throws Exception {
-
-		assert(connection != null);
-		monitor.beginTask(Messages.InfoUpload, 100);
-
-		IFileService fileService;
-		try {
-			fileService = (IFileService) getConnectedRemoteFileService(
-							connection,
-							new SubProgressMonitor(monitor, 5));
-			InputStream  inputStream = FileLocator.openStream(
-				    Activator.getDefault().getBundle(), new Path(locaPathInPlugin), false);
-			Path remotePath = new Path(remoteExePath);
-
-			//TODO workaround for now
-			//in case the underlying scp file service doesn't support inputStream upload
-			BufferedInputStream bis = new BufferedInputStream(inputStream);
-			File tempFile = File.createTempFile("scp", "temp"); //$NON-NLS-1$ //$NON-NLS-2$
-			FileOutputStream os = new FileOutputStream(tempFile);
-			BufferedOutputStream bos = new BufferedOutputStream(os);
-			byte[] buffer = new byte[1024];
-			int readCount;
-			while( (readCount = bis.read(buffer)) > 0)
-			{
-				bos.write(buffer, 0, readCount);
-			}
-			bos.close();
-			fileService.upload(tempFile, remotePath.removeLastSegments(1)
-					.toString(), remotePath.lastSegment(), true, null, null,
-					new SubProgressMonitor(monitor, 80));
-			// Need to change the permissions to match the original file
-			// permissions because of a bug in upload
-			remoteShellExec(
-					connection,
-					"", "chmod", "+x " + spaceEscapify(remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
-
-		} finally {
-			monitor.done();
-		}
-		return;
-	}
-
-	public static void getRemoteFile(IHost connection, String localExePath, String remoteExePath,
-			IProgressMonitor monitor) throws Exception {
-
-		assert(connection!=null);
-		monitor.beginTask(Messages.InfoDownload, 100);
-
-		IFileService fileService;
-		try {
-			fileService = (IFileService) getConnectedRemoteFileService(
-							connection,
-							new SubProgressMonitor(monitor, 10));
-			File file = new File(localExePath);
-			file.deleteOnExit();
-			monitor.worked(5);
-			Path remotePath = new Path(remoteExePath);
-			fileService.download(remotePath.removeLastSegments(1).toString(),
-					remotePath.lastSegment(),file,true, null,
-					new SubProgressMonitor(monitor, 85));
-			// Need to change the permissions to match the original file
-			// permissions because of a bug in upload
-			//RemoteApplication p = remoteShellExec(
-			//		config,
-			//		"", "chmod", "+x " + spaceEscapify(remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
-			//Thread.sleep(500);
-			//p.destroy();
-
-		} finally {
-			monitor.done();
-		}
-		return;
-	}
-
-	public static ITerminalServiceSubSystem getTerminalSubSystem(
-            IHost connection) {
-        ISystemRegistry systemRegistry = RSECorePlugin.getTheSystemRegistry();
-        ISubSystem[] subsystems = systemRegistry.getSubSystems(connection);
-        for (int i = 0; i < subsystems.length; i++) {
-        	if (subsystems[i] instanceof ITerminalServiceSubSystem) {
-                ITerminalServiceSubSystem subSystem = (ITerminalServiceSubSystem) subsystems[i];
-                return subSystem;
-            }
-        }
-        return null;
-    }
-
-	public static String spaceEscapify(String inputString) {
-		if (inputString == null)
-			return null;
-
-		return inputString.replaceAll(" ", "\\\\ "); //$NON-NLS-1$ //$NON-NLS-2$
-	}
-
-	public static Process remoteShellExec(IHost connection,
-			String prelaunchCmd, String remoteCommandPath, String arguments,
-			IProgressMonitor monitor) throws CoreException {
-
-		monitor.beginTask(NLS.bind(Messages.RemoteShellExec_1,
-				remoteCommandPath, arguments), 10);
-		String realRemoteCommand = arguments == null ? spaceEscapify(remoteCommandPath)
-				: spaceEscapify(remoteCommandPath) + " " + arguments; //$NON-NLS-1$
-
-		String remoteCommand = realRemoteCommand + CMD_DELIMITER + EXIT_CMD;
-
-		if(prelaunchCmd != null) {
-			if (!prelaunchCmd.trim().equals("")) //$NON-NLS-1$
-				remoteCommand = prelaunchCmd + CMD_DELIMITER + remoteCommand;
-		}
-
-		IShellService shellService;
-		Process p = null;
-		try {
-			shellService = (IShellService) getConnectedShellService(
-							connection,
-							new SubProgressMonitor(monitor, 7));
-
-			// This is necessary because runCommand does not actually run the
-			// command right now.
-			String env[] = new String[0];
-			try {
-				IHostShell hostShell = shellService.launchShell(
-						"", env, new SubProgressMonitor(monitor, 3)); //$NON-NLS-1$
-				hostShell.writeToShell(remoteCommand);
-				p = new HostShellProcessAdapter(hostShell);
-			} catch (Exception e) {
-				if (p != null) {
-					p.destroy();
-				}
-				abort(Messages.RemoteShellExec_2, e,
-						IRSECoreStatusCodes.EXCEPTION_OCCURRED);
-			}
-		} catch (Exception e1) {
-			abort(e1.getMessage(), e1,
-					IRSECoreStatusCodes.EXCEPTION_OCCURRED);
-		}
-
-		monitor.done();
-		return p;
-	}
-
-	/**
-	 * Throws a core exception with an error status object built from the given
-	 * message, lower level exception, and error code.
-	 *
-	 * @param message
-	 *            the status message
-	 * @param exception
-	 *            lower level exception associated with the error, or
-	 *            <code>null</code> if none
-	 * @param code
-	 *            error code
-	 */
-	public static void abort(String message, Throwable exception, int code) throws CoreException {
-		IStatus status;
-		if (exception != null) {
-			MultiStatus multiStatus = new MultiStatus(Activator.PLUGIN_ID, code, message, exception);
-			multiStatus.add(new Status(IStatus.ERROR, Activator.PLUGIN_ID, code, exception.getLocalizedMessage(), exception));
-			status = multiStatus;
-		} else {
-			status = new Status(IStatus.ERROR, Activator.PLUGIN_ID, code, message, null);
-		}
-		throw new CoreException(status);
-	}
-	/**
-	 * Checks whether a IHost associated system's is enabled and not a local one
-	 * @param host
-	 * @return
-	 */
-	public static boolean isHostViable(IHost host) {
-		IRSESystemType sysType = host.getSystemType();
-		if (sysType != null && sysType.isEnabled() && !sysType.isLocal())
-			return true;
-		return false;
-	}
-
-	/**
-	 * Ensures that RSECorePlugin is initialized before performing any actions
-	 */
-	public static void waitForRSEInitCompletition() {
-		if (!RSECorePlugin.isInitComplete(RSECorePlugin.INIT_MODEL))
-			try {
-				RSECorePlugin.waitForInitCompletion(RSECorePlugin.INIT_MODEL);
-			} catch (InterruptedException e) {
-				return;
-			}
-	}
-}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
new file mode 100644
index 0000000..a1e9a08
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
@@ -0,0 +1,344 @@
+/********************************************************************************
+ * Copyright (c) 2013 MontaVista Software, Inc and Others.
+ * This program and the accompanying materials are made available under the terms
+ * of the Eclipse Public License v1.0 which accompanies this distribution, and is
+ * available at http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Anna Dushistova (MontaVista) - initial API and implementation
+ * Lianhao Lu (Intel)			- Modified to add other file operations.
+ * Ioana Grigoropol (Intel)     - Separated remote functionality
+ ********************************************************************************/
+package org.yocto.remote.utils;
+
+import java.io.BufferedInputStream;
+import java.io.BufferedOutputStream;
+import java.io.File;
+import java.io.FileOutputStream;
+import java.io.InputStream;
+import java.util.ArrayList;
+import java.util.Arrays;
+import java.util.Iterator;
+
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.FileLocator;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.IStatus;
+import org.eclipse.core.runtime.MultiStatus;
+import org.eclipse.core.runtime.OperationCanceledException;
+import org.eclipse.core.runtime.Path;
+import org.eclipse.core.runtime.Status;
+import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.osgi.util.NLS;
+import org.eclipse.rse.core.IRSECoreStatusCodes;
+import org.eclipse.rse.core.IRSESystemType;
+import org.eclipse.rse.core.RSECorePlugin;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.core.model.ISubSystemConfigurationCategories;
+import org.eclipse.rse.core.model.ISystemRegistry;
+import org.eclipse.rse.core.subsystems.ISubSystem;
+import org.eclipse.rse.services.IService;
+import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;
+import org.eclipse.rse.services.shells.IHostShell;
+import org.eclipse.rse.services.shells.IShellService;
+import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
+import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.IShellServiceSubSystem;
+import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem;
+
+public class RemoteHelper {
+	private final static String EXIT_CMD = "exit"; //$NON-NLS-1$
+	private final static String CMD_DELIMITER = ";"; //$NON-NLS-1$
+
+	public static IHost getRemoteConnectionByName(String remoteConnection) {
+		if (remoteConnection == null)
+			return null;
+		IHost[] connections = RSECorePlugin.getTheSystemRegistry().getHosts();
+		for (int i = 0; i < connections.length; i++)
+			if (connections[i].getAliasName().equals(remoteConnection))
+				return connections[i];
+		return null; // TODO Connection is not found in the list--need to react
+		// somehow, throw the exception?
+
+	}
+
+	public static IService getConnectedRemoteFileService(
+			IHost currentConnection, IProgressMonitor monitor) throws Exception {
+		final ISubSystem subsystem = getFileSubsystem(currentConnection);
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
+		return ((IFileServiceSubSystem) subsystem).getFileService();
+	}
+
+	public static ISubSystem getFileSubsystem(IHost host) {
+		if (host == null)
+			return null;
+		ISubSystem[] subSystems = host.getSubSystems();
+		for (int i = 0; i < subSystems.length; i++) {
+			if (subSystems[i] instanceof IFileServiceSubSystem)
+				return subSystems[i];
+		}
+		return null;
+	}
+
+	public static IService getConnectedShellService(
+			IHost currentConnection, IProgressMonitor monitor) throws Exception {
+		final ISubSystem subsystem = getShellSubsystem(currentConnection);
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
+		return ((IShellServiceSubSystem) subsystem).getShellService();
+	}
+
+	public static ISubSystem getShellSubsystem(IHost host) {
+		if (host == null)
+			return null;
+		ISubSystem[] subSystems = host.getSubSystems();
+		for (int i = 0; i < subSystems.length; i++) {
+			if (subSystems[i] instanceof IShellServiceSubSystem)
+				return subSystems[i];
+		}
+		return null;
+	}
+
+	public static IHost[] getSuitableConnections() {
+
+		//we only get RSE connections with files&cmds subsystem
+		ArrayList <IHost> filConnections = new ArrayList <IHost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()
+				.getHostsBySubSystemConfigurationCategory(ISubSystemConfigurationCategories.SUBSYSTEM_CATEGORY_FILES))); //$NON-NLS-1$
+
+		ArrayList <IHost> terminalConnections = new ArrayList <IHost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()
+				.getHostsBySubSystemConfigurationCategory("terminal")));//$NON-NLS-1$
+
+		ArrayList <IHost> shellConnections = new ArrayList <IHost>(Arrays.asList(RSECorePlugin.getTheSystemRegistry()
+				.getHostsBySubSystemConfigurationCategory("shells"))); //$NON-NLS-1$
+
+		Iterator <IHost>iter = filConnections.iterator();
+		while(iter.hasNext()){
+			IHost fileConnection = iter.next();
+			if(!terminalConnections.contains(fileConnection) && !shellConnections.contains(fileConnection)){
+				iter.remove();
+			}
+			IRSESystemType sysType = fileConnection.getSystemType();
+			if (sysType == null || !sysType.isEnabled()) {
+				iter.remove();
+			}
+		}
+
+		return filConnections.toArray(new IHost[filConnections.size()]);
+	}
+
+	public static void putRemoteFileInPlugin(IHost connection, String locaPathInPlugin, String remoteExePath,
+			IProgressMonitor monitor) throws Exception {
+
+		assert(connection != null);
+		monitor.beginTask(Messages.InfoUpload, 100);
+
+		IFileService fileService;
+		try {
+			fileService = (IFileService) getConnectedRemoteFileService(
+							connection,
+							new SubProgressMonitor(monitor, 5));
+			InputStream  inputStream = FileLocator.openStream(
+				    Activator.getDefault().getBundle(), new Path(locaPathInPlugin), false);
+			Path remotePath = new Path(remoteExePath);
+
+			//TODO workaround for now
+			//in case the underlying scp file service doesn't support inputStream upload
+			BufferedInputStream bis = new BufferedInputStream(inputStream);
+			File tempFile = File.createTempFile("scp", "temp"); //$NON-NLS-1$ //$NON-NLS-2$
+			FileOutputStream os = new FileOutputStream(tempFile);
+			BufferedOutputStream bos = new BufferedOutputStream(os);
+			byte[] buffer = new byte[1024];
+			int readCount;
+			while( (readCount = bis.read(buffer)) > 0)
+			{
+				bos.write(buffer, 0, readCount);
+			}
+			bos.close();
+			fileService.upload(tempFile, remotePath.removeLastSegments(1)
+					.toString(), remotePath.lastSegment(), true, null, null,
+					new SubProgressMonitor(monitor, 80));
+			// Need to change the permissions to match the original file
+			// permissions because of a bug in upload
+			remoteShellExec(
+					connection,
+					"", "chmod", "+x " + spaceEscapify(remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
+
+		} finally {
+			monitor.done();
+		}
+		return;
+	}
+
+	public static void getRemoteFile(IHost connection, String localExePath, String remoteExePath,
+			IProgressMonitor monitor) throws Exception {
+
+		assert(connection!=null);
+		monitor.beginTask(Messages.InfoDownload, 100);
+
+		IFileService fileService;
+		try {
+			fileService = (IFileService) getConnectedRemoteFileService(
+							connection,
+							new SubProgressMonitor(monitor, 10));
+			File file = new File(localExePath);
+			file.deleteOnExit();
+			monitor.worked(5);
+			Path remotePath = new Path(remoteExePath);
+			fileService.download(remotePath.removeLastSegments(1).toString(),
+					remotePath.lastSegment(),file,true, null,
+					new SubProgressMonitor(monitor, 85));
+			// Need to change the permissions to match the original file
+			// permissions because of a bug in upload
+			//RemoteApplication p = remoteShellExec(
+			//		config,
+			//		"", "chmod", "+x " + spaceEscapify(remotePath.toString()), new SubProgressMonitor(monitor, 5)); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
+			//Thread.sleep(500);
+			//p.destroy();
+
+		} finally {
+			monitor.done();
+		}
+		return;
+	}
+
+	public static ITerminalServiceSubSystem getTerminalSubSystem(
+            IHost connection) {
+        ISystemRegistry systemRegistry = RSECorePlugin.getTheSystemRegistry();
+        ISubSystem[] subsystems = systemRegistry.getSubSystems(connection);
+        for (int i = 0; i < subsystems.length; i++) {
+        	if (subsystems[i] instanceof ITerminalServiceSubSystem) {
+                ITerminalServiceSubSystem subSystem = (ITerminalServiceSubSystem) subsystems[i];
+                return subSystem;
+            }
+        }
+        return null;
+    }
+
+	public static String spaceEscapify(String inputString) {
+		if (inputString == null)
+			return null;
+
+		return inputString.replaceAll(" ", "\\\\ "); //$NON-NLS-1$ //$NON-NLS-2$
+	}
+
+	public static Process remoteShellExec(IHost connection,
+			String prelaunchCmd, String remoteCommandPath, String arguments,
+			IProgressMonitor monitor) throws CoreException {
+
+		monitor.beginTask(NLS.bind(Messages.RemoteShellExec_1,
+				remoteCommandPath, arguments), 10);
+		String realRemoteCommand = arguments == null ? spaceEscapify(remoteCommandPath)
+				: spaceEscapify(remoteCommandPath) + " " + arguments; //$NON-NLS-1$
+
+		String remoteCommand = realRemoteCommand + CMD_DELIMITER + EXIT_CMD;
+
+		if(prelaunchCmd != null) {
+			if (!prelaunchCmd.trim().equals("")) //$NON-NLS-1$
+				remoteCommand = prelaunchCmd + CMD_DELIMITER + remoteCommand;
+		}
+
+		IShellService shellService;
+		Process p = null;
+		try {
+			shellService = (IShellService) getConnectedShellService(
+							connection,
+							new SubProgressMonitor(monitor, 7));
+
+			// This is necessary because runCommand does not actually run the
+			// command right now.
+			String env[] = new String[0];
+			try {
+				IHostShell hostShell = shellService.launchShell(
+						"", env, new SubProgressMonitor(monitor, 3)); //$NON-NLS-1$
+				hostShell.writeToShell(remoteCommand);
+				p = new HostShellProcessAdapter(hostShell);
+			} catch (Exception e) {
+				if (p != null) {
+					p.destroy();
+				}
+				abort(Messages.RemoteShellExec_2, e,
+						IRSECoreStatusCodes.EXCEPTION_OCCURRED);
+			}
+		} catch (Exception e1) {
+			abort(e1.getMessage(), e1,
+					IRSECoreStatusCodes.EXCEPTION_OCCURRED);
+		}
+
+		monitor.done();
+		return p;
+	}
+
+	/**
+	 * Throws a core exception with an error status object built from the given
+	 * message, lower level exception, and error code.
+	 *
+	 * @param message
+	 *            the status message
+	 * @param exception
+	 *            lower level exception associated with the error, or
+	 *            <code>null</code> if none
+	 * @param code
+	 *            error code
+	 */
+	public static void abort(String message, Throwable exception, int code) throws CoreException {
+		IStatus status;
+		if (exception != null) {
+			MultiStatus multiStatus = new MultiStatus(Activator.PLUGIN_ID, code, message, exception);
+			multiStatus.add(new Status(IStatus.ERROR, Activator.PLUGIN_ID, code, exception.getLocalizedMessage(), exception));
+			status = multiStatus;
+		} else {
+			status = new Status(IStatus.ERROR, Activator.PLUGIN_ID, code, message, null);
+		}
+		throw new CoreException(status);
+	}
+	/**
+	 * Checks whether a IHost associated system's is enabled and not a local one
+	 * @param host
+	 * @return
+	 */
+	public static boolean isHostViable(IHost host) {
+		IRSESystemType sysType = host.getSystemType();
+		if (sysType != null && sysType.isEnabled() && !sysType.isLocal())
+			return true;
+		return false;
+	}
+
+	/**
+	 * Ensures that RSECorePlugin is initialized before performing any actions
+	 */
+	public static void waitForRSEInitCompletition() {
+		if (!RSECorePlugin.isInitComplete(RSECorePlugin.INIT_MODEL))
+			try {
+				RSECorePlugin.waitForInitCompletion(RSECorePlugin.INIT_MODEL);
+			} catch (InterruptedException e) {
+				return;
+			}
+	}
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteShellExec.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteShellExec.java
index a7fe221..711088c 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteShellExec.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteShellExec.java
@@ -82,7 +82,7 @@ public class RemoteShellExec {
 
 		reset();
 		argument = (argument == null ? RETURN_VALUE_CMD : argument + RETURN_VALUE_CMD);
-		remoteShellProcess = RSEHelper.remoteShellExec(this.host, prelaunchCmd, this.command, argument, monitor);
+		remoteShellProcess = RemoteHelper.remoteShellExec(this.host, prelaunchCmd, this.command, argument, monitor);
 		fInStream = remoteShellProcess.getInputStream();
 		fOutStream = remoteShellProcess.getOutputStream();
 		fErrStream = remoteShellProcess.getErrorStream();
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
index 1eed7e9..cd89fea 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
@@ -90,7 +90,7 @@ abstract public class TerminalHandler extends AbstractHandler {
 
 	public void execute(IHost host) throws ExecutionException {
 
-		final ITerminalServiceSubSystem terminalSubSystem = RSEHelper.getTerminalSubSystem(host);
+		final ITerminalServiceSubSystem terminalSubSystem = RemoteHelper.getTerminalSubSystem(host);
 
 		if (terminalSubSystem != null) {
 			TerminalsUI terminalsUI = TerminalsUI.getInstance();
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
index dacd192..b98abd3 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseModel.java
@@ -18,7 +18,7 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.SubProgressMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.rse.core.model.IHost;
-import org.yocto.remote.utils.RSEHelper;
+import org.yocto.remote.utils.RemoteHelper;
 import org.yocto.remote.utils.RemoteShellExec;
 
 abstract public class BaseModel implements IRunnableWithProgress {
@@ -49,7 +49,7 @@ abstract public class BaseModel implements IRunnableWithProgress {
 	public void preProcess(IProgressMonitor monitor) throws InvocationTargetException,	InterruptedException{
 		//upload script to remote
 		try {
-			RSEHelper.putRemoteFileInPlugin(host, localScript, remoteExec, monitor);
+			RemoteHelper.putRemoteFileInPlugin(host, localScript, remoteExec, monitor);
 		}catch (InterruptedException e){
 			throw e;
 		}catch (InvocationTargetException e) {
@@ -103,7 +103,7 @@ abstract public class BaseModel implements IRunnableWithProgress {
 	}
 
 	protected void getDataFile(IProgressMonitor monitor) throws Exception {
-		RSEHelper.getRemoteFile( host, localFile, remoteFile, monitor);
+		RemoteHelper.getRemoteFile( host, localFile, remoteFile, monitor);
 	}
 	protected void runRemoteShellExec(IProgressMonitor monitor, String args, boolean cancelable) throws Exception {
 		try {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
index 7845959..24f4c23 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/BaseSettingDialog.java
@@ -21,7 +21,7 @@
 
 package org.yocto.sdk.remotetools.actions;
 
-import org.yocto.remote.utils.RSEHelper;
+import org.yocto.remote.utils.RemoteHelper;
 import org.yocto.sdk.remotetools.Messages;
 import org.yocto.sdk.remotetools.SWTFactory;
 import org.eclipse.jface.dialogs.Dialog;
@@ -140,7 +140,7 @@ public class BaseSettingDialog extends Dialog {
 			button.setEnabled(false);
 		IHost currentConnectionSelected = getCurrentConnection();
 		if (currentConnectionSelected != null) {
-			if (RSEHelper.isHostViable(currentConnectionSelected) && button != null){
+			if (RemoteHelper.isHostViable(currentConnectionSelected) && button != null){
 					button.setEnabled(true);
 					ret=true;
 			}
@@ -151,7 +151,7 @@ public class BaseSettingDialog extends Dialog {
 	protected void updateCurConn() {
 		IHost currentConnectionSelected = getCurrentConnection();
 		if (currentConnectionSelected != null) {
-			if (RSEHelper.isHostViable(currentConnectionSelected))
+			if (RemoteHelper.isHostViable(currentConnectionSelected))
 				curConn=currentConnectionSelected.getAliasName();
 		}
 		updateOkButton();
@@ -161,7 +161,7 @@ public class BaseSettingDialog extends Dialog {
 		int currentSelection = connectionCombo.getSelectionIndex();
 		String remoteConnection = currentSelection >= 0 ? connectionCombo
 				.getItem(currentSelection) : null;
-        return RSEHelper.getRemoteConnectionByName(remoteConnection);
+        return RemoteHelper.getRemoteConnectionByName(remoteConnection);
     }
 	
 	protected void handleNewRemoteConnectionSelected() {
@@ -179,10 +179,10 @@ public class BaseSettingDialog extends Dialog {
 	
 	protected void updateConnectionPulldown() {
 		int index=-1;
-		RSEHelper.waitForRSEInitCompletition();
+		RemoteHelper.waitForRSEInitCompletition();
 		// already initialized
 		connectionCombo.removeAll();
-		IHost[] connections = RSEHelper.getSuitableConnections();
+		IHost[] connections = RemoteHelper.getSuitableConnections();
 		for (int i = 0; i < connections.length; i++) {
 			connectionCombo.add(connections[i].getAliasName());
 			if(connections[i].getAliasName().equals(curConn))
-- 
1.7.9.5


