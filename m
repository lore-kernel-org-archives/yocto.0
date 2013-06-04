Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2748DE01578
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:48:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 04 Jun 2013 06:48:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,799,1363158000"; d="scan'208";a="344571073"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2013 06:48:32 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 16:26:01 +0300
Message-Id: <1370352368-18730-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 2/9] Add remote tools classes needed for bitbake remote capabilities
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
X-List-Received-Date: Tue, 04 Jun 2013 13:48:48 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    8 +-
 .../yocto/remote/utils/CommandOutputProcessor.java |   33 +++
 .../yocto/remote/utils/CommandResponseHandler.java |   36 +++
 .../org/yocto/remote/utils/CommandRunnable.java    |   34 +++
 .../src/org/yocto/remote/utils/ConsoleHelper.java  |   28 +++
 .../org/yocto/remote/utils/ConsoleRunnable.java    |   37 +++
 .../remote/utils/ICommandResponseHandler.java      |   15 ++
 .../org/yocto/remote/utils/OutputProcessor.java    |  102 ++++++++
 .../yocto/remote/utils/ProcessStreamBuffer.java    |   77 ++++++
 .../src/org/yocto/remote/utils/RemoteHelper.java   |  255 ++++++++++++++++----
 .../src/org/yocto/remote/utils/RemoteMachine.java  |  206 ++++++++++++++++
 .../src/org/yocto/remote/utils/Session.java        |  117 +++++++++
 .../src/org/yocto/remote/utils/YoctoCommand.java   |   53 ++++
 13 files changed, 952 insertions(+), 49 deletions(-)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ProcessStreamBuffer.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Session.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java

diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index c7b57fe..06d14f8 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -11,17 +11,23 @@ Bundle-RequiredExecutionEnvironment: JavaSE-1.6
 Import-Package: org.eclipse.rse.core,
  org.eclipse.rse.core.model,
  org.eclipse.rse.core.subsystems,
+ org.eclipse.rse.internal.services.local.shells,
+ org.eclipse.rse.internal.services.shells,
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
  org.eclipse.rse.ui,
  org.eclipse.tm.internal.terminal.control,
