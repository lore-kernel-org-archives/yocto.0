Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAA74E0143A
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 05:36:07 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Dec 2012 05:35:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,215,1355126400"; d="scan'208";a="228753531"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2012 05:36:05 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 15:26:23 +0200
Message-Id: <1354627583-16084-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354627583-16084-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354627583-16084-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 3/3] Validate project name and location for Bitbake command project
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
X-List-Received-Date: Tue, 04 Dec 2012 13:36:08 -0000

- if the project location is empty default value will be used (e.g. /home/user/)
- project name must not contain whitespaces and/or invalid characters
- if we choose to clone a new repo but the destination directory already contains a .git directory, do not allow moving forward
- if we choose to validate an existing repository, make sure that the directory exists, and contains a .git directory as well as a oe-init-build-env script

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   94 +++--------
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   69 ++++----
 .../remote/utils/YoctoHostShellProcessAdapter.java |   15 +-
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |  178 ++++++++++----------
 .../BBConfigurationInitializeOperation.java        |    6 +-
 .../newproject/CreateBBCProjectOperation.java      |   24 ++-
 6 files changed, 173 insertions(+), 213 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 961472f..f143bed 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -48,23 +48,23 @@ public class ShellSession {
 	public static final String LT = System.getProperty("line.separator");
 	public static final String exportCmd = "export BB_ENV_EXTRAWHITE=\"DISABLE_SANITY_CHECKS $BB_ENV_EXTRAWHITE\"";
 	public static final String exportColumnsCmd = "export COLUMNS=1000";
-	
+
 	public static String getFilePath(String file) throws IOException {
 		File f = new File(file);
-		
+
 		if (!f.exists() || f.isDirectory()) {
 			throw new IOException("Path passed is not a file: " + file);
 		}
-		
+
 		StringBuffer sb = new StringBuffer();
-		
+
 		String elems[] = file.split("//");
-		
+
 		for (int i = 0; i < elems.length - 1; ++i) {
 			sb.append(elems[i]);
 			sb.append("//");
 		}
-		
+
 		return sb.toString();
 	}
 	private Process process;
@@ -90,7 +90,7 @@ public class ShellSession {
 //			shellPath = "/bin/sh";
 //		}
 //		shellPath  = "/bin/bash";
-		
+
 		initializeShell(new NullProgressMonitor());
 	}
 
@@ -104,13 +104,14 @@ public class ShellSession {
 		}
 	}
 
-	synchronized 
+	synchronized
 	public String execute(String command) throws IOException {
 		return execute(command, false);
 	}
 
