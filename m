Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C8D2E01554
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 16:53:45 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jun 2013 16:54:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,818,1363158000"; d="scan'208";a="349396416"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2013 16:53:43 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 6 Jun 2013 16:53:43 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.29]) with mapi id
	14.03.0123.003; Thu, 6 Jun 2013 16:53:42 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [Refactor RFC 2/9] Add remote tools classes needed for
	bitbake remote capabilities
Thread-Index: AQHOYSpppGCya0IA1kCrAvLfRPoPqZkpWusw
Date: Thu, 6 Jun 2013 23:53:42 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C3805F@ORSMSX103.amr.corp.intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
	<1370352368-18730-3-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1370352368-18730-3-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Refactor RFC 2/9] Add remote tools classes needed for	bitbake remote capabilities
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
X-List-Received-Date: Thu, 06 Jun 2013 23:53:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

Please separate this into 2 patches, one is for adding those new util files=
 and also please add License for them.  Then make the RemoteHelper.java int=
o a separate patch.  Other comments are:

1.please add much more detailed information in your patch to explain why we=
 need new util classes and why RemoteHelper.java need to be changed.
2. there're many new functions that using IHost variable and you don't need=
 to check for IHost is null case?

Thanks
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, June 04, 2013 6:26 AM
To: yocto@yoctoproject.org
Subject: [yocto] [Refactor RFC 2/9] Add remote tools classes needed for bit=
bake remote capabilities

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
 .../src/org/yocto/remote/utils/RemoteHelper.java   |  255 ++++++++++++++++=
----
 .../src/org/yocto/remote/utils/RemoteMachine.java  |  206 ++++++++++++++++
 .../src/org/yocto/remote/utils/Session.java        |  117 +++++++++
 .../src/org/yocto/remote/utils/YoctoCommand.java   |   53 ++++
 13 files changed, 952 insertions(+), 49 deletions(-)  create mode 100644 p=
lugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProce=
ssor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/CommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/CommandRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ConsoleHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ConsoleRunnable.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ICommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/OutputProcessor.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ProcessStreamBuffer.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/RemoteMachine.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Session.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/YoctoCommand.java

diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/=
org.yocto.remote.utils/META-INF/MANIFEST.MF
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
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Comm=
andOutputProcessor.java b/plugins/org.yocto.remote.utils/src/org/yocto/remo=
te/utils/CommandOutputProcessor.java
new file mode 100644
index 0000000..4fca662
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandO
+++ utputProcessor.java
@@ -0,0 +1,33 @@
+package org.yocto.remote.utils;
+
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.services.shells.IHostShell;
+
+public class CommandOutputProcessor extends OutputProcessor {
+
+       public CommandOutputProcessor(IProgressMonitor monitor,
+                       IHostShell hostShell, CommandResponseHandler cmdHan=
dler, String task) {
+               super(monitor, hostShell, cmdHandler, task);
+       }
+
+       @Override
+       protected boolean isErrChStop(char ch) {
+               return (ch =3D=3D '\n');
+       }
+
+       @Override
+       protected boolean isOutChStop(char ch) {
+               return (ch =3D=3D '\n');
+       }
+
+       @Override
+       protected void processOutputBufferLine(char ch, String str) {
+               processBuffer.addOutputLine(str);
+       }
+
+       @Override
+       protected void processErrorBufferLine(char ch, String str) {
+               processBuffer.addErrorLine(str);
+       }
+
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Comm=
andResponseHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/remo=
te/utils/CommandResponseHandler.java
new file mode 100644
index 0000000..0785c45
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandR
+++ esponseHandler.java
@@ -0,0 +1,36 @@
+package org.yocto.remote.utils;
+
+import org.eclipse.ui.console.MessageConsole;
+import org.eclipse.ui.console.MessageConsoleStream;
+
+public class CommandResponseHandler implements ICommandResponseHandler {
+       private MessageConsoleStream consoleStream;
+       private Boolean errorOccured =3D false;
+
+       public CommandResponseHandler(MessageConsole console) {
+               try {
+                       this.consoleStream =3D console.newMessageStream();
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+       }
+
+       public Boolean hasError() {
+               return errorOccured;
+       }
+
+       @Override
+       public void response(String line, boolean isError) {
+               try {
+                       if (isError) {
+                               consoleStream.println(line);
+                               errorOccured =3D true;
+                       } else {
+                               consoleStream.println(line);
+                       }
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+       }
+
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Comm=
andRunnable.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/util=
s/CommandRunnable.java
new file mode 100644
index 0000000..46a3f35
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandR
+++ unnable.java
@@ -0,0 +1,34 @@
+package org.yocto.remote.utils;
+
+import org.eclipse.core.runtime.CoreException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.rse.core.model.IHost; import
+org.eclipse.rse.services.shells.IHostShell;
+
+public class CommandRunnable implements Runnable{
+       private IHostShell hostShell;
+       private final IHost connection;
+       private final YoctoCommand cmd;
+       private final IProgressMonitor monitor;
+       private final CommandResponseHandler cmdHandler;
+
+       CommandRunnable(IHost connection, YoctoCommand cmd, IProgressMonito=
r monitor){
+               this.connection =3D connection;
+               this.cmdHandler =3D RemoteHelper.getCommandHandler(connecti=
on);
+               this.cmd =3D cmd;
+               this.monitor =3D monitor;
+               this.hostShell =3D null;
+       }
+       @Override
+       public void run() {
+               try {
+                       hostShell =3D RemoteHelper.runCommandRemote(connect=
ion, cmd, monitor);
+                       cmd.setProcessBuffer(RemoteHelper.processOutput(mon=
itor, hostShell, cmdHandler));
+               } catch (CoreException e) {
+                       e.printStackTrace();
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+       }
+
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Cons=
oleHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/=
ConsoleHelper.java
new file mode 100644
index 0000000..307e219
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleH
+++ elper.java
@@ -0,0 +1,28 @@
+package org.yocto.remote.utils;
+
+import org.eclipse.swt.widgets.Display; import
+org.eclipse.ui.console.ConsolePlugin;
+import org.eclipse.ui.console.IConsole; import
+org.eclipse.ui.console.IConsoleManager;
+import org.eclipse.ui.console.MessageConsole;
+
+public class ConsoleHelper {
+       public static final String YOCTO_CONSOLE =3D "Yocto Project Console=
";
+
+       public static MessageConsole findConsole(String name) {
+               ConsolePlugin plugin =3D ConsolePlugin.getDefault();
+               IConsoleManager conMan =3D plugin.getConsoleManager();
+               IConsole[] existing =3D conMan.getConsoles();
+               for (int i =3D 0; i < existing.length; i++)
+                       if (name.equals(existing[i].getName()))
+                               return (MessageConsole) existing[i];
+               // no console found, so create a new one
+               MessageConsole myConsole =3D new MessageConsole(name, null)=
;
+               conMan.addConsoles(new IConsole[] { myConsole });
+               return myConsole;
+       }
+
+       public static void showConsole(MessageConsole console){
+               Display.getDefault().syncExec(new ConsoleRunnable(console))=
;
+       }
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Cons=
oleRunnable.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/util=
s/ConsoleRunnable.java
new file mode 100644
index 0000000..f3b0ccd
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleR
+++ unnable.java
@@ -0,0 +1,37 @@
+package org.yocto.remote.utils;
+
+import org.eclipse.ui.IWorkbench;
+import org.eclipse.ui.IWorkbenchPage;
+import org.eclipse.ui.IWorkbenchWindow; import
+org.eclipse.ui.PlatformUI; import
+org.eclipse.ui.console.IConsoleConstants;
+import org.eclipse.ui.console.IConsoleView;
+import org.eclipse.ui.console.MessageConsole;
+
+public class ConsoleRunnable implements Runnable{
+       MessageConsole console;
+       ConsoleRunnable (MessageConsole console){
+               this.console =3D console;
+       }
+       @Override
+       public void run() {
+               IWorkbench wb =3D PlatformUI.getWorkbench();
+               if (wb =3D=3D null)
+                       return;
+               IWorkbenchWindow win =3D wb.getActiveWorkbenchWindow();
+               if (win =3D=3D null)
+                       return;
+               IWorkbenchPage page =3D win.getActivePage();
+               if (page =3D=3D null)
+                       return;
+               String id =3D IConsoleConstants.ID_CONSOLE_VIEW;
+               try {
+                       IConsoleView view =3D (IConsoleView) page.showView(=
id);
+                       if (view =3D=3D null)
+                               return;
+                       view.display(console);
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+       }
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICom=
mandResponseHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/rem=
ote/utils/ICommandResponseHandler.java
new file mode 100644
index 0000000..a8a8f95
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommand
+++ ResponseHandler.java
@@ -0,0 +1,15 @@
+/**********************************************************************
+*******
+ * Copyright (c) 2009 Ken Gilmer
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License
+v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     Ken Gilmer - initial API and implementation
+
+***********************************************************************
+********/
+package org.yocto.remote.utils;
+
+public interface ICommandResponseHandler {
+       public void response(String line, boolean isError); }
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Outp=
utProcessor.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/util=
s/OutputProcessor.java
new file mode 100644
index 0000000..a06f077
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputPr
+++ ocessor.java
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
+import
+org.eclipse.rse.internal.services.shells.TerminalServiceHostShell;
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;
+import org.eclipse.rse.services.shells.IHostShell;
+
+public abstract class OutputProcessor{
+       private static final int ERROR_BUFFER =3D 1;
+       private static final int OUTPUT_BUFFER =3D 2;
+       protected String task;
+       protected ProcessStreamBuffer processBuffer;
+       protected IHostShell hostShell;
+       protected CommandResponseHandler cmdHandler;
+       protected IProgressMonitor monitor;
+
+       public OutputProcessor(IProgressMonitor monitor, IHostShell hostShe=
ll, CommandResponseHandler cmdHandler, String task){
+               this.monitor =3D monitor;
+               this.hostShell =3D hostShell;
+               this.processBuffer =3D new ProcessStreamBuffer(hostShell in=
stanceof TerminalServiceHostShell);
+               this.cmdHandler =3D cmdHandler;
+               this.task =3D task;
+       }
+       public ProcessStreamBuffer processOutput() throws Exception{
+               if (hostShell =3D=3D null)
+                       throw new Exception("An error has occured while try=
ing to run remote command!");
+               monitor.beginTask(this.task, RemoteHelper.TOTALWORKLOAD);
+               Lock lock =3D null;
+               if (hostShell instanceof LocalHostShell) {
+                       lock =3D ((LocalHostShell)hostShell).getLock();
+                       lock.lock();
+               }
+               BufferedReader inbr =3D null;
+               BufferedReader errbr =3D null;
+
+               if (hostShell instanceof LocalHostShell) {
+                       inbr =3D ((LocalHostShell)hostShell).getReader(fals=
e);
+                       errbr =3D ((LocalHostShell)hostShell).getReader(tru=
e);
+               } else {
+                       Process p =3D new HostShellProcessAdapter(hostShell=
);
+                       inbr =3D new BufferedReader(new InputStreamReader(p=
.getInputStream()));
+                       errbr =3D new BufferedReader(new InputStreamReader(=
p.getErrorStream()));
+               }
+               boolean cancel =3D false;
+               while (!cancel) {
+                       if(monitor.isCanceled()) {
+                               cancel =3D true;
+                               if (lock !=3D null)
+                                       lock.unlock();
+                               throw new InterruptedException("User Cancel=
led");
+                       }
+                       processBuffer(errbr, ERROR_BUFFER);
+                       processBuffer(inbr, OUTPUT_BUFFER);
+                       cancel =3D true;
+               }
+               if (lock !=3D null)
+                       lock.unlock();
+               return processBuffer;
+       }
+       protected abstract boolean isErrChStop(char ch);
+       protected abstract boolean isOutChStop(char ch);
+       protected boolean isChStop(char ch, int type){
+               if (type =3D=3D ERROR_BUFFER)
+                       return isErrChStop(ch);
+               else if(type =3D=3D OUTPUT_BUFFER)
+                       return isOutChStop(ch);
+               return false;
+       }
+       protected abstract void processOutputBufferLine(char ch, String str=
);
+       protected abstract void processErrorBufferLine(char ch, String str)=
;
+       protected void processBufferLine(String str, char ch, int type){
+               if (type =3D=3D ERROR_BUFFER)
+                       processErrorBufferLine(ch, str);
+               else if(type =3D=3D OUTPUT_BUFFER)
+                       processOutputBufferLine(ch, str);
+       }
+       protected void processBuffer(BufferedReader br, int type) throws IO=
Exception{
+               StringBuffer buffer =3D new StringBuffer();
+               int c;
+               if (br !=3D null)
+               while ((c =3D br.read()) !=3D -1) {
+                       char ch =3D (char) c;
+                       buffer.append(ch);
+                       if (isChStop(ch, type)){
+                               String str =3D buffer.toString();
+                               processBufferLine(str, ch, type);
+                               System.out.println(str);
+                               if (str.trim().equals(RemoteHelper.TERMINAT=
OR)) {
+                                       break;
+                               }
+                               cmdHandler.response(str, false);
+                               buffer.delete(0, buffer.length());
+                       }
+               }
+       }
+}
\ No newline at end of file
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Proc=
essStreamBuffer.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/=
utils/ProcessStreamBuffer.java
new file mode 100644
index 0000000..3fe8731
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ProcessS
+++ treamBuffer.java
@@ -0,0 +1,77 @@
+package org.yocto.remote.utils;
+
+import java.util.ArrayList;
+import java.util.List;
+import java.util.regex.Pattern;
+
+public class ProcessStreamBuffer {
+       private static final String WHITESPACES =3D "\\s+";
+       List<String> errorLines;
+       List<String> outputLines;
+       boolean isTerminal;
+
+       ProcessStreamBuffer(boolean isTerminal){
+               this.isTerminal =3D isTerminal;
+               errorLines =3D new ArrayList<String>();
+               outputLines =3D new ArrayList<String>();
+       }
+
+       public void addErrorLine(String line){
+               errorLines.add(line);
+       }
+       public void addOutputLine(String line){
+               outputLines.add(line);
+       }
+
+       public List<String> getOutputLines(){
+               return outputLines;
+       }
+
+       public List<String> getErrorLines(){
+               return errorLines;
+       }
+
+       public String getMergedOutputLines(){
+               String returnVal =3D "";
+               for (int i =3D 0; i < outputLines.size(); i++) {
+                       String line =3D outputLines.get(i);
+                       returnVal +=3D line;
+                       if (outputLines.size() > 1 && i !=3D outputLines.si=
ze() - 1)
+                               returnVal +=3D "\n";
+               }
+               return returnVal;
+       }
+
+       public boolean hasErrors() {
+               return errorLines.size() !=3D 0;
+       }
+
+       public String getLastOutputLineContaining(String str) {
+               if (!errorLines.isEmpty())
+                       return null;
+               for (int i =3D outputLines.size() - 1; i >=3D 0; i--){
+                       String line =3D outputLines.get(i);
+                       if (line.replaceAll(WHITESPACES, "").contains(str.r=
eplaceAll(WHITESPACES, "")))
+                               return line;
+               }
+               return null;
+       }
+
+       public String getOutputLineContaining(String arg, String pattern) {
+               List<String> lines =3D null;
+               if (isTerminal)
+                       lines =3D errorLines;
+               else
+                       lines =3D outputLines;
+               for (int i =3D lines.size() - 1; i >=3D 0; i--){
+                       String line =3D lines.get(i);
+                       if (line.contains(arg)) {
+                               String[] tokens =3D line.split("\\s+");
+                               if (Pattern.matches(pattern,  tokens[0])) {
+                                       return tokens[0];
+                               }
+                       }
+               }
+               return "";
+       }
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Remo=
teHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/R=
emoteHelper.java
index a1e9a08..e9118d6 100644
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelpe=
r.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHe
+++ lper.java
@@ -16,16 +16,19 @@ import java.io.BufferedOutputStream;  import java.io.Fi=
le;  import java.io.FileOutputStream;  import java.io.InputStream;
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
 import org.eclipse.core.runtime.IStatus;  import org.eclipse.core.runtime.=
MultiStatus;
-import org.eclipse.core.runtime.OperationCanceledException;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.Status;  import org.eclipse.core.runtime.S=
ubProgressMonitor;
@@ -38,17 +41,26 @@ import org.eclipse.rse.core.model.ISubSystemConfigurati=
onCategories;
 import org.eclipse.rse.core.model.ISystemRegistry;
 import org.eclipse.rse.core.subsystems.ISubSystem;
 import org.eclipse.rse.services.IService;
+import
+org.eclipse.rse.services.clientserver.messages.SystemMessageException;
 import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.files.IHostFile;
 import org.eclipse.rse.services.shells.HostShellProcessAdapter;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IShellService;
+import org.eclipse.rse.subsystems.files.core.model.RemoteFileUtility;
+import
+org.eclipse.rse.subsystems.files.core.servicesubsystem.FileServiceSubSy
+stem;
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileService=
SubSystem;
+import
+org.eclipse.rse.subsystems.files.core.subsystems.IRemoteFileSubSystem;
 import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.=
IShellServiceSubSystem;
 import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem=
;
+import org.eclipse.ui.console.MessageConsole;

 public class RemoteHelper {
        private final static String EXIT_CMD =3D "exit"; //$NON-NLS-1$
        private final static String CMD_DELIMITER =3D ";"; //$NON-NLS-1$
+       public static final String TERMINATOR =3D "234o987dsfkcqiuwey188370=
32843259d";//$NON-NLS-1$
+       public static final int TOTALWORKLOAD =3D 100;
+       private static Map<IHost, RemoteMachine> machines;

        public static IHost getRemoteConnectionByName(String remoteConnecti=
on) {
                if (remoteConnection =3D=3D null)
@@ -57,30 +69,7 @@ public class RemoteHelper {
                for (int i =3D 0; i < connections.length; i++)
                        if (connections[i].getAliasName().equals(remoteConn=
ection))
                                return connections[i];
-               return null; // TODO Connection is not found in the list--n=
eed to react
-               // somehow, throw the exception?
-
-       }
-
-       public static IService getConnectedRemoteFileService(
-                       IHost currentConnection, IProgressMonitor monitor) =
throws Exception {
-               final ISubSystem subsystem =3D getFileSubsystem(currentConn=
ection);
-
-               if (subsystem =3D=3D null)
-                       throw new Exception(Messages.ErrorNoSubsystem);
-
-               try {
-                       subsystem.connect(monitor, false);
-               } catch (CoreException e) {
-                       throw e;
-               } catch (OperationCanceledException e) {
-                       throw new CoreException(Status.CANCEL_STATUS);
-               }
-
-               if (!subsystem.isConnected())
-                       throw new Exception(Messages.ErrorConnectSubsystem)=
;
-
-               return ((IFileServiceSubSystem) subsystem).getFileService()=
;
+               return null;
        }

        public static ISubSystem getFileSubsystem(IHost host) { @@ -94,27 +=
83,6 @@ public class RemoteHelper {
                return null;
        }

-       public static IService getConnectedShellService(
-                       IHost currentConnection, IProgressMonitor monitor) =
throws Exception {
-               final ISubSystem subsystem =3D getShellSubsystem(currentCon=
nection);
-
-               if (subsystem =3D=3D null)
-                       throw new Exception(Messages.ErrorNoSubsystem);
-
-               try {
-                       subsystem.connect(monitor, false);
-               } catch (CoreException e) {
-                       throw e;
-               } catch (OperationCanceledException e) {
-                       throw new CoreException(Status.CANCEL_STATUS);
-               }
-
-               if (!subsystem.isConnected())
-                       throw new Exception(Messages.ErrorConnectSubsystem)=
;
-
-               return ((IShellServiceSubSystem) subsystem).getShellService=
();
-       }
-
        public static ISubSystem getShellSubsystem(IHost host) {
                if (host =3D=3D null)
                        return null;
@@ -161,7 +129,7 @@ public class RemoteHelper {

                IFileService fileService;
                try {
-                       fileService =3D (IFileService) getConnectedRemoteFi=
leService(
+                       fileService =3D getConnectedRemoteFileService(
                                                        connection,
                                                        new SubProgressMoni=
tor(monitor, 5));
                        InputStream  inputStream =3D FileLocator.openStream=
( @@ -204,7 +172,7 @@ public class RemoteHelper {

                IFileService fileService;
                try {
-                       fileService =3D (IFileService) getConnectedRemoteFi=
leService(
+                       fileService =3D getConnectedRemoteFileService(
                                                        connection,
                                                        new SubProgressMoni=
tor(monitor, 10));
                        File file =3D new File(localExePath);
@@ -341,4 +309,195 @@ public class RemoteHelper {
                                return;
                        }
        }
+       public static RemoteMachine getRemoteMachine(IHost connection){
+               if (!getMachines().containsKey(connection))
+                       getMachines().put(connection, new RemoteMachine(con=
nection));
+               return getMachines().get(connection);
+       }
+
+       private static Map<IHost, RemoteMachine> getMachines() {
+               if (machines =3D=3D null)
+                       machines =3D new HashMap<IHost, RemoteMachine>();
+               return machines;
+       }
+
+       public static MessageConsole getConsole(IHost connection) {
+               return getRemoteMachine(connection).getConsole();
+       }
+
+       public static CommandResponseHandler getCommandHandler(IHost connec=
tion) {
+               return getRemoteMachine(connection).getCmdHandler();
+       }
+
+       public static ProcessStreamBuffer processOutput(IProgressMonitor mo=
nitor, IHostShell hostShell, CommandResponseHandler cmdHandler) throws Exce=
ption {
+               return new CommandOutputProcessor(monitor, hostShell, cmdHa=
ndler, "").processOutput();
+       }
+
+       public static IHost getRemoteConnectionForURI(URI uri, IProgressMon=
itor monitor) {
+               if (uri =3D=3D null)
+                       return null;
+
+               String host =3D uri.getHost();
+               if (host =3D=3D null) {
+                       // this is a local connection
+                       ISystemRegistry sr =3D RSECorePlugin.getTheSystemRe=
gistry();
+                       IHost local =3D null;
+                       while (local =3D=3D null) {
+                               local =3D sr.getLocalHost();
+                       }
+                       return local;
+               }
+               ISystemRegistry sr =3D RSECorePlugin.getTheSystemRegistry()=
;
+               IHost[] connections =3D sr.getHosts();
+
+               IHost unconnected =3D null;
+               for (IHost conn : connections) {
+                       if (host.equalsIgnoreCase(conn.getHostName())) {
+                               IRemoteFileSubSystem fss =3D getRemoteFileS=
ubSystem(conn);
+                               if (fss !=3D null && fss.isConnected())
+                                       return conn;
+                               unconnected =3D conn;
+                       }
+               }
+
+               return unconnected;
+       }
+
+       public static IRemoteFileSubSystem getRemoteFileSubSystem(IHost hos=
t) {
+               IRemoteFileSubSystem candidate =3D null;
+               IRemoteFileSubSystem otherServiceCandidate =3D null;
+               IRemoteFileSubSystem[] subSystems =3D
+RemoteFileUtility.getFileSubSystems(host);
+
+               for (IRemoteFileSubSystem subSystem : subSystems) {
+                       if (subSystem instanceof FileServiceSubSystem) {
+                               if (subSystem.isConnected())
+                                       return subSystem;
+
+                               if (otherServiceCandidate =3D=3D null)
+                                       otherServiceCandidate =3D subSystem=
;
+
+                       } else if (candidate =3D=3D null || (subSystem.isCo=
nnected() && !candidate.isConnected()))
+                               candidate =3D subSystem;
+
+               }
+               if (candidate !=3D null && candidate.isConnected())
+                       return candidate;
+               if (otherServiceCandidate !=3D null)
+                       return otherServiceCandidate;
+               return null;
+       }
+
+       public static IFileService getConnectedRemoteFileService(IHost conn=
ection, IProgressMonitor monitor) throws Exception {
+               return getRemoteMachine(connection).getRemoteFileService(mo=
nitor);
+       }
+
+       public static IHostFile[] getRemoteDirContent(IHost connection, Str=
ing
+remoteParent, String fileFilter, int fileType, IProgressMonitor
+monitor){
+
+               try {
+                       IFileService fileServ =3D getConnectedRemoteFileSer=
vice(connection, monitor);
+                       return fileServ.list(remoteParent, fileFilter, file=
Type, monitor);
+               } catch (SystemMessageException e) {
+                       e.printStackTrace();
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+               return null;
+       }
+
+       public static IService getConnectedShellService(IHost connection, I=
ProgressMonitor monitor) throws Exception {
+               return getRemoteMachine(connection).getShellService(monitor=
);
+       }
+
+       public static void handleRunCommandRemote(IHost connection, YoctoCo=
mmand cmd, IProgressMonitor monitor){
+               try {
+                       CommandRunnable cmdRun =3D new CommandRunnable(conn=
ection, cmd, monitor);
+                       cmdRun.run();
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+       }
+
+       public static IHostShell runCommandRemote(IHost connection, YoctoCo=
mmand cmd,
+                       IProgressMonitor monitor) throws CoreException {
+
+               monitor.beginTask(NLS.bind(Messages.RemoteShellExec_1,
+                               cmd, cmd.getArguments()), 10);
+
+               String remoteCommand =3D cmd.getCommand() + " " + cmd.getAr=
guments() +
+" ; echo " + TERMINATOR + "; exit ;";
+
+               IShellService shellService;
+               try {
+                       shellService =3D (IShellService) getConnectedShellS=
ervice(connection,
+new SubProgressMonitor(monitor, 7));
+
+                       String env[] =3D
+getRemoteMachine(connection).prepareEnvString(monitor);
+
+                       try {
+                               IHostShell hostShell =3D shellService.runCo=
mmand(cmd.getInitialDirectory(), remoteCommand, env, new SubProgressMonitor=
(monitor, 3));
+                               return hostShell;
+                       } catch (Exception e) {
+                               e.printStackTrace();
+                       }
+               } catch (Exception e1) {
+                       e1.printStackTrace();
+               }
+               return null;
+       }
+
+       public static IHostFile getRemoteHostFile(IHost connection, String =
remoteFilePath, IProgressMonitor monitor){
+               assert(connection !=3D null);
+               monitor.beginTask(Messages.InfoDownload, 100);
+
+               try {
+                       IFileService fileService =3D getConnectedRemoteFile=
Service(connection, new SubProgressMonitor(monitor, 10));
+                       Path remotePath =3D new Path(remoteFilePath);
+                       IHostFile remoteFile =3D fileService.getFile(remote=
Path.removeLastSegments(1).toString(), remotePath.lastSegment(), new SubPro=
gressMonitor(monitor, 5));
+                       return remoteFile;
+               } catch (Exception e) {
+                       e.printStackTrace();
+           }finally {
+                       monitor.done();
+               }
+               return null;
+       }
+
+       public static InputStream getRemoteInputStream(IHost connection, St=
ring parentPath, String remoteFilePath, IProgressMonitor monitor){
+               assert(connection !=3D null);
+               monitor.beginTask(Messages.InfoDownload, 100);
+
+               try {
+                       IFileService fileService =3D getConnectedRemoteFile=
Service(connection,
+new SubProgressMonitor(monitor, 10));
+
+                       return fileService.getInputStream(parentPath, remot=
eFilePath, false, monitor);
+               } catch (Exception e) {
+                       e.printStackTrace();
+           }finally {
+                       monitor.done();
+               }
+               return null;
+       }
+
+       public static URI createNewURI(URI oldURI, String name) {
+               try {
+                       String sep =3D oldURI.getPath().endsWith("/") ? "" =
: "/";
+                       return new URI(oldURI.getScheme(), oldURI.getHost()=
, oldURI.getPath() + sep + name, oldURI.getFragment());
+               } catch (URISyntaxException e) {
+                       e.printStackTrace();
+                       return null;
+               }
+       }
+
+       public static boolean fileExistsRemote(IHost conn, IProgressMonitor=
 monitor, String path) {
+               try {
+                       IFileService fs =3D getConnectedRemoteFileService(c=
onn, monitor);
+                       int nameStart =3D path.lastIndexOf("/");
+                       String parentPath =3D path.substring(0, nameStart);
+                       String name =3D path.substring(nameStart + 1);
+                       IHostFile hostFile =3D fs.getFile(parentPath, name,=
 monitor);
+
+                       return hostFile.exists();
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+               return false;
+       }
 }
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Remo=
teMachine.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/=
RemoteMachine.java
new file mode 100644
index 0000000..123a972
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMa
+++ chine.java
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
+import org.eclipse.core.runtime.Status; import
+org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.rse.core.model.IHost; import
+org.eclipse.rse.core.subsystems.ISubSystem;
+import
+org.eclipse.rse.internal.services.local.shells.LocalShellService;
+import
+org.eclipse.rse.services.clientserver.messages.SystemMessageException;
+import org.eclipse.rse.services.files.IFileService;
+import org.eclipse.rse.services.shells.IHostShell;
+import org.eclipse.rse.services.shells.IShellService;
+import
+org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubS
+ystem; import
+org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.IShe
+llServiceSubSystem; import org.eclipse.ui.console.MessageConsole;
+
+public class RemoteMachine {
+       public static final String PROXY =3D "proxy";
+
+       private Map<String, String> environment;
+       private MessageConsole console;
+       private CommandResponseHandler cmdHandler;
+       private IHostShell hostShell;
+       private IShellService shellService;
+       private IHost connection;
+
+       private ISubSystem fileSubSystem;
+       private IFileService fileService;
+
+       public RemoteMachine(IHost connection) {
+               setConnection(connection);
+       }
+
+       public String[] prepareEnvString(IProgressMonitor monitor){
+               String[] env =3D null;
+               try {
+                       if (shellService instanceof LocalShellService) {
+                               env  =3D shellService.getHostEnvironment();
+                       } else {
+                               List<String> envList =3D new ArrayList<Stri=
ng>();
+                               getRemoteEnvProxyVars(monitor);
+                               String value =3D "";
+                               for (String varName : environment.keySet())=
{
+                                       value =3D varName + "=3D" + environ=
ment.get(varName);
+                                       envList.add(value);
+                               }
+                               env =3D envList.toArray(new String[envList.=
size()]);
+                       }
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+
+               return env;
+       }
+       public void getRemoteEnvProxyVars(IProgressMonitor monitor){
+               try {
+                       if (environment !=3D null && !environment.isEmpty()=
)
+                               return;
+
+                       environment =3D new HashMap<String, String>();
+
+                       IShellService shellService =3D getShellService(new
+SubProgressMonitor(monitor, 7));
+
+                       ProcessStreamBuffer buffer =3D null;
+                       try {
+                               SubProgressMonitor subMonitor =3D new SubPr=
ogressMonitor(monitor, 3);
+                               IHostShell hostShell =3D shellService.runCo=
mmand("", "env" + " ; echo " + RemoteHelper.TERMINATOR + "; exit;", new Str=
ing[]{}, subMonitor);
+                               buffer =3D RemoteHelper.processOutput(subMo=
nitor, hostShell, cmdHandler);
+                               for(int i =3D 0; i < buffer.getOutputLines(=
).size(); i++) {
+                                       String out =3D buffer.getOutputLine=
s().get(i);
+                                       String[] tokens =3D out.split("=3D"=
);
+                                       if (tokens.length !=3D 2)
+                                               continue;
+                                       String varName =3D tokens[0];
+                                       String varValue =3D tokens[1];
+                                       if (varName.contains(PROXY))
+                                               environment.put(varName, va=
rValue);
+                               }
+                       } catch (Exception e) {
+                               e.printStackTrace();
+                       }
+
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+       }
+
+       public Map<String, String> getEnvironment() {
+               return environment;
+       }
+       public void setEnvironment(Map<String, String> environment) {
+               this.environment =3D environment;
+       }
+       public MessageConsole getConsole() {
+               if (console =3D=3D null)
+                       console =3D ConsoleHelper.findConsole(ConsoleHelper=
.YOCTO_CONSOLE);
+
+               ConsoleHelper.showConsole(console);
+               return console;
+       }
+       public CommandResponseHandler getCmdHandler() {
+               if (cmdHandler =3D=3D null)
+                       cmdHandler =3D new CommandResponseHandler(getConsol=
e());
+               return cmdHandler;
+       }
+       public IHostShell getHostShell() {
+               try {
+                       if (hostShell =3D=3D null) {
+                               hostShell =3D getShellService(new NullProgr=
essMonitor()).launchShell("", new String[]{}, new NullProgressMonitor());
+                               prepareEnvString(new NullProgressMonitor())=
;
+                       }
+               } catch (SystemMessageException e) {
+                       e.printStackTrace();
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+               return hostShell;
+       }
+
+       public IShellService getShellService(IProgressMonitor monitor) thro=
ws Exception {
+               if (shellService !=3D null)
+                       return shellService;
+
+               final ISubSystem subsystem =3D getShellSubsystem();
+
+               if (subsystem =3D=3D null)
+                       throw new Exception(Messages.ErrorNoSubsystem);
+
+               try {
+                       subsystem.connect(monitor, false);
+               } catch (CoreException e) {
+                       throw e;
+               } catch (OperationCanceledException e) {
+                       throw new CoreException(Status.CANCEL_STATUS);
+               }
+
+               if (!subsystem.isConnected())
+                       throw new Exception(Messages.ErrorConnectSubsystem)=
;
+
+               shellService =3D ((IShellServiceSubSystem) subsystem).getSh=
ellService();
+               return shellService;
+       }
+
+       private ISubSystem getShellSubsystem() {
+               if (connection =3D=3D null)
+                       return null;
+               ISubSystem[] subSystems =3D connection.getSubSystems();
+               for (int i =3D 0; i < subSystems.length; i++) {
+                       if (subSystems[i] instanceof IShellServiceSubSystem=
)
+                               return subSystems[i];
+               }
+               return null;
+       }
+
+       public IHost getConnection() {
+               return connection;
+       }
+       public void setConnection(IHost connection) {
+               this.connection =3D connection;
+       }
+
+       public IFileService getRemoteFileService(IProgressMonitor monitor) =
throws Exception {
+               if (fileService =3D=3D null) {
+
+                       while(getFileSubsystem() =3D=3D null)
+                               Thread.sleep(2);
+                       try {
+                               getFileSubsystem().connect(monitor, false);
+                       } catch (CoreException e) {
+                               throw e;
+                       } catch (OperationCanceledException e) {
+                               throw new CoreException(Status.CANCEL_STATU=
S);
+                       }
+
+                       if (!getFileSubsystem().isConnected())
+                               throw new Exception(Messages.ErrorConnectSu=
bsystem);
+
+                       fileService =3D ((IFileServiceSubSystem) getFileSub=
system()).getFileService();
+               }
+               return fileService;
+       }
+
+       public ISubSystem getFileSubsystem() {
+               if (fileSubSystem =3D=3D null) {
+                       if (connection =3D=3D null)
+                               return null;
+                       ISubSystem[] subSystems =3D connection.getSubSystem=
s();
+                       for (int i =3D 0; i < subSystems.length; i++) {
+                               if (subSystems[i] instanceof IFileServiceSu=
bSystem) {
+                                       fileSubSystem =3D subSystems[i];
+                                       break;
+                               }
+                       }
+               }
+               return fileSubSystem;
+       }
+
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Sess=
ion.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Sessio=
n.java
new file mode 100644
index 0000000..cb14c0b
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Session.
+++ java
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
+import org.eclipse.rse.core.model.IHost; import
+org.eclipse.rse.services.files.IHostFile;
+
+public abstract class Session {
+       public static final String LT =3D System.getProperty("line.separato=
r");
+       public static final String EXPORT_CMD =3D "export
+BB_ENV_EXTRAWHITE=3D\"DISABLE_SANITY_CHECKS $BB_ENV_EXTRAWHITE\"";
+
+       private final String initCmd;
+       private final IHostFile root;
+
+       public String terminator;
+       private volatile boolean interrupt =3D false;
+       private Process process;
+       private final OutputStream pos =3D null;
+       private IHost connection;
+
+       public Session(IHostFile root, String initCmd) throws IOException {
+               this.root =3D root;
+               this.initCmd  =3D initCmd;
+               initializeConnection();
+               initializeShell(new NullProgressMonitor());
+       }
+
+       protected abstract void initializeConnection();
+
+       private void initializeShell(IProgressMonitor monitor) throws IOExc=
eption {
+               try {
+                       if (root !=3D null) {
+                               RemoteHelper.handleRunCommandRemote(connect=
ion, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""), mon=
itor);
+                               RemoteHelper.handleRunCommandRemote(connect=
ion,  new YoctoCommand(EXPORT_CMD, root.getAbsolutePath(), ""), monitor);
+                       } else {
+                               throw new Exception("Root file not found!")=
;
+                       }
+               } catch (Exception e) {
+                       e.printStackTrace();
+               }
+       }
+       synchronized
+       public void execute(String command, String terminator, ICommandResp=
onseHandler handler) throws IOException {
+               interrupt =3D false;
+               InputStream errIs =3D process.getErrorStream();
+               if (errIs.available() > 0) {
+                       clearErrorStream(errIs);
+               }
+               sendToProcessAndTerminate(command);
+
+               BufferedReader br =3D new BufferedReader(new InputStreamRea=
der(process.getInputStream()));
+               String std =3D null;
+
+               do {
+                       if (errIs.available() > 0) {
+                               byte[] msg =3D new byte[errIs.available()];
+
+                               errIs.read(msg, 0, msg.length);
+                               handler.response(new String(msg), true);
+                       }
+
+                       std =3D br.readLine();
+
+                       if (std !=3D null && !std.endsWith(terminator)) {
+                               handler.response(std, false);
+                       }
+
+               } while (std !=3D null && !std.endsWith(terminator) && !int=
errupt);
+
+               if (interrupt) {
+                       process.destroy();
+                       initializeShell(null);
+                       interrupt =3D false;
+               }
+       }
+
+       private void clearErrorStream(InputStream is) {
+
+               try {
+                       byte b[] =3D new byte[is.available()];
+                       is.read(b);
+                       System.out.println("clearing: " + new String(b));
+               } catch (IOException e) {
+                       e.printStackTrace();
+                       //Ignore any error
+               }
+       }
+       /**
+        * Send command string to shell process and add special terminator =
string so
+        * reader knows when output is complete.
+        *
+        * @param command
+        * @throws IOException
+        */
+       private void sendToProcessAndTerminate(String command) throws IOExc=
eption {
+               pos.write(command.getBytes());
+               pos.write(LT.getBytes());
+               pos.flush();
+               pos.write("echo $?".getBytes());
+               pos.write(terminator.getBytes());
+               pos.write(LT.getBytes());
+               pos.flush();
+       }
+
+       /**
+        * Interrupt any running processes.
+        */
+       public void interrupt() {
+               interrupt =3D true;
+       }
+}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Yoct=
oCommand.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Y=
octoCommand.java
new file mode 100644
index 0000000..0cd7dcd
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCom
+++ mand.java
@@ -0,0 +1,53 @@
+package org.yocto.remote.utils;
+
+
+public class YoctoCommand {
+       private String command;
+       private String initialDirectory;
+       private String arguments;
+       private ProcessStreamBuffer processBuffer;
+
+       public YoctoCommand(String command, String initialDirectory, String=
 arguments){
+               this.setCommand(command);
+               this.setInitialDirectory(initialDirectory);
+               this.setArguments(arguments);
+               this.setProcessBuffer(new ProcessStreamBuffer(false));
+       }
+
+       public String getCommand() {
+               return command;
+       }
+
+       public void setCommand(String command) {
+               this.command =3D command;
+       }
+
+       public String getInitialDirectory() {
+               return initialDirectory;
+       }
+
+       public void setInitialDirectory(String initialDirectory) {
+               this.initialDirectory =3D initialDirectory;
+       }
+
+       public String getArguments() {
+               return arguments;
+       }
+
+       public void setArguments(String arguments) {
+               this.arguments =3D arguments;
+       }
+
+       public ProcessStreamBuffer getProcessBuffer() {
+               return processBuffer;
+       }
+
+       public void setProcessBuffer(ProcessStreamBuffer processBuffer) {
+               this.processBuffer =3D processBuffer;
+       }
+
+       @Override
+       public String toString() {
+               return command + " " + arguments;
+       }
+}
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