- org.eclipse.tm.internal.terminal.provisional.api
+ org.eclipse.tm.internal.terminal.provisional.api,
+ org.eclipse.ui.console
 Export-Package: org.yocto.remote.utils
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java
new file mode 100644
index 0000000..4fca662
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProcessor.java
@@ -0,0 +1,33 @@
+package org.yocto.remote.utils;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.services.shells.IHostShell;
+
+public class CommandOutputProcessor extends OutputProcessor {
+
+	public CommandOutputProcessor(IProgressMonitor monitor,
+			IHostShell hostShell, CommandResponseHandler cmdHandler, String task) {
+		super(monitor, hostShell, cmdHandler, task);
+	}
+
+	@Override
+	protected boolean isErrChStop(char ch) {
+		return (ch == '\n');
+	}
+
+	@Override
+	protected boolean isOutChStop(char ch) {
+		return (ch == '\n');
+	}
+
+	@Override
+	protected void processOutputBufferLine(char ch, String str) {
+		processBuffer.addOutputLine(str);
+	}
+
+	@Override
+	protected void processErrorBufferLine(char ch, String str) {
+		processBuffer.addErrorLine(str);
+	}
+
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java
new file mode 100644
index 0000000..0785c45
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandResponseHandler.java
@@ -0,0 +1,36 @@
+package org.yocto.remote.utils;
+
+import org.eclipse.ui.console.MessageConsole;
+import org.eclipse.ui.console.MessageConsoleStream;
+
+public class CommandResponseHandler implements ICommandResponseHandler {
+	private MessageConsoleStream consoleStream;
+	private Boolean errorOccured = false;
+
+	public CommandResponseHandler(MessageConsole console) {
+		try {
+			this.consoleStream = console.newMessageStream();
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+
+	public Boolean hasError() {
+		return errorOccured;
+	}
+
+	@Override
+	public void response(String line, boolean isError) {
+		try {
+			if (isError) {
+				consoleStream.println(line);
+				errorOccured = true;
+			} else {
+				consoleStream.println(line);
+			}
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java
new file mode 100644
index 0000000..46a3f35
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandRunnable.java
@@ -0,0 +1,34 @@
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
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java
new file mode 100644
index 0000000..307e219
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleHelper.java
@@ -0,0 +1,28 @@
+package org.yocto.remote.utils;
+
+import org.eclipse.swt.widgets.Display;
+import org.eclipse.ui.console.ConsolePlugin;
+import org.eclipse.ui.console.IConsole;
+import org.eclipse.ui.console.IConsoleManager;
+import org.eclipse.ui.console.MessageConsole;
+
+public class ConsoleHelper {
+	public static final String YOCTO_CONSOLE = "Yocto Project Console";
+
+	public static MessageConsole findConsole(String name) {
+		ConsolePlugin plugin = ConsolePlugin.getDefault();
+		IConsoleManager conMan = plugin.getConsoleManager();
+		IConsole[] existing = conMan.getConsoles();
+		for (int i = 0; i < existing.length; i++)
+			if (name.equals(existing[i].getName()))
+				return (MessageConsole) existing[i];
+		// no console found, so create a new one
+		MessageConsole myConsole = new MessageConsole(name, null);
+		conMan.addConsoles(new IConsole[] { myConsole });
+		return myConsole;
+	}
+
+	public static void showConsole(MessageConsole console){
+		Display.getDefault().syncExec(new ConsoleRunnable(console));
+	}
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java
new file mode 100644
index 0000000..f3b0ccd
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleRunnable.java
@@ -0,0 +1,37 @@
+package org.yocto.remote.utils;
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
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommandResponseHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommandResponseHandler.java
new file mode 100644
index 0000000..a8a8f95
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommandResponseHandler.java
@@ -0,0 +1,15 @@
+/*****************************************************************************
+ * Copyright (c) 2009 Ken Gilmer
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     Ken Gilmer - initial API and implementation
+ *******************************************************************************/
+package org.yocto.remote.utils;
+
+public interface ICommandResponseHandler {
+	public void response(String line, boolean isError);
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
new file mode 100644
index 0000000..a06f077
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputProcessor.java
@@ -0,0 +1,102 @@
+package org.yocto.remote.utils;
+
+import java.io.BufferedReader;
+import java.io.IOException;
+import java.io.InputStreamReader;
+import java.util.concurrent.locks.Lock;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.internal.services.local.shells.LocalHostShell;
+import org.eclipse.rse.internal.services.shells.TerminalServiceHostShell;
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;
+import org.eclipse.rse.services.shells.IHostShell;
+
+public abstract class OutputProcessor{
+	private static final int ERROR_BUFFER = 1;
+	private static final int OUTPUT_BUFFER = 2;
+	protected String task;
+	protected ProcessStreamBuffer processBuffer;
+	protected IHostShell hostShell;
+	protected CommandResponseHandler cmdHandler;
+	protected IProgressMonitor monitor;
+
+	public OutputProcessor(IProgressMonitor monitor, IHostShell hostShell, CommandResponseHandler cmdHandler, String task){
+		this.monitor = monitor;
+		this.hostShell = hostShell;
+		this.processBuffer = new ProcessStreamBuffer(hostShell instanceof TerminalServiceHostShell);
+		this.cmdHandler = cmdHandler;
+		this.task = task;
+	}
+	public ProcessStreamBuffer processOutput() throws Exception{
+		if (hostShell == null)
+			throw new Exception("An error has occured while trying to run remote command!");
+		monitor.beginTask(this.task, RemoteHelper.TOTALWORKLOAD);
+		Lock lock = null;
+		if (hostShell instanceof LocalHostShell) {
+			lock = ((LocalHostShell)hostShell).getLock();
+			lock.lock();
+		}
+		BufferedReader inbr = null;
+		BufferedReader errbr = null;
+
+		if (hostShell instanceof LocalHostShell) {
+			inbr = ((LocalHostShell)hostShell).getReader(false);
+			errbr = ((LocalHostShell)hostShell).getReader(true);
+		} else {
+			Process p = new HostShellProcessAdapter(hostShell);
+			inbr = new BufferedReader(new InputStreamReader(p.getInputStream()));
+			errbr = new BufferedReader(new InputStreamReader(p.getErrorStream()));
+		}
+		boolean cancel = false;
+		while (!cancel) {
+			if(monitor.isCanceled()) {
+				cancel = true;
+				if (lock != null)
+					lock.unlock();
+				throw new InterruptedException("User Cancelled");
+			}
+			processBuffer(errbr, ERROR_BUFFER);
+			processBuffer(inbr, OUTPUT_BUFFER);
+			cancel = true;
+		}
+		if (lock != null)
+			lock.unlock();
+		return processBuffer;
+	}
+	protected abstract boolean isErrChStop(char ch);
+	protected abstract boolean isOutChStop(char ch);
+	protected boolean isChStop(char ch, int type){
+		if (type == ERROR_BUFFER)
+			return isErrChStop(ch);
+		else if(type == OUTPUT_BUFFER)
+			return isOutChStop(ch);
+		return false;
+	}
+	protected abstract void processOutputBufferLine(char ch, String str);
+	protected abstract void processErrorBufferLine(char ch, String str);
+	protected void processBufferLine(String str, char ch, int type){
+		if (type == ERROR_BUFFER)
+			processErrorBufferLine(ch, str);
+		else if(type == OUTPUT_BUFFER)
+			processOutputBufferLine(ch, str);
+	}
+	protected void processBuffer(BufferedReader br, int type) throws IOException{
+		StringBuffer buffer = new StringBuffer();
+		int c;
+		if (br != null)
+		while ((c = br.read()) != -1) {
+			char ch = (char) c;
+			buffer.append(ch);
+			if (isChStop(ch, type)){
+				String str = buffer.toString();
+				processBufferLine(str, ch, type);
+				System.out.println(str);
+				if (str.trim().equals(RemoteHelper.TERMINATOR)) {
+					break;
+				}
+				cmdHandler.response(str, false);
+				buffer.delete(0, buffer.length());
+			}
+		}
+	}
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ProcessStreamBuffer.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ProcessStreamBuffer.java
new file mode 100644
index 0000000..3fe8731
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ProcessStreamBuffer.java
@@ -0,0 +1,77 @@
+package org.yocto.remote.utils;
+
+import java.util.ArrayList;
+import java.util.List;
+import java.util.regex.Pattern;
+
+public class ProcessStreamBuffer {
+	private static final String WHITESPACES = "\\s+";
+	List<String> errorLines;
+	List<String> outputLines;
+	boolean isTerminal;
+
+	ProcessStreamBuffer(boolean isTerminal){
+		this.isTerminal = isTerminal;
+		errorLines = new ArrayList<String>();
+		outputLines = new ArrayList<String>();
+	}
+
+	public void addErrorLine(String line){
+		errorLines.add(line);
+	}
+	public void addOutputLine(String line){
+		outputLines.add(line);
+	}
+
+	public List<String> getOutputLines(){
+		return outputLines;
+	}
+
+	public List<String> getErrorLines(){
+		return errorLines;
+	}
+
+	public String getMergedOutputLines(){
+		String returnVal = "";
+		for (int i = 0; i < outputLines.size(); i++) {
+			String line = outputLines.get(i);
+			returnVal += line;
+			if (outputLines.size() > 1 && i != outputLines.size() - 1)
+				returnVal += "\n";
+		}
+		return returnVal;
+	}
+
+	public boolean hasErrors() {
+		return errorLines.size() != 0;
+	}
+
+	public String getLastOutputLineContaining(String str) {
+		if (!errorLines.isEmpty())
+			return null;
+		for (int i = outputLines.size() - 1; i >= 0; i--){
+			String line = outputLines.get(i);
+			if (line.replaceAll(WHITESPACES, "").contains(str.replaceAll(WHITESPACES, "")))
+				return line;
+		}
+		return null;
+	}
+
+	public String getOutputLineContaining(String arg, String pattern) {
+		List<String> lines = null;
+		if (isTerminal)
+			lines = errorLines;
+		else
+			lines = outputLines;
+		for (int i = lines.size() - 1; i >= 0; i--){
+			String line = lines.get(i);
+			if (line.contains(arg)) {
+				String[] tokens = line.split("\\s+");
+				if (Pattern.matches(pattern,  tokens[0])) {
+					return tokens[0];
+				}
+			}
+		}
+		return "";
+	}
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelper.java
index a1e9a08..e9118d6 100644
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
@@ -38,17 +41,26 @@ import org.eclipse.rse.core.model.ISubSystemConfigurationCategories;
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
+	public static final String TERMINATOR = "234o987dsfkcqiuwey18837032843259d";//$NON-NLS-1$
+	public static final int TOTALWORKLOAD = 100;
+	private static Map<IHost, RemoteMachine> machines;
 
 	public static IHost getRemoteConnectionByName(String remoteConnection) {
 		if (remoteConnection == null)
@@ -57,30 +69,7 @@ public class RemoteHelper {
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
@@ -94,27 +83,6 @@ public class RemoteHelper {
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
@@ -161,7 +129,7 @@ public class RemoteHelper {
 
 		IFileService fileService;
 		try {
-			fileService = (IFileService) getConnectedRemoteFileService(
+			fileService = getConnectedRemoteFileService(
 							connection,
 							new SubProgressMonitor(monitor, 5));
 			InputStream  inputStream = FileLocator.openStream(
@@ -204,7 +172,7 @@ public class RemoteHelper {
 
 		IFileService fileService;
 		try {
-			fileService = (IFileService) getConnectedRemoteFileService(
+			fileService = getConnectedRemoteFileService(
 							connection,
 							new SubProgressMonitor(monitor, 10));
 			File file = new File(localExePath);
@@ -341,4 +309,195 @@ public class RemoteHelper {
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
index 0000000..123a972
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMachine.java
@@ -0,0 +1,206 @@
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
+	private IHostShell hostShell;
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
+	public IHostShell getHostShell() {
+		try {
+			if (hostShell == null) {
+				hostShell = getShellService(new NullProgressMonitor()).launchShell("", new String[]{}, new NullProgressMonitor());
+				prepareEnvString(new NullProgressMonitor());
+			}
+		} catch (SystemMessageException e) {
+			e.printStackTrace();
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+		return hostShell;
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
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Session.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Session.java
new file mode 100644
index 0000000..cb14c0b
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Session.java
@@ -0,0 +1,117 @@
+package org.yocto.remote.utils;
+
+import java.io.BufferedReader;
+import java.io.IOException;
+import java.io.InputStream;
+import java.io.InputStreamReader;
+import java.io.OutputStream;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.services.files.IHostFile;
+
+public abstract class Session {
+	public static final String LT = System.getProperty("line.separator");
+	public static final String EXPORT_CMD = "export BB_ENV_EXTRAWHITE=\"DISABLE_SANITY_CHECKS $BB_ENV_EXTRAWHITE\"";
+
+	private final String initCmd;
+	private final IHostFile root;
+
+	public String terminator;
+	private volatile boolean interrupt = false;
+	private Process process;
+	private final OutputStream pos = null;
+	private IHost connection;
+
+	public Session(IHostFile root, String initCmd) throws IOException {
+		this.root = root;
+		this.initCmd  = initCmd;
+		initializeConnection();
+		initializeShell(new NullProgressMonitor());
+	}
+
+	protected abstract void initializeConnection();
+
+	private void initializeShell(IProgressMonitor monitor) throws IOException {
+		try {
+			if (root != null) {
+				RemoteHelper.handleRunCommandRemote(connection, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""), monitor);
+				RemoteHelper.handleRunCommandRemote(connection,  new YoctoCommand(EXPORT_CMD, root.getAbsolutePath(), ""), monitor);
+			} else {
+				throw new Exception("Root file not found!");
+			}
+		} catch (Exception e) {
+			e.printStackTrace();
+		}
+	}
+	synchronized
+	public void execute(String command, String terminator, ICommandResponseHandler handler) throws IOException {
+		interrupt = false;
+		InputStream errIs = process.getErrorStream();
+		if (errIs.available() > 0) {
+			clearErrorStream(errIs);
+		}
+		sendToProcessAndTerminate(command);
+
+		BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
+		String std = null;
+
+		do {
+			if (errIs.available() > 0) {
+				byte[] msg = new byte[errIs.available()];
+
+				errIs.read(msg, 0, msg.length);
+				handler.response(new String(msg), true);
+			}
+
+			std = br.readLine();
+
+			if (std != null && !std.endsWith(terminator)) {
+				handler.response(std, false);
+			}
+
+		} while (std != null && !std.endsWith(terminator) && !interrupt);
+
+		if (interrupt) {
+			process.destroy();
+			initializeShell(null);
+			interrupt = false;
+		}
+	}
+
+	private void clearErrorStream(InputStream is) {
+
+		try {
+			byte b[] = new byte[is.available()];
+			is.read(b);
+			System.out.println("clearing: " + new String(b));
+		} catch (IOException e) {
+			e.printStackTrace();
+			//Ignore any error
+		}
+	}
+	/**
+	 * Send command string to shell process and add special terminator string so
+	 * reader knows when output is complete.
+	 *
+	 * @param command
+	 * @throws IOException
+	 */
+	private void sendToProcessAndTerminate(String command) throws IOException {
+		pos.write(command.getBytes());
+		pos.write(LT.getBytes());
+		pos.flush();
+		pos.write("echo $?".getBytes());
+		pos.write(terminator.getBytes());
+		pos.write(LT.getBytes());
+		pos.flush();
+	}
+
+	/**
+	 * Interrupt any running processes.
+	 */
+	public void interrupt() {
+		interrupt = true;
+	}
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java
new file mode 100644
index 0000000..0cd7dcd
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCommand.java
@@ -0,0 +1,53 @@
+package org.yocto.remote.utils;
+
+
+public class YoctoCommand {
+	private String command;
+	private String initialDirectory;
+	private String arguments;
+	private ProcessStreamBuffer processBuffer;
+
+	public YoctoCommand(String command, String initialDirectory, String arguments){
+		this.setCommand(command);
+		this.setInitialDirectory(initialDirectory);
+		this.setArguments(arguments);
+		this.setProcessBuffer(new ProcessStreamBuffer(false));
+	}
+
+	public String getCommand() {
+		return command;
+	}
+
+	public void setCommand(String command) {
+		this.command = command;
+	}
+
+	public String getInitialDirectory() {
+		return initialDirectory;
+	}
+
+	public void setInitialDirectory(String initialDirectory) {
+		this.initialDirectory = initialDirectory;
+	}
+
+	public String getArguments() {
+		return arguments;
+	}
+
+	public void setArguments(String arguments) {
+		this.arguments = arguments;
+	}
+
+	public ProcessStreamBuffer getProcessBuffer() {
+		return processBuffer;
+	}
+
+	public void setProcessBuffer(ProcessStreamBuffer processBuffer) {
+		this.processBuffer = processBuffer;
+	}
+
+	@Override
+	public String toString() {
+		return command + " " + arguments;
+	}
+}
-- 
1.7.9.5