-	synchronized 
+	synchronized
 	public String execute(String command, boolean hasErrors) throws IOException {
+
 		try {
 			IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
 			hasErrors = RemoteHelper.runCommandRemote(connection, new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
@@ -119,57 +120,15 @@ public class ShellSession {
 			e.printStackTrace();
 		}
 		return null;
-//		sendToProcessAndTerminate(command);
-//
-//		if (process.getErrorStream().available() > 0) {
-//			byte[] msg = new byte[process.getErrorStream().available()];
-//
-//			process.getErrorStream().read(msg, 0, msg.length);
-//			out.write(new String(msg));
-//			out.write(LT);
-//			errorMessage = "Error while executing: " + command + LT + new String(msg);
-//		}
-//		
-//		BufferedReader br = new BufferedReader(new InputStreamReader(process
-//				.getInputStream()));
-//
-//		StringBuffer sb = new StringBuffer();
-//		String line = null;
-
-//		while (((line = br.readLine()) != null) && !line.endsWith(TERMINATOR) && !interrupt) {
-//			sb.append(line);
-//			sb.append(LT);
-//			out.write(line);
-//			out.write(LT);
-//		}
-//		
-//		if (interrupt) {
-//			process.destroy();
-//			initializeShell(null);
-//			interrupt = false;
-//		} 
-//		else if (line != null && retCode != null) {
-//			try {
-//				retCode[0]=Integer.parseInt(line.substring(0,line.lastIndexOf(TERMINATOR)));
-//			}catch (NumberFormatException e) {
-//				throw new IOException("Can NOT get return code" + command + LT + line);
-//			}
-//		}
-//		
-//		if (errorMessage != null) {
-//			throw new IOException(errorMessage);
-//		}
-//
-//		return sb.toString();
 	}
 
-synchronized 
+synchronized
 	public void execute(String command, ICommandResponseHandler handler) throws IOException {
 		System.out.println(command);
 		execute(command, TERMINATOR, handler);
 	}
-	
-	synchronized 
+
+	synchronized
 	public void execute(String command, String terminator, ICommandResponseHandler handler) throws IOException {
 		interrupt = false;
 		InputStream errIs = process.getErrorStream();
@@ -177,40 +136,40 @@ synchronized
 			clearErrorStream(errIs);
 		}
 		sendToProcessAndTerminate(command);
-		
+
 		BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
 		String std = null;
 
-		do {		
+		do {
 			if (errIs.available() > 0) {
 				byte[] msg = new byte[errIs.available()];
 
 				errIs.read(msg, 0, msg.length);
 //				out.write(new String(msg));
 				handler.response(new String(msg), true);
-			} 
-			
+			}
+
 			std = br.readLine();
-			
+
 			if (std != null && !std.endsWith(terminator)) {
 //				out.write(std);
 				handler.response(std, false);
-			} 
-			
+			}
+
 		} while (std != null && !std.endsWith(terminator) && !interrupt);
-		
+
 		if (interrupt) {
 			process.destroy();
 			initializeShell(null);
 			interrupt = false;
 		}
 	}
