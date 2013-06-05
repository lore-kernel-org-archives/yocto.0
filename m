Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2904FE0156A
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:47 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629423"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:45 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:19 +0300
Message-Id: <1370451622-10619-19-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 18/21] Refactor Bitbake wizard to use RemoteHelper API
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:47 -0000

Bitbake command wizard improvements:
- retrive the console mapped to this particular connection from the RemoteHelper
- retrive the stored remote connection & services from the model
- retrive the connection from the map stored in RemoteHelper
- retrive the command response handler mapped in the RemoteHelper for this connection
- use newly added YoctoRunnableWithProgress for running the time consuming action(git clone) instead of the inner class
	- this is a customized IRunnableWithProgress that can be ran in a Wizard container and update the progress of the underlying monitor
	- this particular implementation is customized for running a git clone command
	- in order to parse the output of the git clone command, it also contains a calculator that
		tries to match each line with a given pattern and retrieves the percentage for updating the monitor
	- the run method of this class will make a call to the wrapper YoctoThread that runs the actual command
	  in a separate thread in order not to block the interface
		- this thread will delegate the output processing to a YoctoRunnableOutputProcessor
		- this particular type of OutputProcessor takes care of parsing the error lines it receives
			and reporting the progress to the monitor
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    4 +-
 .../bc/remote/utils/YoctoRunnableWithProgress.java |  211 ++++++++++++++++++++
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   90 +++++----
 3 files changed, 266 insertions(+), 39 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index 7cecce8..84946ad 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -19,6 +19,8 @@ Require-Bundle: org.eclipse.ui,
 Eclipse-LazyStart: true
 Bundle-ClassPath: .
 Import-Package: org.eclipse.ptp.remote.core,
+ org.eclipse.ptp.remote.core.exception,
  org.eclipse.rse.core.model,
  org.eclipse.rse.services.clientserver.messages,
