Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8B6DE013EB
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 02:21:47 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Nov 2012 02:21:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,177,1355126400"; d="scan'208";a="223584816"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2012 02:21:45 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Nov 2012 12:12:23 +0200
Message-Id: <1354097550-21312-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 1/8] Add console fixes & run commands in a synchronous way
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
X-List-Received-Date: Wed, 28 Nov 2012 10:21:48 -0000

- when creating a new Yocto Project, the window does not wait for the process to complete, and closes beforehand
- the long time running task will be created without forking and monitor will be updated when receiving events from the YoctoHostShellProcessAdapter
- use AbstractHostShellReader.isFinished to wait for command outputs

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   13 +-
 .../org/yocto/bc/remote/utils/ConsoleHelper.java   |   18 +--
 .../bc/remote/utils/ConsoleHelperRunnable.java     |   31 +++++
 .../org/yocto/bc/remote/utils/ConsoleRunnable.java |   37 ++++++
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   34 +++--
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    6 +-
 .../remote/utils/YoctoHostShellProcessAdapter.java |  140 +++++++++++++-------
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    2 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   10 +-
 .../yocto/bc/ui/wizards/install/InstallWizard.java |   86 +++---------
 10 files changed, 217 insertions(+), 160 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleHelperRunnable.java
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleRunnable.java

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index 06978fb..a7ed3d6 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -18,7 +18,6 @@ import java.io.InputStreamReader;
 import java.io.OutputStream;
 import java.io.Writer;
 