-	
+
 	private void clearErrorStream(InputStream is) {
-	
+
 		try {
 			byte b[] = new byte[is.available()];
-			is.read(b);			
+			is.read(b);
 			System.out.println("clearing: " + new String(b));
 		} catch (IOException e) {
 			e.printStackTrace();
@@ -221,7 +180,7 @@ synchronized
 	/**
 	 * Send command string to shell process and add special terminator string so
 	 * reader knows when output is complete.
-	 * 
+	 *
 	 * @param command
 	 * @throws IOException
 	 */
@@ -241,6 +200,5 @@ synchronized
 	public void interrupt() {
 		interrupt = true;
 	}
-	
-}
 
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 929ad63..f375de1 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -47,13 +47,13 @@ import org.yocto.bc.ui.wizards.install.Messages;
 public class RemoteHelper {
 	public static final int TOTALWORKLOAD = 100;
 	private static Map<IHost, RemoteMachine> machines;
-	
+
 	public static RemoteMachine getRemoteMachine(IHost connection){
 		if (!getMachines().containsKey(connection))
 			getMachines().put(connection, new RemoteMachine(connection));
 		return getMachines().get(connection);
 	}
-	
+
 	private static Map<IHost, RemoteMachine> getMachines() {
 		if (machines == null)
 			machines = new HashMap<IHost, RemoteMachine>();
@@ -71,7 +71,7 @@ public class RemoteHelper {
 	public static YoctoHostShellProcessAdapter getHostShellProcessAdapter(IHost connection) {
 		return getRemoteMachine(connection).getHostShellProcessAdapter();
 	}
-	
+
 	public static ProcessStreamBuffer getProcessBuffer(IHost connection) {
 		return getRemoteMachine(connection).getProcessBuffer();
 	}
@@ -87,20 +87,20 @@ public class RemoteHelper {
 		for (int i = 0; i < connections.length; i++)
 			if (connections[i].getAliasName().equals(remoteConnection))
 				return connections[i];
-		return null; 
+		return null;
 	}
-	
+
 	public static IHost getRemoteConnectionForURI(URI uri, IProgressMonitor monitor) {
 		if (uri == null)
 			return null;
-		
+
 		String host = uri.getHost();
-		if (host == null) 
+		if (host == null)
 			return null;
-		
+
 		ISystemRegistry sr = RSECorePlugin.getTheSystemRegistry();
 		IHost[] connections = sr.getHosts();
-		 
+
 		IHost unconnected = null;
 		for (IHost conn : connections) {
 			if (host.equalsIgnoreCase(conn.getHostName())) {
@@ -110,26 +110,26 @@ public class RemoteHelper {
 				unconnected = conn;
 			}
 		}
-		 
+
 		return unconnected;
 	}
-		 
+
 	public static IRemoteFileSubSystem getRemoteFileSubSystem(IHost host) {
 		IRemoteFileSubSystem candidate = null;
 		IRemoteFileSubSystem otherServiceCandidate = null;
 		IRemoteFileSubSystem[] subSystems = RemoteFileUtility.getFileSubSystems(host);
-		
+
 		for (IRemoteFileSubSystem subSystem : subSystems) {
 			if (subSystem instanceof FileServiceSubSystem) {
 				if (subSystem.isConnected())
 					return subSystem;
-				
+
 				if (otherServiceCandidate == null)
 					otherServiceCandidate = subSystem;
-				
+
 			} else if (candidate == null || (subSystem.isConnected() && !candidate.isConnected()))
 				candidate = subSystem;
-		
+
 		}
 		if (candidate != null && candidate.isConnected())
 			return candidate;
@@ -137,7 +137,7 @@ public class RemoteHelper {
 			return otherServiceCandidate;
 		return null;
 	}
-	
+
 	public static String getRemoteHostName(String remoteConnection){
 		final IHost host = getRemoteConnectionByName(remoteConnection);
 		if(host == null)
@@ -149,9 +149,9 @@ public class RemoteHelper {
 	public static IFileService getConnectedRemoteFileService(IHost connection, IProgressMonitor monitor) throws Exception {
 		return getRemoteMachine(connection).getRemoteFileService(monitor);
 	}
-	
+
 	public static IHostFile[] getRemoteDirContent(IHost connection, String remoteParent, String fileFilter, int fileType, IProgressMonitor monitor){
-		
+
 		try {
 			IFileService fileServ = getConnectedRemoteFileService(connection, monitor);
 			return fileServ.list(remoteParent, fileFilter, fileType, monitor);
@@ -182,11 +182,11 @@ public class RemoteHelper {
 
 		return ((IFileServiceSubSystem) subsystem).getFileService();
 	}
-	
+
 	public static ISubSystem getFileSubsystem(IHost connection) {
 		return getRemoteMachine(connection).getFileSubsystem();
 	}
-	
+
 	public static IService getConnectedShellService(IHost connection, IProgressMonitor monitor) throws Exception {
 		return getRemoteMachine(connection).getShellService(monitor);
 	}
@@ -201,21 +201,21 @@ public class RemoteHelper {
 		}
 		return null;
 	}
-	
+
 	public static void getRemoteFile(IHost connection, String localExePath, String remoteExePath,
 			IProgressMonitor monitor) throws Exception {
-		
+
 		assert(connection!=null);
 		monitor.beginTask(Messages.InfoDownload, 100);
-		
+
 		IFileService fileService;
 		try {
-			fileService = (IFileService) getConnectedRemoteFileService(connection, new SubProgressMonitor(monitor, 10));
+			fileService = getConnectedRemoteFileService(connection, new SubProgressMonitor(monitor, 10));
 			File file = new File(localExePath);
 			file.deleteOnExit();
 			monitor.worked(5);
 			Path remotePath = new Path(remoteExePath);
-			fileService.download(remotePath.removeLastSegments(1).toString(), 
+			fileService.download(remotePath.removeLastSegments(1).toString(),
 					remotePath.lastSegment(),file,true, null,
 					new SubProgressMonitor(monitor, 85));
 		} finally {
@@ -223,13 +223,13 @@ public class RemoteHelper {
 		}
 		return;
 	}
-	
+
 	public static IHostFile getRemoteHostFile(IHost connection, String remoteFilePath, IProgressMonitor monitor){
 		assert(connection != null);
 		monitor.beginTask(Messages.InfoDownload, 100);
-		
+
 		try {
-			IFileService fileService = (IFileService) getConnectedRemoteFileService(connection, new SubProgressMonitor(monitor, 10));
+			IFileService fileService = getConnectedRemoteFileService(connection, new SubProgressMonitor(monitor, 10));
 			Path remotePath = new Path(remoteFilePath);
 			IHostFile remoteFile = fileService.getFile(remotePath.removeLastSegments(1).toString(), remotePath.lastSegment(), new SubProgressMonitor(monitor, 5));
 			return remoteFile;
@@ -239,20 +239,20 @@ public class RemoteHelper {
 		}
 		return null;
 	}
-	
+
 	public static boolean runCommandRemote(final IHost connection, final YoctoCommand cmd) throws Exception {
 		final String remoteCommand = cmd.getCommand() + " " + cmd.getArguments();
 		final boolean hasErrors = false;
-		
+
 		if (!cmd.getInitialDirectory().isEmpty()) {
 			writeToShell(connection, "cd " + cmd.getInitialDirectory());
 		}
 		if (!hasErrors)
 			writeToShell(connection, remoteCommand);
-				
+
 		return hasErrors;
 	}
-	
+
 	public static boolean writeToShell(final IHost connection, final String remoteCommand){
 		new Thread(new Runnable() {
 			@Override
@@ -282,7 +282,7 @@ public class RemoteHelper {
 				}
 				writeToShell(connection, remoteCommand);
 			}
-			
+
 		} catch (Exception e1) {
 			e1.printStackTrace();
 		}
@@ -291,7 +291,7 @@ public class RemoteHelper {
 	/**
 	 * Throws a core exception with an error status object built from the given
 	 * message, lower level exception, and error code.
-	 * 
+	 *
 	 * @param message
 	 *            the status message
 	 * @param exception
@@ -329,6 +329,7 @@ public class RemoteHelper {
 			String parentPath = path.substring(0, nameStart);
 			String name = path.substring(nameStart + 1);
 			IHostFile hostFile = fs.getFile(parentPath, name, monitor);
+
 			return hostFile.exists();
 		} catch (Exception e) {
 			e.printStackTrace();
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
index baedc3b..9ab43cf 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
@@ -33,7 +33,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 	private String endChar = null;
 
 	private Semaphore sem;
-	
+
 	public YoctoHostShellProcessAdapter(IHostShell hostShell, ProcessStreamBuffer processStreamBuffer, CommandResponseHandler commandResponseHandler) throws IOException {
 		super(hostShell);
 		this.processStreamBuffer = processStreamBuffer;
@@ -67,11 +67,11 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 	private interface ICalculatePercentage {
 		public float calWorkloadDone(String info) throws IllegalArgumentException;
 	}
-	
+
 	private class GitCalculatePercentage implements ICalculatePercentage {
 		final Pattern pattern = Pattern.compile("^Receiving objects:\\s*(\\d+)%.*");
 		public float calWorkloadDone(String info) throws IllegalArgumentException {
-	Matcher m = pattern.matcher(info.trim());
+			Matcher m = pattern.matcher(info.trim());
 			if(m.matches()) {
 				return new Float(m.group(1)) / 100;
 			}else {
@@ -79,7 +79,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 			}
 		}
 	}
-	
+
 	private IProgressMonitor getMonitor() {
 		if (command == null) {
 			return null;
@@ -88,16 +88,13 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 	}
 
 	private void updateMonitor(final int work){
-	
 		Display.getDefault().asyncExec(new Runnable() {
-
 			@Override
 			public void run() {
 				if (getMonitor() != null) {
 					getMonitor().worked(work);
 				}
 			}
-
 		});
 	}
 
@@ -155,10 +152,9 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 					continue;
 				}
 				setCommandPrompt(value);
-	
 				if (commandPrompt != null && endChar != null && command != null && processStreamBuffer != null &&
 						value.startsWith(commandPrompt) &&  value.endsWith(endChar) && 
-						!value.endsWith(command) && processStreamBuffer.getLastOutputLineContaining(command) != null) {
+						!value.endsWith(command) && processStreamBuffer.getLastOutputLineContaining(command) != null /*&& waitForOutput*/) {
 					sem.release();
 					isFinished = true;
 				}
@@ -210,4 +206,3 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 	}
 
 }
-
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 7c1a655..37c12f8 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -1,7 +1,6 @@
 package org.yocto.bc.ui.wizards.install;
 
 import java.io.File;
-import java.io.FilenameFilter;
 import java.net.URI;
 import java.net.URISyntaxException;
 import java.util.Map;
@@ -13,6 +12,7 @@ import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.IWorkspaceRoot;
 import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.IStatus;
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.Platform;
 import org.eclipse.ptp.rdt.ui.wizards.RemoteProjectContentsLocationArea;
@@ -22,9 +22,9 @@ import org.eclipse.ptp.remote.core.IRemoteFileManager;
 import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.ptp.remote.core.exception.RemoteConnectionException;
 import org.eclipse.ptp.remote.rse.core.RSEConnection;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.files.IHostFile;
 import org.eclipse.swt.SWT;
-import org.eclipse.swt.events.SelectionEvent;
-import org.eclipse.swt.events.SelectionListener;
 import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
@@ -32,31 +32,32 @@ import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Text;
+import org.yocto.bc.remote.utils.RemoteHelper;
 import org.yocto.bc.ui.wizards.FiniteStateWizardPage;
 
 /**
  * Select which flavor of OE is to be installed.
- * 
+ *
  * @author kgilmer
- * 
+ *
  * Setting up the parameters for creating the new Yocto Bitbake project
- * 
+ *
  * @modified jzhang
  */
 public class OptionsPage extends FiniteStateWizardPage {
 
 	public static final String URI_SEPARATOR = "/";
 	public static final String LOCALHOST = "LOCALHOST";
-	
+
 	private Composite top;
-	
+
 	private ValidationListener validationListener;
 	private Text txtProjectName;
 	private Button btnGit;
 	private Button btnValidate;
-	
+
 	private RemoteProjectContentsLocationArea locationArea;
-	
+
 	protected OptionsPage(Map<String, Object> model) {
 		super("Options", model);
 		setMessage("Enter these parameters to create new Yocto Project BitBake commander project");
@@ -69,7 +70,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 		top.setLayoutData(new GridData(GridData.FILL_BOTH));
 
 		GridData gdFillH = new GridData(GridData.FILL_HORIZONTAL);
-		
+
 		Composite projectNameComp = new Composite(top, SWT.NONE);
 		GridData gdProjName = new GridData(GridData.FILL_HORIZONTAL);
 		projectNameComp.setLayoutData(gdProjName);
@@ -81,11 +82,11 @@ public class OptionsPage extends FiniteStateWizardPage {
 		txtProjectName.setLayoutData(gdFillH);
 		txtProjectName.setFocus();
 		validationListener = new ValidationListener();
-		
+
 		txtProjectName.addModifyListener(validationListener);
 
 		IErrorMessageReporter errorReporter = new IErrorMessageReporter() {
-			
+
 			@Override
 			public void reportError(String errorMessage, boolean infoOnly) {
 				setMessage(errorMessage);
@@ -93,47 +94,32 @@ public class OptionsPage extends FiniteStateWizardPage {
 				updateModel();
 			}
 		};
-		
+
 		locationArea = new RemoteProjectContentsLocationArea(errorReporter, top, null);
-		
+
 		Group locationValidationGroup = new Group(top, SWT.NONE);
 		locationValidationGroup.setText("Git repository");
 		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL_HORIZONTAL);
 		locationValidationGroup.setLayoutData(gd);
 		GridLayout gl = new GridLayout(1, false);
 		locationValidationGroup.setLayout(gl);
-		
-		SelectionListener lst = new SelectionListener() {
-			
-			@Override
-			public void widgetSelected(SelectionEvent e) {
-				if (validateProjectName() && validateProjectLocation()) 
-					setPageComplete(true);
-				
-			}
-			
-			@Override
-			public void widgetDefaultSelected(SelectionEvent e) {
-			}
-		};
-		
-		
+
 		btnGit = new Button(locationValidationGroup, SWT.RADIO);
 		btnGit.setText("Clone from Yocto Project &Git Repository into new location");
 		btnGit.setEnabled(true);
 		btnGit.setSelection(true);
-		btnGit.addSelectionListener(lst);
-		
-		
+		btnGit.addSelectionListener(validationListener);
+
+
 		btnValidate = new Button(locationValidationGroup, SWT.RADIO);
 		btnValidate.setText("&Validate existing Git project location");
 		btnValidate.setEnabled(true);
 		btnValidate.setSelection(false);
-		btnValidate.addSelectionListener(lst);
-		
+		btnValidate.addSelectionListener(validationListener);
+
 		setControl(top);
 	}
-	
+
 	private boolean validateProjectName() {
 		IWorkspaceRoot wsroot = ResourcesPlugin.getWorkspace().getRoot();
 
@@ -143,7 +129,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 			setErrorMessage("Project name cannot be empty!");
 			return false;
 		}
-		
+
 		if (!validate.isOK() || !isValidProjectName(txtProjectName.getText())) {
 			setErrorMessage("Invalid project name: " + txtProjectName.getText());
 			return false;
@@ -156,67 +142,78 @@ public class OptionsPage extends FiniteStateWizardPage {
 		}
 		return true;
 	}
-	
+
 	public String getProjectName(){
 		return txtProjectName.getText().trim();
 	}
-	
+
 	protected boolean validateProjectLocation() {
-		
+
 		String projectLoc = locationArea.getProjectLocation().trim();
-		
-		File checkProject_dir = new File(projectLoc);
-		if (!checkProject_dir.isDirectory()) {
-			setErrorMessage("The project location directory " + projectLoc + " is not valid");
+
+		IRemoteConnection remoteConnection = locationArea.getRemoteConnection();
+		if (remoteConnection == null)
 			return false;
-		}
+
+		if (projectLoc.isEmpty())
+			return true;
+
+		IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
+
 		projectLoc = convertToRealPath(projectLoc);
 		String separator = projectLoc.endsWith(URI_SEPARATOR) ? "" : URI_SEPARATOR;
 		String projectPath = projectLoc + separator + getProjectName();
-		File gitDir = new File(projectPath);
+		IHostFile repoDest = RemoteHelper.getRemoteHostFile(connection, projectPath, new NullProgressMonitor());
+
 		if(btnValidate.getSelection()) {
-			if(!gitDir.isDirectory() || !gitDir.exists()) {
+			if (repoDest == null || !repoDest.exists()) {
 				setErrorMessage("Directory " + projectPath + " does not exist, please select git clone.");
 				return false;
 			}
-			File[] filesMatched = gitDir.listFiles(new FilenameFilter() {
-				
-				@Override
-				public boolean accept(File file, String pattern) {
-					return file.getName().equals(".git");
-				}
-			});
-			
-			if (filesMatched.length != 1) {
+			IHostFile gitDescr = RemoteHelper.getRemoteHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
+			if (gitDescr == null || !gitDescr.exists()) {
 				setErrorMessage("Directory " + projectPath + " does not contain a git repository, please select git clone.");
 				return false;
 			}
-			
-			if(!new File(projectLoc + separator + InstallWizard.VALIDATION_FILE).exists()) {
+
+			IHostFile validationFile = RemoteHelper.getRemoteHostFile(connection, projectPath + URI_SEPARATOR + InstallWizard.VALIDATION_FILE, new NullProgressMonitor());
+			if (validationFile == null || !validationFile.exists()) {
 				setErrorMessage("Directory " + projectPath + " seems invalid, please use other directory or project name.");
 				return false;
 			}
+		} else { //git clone
+			if (repoDest.exists() && repoDest.isDirectory()) {
+				IHostFile gitDescr = RemoteHelper.getRemoteHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
+				if (gitDescr != null && gitDescr.exists()) {
+					setErrorMessage("Directory " + projectPath + " contains a repository, please select validate repository.");
+					return false;
+				}
+			}
 		}
-		
+
 		try {
-			IWorkspaceRoot wsroot = ResourcesPlugin.getWorkspace().getRoot();
-			IProject proj = wsroot.getProject(txtProjectName.getText());
-			if (proj.exists()) {
-				setErrorMessage("A project with the name " + txtProjectName.getText() + " already exists");
-				return false;
-			}
-			URI location = new URI("file:" + URI_SEPARATOR + URI_SEPARATOR + convertToRealPath(projectLoc) + URI_SEPARATOR + txtProjectName.getText());
-			
-			IStatus status = ResourcesPlugin.getWorkspace().validateProjectLocationURI(proj, location);
-			if (!status.isOK()) {
-				setErrorMessage(status.getMessage());
-				return false;
+			String projName = txtProjectName.getText();
+			if (!projName.trim().isEmpty() && validateProjectName()) {
+				IWorkspaceRoot wsroot = ResourcesPlugin.getWorkspace().getRoot();
+				IProject proj = wsroot.getProject();
+				if (proj != null && proj.exists()) {
+					setErrorMessage("A project with the name " + projName + " already exists");
+					return false;
+				}
+				URI location = new URI("file:" + URI_SEPARATOR + URI_SEPARATOR + convertToRealPath(projectLoc) + URI_SEPARATOR + txtProjectName.getText());
+
+				IStatus status = ResourcesPlugin.getWorkspace().validateProjectLocationURI(proj, location);
+				if (!status.isOK()) {
+					setErrorMessage(status.getMessage());
+					return false;
+				}
 			}
 		} catch (Exception e) {
+			e.printStackTrace();
 			setErrorMessage("Run into error while trying to validate entries!");
 			return false;
 		}
-		
+
 		setErrorMessage(null);
 		return true;
 	}
@@ -238,7 +235,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 	    return convertedpath;
 	}
 
-	
+
 	@Override
 	public void pageCleanup() {
 
@@ -249,7 +246,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 	}
 
 	@Override
-	
+
 	protected void updateModel() {
 		try {
 			URI uri = getProjectLocationURI();
@@ -266,12 +263,12 @@ public class OptionsPage extends FiniteStateWizardPage {
 
 	public URI getProjectLocationURI() throws URISyntaxException {
 		URI uri = locationArea.getProjectLocationURI();
-		
+
 		if (uri != null) {
 			String location = locationArea.getProjectLocation();
 			if (!uri.getPath().isEmpty()) {
 				String separator = uri.getPath().endsWith(URI_SEPARATOR) ? "" : URI_SEPARATOR;
-				
+
 				return new URI( uri.getScheme(),
 								uri.getHost(),
 								uri.getPath() + separator + txtProjectName.getText(),
@@ -284,7 +281,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 		} else {
 			String location = locationArea.getProjectLocation();
 			String separator = location.endsWith(URI_SEPARATOR) ? "" : URI_SEPARATOR;
-			
+
 			IRemoteConnection conn = locationArea.getConnection();
 			if (conn instanceof RSEConnection) {
 				RSEConnection rseConn = (RSEConnection)conn;
@@ -294,7 +291,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 			}
 		}
 	}
-	
+
 	private String getDefaultPathDisplayString(IRemoteConnection connection, IRemoteServices remoteServices) {
 		String projectName = getProjectName();
 		if (projectName.isEmpty())
@@ -306,7 +303,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 				} catch (RemoteConnectionException e) {
 					e.printStackTrace();
 				}
-			
+
 			IRemoteFileManager fileMgr = remoteServices.getFileManager(connection);
 			URI defaultURI = fileMgr.toURI(connection.getWorkingDirectory());
 
@@ -322,19 +319,30 @@ public class OptionsPage extends FiniteStateWizardPage {
 		}
 		return ""; //$NON-NLS-1$
 	}
-	
+
 	private boolean isValidProjectName(String projectName) {
-		if (projectName.indexOf('$') > -1) {
+		if (projectName.contains("\\s+"))
+			return false;
+
+		if (projectName.indexOf('$') != -1)
 			return false;
-		}
 
+		char[] chars = projectName.toCharArray();
+		if (!Character.isJavaIdentifierStart(chars[0]))
+			return false;
+		for (int i = 1; i < chars.length; i++)
+			if (!Character.isJavaIdentifierPart(chars[i]))
+				return false;
 		return true;
-	} 
+	}
 	@Override
 	protected boolean validatePage() {
 		if  (!validateProjectName())
 			return false;
-		
+
+		if (!validateProjectLocation())
+			return false;
+
 		setErrorMessage(null);
 		setMessage("All the entries are valid, press \"Finish\" to start the process, "+
 				"this will take a while. Please don't interrupt till there's output in the Yocto Console window...");
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
index a2af6e4..7a68ed5 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/BBConfigurationInitializeOperation.java
@@ -15,7 +15,6 @@ import java.lang.reflect.InvocationTargetException;
 
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.jface.operation.IRunnableWithProgress;
-
 import org.yocto.bc.bitbake.BBSession;
 import org.yocto.bc.bitbake.ProjectInfoHelper;
 import org.yocto.bc.remote.utils.RemoteHelper;
@@ -37,13 +36,16 @@ public class BBConfigurationInitializeOperation implements IRunnableWithProgress
 		this.writer = writer;
 	}
 
+	@Override
 	public void run(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
 		BBSession session;
 		try {
+			monitor.beginTask("Initialize bitbake session ...", RemoteHelper.TOTALWORKLOAD);
 			ProjectInfoHelper.store(RemoteHelper.getRemoteConnectionByName(pinfo.getConnection().getName()), pinfo.getURI(), pinfo, monitor);
 			session = Activator.getBBSession(pinfo, writer, monitor);
 			session.initialize();
-
+			monitor.worked(90);
+			monitor.done();
 		} catch (Exception e) {
 			throw new InvocationTargetException(e);
 		}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
index fcc939c..1a19479 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
@@ -42,40 +42,40 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 	public static void addNatureToProject(IProject proj, String nature_id, IProgressMonitor monitor) throws CoreException {
 		IProjectDescription desc = proj.getDescription();
 		Vector<String> natureIds = new Vector<String>();
-		
+
 		natureIds.add(nature_id);
 		natureIds.addAll(Arrays.asList(desc.getNatureIds()));
-		desc.setNatureIds((String[]) natureIds.toArray(new String[natureIds.size()]));
-		
+		desc.setNatureIds(natureIds.toArray(new String[natureIds.size()]));
+
 		proj.setDescription(desc, monitor);
 	}
-	
+
 	private ProjectInfo projInfo;
 
 	public CreateBBCProjectOperation(ProjectInfo projInfo) {
 		this.projInfo = projInfo;
 	}
-	
+
 	protected void addNatures(IProject proj, IProgressMonitor monitor) throws CoreException {
 		addNatureToProject(proj, BitbakeCommanderNature.NATURE_ID, monitor);
 	}
 
 	private IProjectDescription createProjectDescription(IWorkspace workspace, ProjectInfo projInformation) throws CoreException {
 		IProjectDescription desc = workspace.newProjectDescription(projInformation.getProjectName());
-		
+
 		desc.setLocationURI(projInformation.getURI());
-		
+
 		return desc;
 	}
 
 	@Override
 	protected void execute(IProgressMonitor monitor) throws CoreException, InvocationTargetException, InterruptedException {
 		IProjectDescription desc = createProjectDescription(ResourcesPlugin.getWorkspace(), projInfo);
-		
+
 		IWorkspaceRoot wsroot = ResourcesPlugin.getWorkspace().getRoot();
 
 		IProject proj = wsroot.getProject(projInfo.getProjectName());
-		
+
 		try {
 			proj.create(desc, monitor);
 			ProjectInfoHelper.store(RemoteHelper.getRemoteConnectionByName(projInfo.getConnection().getName()), proj.getLocationURI(), projInfo, monitor);
@@ -85,13 +85,9 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
-		
-		
-		
-
 		addNatures(proj, monitor);
 	}
-	
+
 	public ProjectInfo getProjectInfo() {
 		return projInfo;
 	}
-- 
1.7.9.5