- org.eclipse.rse.services.files
+ org.eclipse.rse.services.files,
+ org.eclipse.rse.services.shells
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
new file mode 100644
index 0000000..706a2d2
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
@@ -0,0 +1,211 @@
+package org.yocto.bc.remote.utils;
+
+import java.io.IOException;
+import java.lang.reflect.InvocationTargetException;
+import java.util.regex.Matcher;
+import java.util.regex.Pattern;
+
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.jface.operation.IRunnableWithProgress;
+import org.eclipse.ptp.remote.core.IRemoteConnection;
+import org.eclipse.ptp.remote.core.IRemoteServices;
+import org.eclipse.ptp.remote.core.exception.RemoteConnectionException;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.shells.IHostShell;
+import org.eclipse.swt.widgets.Display;
+import org.yocto.remote.utils.CommandResponseHandler;
+import org.yocto.remote.utils.OutputProcessor;
+import org.yocto.remote.utils.RemoteHelper;
+import org.yocto.remote.utils.YoctoCommand;
+
+public class YoctoRunnableWithProgress implements IRunnableWithProgress {
+
+	private String taskName;
+	private IRemoteConnection remoteConnection;
+	private IRemoteServices remoteServices;
+	private IProgressMonitor monitor;
+	private final ICalculatePercentage calculator;
+	private int reportedWorkload;
+
+	private final YoctoCommand command;
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
+	}
+
+	@Override
+	public void run(IProgressMonitor monitor) throws InvocationTargetException,
+			InterruptedException {
+		try {
+			this.monitor = monitor;
+			this.monitor.beginTask(taskName, RemoteHelper.TOTALWORKLOAD);
+
+			if (!remoteConnection.isOpen()) {
+				try {
+					remoteConnection.open(monitor);
+				} catch (RemoteConnectionException e1) {
+					e1.printStackTrace();
+				}
+			}
+
+			if (!remoteServices.isInitialized()) {
+				remoteServices.initialize();
+			}
+
+			try {
+				IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
+				YoctoThread th = new YoctoThread(connection, command);
+				th.run();
+			} catch (Exception e) {
+				e.printStackTrace();
+			} finally {
+				monitor.done();
+			}
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+	class YoctoRunnableOutputProcessor extends OutputProcessor{
+
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
+
+	class YoctoThread implements Runnable{
+		private final IHost connection;
+		private final YoctoCommand command;
+		private final CommandResponseHandler cmdHandler;
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
+				command.setProcessBuffer(new YoctoRunnableOutputProcessor(monitor, hostShell, cmdHandler, taskName).processOutput());
+			} catch (CoreException e) {
+				e.printStackTrace();
+			} catch (Exception e) {
+				e.printStackTrace();
+			}
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
+	}
+
+	public IRemoteConnection getRemoteConnection() {
+		return remoteConnection;
+	}
+
+	public void setRemoteConnection(IRemoteConnection remoteConnection) {
+		this.remoteConnection = remoteConnection;
+	}
+
+	public String getTaskName() {
+		return taskName;
+	}
+
+	public void setTaskName(String taskName) {
+		this.taskName = taskName;
+	}
+
+	public IRemoteServices getRemoteServices() {
+		return remoteServices;
+	}
+
+	public void setRemoteServices(IRemoteServices remoteServices) {
+		this.remoteServices = remoteServices;
+	}
+}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 6e60126..a253f05 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -17,7 +17,11 @@ import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.jface.viewers.IStructuredSelection;
+import org.eclipse.jface.wizard.IWizardContainer;
 import org.eclipse.jface.wizard.WizardPage;
+import org.eclipse.ptp.remote.core.IRemoteConnection;
+import org.eclipse.ptp.remote.core.IRemoteServices;
+import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbench;
 import org.eclipse.ui.IWorkbenchPage;
 import org.eclipse.ui.IWorkbenchWindow;
@@ -30,12 +34,16 @@ import org.eclipse.ui.console.IConsoleManager;
 import org.eclipse.ui.console.IConsoleView;
 import org.eclipse.ui.console.MessageConsole;
 import org.eclipse.ui.console.MessageConsoleStream;
+import org.yocto.bc.remote.utils.YoctoRunnableWithProgress;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.bc.ui.wizards.FiniteStateWizard;
 import org.yocto.bc.ui.wizards.newproject.BBConfigurationInitializeOperation;
 import org.yocto.bc.ui.wizards.newproject.CreateBBCProjectOperation;
+import org.yocto.remote.utils.CommandResponseHandler;
 import org.yocto.remote.utils.ICommandResponseHandler;
+import org.yocto.remote.utils.RemoteHelper;
+import org.yocto.remote.utils.YoctoCommand;
 
 /**
  * A wizard for installing a fresh copy of an OE system.
@@ -56,6 +64,9 @@ public class InstallWizard extends FiniteStateWizard implements
 	protected static final String INSTALL_DIRECTORY = "Install Directory";
 	protected static final String INIT_SCRIPT = "Init Script";
 
+	protected static final String SELECTED_CONNECTION = "SEL_CONNECTION";
+	protected static final String SELECTED_REMOTE_SERVICE = "SEL_REMOTE_SERVICE";
+
 	protected static final String PROJECT_NAME = "Project Name";
 	protected static final String DEFAULT_INIT_SCRIPT = "oe-init-build-env";
 	protected static final String DEFAULT_INSTALL_DIR = "~/yocto";
@@ -133,65 +144,68 @@ public class InstallWizard extends FiniteStateWizard implements
 
 	@Override
 	public boolean performFinish() {
-		BCCommandResponseHandler cmdOut = new BCCommandResponseHandler(
-				myConsole);
-		
 		WizardPage page = (WizardPage) getPage("Options");
 		page.setPageComplete(true);
-		Map options = (Map) model;
-		String install_dir = "";
-		if (options.containsKey(INSTALL_DIRECTORY)) {
-			install_dir = (String) options.get(INSTALL_DIRECTORY);
-		}
+		Map<String, Object> options = model;
 
 		try {
 			URI uri = new URI("");
 			if (options.containsKey(INSTALL_DIRECTORY)) {
 				uri = (URI) options.get(INSTALL_DIRECTORY);
 			}
+			IRemoteConnection remoteConnection = ((IRemoteConnection)model.get(InstallWizard.SELECTED_CONNECTION));
+			IRemoteServices remoteServices = ((IRemoteServices)model.get(InstallWizard.SELECTED_REMOTE_SERVICE));
+			IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
+			CommandResponseHandler cmdHandler = new CommandResponseHandler(RemoteHelper.getConsole(connection));
+			IWizardContainer container = this.getContainer();
 			if (((Boolean)options.get(GIT_CLONE)).booleanValue()) {
-				String []git_clone_cmd = {"git", "clone", "--progress", "git://git.pokylinux.org/poky.git", install_dir};
-				final Pattern pattern = Pattern.compile("^Receiving objects:\\s*(\\d+)%.*");
-
-				this.getContainer().run(true,true,
-						new LongtimeRunningTask("Checking out Yocto git repository",
-							git_clone_cmd, null, null,
-							cmdOut,
-							new ICalculatePercentage() {
-								public float calWorkloadDone(String info) throws IllegalArgumentException {
-									Matcher m=pattern.matcher(info.trim());
-									if(m.matches()) {
-										return new Float(m.group(1)) / 100;
-									}else {
-										throw new IllegalArgumentException();
-									}
-								}
-							}
-						)
-				);
-			}
+				String cmd = "/usr/bin/git clone --progress";
+				String args = "git://git.yoctoproject.org/poky.git " + uri.getPath();
+				String taskName = "Checking out Yocto git repository";
 
-			if (!cmdOut.hasError()) {
+				YoctoRunnableWithProgress adapter = new YoctoRunnableWithProgress(new YoctoCommand(cmd, "", args));
 
-				String initPath = install_dir + "/"
-						+ (String) options.get(INIT_SCRIPT);
+				adapter.setRemoteConnection(remoteConnection);
+				adapter.setRemoteServices(remoteServices);
+				adapter.setTaskName(taskName);
+				try {
+					container.run(true, true, adapter);
+				} catch (InvocationTargetException e) {
+					e.printStackTrace();
+				} catch (InterruptedException e) {
+					e.printStackTrace();
+				}
+			}
+			if (!cmdHandler.hasError()) {
+				String initPath = "";
+				if (uri.getPath() != null) {
+					 initPath = uri.getPath() + "/" + (String) options.get(INIT_SCRIPT);
+				} else {
+					initPath = uri.getFragment() + "/" + (String) options.get(INIT_SCRIPT);
+				}
 				String prjName = (String) options.get(PROJECT_NAME);
 				ProjectInfo pinfo = new ProjectInfo();
 				pinfo.setInitScriptPath(initPath);
 				pinfo.setLocationURI(uri);
 				pinfo.setName(prjName);
-			
-				ConsoleWriter cw = new ConsoleWriter();
-				this.getContainer().run(false, false,
-						new BBConfigurationInitializeOperation(pinfo, cw));
-				
+				pinfo.setConnection(connection);
+				pinfo.setRemoteServices(remoteServices);
+
+				final ConsoleWriter cw = new ConsoleWriter();
+				BBConfigurationInitializeOperation configInitOp = new BBConfigurationInitializeOperation(pinfo, null);
+				container.run(false, false, configInitOp);
+				myConsole = RemoteHelper.getConsole(connection);
 				myConsole.newMessageStream().println(cw.getContents());
 
+				if (configInitOp.hasErrorOccured()) {
+					optionsPage.setErrorMessage(configInitOp.getErrorMessage());
+					return false;
+				}
+
 				model.put(InstallWizard.KEY_PINFO, pinfo);
 				Activator.putProjInfo(pinfo.getOEFSURI(), pinfo);
 
-				this.getContainer().run(false, false,
-						new CreateBBCProjectOperation(pinfo));
+				container.run(false, false, new CreateBBCProjectOperation(pinfo));
 				return true;
 			}
 		} catch (Exception e) {
-- 
1.7.9.5


