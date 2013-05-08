Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3DCBE01493
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 06:17:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 May 2013 06:17:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,634,1363158000"; d="scan'208";a="334393933"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 08 May 2013 06:17:07 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 May 2013 15:57:07 +0300
Message-Id: <1368017838-14883-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368017838-14883-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368017838-14883-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 01/12] Move RSEHelper to a separate plugin
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
X-List-Received-Date: Wed, 08 May 2013 13:17:09 -0000

- moved RSEHelper to newly created separate plugin org.yocto.remote.utils
- clean-up RSEHelper code by removing all unused methods
- moved message strings that are relevant for this plugin to the corresponding class

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   10 +
 .../src/org/yocto/remote/utils/Activator.java      |    4 +-
 .../src/org/yocto/remote/utils/Messages.java       |   35 ++
 .../src/org/yocto/remote/utils/RSEHelper.java      |  344 ++++++++++++++++++++
 4 files changed, 392 insertions(+), 1 deletion(-)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java

diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index eff0356..9616484 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -8,3 +8,13 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.core.runtime
 Bundle-ActivationPolicy: lazy
 Bundle-RequiredExecutionEnvironment: JavaSE-1.7
+Import-Package: org.eclipse.rse.core,
+ org.eclipse.rse.core.model,
+ org.eclipse.rse.core.subsystems,
+ org.eclipse.rse.services,
+ org.eclipse.rse.services.files,
+ org.eclipse.rse.services.shells,
+ org.eclipse.rse.subsystems.files.core.servicesubsystem,
+ org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem,
+ org.eclipse.rse.subsystems.terminals.core
+Export-Package: org.yocto.remote.utils
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java
index 047d900..da66a3e 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Activator.java
@@ -23,7 +23,7 @@ public class Activator extends AbstractUIPlugin {
 
 	// The shared instance
 	private static Activator plugin;
-	
+
 	/**
 	 * The constructor
 	 */
@@ -34,6 +34,7 @@ public class Activator extends AbstractUIPlugin {
 	 * (non-Javadoc)
 	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#start(org.osgi.framework.BundleContext)
 	 */
+	@Override
 	public void start(BundleContext context) throws Exception {
 		super.start(context);
 		plugin = this;
@@ -43,6 +44,7 @@ public class Activator extends AbstractUIPlugin {
 	 * (non-Javadoc)
 	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#stop(org.osgi.framework.BundleContext)
 	 */
+	@Override
 	public void stop(BundleContext context) throws Exception {
 		plugin = null;
 		super.stop(context);
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java
new file mode 100644
index 0000000..fc696d6
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Messages.java
@@ -0,0 +1,35 @@
+/*******************************************************************************
+ * Copyright (c) 2013 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+ *******************************************************************************/
+package org.yocto.remote.utils;
+
+import org.eclipse.osgi.util.NLS;
+
+public class Messages extends NLS {
+
+	private static final String BUNDLE_NAME = "org.yocto.remote.utils.messages"; //$NON-NLS-1$
+
+	public static String ErrorNoSubsystem;
+	public static String ErrorConnectSubsystem;
+
+	public static String InfoDownload;
+	public static String InfoUpload;
+
+	public static String RemoteShellExec_1;
+	public static String RemoteShellExec_2;
+
+	static {
+		// initialize resource bundle
+		NLS.initializeMessages(BUNDLE_NAME, Messages.class);
+	}
+
+	private Messages() {
+	}
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
new file mode 100644
index 0000000..e2c8b88
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RSEHelper.java
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
+public class RSEHelper {
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
+			if (sysType != null && sysType.isEnabled()) {
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
-- 
1.7.9.5