-import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.rse.services.files.IHostFile;
@@ -119,12 +118,12 @@ public class ShellSession {
 	synchronized 
 	public String execute(String command, int[] retCode) throws IOException {
 		//FIXME : parse output 
-		try {
-			RemoteHelper.runCommandRemote(RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName()), new YoctoCommand(command, root.getAbsolutePath(), ""), new NullProgressMonitor(), true);
-		} catch (Exception e) {
-			e.printStackTrace();
-		}
-		
+//		try {
+//			RemoteHelper.runCommandRemote(RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName()), new YoctoCommand(command, root.getAbsolutePath(), ""), new NullProgressMonitor());
+//		} catch (Exception e) {
+//			e.printStackTrace();
+//		}
+//		
 //		String errorMessage = null;
 //		interrupt = false;
 //		out.write(command);
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleHelper.java
index 4655fe0..25bd9f9 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleHelper.java
@@ -1,14 +1,9 @@
 package org.yocto.bc.remote.utils;
 
-import org.eclipse.ui.IWorkbench;
-import org.eclipse.ui.IWorkbenchPage;
-import org.eclipse.ui.IWorkbenchWindow;
-import org.eclipse.ui.PlatformUI;
+import org.eclipse.swt.widgets.Display;
 import org.eclipse.ui.console.ConsolePlugin;
 import org.eclipse.ui.console.IConsole;
-import org.eclipse.ui.console.IConsoleConstants;
 import org.eclipse.ui.console.IConsoleManager;
-import org.eclipse.ui.console.IConsoleView;
 import org.eclipse.ui.console.MessageConsole;
 
 public class ConsoleHelper {
@@ -28,15 +23,6 @@ public class ConsoleHelper {
 	}
 	
 	public static void showConsole(MessageConsole console){
-		IWorkbench wb = PlatformUI.getWorkbench();
-		IWorkbenchWindow win = wb.getActiveWorkbenchWindow();
-		IWorkbenchPage page = win.getActivePage();
-		String id = IConsoleConstants.ID_CONSOLE_VIEW;
-		try {
-			IConsoleView view = (IConsoleView) page.showView(id);
-			view.display(console);
-		} catch (Exception e) {
-			e.printStackTrace();
-		}
+		Display.getDefault().syncExec(new ConsoleRunnable(console));
 	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleHelperRunnable.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleHelperRunnable.java
new file mode 100644
index 0000000..36f6b70
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleHelperRunnable.java
@@ -0,0 +1,31 @@
+package org.yocto.bc.remote.utils;
+
+import org.eclipse.ui.IWorkbench;
+import org.eclipse.ui.IWorkbenchPage;
+import org.eclipse.ui.IWorkbenchWindow;
+import org.eclipse.ui.PlatformUI;
+import org.eclipse.ui.console.IConsoleConstants;
+import org.eclipse.ui.console.IConsoleView;
+import org.eclipse.ui.console.MessageConsole;
+
+public class ConsoleHelperRunnable implements Runnable {
+	MessageConsole console;
+	
+	ConsoleHelperRunnable(MessageConsole console){
+		this.console = console;
+	}
+	@Override
+	public void run() {
+		IWorkbench wb = PlatformUI.getWorkbench();
+		IWorkbenchWindow win = wb.getActiveWorkbenchWindow();
+		IWorkbenchPage page = win.getActivePage();
+		String id = IConsoleConstants.ID_CONSOLE_VIEW;
+		try {
+			IConsoleView view = (IConsoleView) page.showView(id);
+			view.display(console);
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+
+}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleRunnable.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleRunnable.java
new file mode 100644
index 0000000..b665fed
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ConsoleRunnable.java
@@ -0,0 +1,37 @@
+package org.yocto.bc.remote.utils;
+
+import org.eclipse.ui.IWorkbench;
+import org.eclipse.ui.IWorkbenchPage;
+import org.eclipse.ui.IWorkbenchWindow;
+import org.eclipse.ui.PlatformUI;
+import org.eclipse.ui.console.IConsoleConstants;
+import org.eclipse.ui.console.IConsoleView;
+import org.eclipse.ui.console.MessageConsole;
+
+public class ConsoleRunnable implements Runnable{
+	MessageConsole console;
+	ConsoleRunnable (MessageConsole console){
+		this.console = console;
+	}
+	@Override
+	public void run() {
+		IWorkbench wb = PlatformUI.getWorkbench();
+		if (wb == null)
+			return;
+		IWorkbenchWindow win = wb.getActiveWorkbenchWindow();
+		if (win == null)
+			return;
+		IWorkbenchPage page = win.getActivePage();
+		if (page == null)
+			return;
+		String id = IConsoleConstants.ID_CONSOLE_VIEW;
+		try {
+			IConsoleView view = (IConsoleView) page.showView(id);
+			if (view == null)
+				return;
+			view.display(console);
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 18e216f..430dc6d 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -34,7 +34,6 @@ import org.eclipse.rse.services.IService;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
 import org.eclipse.rse.services.files.IHostFile;
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.subsystems.files.core.model.RemoteFileUtility;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.FileServiceSubSystem;
@@ -46,6 +45,7 @@ import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.wizards.install.Messages;
 
 public class RemoteHelper {
+	public static final int TOTALWORKLOAD = 100;
 	private static Map<IHost, RemoteMachine> machines;
 	
 	public static RemoteMachine getRemoteMachine(IHost connection){
@@ -68,7 +68,7 @@ public class RemoteHelper {
 		return getRemoteMachine(connection).getCmdHandler();
 	}
 
-	public static HostShellProcessAdapter getHostShellProcessAdapter(IHost connection) {
+	public static YoctoHostShellProcessAdapter getHostShellProcessAdapter(IHost connection) {
 		return getRemoteMachine(connection).getHostShellProcessAdapter();
 	}
 	
@@ -270,24 +270,34 @@ public class RemoteHelper {
 		return null;
 	}
 	
-	public static void runCommandRemote(IHost connection, YoctoCommand cmd, IProgressMonitor monitor, boolean waitForOutput) throws Exception {
+	public static boolean runCommandRemote(IHost connection, YoctoCommand cmd, IProgressMonitor monitor) throws Exception {
 		String remoteCommand = cmd.getCommand() + " " + cmd.getArguments();
-		
+		boolean hasErrors = false;
 		try {
 			if (!cmd.getInitialDirectory().isEmpty()) {
-				writeToShell(connection, "cd " + cmd.getInitialDirectory(), waitForOutput);
+				hasErrors = writeToShell(connection, "cd " + cmd.getInitialDirectory(), monitor);
 			}
-			writeToShell(connection, remoteCommand, waitForOutput);
+			if (!hasErrors)
+				return writeToShell(connection, remoteCommand, monitor);
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
+		return hasErrors;
 	}
 	
-	public static void writeToShell(IHost connection, String remoteCommand, boolean waitForOutput){
-		YoctoHostShellProcessAdapter hostShellProcessAdapter = ((YoctoHostShellProcessAdapter)getHostShellProcessAdapter(connection));
-		hostShellProcessAdapter.setWaitForOutput(waitForOutput);
-		hostShellProcessAdapter.setLastCommand(remoteCommand);
+	public static boolean writeToShell(IHost connection, String remoteCommand, IProgressMonitor monitor){
+		YoctoHostShellProcessAdapter hostShellProcessAdapter = getHostShellProcessAdapter(connection);
+		hostShellProcessAdapter.setMonitor(monitor);
 		getHostShell(connection).writeToShell(remoteCommand);
+		
+		try {
+			while (!hostShellProcessAdapter.isFinished() && hostShellProcessAdapter.isAlive()) {
+				Thread.sleep(2);
+			}
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+		return hostShellProcessAdapter.hasErrors();
 	}
 	
 	public static void runBatchRemote(IHost connection, List<YoctoCommand> cmds, IProgressMonitor monitor, boolean waitForOutput) throws CoreException {
@@ -298,9 +308,9 @@ public class RemoteHelper {
 			for (YoctoCommand cmd : cmds) {
 				remoteCommand = cmd.getCommand() + " " + cmd.getArguments();
 				if (!cmd.getInitialDirectory().isEmpty()) {
-					writeToShell(connection, "cd " + cmd.getInitialDirectory(), waitForOutput);
+					writeToShell(connection, "cd " + cmd.getInitialDirectory(), monitor);
 				}
-				writeToShell(connection, remoteCommand, waitForOutput);
+				writeToShell(connection, remoteCommand, monitor);
 			}
 		} catch (Exception e1) {
 			e1.printStackTrace();
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
index 40e2c7e..a953ef7 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
@@ -12,7 +12,6 @@ import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
-import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubSystem;
@@ -27,7 +26,7 @@ public class RemoteMachine {
 	private MessageConsole console;
 	private CommandResponseHandler cmdHandler;
 	private IHostShell hostShell;
-	private HostShellProcessAdapter hostShellProcessAdapter;
+	private YoctoHostShellProcessAdapter hostShellProcessAdapter;
 	private IShellService shellService;
 	private ProcessStreamBuffer processBuffer;
 	private IHost connection;
@@ -61,7 +60,6 @@ public class RemoteMachine {
 		try {
 			if (hostShell == null) {
 				hostShell = getShellService(new NullProgressMonitor()).launchShell("", new String[]{}, new NullProgressMonitor());
-				getHostShellProcessAdapter();
 			}
 		} catch (SystemMessageException e) {
 			e.printStackTrace();
@@ -71,7 +69,7 @@ public class RemoteMachine {
 		return hostShell;
 	}
 	
-	public HostShellProcessAdapter getHostShellProcessAdapter() {
+	public YoctoHostShellProcessAdapter getHostShellProcessAdapter() {
 		try {
 			if (hostShellProcessAdapter == null)
 				hostShellProcessAdapter = new YoctoHostShellProcessAdapter(getHostShell(), getProcessBuffer(), getCmdHandler());
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
index 198d6a1..a772dc4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
@@ -1,65 +1,113 @@
 package org.yocto.bc.remote.utils;
 
 import java.io.IOException;
-import java.util.concurrent.Semaphore;
+import java.util.regex.Matcher;
+import java.util.regex.Pattern;
 
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
 import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostOutput;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IHostShellChangeEvent;
 import org.eclipse.rse.services.shells.IHostShellOutputReader;
+import org.eclipse.swt.widgets.Display;
 
 public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
-	private String commandPrompt = null;
-	private static final String ROOT = "root";
-	private static final String PROMPT_USER_CH = "$";
-	private static final String PROMPT_ROOT_CH = "#";
-	
 	private ProcessStreamBuffer processStreamBuffer;
 	private CommandResponseHandler commandResponseHandler;
-	private Semaphore sem;
-	private String lastCommand;
-	private boolean waitForOutput; 
-	private String endChar = null;
+	private boolean isFinished;
+	private ICalculatePercentage calculator;
+	private int reportedWorkload;
+	private IProgressMonitor monitor;
+	private boolean isAlive;
 	
-	public String getLastCommand() {
-		return lastCommand;
+	public IProgressMonitor getMonitor() {
+		return monitor;
 	}
 
-	public void setLastCommand(String lastCommand) {
-		if (waitForOutput) {
-			try {
-				// there are still some processed that might take a long time and if we do not wait for them, 
-				// then the semaphore will not be released, because an interrupted exception will occur
-				Thread.sleep(2000);
-				sem.acquire();
-			} catch (InterruptedException e) {
-				e.printStackTrace();
+	public void setMonitor(IProgressMonitor monitor) {
+		this.monitor = monitor;
+	}
+
+	private interface ICalculatePercentage {
+		public float calWorkloadDone(String info) throws IllegalArgumentException;
+	}
+	
+	private class GitCalculatePercentage implements ICalculatePercentage {
+		final Pattern pattern = Pattern.compile("^Receiving objects:\\s*(\\d+)%.*");
+		public float calWorkloadDone(String info) throws IllegalArgumentException {
+			Matcher m = pattern.matcher(info.trim());
+			if(m.matches()) {
+				return new Float(m.group(1)) / 100;
+			}else {
+				throw new IllegalArgumentException();
 			}
 		}
-		this.lastCommand = lastCommand.trim();
 	}
-
+	
 	public YoctoHostShellProcessAdapter(IHostShell hostShell, ProcessStreamBuffer processStreamBuffer, CommandResponseHandler commandResponseHandler) throws IOException {
 		super(hostShell);
 		this.processStreamBuffer = processStreamBuffer;
 		this.commandResponseHandler = commandResponseHandler;
-		this.sem = new Semaphore(1);
-		this.lastCommand = "";
+		this.calculator = new GitCalculatePercentage();
 	}
 
+	private void updateMonitor(final int work){
+//		Display.getDefault().syncExec(new Runnable() {
+//			
+//			@Override
+//			public void run() {
+//				monitor.worked(work);
+//			}
+//		});
+	}
+	
+	private void doneMonitor(){
+//		Display.getCurrent().syncExec(new Runnable() {
+//			
+//			@Override
+//			public void run() {
+//				monitor.done();
+//			}
+//		});
+	}
+	
+	private void reportProgress(String info) {
+		
+		
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
 	@Override
 	public void shellOutputChanged(IHostShellChangeEvent event) {
 		IHostShellOutputReader reader = event.getReader();
 		IHostOutput[] lines = event.getLines();
-		
 		if (reader.isErrorReader()) {
 			for (IHostOutput line : lines) {
 				String value = line.getString();
 				if (value.isEmpty()) {
 					continue;
 				}
-				setCommandPrompt(value);
 				System.out.println(value);
 				this.processStreamBuffer.addErrorLine(value);
 				this.commandResponseHandler.response(value, false);
@@ -70,41 +118,31 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 				if (value.isEmpty()) {
 					continue;
 				}
-				setCommandPrompt(value);
-				if (value.startsWith(commandPrompt) &&  value.endsWith(endChar) && 
-						!value.endsWith(lastCommand) && processStreamBuffer.getLastOutputLineContaining(lastCommand) != null && 
-						waitForOutput) {
-					sem.release();
-				}
 				
+				reportProgress(value);
 				System.out.println(value);
 				this.processStreamBuffer.addOutputLine(value);
 				this.commandResponseHandler.response(value, false);
 			}
 		}
-//		super.shellOutputChanged(event);
+
+		AbstractHostShellOutputReader absReader = (AbstractHostShellOutputReader)reader;
+		isAlive = absReader.isAlive();
+		isFinished = absReader.isFinished();
 	}
 
-	private void setCommandPrompt(String value) {
-		if (commandPrompt == null) {
-			if (value.startsWith(ROOT) && value.indexOf(PROMPT_ROOT_CH) != -1) {
-				int end = value.indexOf(PROMPT_ROOT_CH);
-				commandPrompt = value.substring(0, end);
-				endChar = PROMPT_ROOT_CH;
-			} else if (value.indexOf(PROMPT_USER_CH) != -1) {
-				int end = value.indexOf(PROMPT_USER_CH);
-				commandPrompt = value.substring(0, end);
-				endChar = PROMPT_USER_CH;
-			}
-				
-		}
+	public boolean isFinished() {
+		return isFinished;
+	}
+	public boolean hasErrors(){
+		return this.processStreamBuffer.errorLines.size() != 0;
 	}
 
-	public boolean isWaitForOutput() {
-		return waitForOutput;
+	public boolean isAlive() {
+		return isAlive;
 	}
 
-	public void setWaitForOutput(boolean waitForOutput) {
-		this.waitForOutput = waitForOutput;
+	public void setAlive(boolean isAlive) {
+		this.isAlive = isAlive;
 	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
index f820e21..73b21f5 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
@@ -205,7 +205,7 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 			public void run(IProgressMonitor monitor) throws InvocationTargetException {
 				try {
 					doFinish(element, monitor);
-					RemoteHelper.runCommandRemote(connection, new YoctoCommand("rm -rf temp", element.getMetaDir() + "/temp", ""), monitor, true);
+					RemoteHelper.runCommandRemote(connection, new YoctoCommand("rm -rf temp", element.getMetaDir() + "/temp", ""), monitor);
 				} catch (Exception e) {
 					throw new InvocationTargetException(e);
 				} finally {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index cea0724..f45158f 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -352,11 +352,11 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		
 		String md5Cmd = "md5sum " + getSrcFileName(true); 
 		YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
-		RemoteHelper.runCommandRemote(connection, md5YCmd, monitor, true);
+		RemoteHelper.runCommandRemote(connection, md5YCmd, monitor);
 		
 		String sha256Cmd = "sha256sum " + getSrcFileName(true); 
 		YoctoCommand sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
-		RemoteHelper.runCommandRemote(connection, sha256YCmd, monitor, true);
+		RemoteHelper.runCommandRemote(connection, sha256YCmd, monitor);
 		
 		URI extractDir = extractPackage(srcURI, monitor);
 		YoctoCommand licenseChecksumCmd = populateLicenseFileChecksum(extractDir, monitor);
@@ -388,7 +388,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 				tarCmd += "-xvf ";
 			}
 			
-			RemoteHelper.runCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""), monitor, true);
+			RemoteHelper.runCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""), monitor);
 			
 			return RemoteHelper.createNewURI(metaDirLoc, TEMP_FOLDER_NAME + "/" + getSrcFileName(false));
 			
@@ -427,7 +427,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		
 		try {
 			YoctoCommand catCmd = new YoctoCommand("md5sum " + COPYING_FILE, extractDir.getPath(), "");
-			RemoteHelper.runCommandRemote(connection, catCmd, monitor, true);
+			RemoteHelper.runCommandRemote(connection, catCmd, monitor);
 			return catCmd;
 		} catch (Exception e) {
 			throw new RuntimeException("Unable to process file for MD5 calculation", e);
@@ -495,7 +495,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		HashMap<String, String> mirrorMap = new HashMap<String, String>();
 		
 		YoctoCommand cmd = new YoctoCommand("cat " + MIRRORS_FILE, getMetaFolderPath() + CLASSES_FOLDER, "");
-		RemoteHelper.runCommandRemote(connection, cmd, monitor, true);
+		RemoteHelper.runCommandRemote(connection, cmd, monitor);
 		
 		if (!cmd.getProcessBuffer().hasErrors()){
 			String delims = "[\\t]+";
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index 2401664..dd2074c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -1,12 +1,9 @@
 package org.yocto.bc.ui.wizards.install;
 
-import java.io.File;
 import java.lang.reflect.InvocationTargetException;
 import java.net.URI;
 import java.util.Hashtable;
 import java.util.Map;
-import java.util.regex.Matcher;
-import java.util.regex.Pattern;
 
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
@@ -21,7 +18,6 @@ import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbench;
 import org.eclipse.ui.IWorkbenchWizard;
 import org.eclipse.ui.console.MessageConsole;
-import org.yocto.bc.bitbake.ICommandResponseHandler;
 import org.yocto.bc.remote.utils.CommandResponseHandler;
 import org.yocto.bc.remote.utils.ConsoleWriter;
 import org.yocto.bc.remote.utils.RemoteHelper;
@@ -118,23 +114,14 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 				
 			if (((Boolean)options.get(GIT_CLONE)).booleanValue()) {
 				String[] cmd = {"/usr/bin/git clone --progress", "git://git.yoctoproject.org/poky.git", uri.getPath()};
-				final Pattern pattern = Pattern.compile("^Receiving objects:\\s*(\\d+)%.*");
-				LongtimeRunningTask runningTask = new LongtimeRunningTask("Checking out Yocto git repository", cmd, null, null,
+				LongtimeRunningTask runningTask = new LongtimeRunningTask("Checking out Yocto git repository", cmd, 
 						((IRemoteConnection)model.get(InstallWizard.SELECTED_CONNECTION)), 
-						((IRemoteServices)model.get(InstallWizard.SELECTED_REMOTE_SERVICE)),
-					new ICalculatePercentage() {
-						public float calWorkloadDone(String info) throws IllegalArgumentException {
-							Matcher m = pattern.matcher(info.trim());
-							if(m.matches()) {
-								return new Float(m.group(1)) / 100;
-							}else {
-								throw new IllegalArgumentException();
-							}
-						}
-					}
-				);
-				this.getContainer().run(true,true, runningTask);
+						((IRemoteServices)model.get(InstallWizard.SELECTED_REMOTE_SERVICE)));
+				this.getContainer().run(false, false, runningTask);
+//				while (!runningTask.isFinished)
+//					Thread.sleep(2);
 			}
+			
 			CommandResponseHandler cmdHandler = RemoteHelper.getCommandHandler(RemoteHelper.getRemoteConnectionByName(((IRemoteConnection)model.get(InstallWizard.SELECTED_CONNECTION)).getName()));
 			if (!cmdHandler.hasError()) {
 				String initPath = "";
@@ -177,62 +164,27 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 	public void init(IWorkbench workbench, IStructuredSelection selection) {
 	}
 
-	private interface ICalculatePercentage {
-		public float calWorkloadDone(String info) throws IllegalArgumentException;
-	}
-
 	private class LongtimeRunningTask implements IRunnableWithProgress {
 		static public final int TOTALWORKLOAD = 100;
 		
 		private String []cmdArray;
-		private Process process;
 		private String taskName;
-		private int reported_workload;
 		private IRemoteConnection connection;
 		private IRemoteServices remoteServices;
 		
-		ICalculatePercentage cal;
-
 		public LongtimeRunningTask(String taskName, 
-				String []cmdArray, String []envp, File dir, 
-				IRemoteConnection connection, IRemoteServices remoteServices,
-				ICalculatePercentage calculator) {
+				String []cmdArray,
+				IRemoteConnection connection, IRemoteServices remoteServices) {
 			this.taskName = taskName;
 			this.cmdArray = cmdArray;
-			this.process = null;
-			this.cal = calculator;
 			this.connection = connection;
-//			this.handler = RemoteHelper.getCommandHandler(RemoteHelper.getRemoteConnectionByName(connection.getName()));
 			this.remoteServices = remoteServices;
 		}
 
-//		private void reportProgress(IProgressMonitor monitor,String info) {
-//			if(cal == null) {
-//				monitor.worked(1);
-//			}else {
-//				float percentage;
-//				try {
-//					percentage=cal.calWorkloadDone(info);
-//				} catch (IllegalArgumentException e) {
-//					//can't get percentage
-//					return;
-//				}
-//				int delta=(int) (TOTALWORKLOAD * percentage - reported_workload);
-//				if( delta > 0 ) {
-//					monitor.worked(delta);
-//					reported_workload += delta;
-//				}
-//			}
-//		}
-
 		synchronized public void run(IProgressMonitor monitor) 
 				throws InvocationTargetException, InterruptedException {
-
-//			boolean cancel = false;
-			reported_workload = 0;
-
+			boolean cancel = false;
 			try {
-				
 				monitor.beginTask(taskName, TOTALWORKLOAD);
 				
 				if (!connection.isOpen()) {
@@ -251,18 +203,24 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 				for (int i = 1; i < cmdArray.length; i++)
 					args += cmdArray[i] + " ";
 				try {
-					RemoteHelper.runCommandRemote(RemoteHelper.getRemoteConnectionByName(connection.getName()), new YoctoCommand(cmdArray[0], "", args), monitor, true);
-					RemoteHelper.runCommandRemote(RemoteHelper.getRemoteConnectionByName(connection.getName()), new YoctoCommand("pwd", "", ""), monitor, true);
+					while (!cancel) {
+	                    if(monitor.isCanceled()) {
+	                            cancel=true;
+	                            throw new InterruptedException("User Cancelled");
+	                    }
+	                    boolean hasErrors = RemoteHelper.runCommandRemote(RemoteHelper.getRemoteConnectionByName(connection.getName()), new YoctoCommand(cmdArray[0], "", args), monitor);
+	                    if (hasErrors)
+	                    	break;
+	                    
+	                    Thread.sleep(5000);
+					}
 				} catch (Exception e) {
 					e.printStackTrace();
+				} finally {
+					monitor.done();
 				}
 			} catch (Exception e) {
 				e.printStackTrace();
-			} finally {
-				monitor.done();
-				if (process != null ) {
-					process.destroy();
-				}
 			}
 		}
 	}
-- 
1.7.9.5


