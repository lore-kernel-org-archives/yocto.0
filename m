Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6FE2E01458
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 05:56:58 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2012 05:56:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,230,1355126400"; d="scan'208";a="227491081"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2012 05:56:56 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 15:46:55 +0200
Message-Id: <1354801622-13962-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 1/8] Show progress bar for New Bitbake Commander project
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
X-List-Received-Date: Thu, 06 Dec 2012 13:57:00 -0000

- run new Bitbake project creation in a new thread, being cancelable and update the monitor from the event handler in a asynchronous way by invoking Display.asyncExec
- use a blocking way to wait(mutex) for the  event handler to finish reading command outputs - not only the event handler must be blocked, the one invoking the remote commands must block waiting for output, otherwise the new Project Wizard will not wait for the commands to finish running
- When searching for the desired output through the existing lines, we should not search for the prompt + previous command exactly, because the terminal shell used will use a wrapping value for the lines received and insert a whitespace character at each multiple of wrapping value
	- usually, the wrapping value is  controlled by $COLUMNS shell variable - a quick fix setting this variable to a bigger value does not prove useful
	- instead, wait for the line containing the prompt & the previous command having all existing  whitespaces removed
	- the possibility that this line will be issued more than once is small.
- use YoctoHostShellAdapter to run long task showing progress in a Wizard page & parse task output using specialized Calculators

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   24 +--
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |    3 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   92 +++-----
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    4 +-
 .../remote/utils/YoctoHostShellProcessAdapter.java |  137 ++++++------
 .../bc/remote/utils/YoctoRunnableWithProgress.java |  106 ++++++++++
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    2 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  222 +++++++++-----------
 .../yocto/bc/ui/wizards/install/InstallWizard.java |  113 +++-------
 .../newproject/CreateBBCProjectOperation.java      |    7 +-
 10 files changed, 340 insertions(+), 370 deletions(-)
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
index edff746..961472f 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ShellSession.java
@@ -47,6 +47,7 @@ public class ShellSession {
 	public static final String TERMINATOR = "#234o987dsfkcqiuwey18837032843259d";
 	public static final String LT = System.getProperty("line.separator");
 	public static final String exportCmd = "export BB_ENV_EXTRAWHITE=\"DISABLE_SANITY_CHECKS $BB_ENV_EXTRAWHITE\"";
+	public static final String exportColumnsCmd = "export COLUMNS=1000";
 	
 	public static String getFilePath(String file) throws IOException {
 		File f = new File(file);
@@ -96,8 +97,8 @@ public class ShellSession {
 	private void initializeShell(IProgressMonitor monitor) throws IOException {
 		try {
 			IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
-			RemoteHelper.runCommandRemote(connection, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""), monitor);		
-			RemoteHelper.runCommandRemote(connection, new YoctoCommand(exportCmd, root.getAbsolutePath(), ""), monitor);
+			RemoteHelper.runCommandRemote(connection, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""));
+			RemoteHelper.runCommandRemote(connection, new YoctoCommand(exportCmd, root.getAbsolutePath(), ""));
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
@@ -112,7 +113,7 @@ public class ShellSession {
 	public String execute(String command, boolean hasErrors) throws IOException {
 		try {
 			IHost connection = RemoteHelper.getRemoteConnectionByName(projectInfo.getConnection().getName());
-			hasErrors = RemoteHelper.runCommandRemote(connection, new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""), new NullProgressMonitor());
+			hasErrors = RemoteHelper.runCommandRemote(connection, new YoctoCommand(command, root.getAbsolutePath() + "/build/", ""));
 			return RemoteHelper.getProcessBuffer(connection).getMergedOutputLines();
 		} catch (Exception e) {
 			e.printStackTrace();
@@ -241,20 +242,5 @@ synchronized
 		interrupt = true;
 	}
 	
-	private class NullWriter extends Writer {
-
-		@Override
-		public void close() throws IOException {			
-		}
-
-		@Override
-		public void flush() throws IOException {			
-		}
-
-		@Override
-		public void write(char[] cbuf, int off, int len) throws IOException {			
-		}
-		
-	}
-
 }
+
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
index 6756fe3..438a5b4 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/ProcessStreamBuffer.java
@@ -4,6 +4,7 @@ import java.util.ArrayList;
 import java.util.List;
 
 public class ProcessStreamBuffer {
+	private static final String WHITESPACES = "\\s+";
 	List<String> errorLines;
 	List<String> outputLines;
 	
@@ -47,7 +48,7 @@ public class ProcessStreamBuffer {
 			return null;
 		for (int i = outputLines.size() - 1; i >= 0; i--){
 			String line = outputLines.get(i);
-			if (line.contains(str))
+			if (line.replaceAll(WHITESPACES, "").contains(str.replaceAll(WHITESPACES, "")))
 				return line;
 		}
 		return null;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 432969c..929ad63 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -138,36 +138,6 @@ public class RemoteHelper {
 		return null;
 	}
 	
-//	private static int displayDialogBox(String name, String[] choices) {
-//		Display display = Display.getDefault();;
-//	    final Shell shell = new Shell(display);
-//	    shell.setText(name);
-//
-//	    shell.setLayout(new GridLayout(2, false));
-//
-//	    new Label(shell, SWT.NONE).setText("Connections for host:");
-//	    final Combo comboChoices = new Combo(shell, SWT.DROP_DOWN | SWT.READ_ONLY);
-//	    for (int i = 0, n = choices.length; i < n; i++)
-//	    	comboChoices.add(choices[i]);
-//	    comboChoices.select(0);
-//
-//	    Button btnOK = new Button(shell, SWT.PUSH);
-//	    btnOK.setText("OK");
-//	   
-//	    DialogSelectionListener dsl = new DialogSelectionListener(shell, comboChoices);
-//	    
-//	    btnOK.addSelectionListener(dsl);
-//	    
-//	    shell.pack();
-//	    shell.open();
-//	    while (!shell.isDisposed()) {
-//	    	if (!display.readAndDispatch()) {
-//	            display.sleep();
-//	        }
-//	    }
-//	    return dsl.getReturnValue();
-//	}
-	
 	public static String getRemoteHostName(String remoteConnection){
 		final IHost host = getRemoteConnectionByName(remoteConnection);
 		if(host == null)
@@ -270,49 +240,49 @@ public class RemoteHelper {
 		return null;
 	}
 	
-	public static boolean runCommandRemote(IHost connection, YoctoCommand cmd, IProgressMonitor monitor) throws Exception {
-		String remoteCommand = cmd.getCommand() + " " + cmd.getArguments();
-		boolean hasErrors = false;
-		try {
-			if (!cmd.getInitialDirectory().isEmpty()) {
-				hasErrors = writeToShell(connection, "cd " + cmd.getInitialDirectory(), monitor);
-			}
-			if (!hasErrors)
-				return writeToShell(connection, remoteCommand, monitor);
-		} catch (Exception e) {
-			e.printStackTrace();
+	public static boolean runCommandRemote(final IHost connection, final YoctoCommand cmd) throws Exception {
+		final String remoteCommand = cmd.getCommand() + " " + cmd.getArguments();
+		final boolean hasErrors = false;
+		
+		if (!cmd.getInitialDirectory().isEmpty()) {
+			writeToShell(connection, "cd " + cmd.getInitialDirectory());
 		}
+		if (!hasErrors)
+			writeToShell(connection, remoteCommand);
+				
 		return hasErrors;
 	}
 	
-	public static boolean writeToShell(IHost connection, String remoteCommand, IProgressMonitor monitor){
-		YoctoHostShellProcessAdapter hostShellProcessAdapter = getHostShellProcessAdapter(connection);
-		hostShellProcessAdapter.setMonitor(monitor);
-		hostShellProcessAdapter.setLastCommand(remoteCommand);
-		getHostShell(connection).writeToShell(remoteCommand);
-		
-//		try {
-//			while (!hostShellProcessAdapter.isFinished() && hostShellProcessAdapter.isAlive()) {
-//				Thread.sleep(2);
-//			}
-////			System.out.println(">>>>>>>>>>>>>>>>>>>>finished command " + remoteCommand);
-//		} catch (Exception e) {
-//			e.printStackTrace();
-//		}
-//		
-		return hostShellProcessAdapter.hasErrors();
+	public static boolean writeToShell(final IHost connection, final String remoteCommand){
+		new Thread(new Runnable() {
+			@Override
+			public void run() {
+				try {
+					YoctoHostShellProcessAdapter adapter = getHostShellProcessAdapter(connection);
+					adapter.setLastCommand(remoteCommand);
+					getHostShell(connection).writeToShell(remoteCommand);
+					while (!adapter.isFinished())
+						Thread.sleep(2);
+//					return hostShellProcessAdapter.hasErrors();
+				} catch (Exception e) {
+					e.printStackTrace();
+				}
+			}
+		}).run();
+		return true;
 	}
-	
-	public static void runBatchRemote(IHost connection, List<YoctoCommand> cmds, IProgressMonitor monitor, boolean waitForOutput) throws CoreException {
+
+	public static void runBatchRemote(IHost connection, List<YoctoCommand> cmds, boolean waitForOutput) throws CoreException {
 		try {
 			String remoteCommand = "";
 			for (YoctoCommand cmd : cmds) {
 				remoteCommand = cmd.getCommand() + " " + cmd.getArguments();
 				if (!cmd.getInitialDirectory().isEmpty()) {
-					writeToShell(connection, "cd " + cmd.getInitialDirectory(), monitor);
+					writeToShell(connection, "cd " + cmd.getInitialDirectory());
 				}
-				writeToShell(connection, remoteCommand, monitor);
+				writeToShell(connection, remoteCommand);
 			}
+			
 		} catch (Exception e1) {
 			e1.printStackTrace();
 		}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
index a953ef7..6eb2945 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteMachine.java
@@ -8,6 +8,8 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.OperationCanceledException;
 import org.eclipse.core.runtime.Status;
+import org.eclipse.ptp.remote.core.IRemoteConnection;
+import org.eclipse.ptp.remote.core.IRemoteServices;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.services.clientserver.messages.SystemMessageException;
@@ -72,7 +74,7 @@ public class RemoteMachine {
 	public YoctoHostShellProcessAdapter getHostShellProcessAdapter() {
 		try {
 			if (hostShellProcessAdapter == null)
-				hostShellProcessAdapter = new YoctoHostShellProcessAdapter(getHostShell(), getProcessBuffer(), getCmdHandler());
+				hostShellProcessAdapter = new YoctoRunnableWithProgress(getHostShell(), getProcessBuffer(), getCmdHandler());
 			return hostShellProcessAdapter;
 		} catch (IOException e) {
 			e.printStackTrace();
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
index 79a62e0..baedc3b 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
@@ -1,19 +1,22 @@
 package org.yocto.bc.remote.utils;
 
 import java.io.IOException;
+import java.util.HashMap;
+import java.util.Map;
 import java.util.concurrent.Semaphore;
 import java.util.regex.Matcher;
 import java.util.regex.Pattern;
 
 import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.rse.services.shells.AbstractHostShellOutputReader;
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostOutput;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IHostShellChangeEvent;
 import org.eclipse.rse.services.shells.IHostShellOutputReader;
+import org.eclipse.swt.widgets.Display;
 
-public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
+public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter {
 	private String commandPrompt = null;
 	private static final String ROOT = "root";
 	private static final String PROMPT_USER_CH = "$";
@@ -23,42 +26,42 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 	private boolean isFinished;
 	private ICalculatePercentage calculator;
 	private int reportedWorkload;
-	private IProgressMonitor monitor;
 	private boolean isAlive;
 
-	private String lastCommand;
-	private boolean waitForOutput;
+	private String command;
+	private Map<String, IProgressMonitor> commandMonitors;
 	private String endChar = null;
 
 	private Semaphore sem;
 	
-	public String getLastCommand() {
-		return lastCommand;
-	}
-
-	public synchronized void setLastCommand(String lastCommand) {
-//		if (waitForOutput) {
-			try {
-				// there are still some processes that might take a long time and if we do not wait for them, 
-				// then the semaphore will not be released, because an interrupted exception will occur
-				Thread.sleep(2000);
-				System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>semaphore aquire");
-				sem.acquire();
-				this.lastCommand = lastCommand.trim();
-				System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>last command set " + lastCommand);
-			} catch (InterruptedException e) {
-				e.printStackTrace();
-			}
-//		}
+	public YoctoHostShellProcessAdapter(IHostShell hostShell, ProcessStreamBuffer processStreamBuffer, CommandResponseHandler commandResponseHandler) throws IOException {
+		super(hostShell);
+		this.processStreamBuffer = processStreamBuffer;
+		this.commandResponseHandler = commandResponseHandler;
+		this.calculator = new GitCalculatePercentage();
+		this.sem = new Semaphore(1);
+		this.command = "";
+		this.commandMonitors = new HashMap<>();
 	}
 
-
-	public IProgressMonitor getMonitor() {
-		return monitor;
+	public String getLastCommand() {
+		return command;
 	}
 
-	public void setMonitor(IProgressMonitor monitor) {
-		this.monitor = monitor;
+	public synchronized void setLastCommand(String lastCommand) {
+		try {
+			// there are still some processes that might take a long time and if we do not wait for them, 
+			// then the semaphore will not be released, because an interrupted exception will occur
+			Thread.sleep(2000);
+			isFinished = false;
+			sem.acquire();
+			this.command = lastCommand.trim();
+			System.out.println("last command " + lastCommand + getOwnMonitor());
+			this.commandMonitors.put(command, getOwnMonitor());
+
+		} catch (InterruptedException e) {
+			e.printStackTrace();
+		}
 	}
 
 	private interface ICalculatePercentage {
@@ -68,7 +71,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 	private class GitCalculatePercentage implements ICalculatePercentage {
 		final Pattern pattern = Pattern.compile("^Receiving objects:\\s*(\\d+)%.*");
 		public float calWorkloadDone(String info) throws IllegalArgumentException {
-			Matcher m = pattern.matcher(info.trim());
+	Matcher m = pattern.matcher(info.trim());
 			if(m.matches()) {
 				return new Float(m.group(1)) / 100;
 			}else {
@@ -77,38 +80,37 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 		}
 	}
 	
-	public YoctoHostShellProcessAdapter(IHostShell hostShell, ProcessStreamBuffer processStreamBuffer, CommandResponseHandler commandResponseHandler) throws IOException {
-		super(hostShell);
-		this.processStreamBuffer = processStreamBuffer;
-		this.commandResponseHandler = commandResponseHandler;
-		this.calculator = new GitCalculatePercentage();
-		this.sem = new Semaphore(1);
-		this.lastCommand = "";
-
+	private IProgressMonitor getMonitor() {
+		if (command == null) {
+			return null;
+		}
+		return commandMonitors.get(command);
 	}
 
 	private void updateMonitor(final int work){
-//		Display.getDefault().syncExec(new Runnable() {
-//			
-//			@Override
-//			public void run() {
-//				monitor.worked(work);
-//			}
-//		});
-	}
 	
+		Display.getDefault().asyncExec(new Runnable() {
+
+			@Override
+			public void run() {
+				if (getMonitor() != null) {
+					getMonitor().worked(work);
+				}
+			}
+
+		});
+	}
+
 	private void doneMonitor(){
-//		Display.getCurrent().syncExec(new Runnable() {
-//			
-//			@Override
-//			public void run() {
-//				monitor.done();
-//			}
-//		});
+		Display.getDefault().asyncExec(new Runnable() {
+			@Override
+			public void run() {
+				getMonitor().done();
+			}
+		});
 	}
-	
+
 	private void reportProgress(String info) {
-		
 		if(calculator == null) {
 			updateMonitor(1);
 		} else {
@@ -130,7 +132,7 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 				doneMonitor();
 		}
 	}
-	
+
 	@Override
 	public void shellOutputChanged(IHostShellChangeEvent event) {
 		IHostShellOutputReader reader = event.getReader();
@@ -153,10 +155,12 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 					continue;
 				}
 				setCommandPrompt(value);
-				if (value.startsWith(commandPrompt) &&  value.endsWith(endChar) && 
-						!value.endsWith(lastCommand) && processStreamBuffer.getLastOutputLineContaining(lastCommand) != null /*&& waitForOutput*/) {
-					System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Sem release");
+	
+				if (commandPrompt != null && endChar != null && command != null && processStreamBuffer != null &&
+						value.startsWith(commandPrompt) &&  value.endsWith(endChar) && 
+						!value.endsWith(command) && processStreamBuffer.getLastOutputLineContaining(command) != null) {
 					sem.release();
+					isFinished = true;
 				}
 
 				reportProgress(value);
@@ -166,9 +170,6 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 			}
 		}
 		
-		AbstractHostShellOutputReader absReader = (AbstractHostShellOutputReader)reader;
-		isAlive = absReader.isAlive();
-		isFinished = absReader.isFinished();
 	}
 	private void setCommandPrompt(String value) {
 		if (commandPrompt == null) {
@@ -199,16 +200,14 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 		this.isAlive = isAlive;
 	}
 
-	public boolean isWaitForOutput() {
-		return waitForOutput;
-	}
-
-	public void setWaitForOutput(boolean waitForOutput) {
-		this.waitForOutput = waitForOutput;
-	}
-
 	public void clearProcessBuffer() {
 		this.processStreamBuffer.outputLines.clear();
 		this.processStreamBuffer.errorLines.clear();
 	}
+
+	public IProgressMonitor getOwnMonitor() {
+		return new NullProgressMonitor();
+	}
+
 }
+
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
new file mode 100644
index 0000000..b6ed2b8
--- /dev/null
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProgress.java
@@ -0,0 +1,106 @@
+package org.yocto.bc.remote.utils;
+
+import java.io.IOException;
+import java.lang.reflect.InvocationTargetException;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.jface.operation.IRunnableWithProgress;
+import org.eclipse.ptp.remote.core.IRemoteConnection;
+import org.eclipse.ptp.remote.core.IRemoteServices;
+import org.eclipse.ptp.remote.core.exception.RemoteConnectionException;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.shells.IHostShell;
+
+public class YoctoRunnableWithProgress extends YoctoHostShellProcessAdapter
+		implements IRunnableWithProgress {
+
+	private String taskName;
+	private IRemoteConnection remoteConnection;
+	private IRemoteServices remoteServices;
+	private String cmd;
+	private String args;
+	private IProgressMonitor monitor;
+	
+	public YoctoRunnableWithProgress(IHostShell hostShell,
+			ProcessStreamBuffer processStreamBuffer,
+			CommandResponseHandler commandResponseHandler) throws IOException {
+		super(hostShell, processStreamBuffer, commandResponseHandler);
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
+                RemoteHelper.runCommandRemote(connection, new YoctoCommand(cmd, "", args));
+			} catch (Exception e) {
+				e.printStackTrace();
+			} finally {
+				monitor.done();
+			}
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+
+	@Override
+	public IProgressMonitor getOwnMonitor() {
+		return monitor;
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
+
+	public String getCmd() {
+		return cmd;
+	}
+
+	public void setCmd(String cmd) {
+		this.cmd = cmd;
+	}
+
+	public String getArgs() {
+		return args;
+	}
+
+	public void setArgs(String args) {
+		this.args = args;
+	}
+}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
index 73b21f5..57cad18 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
@@ -205,7 +205,7 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 			public void run(IProgressMonitor monitor) throws InvocationTargetException {
 				try {
 					doFinish(element, monitor);
-					RemoteHelper.runCommandRemote(connection, new YoctoCommand("rm -rf temp", element.getMetaDir() + "/temp", ""), monitor);
+					RemoteHelper.runCommandRemote(connection, new YoctoCommand("rm -rf temp", element.getMetaDir() + "/temp", ""));
 				} catch (Exception e) {
 					throw new InvocationTargetException(e);
 				} finally {
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index f1d90c9..e27619e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -24,7 +24,6 @@ import org.eclipse.core.resources.IContainer;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.ResourcesPlugin;
-import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Path;
@@ -54,7 +53,7 @@ import org.yocto.bc.remote.utils.YoctoCommand;
 public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private Text containerText;
 	private Text fileText;
-	
+
 	private Text descriptionText;
 	private Text licenseText;
 	private Text checksumText;
@@ -65,17 +64,17 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private Text md5sumText;
 	private Text sha256sumText;
 	private Button btnPopulate;
-	
+
 	private BitbakeRecipeUIElement element;
-	
+
 	private ISelection selection;
 	private URI metaDirLoc;
 	private ArrayList<String> inheritance;
 
 	private IHost connection;
-	
+
 	private String tempFolderPath;
-	
+
 	public static final String TEMP_FOLDER_NAME = "temp";
 	public static final String TAR_BZ2_EXT = ".tar.bz2";
 	public static final String TAR_GZ_EXT = ".tar.gz";
@@ -98,7 +97,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private static final String AUTOTOOLS = "autotools";
 	private static final String md5Pattern = "^[0-9a-f]{32}$";
 	protected static final String sha256Pattern = "^[0-9a-f]{64}$";
-	
+
 	public NewBitBakeFileRecipeWizardPage(ISelection selection, IHost connection) {
 		super("wizardPage");
 		setTitle("BitBake Recipe");
@@ -107,9 +106,10 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		this.connection = connection;
 		this.element = new BitbakeRecipeUIElement();
 		this.inheritance = new ArrayList<String>();
-		
+
 	}
 
+	@Override
 	public void createControl(Composite parent) {
 		final Composite container = new Composite(parent, SWT.NULL);
 		GridLayout layout = new GridLayout();
@@ -129,6 +129,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		gd = new GridData(GridData.FILL_HORIZONTAL);
 		containerText.setLayoutData(gd);
 		containerText.addModifyListener(new ModifyListener() {
+			@Override
 			public void modifyText(ModifyEvent e) {
 				dialogChanged();
 			}
@@ -142,12 +143,12 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 				handleBrowse(container, containerText);
 			}
 		});
-		
+
 		label = new Label(container, SWT.NULL);
 		gd = new GridData();
 		gd.horizontalSpan = 3;
 		label.setLayoutData(gd);
-		
+
 		label = new Label(container, SWT.NULL);
 		label.setText("SRC_&URI:");
 
@@ -155,12 +156,13 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		gd = new GridData(GridData.FILL_HORIZONTAL);
 		txtSrcURI.setLayoutData(gd);
 		txtSrcURI.addModifyListener(new ModifyListener() {
+			@Override
 			public void modifyText(ModifyEvent e) {
 				if (txtSrcURI.getText().trim().isEmpty()) {
 					if (btnPopulate != null)
 						btnPopulate.setEnabled(false);
 				} else if (btnPopulate != null){
-						btnPopulate.setEnabled(true);
+					btnPopulate.setEnabled(true);
 				}
 				dialogChanged();
 			}
@@ -182,7 +184,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		createField(container, "License File &Checksum:", (checksumText = new Text(container, SWT.BORDER | SWT.SINGLE)));
 		createField(container, "&Package Description:", (descriptionText = new Text(container, SWT.BORDER | SWT.SINGLE)));
 		createField(container, "&License:", (licenseText = new Text(container, SWT.BORDER | SWT.SINGLE)));
-		
+
 		createField(container, "&Homepage:", (homepageText = new Text(container, SWT.BORDER | SWT.SINGLE)));
 		createField(container, "Package &Author:", (authorText = new Text(container, SWT.BORDER | SWT.SINGLE)));
 		createField(container, "&Section:", (sectionText = new Text(container, SWT.BORDER | SWT.SINGLE)));
@@ -190,7 +192,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 //		ProxySettingsComposite proxySettings = new ProxySettingsComposite(container, SWT.NONE);
 //		proxySettings.setEnabled(true);
 //		proxySettings.setVisible(true);
-		
+
 		initialize();
 		dialogChanged();
 		setControl(container);
@@ -200,12 +202,13 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		Label label = new Label(container, SWT.NONE);
 		label.setText(title);
 		label.moveAbove(control);
-	
+
 		GridData gd = new GridData(GridData.FILL_HORIZONTAL);
 		gd.horizontalSpan = 2;
 		control.setLayoutData(gd);
 		control.addModifyListener(new ModifyListener() {
 
+			@Override
 			public void modifyText(ModifyEvent e) {
 				dialogChanged();
 			}
@@ -222,7 +225,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			updateStatus("Directory must be specified");
 			return;
 		}
-	
+
 		if (container == null || (container.getType() & (IResource.PROJECT | IResource.FOLDER)) == 0) {
 			updateStatus("File container must exist");
 			return;
@@ -231,10 +234,10 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			updateStatus("Project must be writable");
 			return;
 		}
-		
+
 		IProject project = container.getProject();
 		metaDirLoc = RemoteHelper.createNewURI(project.getLocationURI(), "meta");
-		
+
 		if (fileName.length() == 0) {
 			updateStatus("File name must be specified");
 			return;
@@ -252,7 +255,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			updateStatus("Recipe must have a description");
 			return;
 		}
-		
+
 		if (licenseText.getText().length() == 0) {
 			updateStatus("Recipe must have a license");
 			return;
@@ -261,7 +264,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		if (txtSrcURI.getText().length() == 0) {
 			updateStatus("SRC_URI can't be empty");
 		}
-		
+
 		updateStatus(null);
 	}
 
@@ -281,7 +284,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		element.setMetaDir(metaDirLoc);
 		return element;
 	}
-	
+
 	private void handleBrowse(final Composite parent, final Text text) {
 		ContainerSelectionDialog dialog = new ContainerSelectionDialog(getShell(), ResourcesPlugin.getWorkspace().getRoot(), false, "Select project directory");
 		if (dialog.open() == Window.OK) {
@@ -291,14 +294,14 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			}
 		}
 	}
-	
+
 	private void handlePopulate() {
 		try {
 			IProgressMonitor monitor = new NullProgressMonitor();
 			URI srcURI = new URI(txtSrcURI.getText().trim());
 			String scheme = srcURI.getScheme();
 			String srcFileName = getSrcFileName(true);
-			if ((scheme.equals(HTTP) || scheme.equals(FTP)) 
+			if ((scheme.equals(HTTP) || scheme.equals(FTP))
 					&& (srcFileName.endsWith(TAR_GZ_EXT) || srcFileName.endsWith(TAR_BZ2_EXT))) {
 				try {
 					handleRemotePopulate(srcURI, monitor);
@@ -315,7 +318,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			e.printStackTrace();
 		}
 	}
-	
+
 	private void handleLocalPopulate(URI srcURI, IProgressMonitor monitor) {
 		populateLicenseFileChecksum(srcURI, monitor);
 		populateInheritance(srcURI, monitor);
@@ -326,43 +329,43 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 
 		populateRecipeName(srcURI);
 		List<YoctoCommand> commands = new ArrayList<YoctoCommand>();
-		
+
 		String metaDirLocPath = metaDirLoc.getPath();
 		commands.add(new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
 		commands.add(new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
 		updateTempFolderPath();
-		commands.add(new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, ""));
-		
-		updateTempFolderPath();
-		
+
+
 		try {
-			RemoteHelper.runBatchRemote(connection, commands, monitor, true);
-		} catch (CoreException e) {
+			commands.add(new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, ""));
+
+			updateTempFolderPath();
+			RemoteHelper.runBatchRemote(connection, commands, true);
+
+			commands.clear();
+
+			String md5Cmd = "md5sum " + getSrcFileName(true);
+			YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
+			RemoteHelper.runCommandRemote(connection, md5YCmd);
+
+			String sha256Cmd = "sha256sum " + getSrcFileName(true);
+			YoctoCommand sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
+			RemoteHelper.runCommandRemote(connection, sha256YCmd);
+
+			URI extractDir = extractPackage(srcURI, monitor);
+			YoctoCommand licenseChecksumCmd = populateLicenseFileChecksum(extractDir, monitor);
+			updateSrcUri(createMirrorLookupTable(monitor), srcURI);
+			populateInheritance(extractDir, monitor);
+
+			String md5Val = retrieveSum(md5YCmd);
+			md5sumText.setText(Pattern.matches(md5Pattern,  md5Val) ? md5Val : "");
+			String sha256Val = retrieveSum(sha256YCmd);
+			sha256sumText.setText(Pattern.matches(sha256Pattern,  sha256Val) ? sha256Val : "");
+			String checkSumVal =  retrieveSum(licenseChecksumCmd);
+			checksumText.setText(RemoteHelper.createNewURI(extractDir, COPYING_FILE).toString() + ";md5=" + (Pattern.matches(md5Pattern,  checkSumVal) ? checkSumVal : ""));
+		} catch (Exception e) {
 			e.printStackTrace();
 		}
-		
-		commands.clear();
-		
-		
-		String md5Cmd = "md5sum " + getSrcFileName(true); 
-		YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
-		RemoteHelper.runCommandRemote(connection, md5YCmd, monitor);
-		
-		String sha256Cmd = "sha256sum " + getSrcFileName(true); 
-		YoctoCommand sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
-		RemoteHelper.runCommandRemote(connection, sha256YCmd, monitor);
-		
-		URI extractDir = extractPackage(srcURI, monitor);
-		YoctoCommand licenseChecksumCmd = populateLicenseFileChecksum(extractDir, monitor);
-		updateSrcUri(createMirrorLookupTable(monitor), srcURI);
-		populateInheritance(extractDir, monitor);
-		
-		String md5Val = retrieveSum(md5YCmd);
-		md5sumText.setText(Pattern.matches(md5Pattern,  md5Val) ? md5Val : "");
-		String sha256Val = retrieveSum(sha256YCmd);
-		sha256sumText.setText(Pattern.matches(sha256Pattern,  sha256Val) ? sha256Val : "");
-		String checkSumVal =  retrieveSum(licenseChecksumCmd);
-		checksumText.setText(RemoteHelper.createNewURI(extractDir, COPYING_FILE).toString() + ";md5=" + (Pattern.matches(md5Pattern,  checkSumVal) ? checkSumVal : ""));
 	}
 
 	private String retrieveSum(YoctoCommand cmd) {
@@ -384,31 +387,31 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			} else if(path.endsWith(TAR_GZ_EXT)){
 				tarCmd += "-xvf ";
 			}
-			
-			RemoteHelper.runCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""), monitor);
-			
+
+			RemoteHelper.runCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""));
+
 			return RemoteHelper.createNewURI(metaDirLoc, TEMP_FOLDER_NAME + "/" + getSrcFileName(false));
-			
+
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
 		return null;
 	}
-	
+
 	private void updateTempFolderPath(){
 		this.tempFolderPath = getMetaFolderPath() + TEMP_FOLDER_NAME + "/";
 	}
-	
+
 	private String getMetaFolderPath(){
 		String sep = metaDirLoc.getPath().endsWith("/")? "" : "/";
 		return metaDirLoc.getPath() + sep;
 	}
-	
+
 	private void populateInheritance(URI extractDir, IProgressMonitor monitor) {
 		IHostFile[] hostFiles = RemoteHelper.getRemoteDirContent(connection, metaDirLoc.getPath(), "", IFileService.FILE_TYPE_FILES, monitor);
 		if (hostFiles == null)
 			return;
-		
+
 		for (IHostFile file: hostFiles) {
 			String fileName = file.getName();
 			if (fileName.equalsIgnoreCase(CMAKE_LIST)){
@@ -420,21 +423,21 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			}
 		}
 	}
-	
+
 	private YoctoCommand populateLicenseFileChecksum(URI extractDir, IProgressMonitor monitor) {
 		if (extractDir == null)
 			throw new RuntimeException("Something went wrong during source extraction!");
-		
+
 		try {
 			YoctoCommand catCmd = new YoctoCommand("md5sum " + COPYING_FILE, extractDir.getPath(), "");
-			RemoteHelper.runCommandRemote(connection, catCmd, monitor);
+			RemoteHelper.runCommandRemote(connection, catCmd);
 			return catCmd;
 		} catch (Exception e) {
 			throw new RuntimeException("Unable to process file for MD5 calculation", e);
 		}
-		
+
 	}
-	
+
 	private String getSrcFileName(boolean withExt){
 		URI srcURI;
 		try {
@@ -455,48 +458,13 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		}
 		return "";
 	}
-	
-	
-	
-//	private void populateSrcUriChecksum(URI srcUri, IProgressMonitor monitor) {
-//		try {
-//			String rmCmd = "rm -rf " + TEMP_FOLDER_NAME;
-//			RemoteHelper.handleRunCommandRemote(connection, metaDirLoc.getPath(), rmCmd, "", monitor, cmdHandler);
-			
-//			String mkdirCmd = "mkdir " + TEMP_FOLDER_NAME;
-//			updateTempFolderPath();
-//			RemoteHelper.handleRunCommandRemote(connection, metaDirLoc.getPath(), mkdirCmd, "", monitor, cmdHandler);
-			
-			
-//			String wgetCmd = "wget " + srcUri.toURL();
-//			RemoteHelper.handleRunCommandRemote(connection, tempFolderPath, rmCmd + APPEND_CH + mkdirCmd + APPEND_CH + wgetCmd, "", monitor, cmdHandler);
-//			
-//			String md5Cmd = "md5sum " + getSrcFileName(true); 
-//			ProcessStreamBuffer md5SumBuffer = RemoteHelper.handleRunCommandRemote(connection, tempFolderPath, md5Cmd, "", monitor, cmdHandler);
-//			String line = md5SumBuffer.getLastOutputLineContaining(getSrcFileName(true));
-//			if (line != null) {
-//				String[] md5SumTokens = line.split(WHITESPACES);
-//				md5sumText.setText(md5SumTokens[0]);
-//			}
-//			
-//			String sha256Cmd = "sha256sum " + getSrcFileName(true); 
-//			ProcessStreamBuffer sha256SumBuffer = RemoteHelper.handleRunCommandRemote(connection, tempFolderPath, sha256Cmd, "", monitor, cmdHandler);
-//			line = sha256SumBuffer.getLastOutputLineContaining(getSrcFileName(true));
-//			if (line != null) {
-//				String[] sha256SumTokens = line.split(WHITESPACES);
-//				sha256sumText.setText(sha256SumTokens[0]);
-//			}
-//		} catch (Exception e) {
-//			e.printStackTrace();
-//		}
-//	}
-	
+
 	private HashMap<String, String> createMirrorLookupTable(IProgressMonitor monitor) throws Exception {
 		HashMap<String, String> mirrorMap = new HashMap<String, String>();
-		
+
 		YoctoCommand cmd = new YoctoCommand("cat " + MIRRORS_FILE, getMetaFolderPath() + CLASSES_FOLDER, "");
-		RemoteHelper.runCommandRemote(connection, cmd, monitor);
-		
+		RemoteHelper.runCommandRemote(connection, cmd);
+
 		if (!cmd.getProcessBuffer().hasErrors()){
 			String delims = "[\\t]+";
 			List<String> outputLines = cmd.getProcessBuffer().getOutputLines();
@@ -512,42 +480,42 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		}
 		return mirrorMap;
 	}
-	
+
 	private void populateRecipeName(URI srcUri) {
 		String fileName = fileText.getText();
-		if (!fileName.isEmpty()) 
+		if (!fileName.isEmpty())
 			return;
-		
+
 		String recipeFile = getSrcFileName(false).replace("-", "_");
 		recipeFile += BB_RECIPE_EXT;
 		if (recipeFile != null)
 			fileText.setText(recipeFile);
 	}
-	
+
 	private void updateSrcUri(HashMap<String, String> mirrorsMap, URI srcUri) {
 		Set<String> mirrors = mirrorsMap.keySet();
 		Iterator<String> iter = mirrors.iterator();
 		String mirror_key = null;
 		String srcURL = srcUri.toString();
-		
-	    while (iter.hasNext()) {
-	    	String value = (String)iter.next();
-	    	if (srcURL.startsWith(value)) {
-	    		mirror_key = value;
-	    		break;
-	    	}	
-	    }
-	    
-	    if (mirror_key != null) {
-	    	String replace_string = (String)mirrorsMap.get(mirror_key);
-	    	if (replace_string != null)
-	    		srcURL = replace_string + srcURL.substring(mirror_key.length());
-	    }
-	    int idx = srcURL.lastIndexOf("-");
-	    String new_src_uri = srcURL.substring(0, idx)+"-${PV}" + TAR_GZ_EXT;
-	    txtSrcURI.setText(new_src_uri);
+
+		while (iter.hasNext()) {
+			String value = iter.next();
+			if (srcURL.startsWith(value)) {
+				mirror_key = value;
+				break;
+			}
+		}
+
+		if (mirror_key != null) {
+			String replace_string = mirrorsMap.get(mirror_key);
+			if (replace_string != null)
+				srcURL = replace_string + srcURL.substring(mirror_key.length());
+		}
+		int idx = srcURL.lastIndexOf("-");
+		String new_src_uri = srcURL.substring(0, idx)+"-${PV}" + TAR_GZ_EXT;
+		txtSrcURI.setText(new_src_uri);
 	}
-	
+
 	private void initialize() {
 		if (selection != null && selection.isEmpty() == false && selection instanceof IStructuredSelection) {
 			IStructuredSelection ssel = (IStructuredSelection) selection;
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
index d780cbf..77f4d2c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWizard.java
@@ -5,16 +5,13 @@ import java.net.URI;
 import java.util.Hashtable;
 import java.util.Map;
 
-import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.Status;
-import org.eclipse.jface.operation.IRunnableWithProgress;
-import org.eclipse.jface.operation.ModalContext;
 import org.eclipse.jface.viewers.IStructuredSelection;
+import org.eclipse.jface.wizard.IWizardContainer;
 import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.ptp.remote.core.IRemoteConnection;
 import org.eclipse.ptp.remote.core.IRemoteServices;
-import org.eclipse.ptp.remote.core.exception.RemoteConnectionException;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbench;
 import org.eclipse.ui.IWorkbenchWizard;
@@ -22,7 +19,7 @@ import org.eclipse.ui.console.MessageConsole;
 import org.yocto.bc.remote.utils.CommandResponseHandler;
 import org.yocto.bc.remote.utils.ConsoleWriter;
 import org.yocto.bc.remote.utils.RemoteHelper;
-import org.yocto.bc.remote.utils.YoctoCommand;
+import org.yocto.bc.remote.utils.YoctoRunnableWithProgress;
 import org.yocto.bc.ui.Activator;
 import org.yocto.bc.ui.model.ProjectInfo;
 import org.yocto.bc.ui.wizards.FiniteStateWizard;
@@ -106,24 +103,35 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 		page.setPageComplete(true);
 		Map<String, Object> options = model;
 		
-
 		try {
 			URI uri = new URI("");
 			if (options.containsKey(INSTALL_DIRECTORY)) {
 				uri = (URI) options.get(INSTALL_DIRECTORY);
 			}
+			IRemoteConnection remoteConnection = ((IRemoteConnection)model.get(InstallWizard.SELECTED_CONNECTION));
+			IRemoteServices remoteServices = ((IRemoteServices)model.get(InstallWizard.SELECTED_REMOTE_SERVICE));
+			IHost connection = RemoteHelper.getRemoteConnectionByName(remoteConnection.getName());
+			CommandResponseHandler cmdHandler = RemoteHelper.getCommandHandler(connection);
 				
 			if (((Boolean)options.get(GIT_CLONE)).booleanValue()) {
-				String[] cmd = {"/usr/bin/git clone --progress", "git://git.yoctoproject.org/poky.git", uri.getPath()};
-//				String[] cmd = {"md5sum /home/builder/socks-gw"};
-				LongtimeRunningTask runningTask = new LongtimeRunningTask("Checking out Yocto git repository", cmd, 
-						((IRemoteConnection)model.get(InstallWizard.SELECTED_CONNECTION)), 
-						((IRemoteServices)model.get(InstallWizard.SELECTED_REMOTE_SERVICE)));
-				ModalContext.setAllowReadAndDispatch(false);
-				this.getContainer().run(false, false, runningTask);
+				String cmd = "/usr/bin/git clone --progress";
+				String args = "git://git.yoctoproject.org/poky.git " + uri.getPath();
+				String taskName = "Checking out Yocto git repository";
+				YoctoRunnableWithProgress adapter = (YoctoRunnableWithProgress)RemoteHelper.getHostShellProcessAdapter(connection);
+				adapter.setRemoteConnection(remoteConnection);
+				adapter.setRemoteServices(remoteServices);
+				adapter.setTaskName(taskName);
+				adapter.setCmd(cmd);
+				adapter.setArgs(args);
+				IWizardContainer container = this.getContainer();
+				try {
+					container.run(true, true, adapter);
+				} catch (InvocationTargetException e) {
+					e.printStackTrace();
+				} catch (InterruptedException e) {
+					e.printStackTrace();
+				}
 			}
-			
-			CommandResponseHandler cmdHandler = RemoteHelper.getCommandHandler(RemoteHelper.getRemoteConnectionByName(((IRemoteConnection)model.get(InstallWizard.SELECTED_CONNECTION)).getName()));
 			if (!cmdHandler.hasError()) {
 				String initPath = "";
 				if (uri.getPath() != null) {
@@ -136,28 +144,25 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 				pinfo.setInitScriptPath(initPath);
 				pinfo.setLocation(uri);
 				pinfo.setName(prjName);
-				IRemoteConnection remConn = (IRemoteConnection) model.get(InstallWizard.SELECTED_CONNECTION);
-				IHost connection = RemoteHelper.getRemoteConnectionByName(remConn.getName());
 				pinfo.setConnection(connection);
-				pinfo.setRemoteServices((IRemoteServices) model.get(InstallWizard.SELECTED_REMOTE_SERVICE));
+				pinfo.setRemoteServices(remoteServices);
 			
 				ConsoleWriter cw = new ConsoleWriter();
-				this.getContainer().run(false, false, new BBConfigurationInitializeOperation(pinfo, cw));
+				this.getContainer().run(true, true, new BBConfigurationInitializeOperation(pinfo, cw));
 				console = RemoteHelper.getConsole(connection);
 				console.newMessageStream().println(cw.getContents());
 
 				model.put(InstallWizard.KEY_PINFO, pinfo);
 				Activator.putProjInfo(pinfo.getURI(), pinfo);
 
-				this.getContainer().run(false, false, new CreateBBCProjectOperation(pinfo));
+				this.getContainer().run(true, true, new CreateBBCProjectOperation(pinfo));
 				return true;
-				
 			}
+			return true;
 		} catch (Exception e) {
 			Activator.getDefault().getLog().log(new Status(IStatus.ERROR, Activator.PLUGIN_ID,
 					IStatus.ERROR, e.getMessage(), e));
-			this.getContainer().getCurrentPage().setDescription(
-							"Failed to create project: " + e.getMessage());
+			this.getContainer().getCurrentPage().setDescription("Failed to create project: " + e.getMessage());
 		}
 		return false;
 	}
@@ -165,66 +170,4 @@ public class InstallWizard extends FiniteStateWizard implements IWorkbenchWizard
 	public void init(IWorkbench workbench, IStructuredSelection selection) {
 	}
 
-	private class LongtimeRunningTask implements IRunnableWithProgress {
-		static public final int TOTALWORKLOAD = 100;
-		
-		private String []cmdArray;
-		private String taskName;
-		private IRemoteConnection connection;
-		private IRemoteServices remoteServices;
-		
-		public LongtimeRunningTask(String taskName, 
-				String []cmdArray,
-				IRemoteConnection connection, IRemoteServices remoteServices) {
-			this.taskName = taskName;
-			this.cmdArray = cmdArray;
-			this.connection = connection;
-			this.remoteServices = remoteServices;
-		}
-
-		synchronized public void run(IProgressMonitor monitor) 
-				throws InvocationTargetException, InterruptedException {
-//			boolean cancel = false;
-			try {
-				monitor.beginTask(taskName, TOTALWORKLOAD);
-				
-				if (!connection.isOpen()) {
-					try {
-						connection.open(monitor);
-					} catch (RemoteConnectionException e1) {
-						e1.printStackTrace();
-					}
-				}
-
-				if (!remoteServices.isInitialized()) {
-					remoteServices.initialize();
-				}
-
-				String args = "";
-				for (int i = 1; i < cmdArray.length; i++)
-					args += cmdArray[i] + " ";
-				try {
-//					while (!cancel) {
-//	                    if(monitor.isCanceled()) {
-//	                            cancel=true;
-//	                            throw new InterruptedException("User Cancelled");
-//	                    }
-	                    RemoteHelper.runCommandRemote(RemoteHelper.getRemoteConnectionByName(connection.getName()), new YoctoCommand(cmdArray[0], "", args), monitor);
-//	                    if (hasErrors)
-//	                    	break;
-	                    
-//	                    Thread.sleep(5000);
-//					}
-				} catch (Exception e) {
-					e.printStackTrace();
-				} finally {
-					monitor.done();
-				}
-			} catch (Exception e) {
-				e.printStackTrace();
-			}
-		}
-	}
-
-
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
index e5ebd1b..fcc939c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/newproject/CreateBBCProjectOperation.java
@@ -63,12 +63,7 @@ public class CreateBBCProjectOperation extends WorkspaceModifyOperation {
 	private IProjectDescription createProjectDescription(IWorkspace workspace, ProjectInfo projInformation) throws CoreException {
 		IProjectDescription desc = workspace.newProjectDescription(projInformation.getProjectName());
 		
-//		try {
-//			desc.setLocationURI(new URI(OEFS_SCHEME + projInfo2.getRootPath()));
-			desc.setLocationURI(projInformation.getURI());
-//		} catch (URISyntaxException e) {
-//			throw new CoreException(new Status(IStatus.ERROR, Activator.PLUGIN_ID, "Unable to load filesystem.", e));
-//		}
+		desc.setLocationURI(projInformation.getURI());
 		
 		return desc;
 	}
-- 
1.7.9.5


