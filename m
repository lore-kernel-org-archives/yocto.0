Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0DEAE01528
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:29:46 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 07 Jun 2013 08:29:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="346414816"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2013 08:30:06 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 7 Jun 2013 16:29:41 +0100
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.105]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.79]) with mapi id
	14.03.0123.003; Fri, 7 Jun 2013 16:29:41 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [Refactor RFC 2/9] Add remote tools classes needed for
	bitbake remote capabilities
Thread-Index: AQHOYxEV4uzSTpH2y0u8p3CDwu5PGpkqYN4s
Date: Fri, 7 Jun 2013 15:29:40 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A463915FF44B1@IRSMSX101.ger.corp.intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
	<1370352368-18730-3-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C73C3805F@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C3805F@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
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
X-List-Received-Date: Fri, 07 Jun 2013 15:29:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,=0A=
=0A=
I have sent you a set of 8 patches that replaces the second patch (2/9). I =
have added the new classes incrementally and put the changes to the RemoteH=
elper along with the classes that are strongly linked with it.=0A=
I have also sent a pull request for the whole set of patches(50). They can =
be found also on poky-contrib: igrigorx/common-remote-refactor.=0A=
=0A=
Thanks,=0A=
Ioana =0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Friday, June 07, 2013 2:53 AM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [Refactor RFC 2/9] Add remote tools classes needed for=
     bitbake remote capabilities=0A=
=0A=
Hi Ioana,=0A=
=0A=
Please separate this into 2 patches, one is for adding those new util files=
 and also please add License for them.  Then make the RemoteHelper.java int=
o a separate patch.  Other comments are:=0A=
=0A=
1.please add much more detailed information in your patch to explain why we=
 need new util classes and why RemoteHelper.java need to be changed.=0A=
2. there're many new functions that using IHost variable and you don't need=
 to check for IHost is null case?=0A=
=0A=
Thanks=0A=
Jessica=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Tuesday, June 04, 2013 6:26 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [Refactor RFC 2/9] Add remote tools classes needed for bit=
bake remote capabilities=0A=
=0A=
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
---=0A=
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    8 +-=0A=
 .../yocto/remote/utils/CommandOutputProcessor.java |   33 +++=0A=
 .../yocto/remote/utils/CommandResponseHandler.java |   36 +++=0A=
 .../org/yocto/remote/utils/CommandRunnable.java    |   34 +++=0A=
 .../src/org/yocto/remote/utils/ConsoleHelper.java  |   28 +++=0A=
 .../org/yocto/remote/utils/ConsoleRunnable.java    |   37 +++=0A=
 .../remote/utils/ICommandResponseHandler.java      |   15 ++=0A=
 .../org/yocto/remote/utils/OutputProcessor.java    |  102 ++++++++=0A=
 .../yocto/remote/utils/ProcessStreamBuffer.java    |   77 ++++++=0A=
 .../src/org/yocto/remote/utils/RemoteHelper.java   |  255 ++++++++++++++++=
----=0A=
 .../src/org/yocto/remote/utils/RemoteMachine.java  |  206 ++++++++++++++++=
=0A=
 .../src/org/yocto/remote/utils/Session.java        |  117 +++++++++=0A=
 .../src/org/yocto/remote/utils/YoctoCommand.java   |   53 ++++=0A=
 13 files changed, 952 insertions(+), 49 deletions(-)  create mode 100644 p=
lugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandOutputProce=
ssor.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/CommandResponseHandler.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/CommandRunnable.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ConsoleHelper.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ConsoleRunnable.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ICommandResponseHandler.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/OutputProcessor.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ProcessStreamBuffer.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/RemoteMachine.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Session.java=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/YoctoCommand.java=0A=
=0A=
diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/=
org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
index c7b57fe..06d14f8 100644=0A=
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
@@ -11,17 +11,23 @@ Bundle-RequiredExecutionEnvironment: JavaSE-1.6=0A=
 Import-Package: org.eclipse.rse.core,=0A=
  org.eclipse.rse.core.model,=0A=
  org.eclipse.rse.core.subsystems,=0A=
+ org.eclipse.rse.internal.services.local.shells,=0A=
+ org.eclipse.rse.internal.services.shells,=0A=
  org.eclipse.rse.internal.terminals.ui,=0A=
  org.eclipse.rse.internal.terminals.ui.views,=0A=
  org.eclipse.rse.services,=0A=
+ org.eclipse.rse.services.clientserver.messages,=0A=
  org.eclipse.rse.services.files,=0A=
  org.eclipse.rse.services.shells,=0A=
  org.eclipse.rse.services.terminals,=0A=
+ org.eclipse.rse.subsystems.files.core.model,=0A=
  org.eclipse.rse.subsystems.files.core.servicesubsystem,=0A=
+ org.eclipse.rse.subsystems.files.core.subsystems,=0A=
  org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem,=0A=
  org.eclipse.rse.subsystems.terminals.core,=0A=
  org.eclipse.rse.subsystems.terminals.core.elements,=0A=
  org.eclipse.rse.ui,=0A=
  org.eclipse.tm.internal.terminal.control,=0A=
- org.eclipse.tm.internal.terminal.provisional.api=0A=
+ org.eclipse.tm.internal.terminal.provisional.api,=0A=
+ org.eclipse.ui.console=0A=
 Export-Package: org.yocto.remote.utils=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Comm=
andOutputProcessor.java b/plugins/org.yocto.remote.utils/src/org/yocto/remo=
te/utils/CommandOutputProcessor.java=0A=
new file mode 100644=0A=
index 0000000..4fca662=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandO=0A=
+++ utputProcessor.java=0A=
@@ -0,0 +1,33 @@=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import org.eclipse.core.runtime.IProgressMonitor;=0A=
+import org.eclipse.rse.services.shells.IHostShell;=0A=
+=0A=
+public class CommandOutputProcessor extends OutputProcessor {=0A=
+=0A=
+       public CommandOutputProcessor(IProgressMonitor monitor,=0A=
+                       IHostShell hostShell, CommandResponseHandler cmdHan=
dler, String task) {=0A=
+               super(monitor, hostShell, cmdHandler, task);=0A=
+       }=0A=
+=0A=
+       @Override=0A=
+       protected boolean isErrChStop(char ch) {=0A=
+               return (ch =3D=3D '\n');=0A=
+       }=0A=
+=0A=
+       @Override=0A=
+       protected boolean isOutChStop(char ch) {=0A=
+               return (ch =3D=3D '\n');=0A=
+       }=0A=
+=0A=
+       @Override=0A=
+       protected void processOutputBufferLine(char ch, String str) {=0A=
+               processBuffer.addOutputLine(str);=0A=
+       }=0A=
+=0A=
+       @Override=0A=
+       protected void processErrorBufferLine(char ch, String str) {=0A=
+               processBuffer.addErrorLine(str);=0A=
+       }=0A=
+=0A=
+}=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Comm=
andResponseHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/remo=
te/utils/CommandResponseHandler.java=0A=
new file mode 100644=0A=
index 0000000..0785c45=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandR=0A=
+++ esponseHandler.java=0A=
@@ -0,0 +1,36 @@=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import org.eclipse.ui.console.MessageConsole;=0A=
+import org.eclipse.ui.console.MessageConsoleStream;=0A=
+=0A=
+public class CommandResponseHandler implements ICommandResponseHandler {=
=0A=
+       private MessageConsoleStream consoleStream;=0A=
+       private Boolean errorOccured =3D false;=0A=
+=0A=
+       public CommandResponseHandler(MessageConsole console) {=0A=
+               try {=0A=
+                       this.consoleStream =3D console.newMessageStream();=
=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+       }=0A=
+=0A=
+       public Boolean hasError() {=0A=
+               return errorOccured;=0A=
+       }=0A=
+=0A=
+       @Override=0A=
+       public void response(String line, boolean isError) {=0A=
+               try {=0A=
+                       if (isError) {=0A=
+                               consoleStream.println(line);=0A=
+                               errorOccured =3D true;=0A=
+                       } else {=0A=
+                               consoleStream.println(line);=0A=
+                       }=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+       }=0A=
+=0A=
+}=0A=
\ No newline at end of file=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Comm=
andRunnable.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/util=
s/CommandRunnable.java=0A=
new file mode 100644=0A=
index 0000000..46a3f35=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/CommandR=0A=
+++ unnable.java=0A=
@@ -0,0 +1,34 @@=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import org.eclipse.core.runtime.CoreException;=0A=
+import org.eclipse.core.runtime.IProgressMonitor;=0A=
+import org.eclipse.rse.core.model.IHost; import=0A=
+org.eclipse.rse.services.shells.IHostShell;=0A=
+=0A=
+public class CommandRunnable implements Runnable{=0A=
+       private IHostShell hostShell;=0A=
+       private final IHost connection;=0A=
+       private final YoctoCommand cmd;=0A=
+       private final IProgressMonitor monitor;=0A=
+       private final CommandResponseHandler cmdHandler;=0A=
+=0A=
+       CommandRunnable(IHost connection, YoctoCommand cmd, IProgressMonito=
r monitor){=0A=
+               this.connection =3D connection;=0A=
+               this.cmdHandler =3D RemoteHelper.getCommandHandler(connecti=
on);=0A=
+               this.cmd =3D cmd;=0A=
+               this.monitor =3D monitor;=0A=
+               this.hostShell =3D null;=0A=
+       }=0A=
+       @Override=0A=
+       public void run() {=0A=
+               try {=0A=
+                       hostShell =3D RemoteHelper.runCommandRemote(connect=
ion, cmd, monitor);=0A=
+                       cmd.setProcessBuffer(RemoteHelper.processOutput(mon=
itor, hostShell, cmdHandler));=0A=
+               } catch (CoreException e) {=0A=
+                       e.printStackTrace();=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+       }=0A=
+=0A=
+}=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Cons=
oleHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/=
ConsoleHelper.java=0A=
new file mode 100644=0A=
index 0000000..307e219=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleH=0A=
+++ elper.java=0A=
@@ -0,0 +1,28 @@=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import org.eclipse.swt.widgets.Display; import=0A=
+org.eclipse.ui.console.ConsolePlugin;=0A=
+import org.eclipse.ui.console.IConsole; import=0A=
+org.eclipse.ui.console.IConsoleManager;=0A=
+import org.eclipse.ui.console.MessageConsole;=0A=
+=0A=
+public class ConsoleHelper {=0A=
+       public static final String YOCTO_CONSOLE =3D "Yocto Project Console=
";=0A=
+=0A=
+       public static MessageConsole findConsole(String name) {=0A=
+               ConsolePlugin plugin =3D ConsolePlugin.getDefault();=0A=
+               IConsoleManager conMan =3D plugin.getConsoleManager();=0A=
+               IConsole[] existing =3D conMan.getConsoles();=0A=
+               for (int i =3D 0; i < existing.length; i++)=0A=
+                       if (name.equals(existing[i].getName()))=0A=
+                               return (MessageConsole) existing[i];=0A=
+               // no console found, so create a new one=0A=
+               MessageConsole myConsole =3D new MessageConsole(name, null)=
;=0A=
+               conMan.addConsoles(new IConsole[] { myConsole });=0A=
+               return myConsole;=0A=
+       }=0A=
+=0A=
+       public static void showConsole(MessageConsole console){=0A=
+               Display.getDefault().syncExec(new ConsoleRunnable(console))=
;=0A=
+       }=0A=
+}=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Cons=
oleRunnable.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/util=
s/ConsoleRunnable.java=0A=
new file mode 100644=0A=
index 0000000..f3b0ccd=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ConsoleR=0A=
+++ unnable.java=0A=
@@ -0,0 +1,37 @@=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import org.eclipse.ui.IWorkbench;=0A=
+import org.eclipse.ui.IWorkbenchPage;=0A=
+import org.eclipse.ui.IWorkbenchWindow; import=0A=
+org.eclipse.ui.PlatformUI; import=0A=
+org.eclipse.ui.console.IConsoleConstants;=0A=
+import org.eclipse.ui.console.IConsoleView;=0A=
+import org.eclipse.ui.console.MessageConsole;=0A=
+=0A=
+public class ConsoleRunnable implements Runnable{=0A=
+       MessageConsole console;=0A=
+       ConsoleRunnable (MessageConsole console){=0A=
+               this.console =3D console;=0A=
+       }=0A=
+       @Override=0A=
+       public void run() {=0A=
+               IWorkbench wb =3D PlatformUI.getWorkbench();=0A=
+               if (wb =3D=3D null)=0A=
+                       return;=0A=
+               IWorkbenchWindow win =3D wb.getActiveWorkbenchWindow();=0A=
+               if (win =3D=3D null)=0A=
+                       return;=0A=
+               IWorkbenchPage page =3D win.getActivePage();=0A=
+               if (page =3D=3D null)=0A=
+                       return;=0A=
+               String id =3D IConsoleConstants.ID_CONSOLE_VIEW;=0A=
+               try {=0A=
+                       IConsoleView view =3D (IConsoleView) page.showView(=
id);=0A=
+                       if (view =3D=3D null)=0A=
+                               return;=0A=
+                       view.display(console);=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+       }=0A=
+}=0A=
\ No newline at end of file=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICom=
mandResponseHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/rem=
ote/utils/ICommandResponseHandler.java=0A=
new file mode 100644=0A=
index 0000000..a8a8f95=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommand=0A=
+++ ResponseHandler.java=0A=
@@ -0,0 +1,15 @@=0A=
+/**********************************************************************=0A=
+*******=0A=
+ * Copyright (c) 2009 Ken Gilmer=0A=
+ * All rights reserved. This program and the accompanying materials=0A=
+ * are made available under the terms of the Eclipse Public License=0A=
+v1.0=0A=
+ * which accompanies this distribution, and is available at=0A=
+ * http://www.eclipse.org/legal/epl-v10.html=0A=
+ *=0A=
+ * Contributors:=0A=
+ *     Ken Gilmer - initial API and implementation=0A=
+=0A=
+***********************************************************************=0A=
+********/=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+public interface ICommandResponseHandler {=0A=
+       public void response(String line, boolean isError); }=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Outp=
utProcessor.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/util=
s/OutputProcessor.java=0A=
new file mode 100644=0A=
index 0000000..a06f077=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/OutputPr=0A=
+++ ocessor.java=0A=
@@ -0,0 +1,102 @@=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import java.io.BufferedReader;=0A=
+import java.io.IOException;=0A=
+import java.io.InputStreamReader;=0A=
+import java.util.concurrent.locks.Lock;=0A=
+=0A=
+import org.eclipse.core.runtime.IProgressMonitor;=0A=
+import org.eclipse.rse.internal.services.local.shells.LocalHostShell;=0A=
+import=0A=
+org.eclipse.rse.internal.services.shells.TerminalServiceHostShell;=0A=
+import org.eclipse.rse.services.shells.HostShellProcessAdapter;=0A=
+import org.eclipse.rse.services.shells.IHostShell;=0A=
+=0A=
+public abstract class OutputProcessor{=0A=
+       private static final int ERROR_BUFFER =3D 1;=0A=
+       private static final int OUTPUT_BUFFER =3D 2;=0A=
+       protected String task;=0A=
+       protected ProcessStreamBuffer processBuffer;=0A=
+       protected IHostShell hostShell;=0A=
+       protected CommandResponseHandler cmdHandler;=0A=
+       protected IProgressMonitor monitor;=0A=
+=0A=
+       public OutputProcessor(IProgressMonitor monitor, IHostShell hostShe=
ll, CommandResponseHandler cmdHandler, String task){=0A=
+               this.monitor =3D monitor;=0A=
+               this.hostShell =3D hostShell;=0A=
+               this.processBuffer =3D new ProcessStreamBuffer(hostShell in=
stanceof TerminalServiceHostShell);=0A=
+               this.cmdHandler =3D cmdHandler;=0A=
+               this.task =3D task;=0A=
+       }=0A=
+       public ProcessStreamBuffer processOutput() throws Exception{=0A=
+               if (hostShell =3D=3D null)=0A=
+                       throw new Exception("An error has occured while try=
ing to run remote command!");=0A=
+               monitor.beginTask(this.task, RemoteHelper.TOTALWORKLOAD);=
=0A=
+               Lock lock =3D null;=0A=
+               if (hostShell instanceof LocalHostShell) {=0A=
+                       lock =3D ((LocalHostShell)hostShell).getLock();=0A=
+                       lock.lock();=0A=
+               }=0A=
+               BufferedReader inbr =3D null;=0A=
+               BufferedReader errbr =3D null;=0A=
+=0A=
+               if (hostShell instanceof LocalHostShell) {=0A=
+                       inbr =3D ((LocalHostShell)hostShell).getReader(fals=
e);=0A=
+                       errbr =3D ((LocalHostShell)hostShell).getReader(tru=
e);=0A=
+               } else {=0A=
+                       Process p =3D new HostShellProcessAdapter(hostShell=
);=0A=
+                       inbr =3D new BufferedReader(new InputStreamReader(p=
.getInputStream()));=0A=
+                       errbr =3D new BufferedReader(new InputStreamReader(=
p.getErrorStream()));=0A=
+               }=0A=
+               boolean cancel =3D false;=0A=
+               while (!cancel) {=0A=
+                       if(monitor.isCanceled()) {=0A=
+                               cancel =3D true;=0A=
+                               if (lock !=3D null)=0A=
+                                       lock.unlock();=0A=
+                               throw new InterruptedException("User Cancel=
led");=0A=
+                       }=0A=
+                       processBuffer(errbr, ERROR_BUFFER);=0A=
+                       processBuffer(inbr, OUTPUT_BUFFER);=0A=
+                       cancel =3D true;=0A=
+               }=0A=
+               if (lock !=3D null)=0A=
+                       lock.unlock();=0A=
+               return processBuffer;=0A=
+       }=0A=
+       protected abstract boolean isErrChStop(char ch);=0A=
+       protected abstract boolean isOutChStop(char ch);=0A=
+       protected boolean isChStop(char ch, int type){=0A=
+               if (type =3D=3D ERROR_BUFFER)=0A=
+                       return isErrChStop(ch);=0A=
+               else if(type =3D=3D OUTPUT_BUFFER)=0A=
+                       return isOutChStop(ch);=0A=
+               return false;=0A=
+       }=0A=
+       protected abstract void processOutputBufferLine(char ch, String str=
);=0A=
+       protected abstract void processErrorBufferLine(char ch, String str)=
;=0A=
+       protected void processBufferLine(String str, char ch, int type){=0A=
+               if (type =3D=3D ERROR_BUFFER)=0A=
+                       processErrorBufferLine(ch, str);=0A=
+               else if(type =3D=3D OUTPUT_BUFFER)=0A=
+                       processOutputBufferLine(ch, str);=0A=
+       }=0A=
+       protected void processBuffer(BufferedReader br, int type) throws IO=
Exception{=0A=
+               StringBuffer buffer =3D new StringBuffer();=0A=
+               int c;=0A=
+               if (br !=3D null)=0A=
+               while ((c =3D br.read()) !=3D -1) {=0A=
+                       char ch =3D (char) c;=0A=
+                       buffer.append(ch);=0A=
+                       if (isChStop(ch, type)){=0A=
+                               String str =3D buffer.toString();=0A=
+                               processBufferLine(str, ch, type);=0A=
+                               System.out.println(str);=0A=
+                               if (str.trim().equals(RemoteHelper.TERMINAT=
OR)) {=0A=
+                                       break;=0A=
+                               }=0A=
+                               cmdHandler.response(str, false);=0A=
+                               buffer.delete(0, buffer.length());=0A=
+                       }=0A=
+               }=0A=
+       }=0A=
+}=0A=
\ No newline at end of file=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Proc=
essStreamBuffer.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/=
utils/ProcessStreamBuffer.java=0A=
new file mode 100644=0A=
index 0000000..3fe8731=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ProcessS=0A=
+++ treamBuffer.java=0A=
@@ -0,0 +1,77 @@=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import java.util.ArrayList;=0A=
+import java.util.List;=0A=
+import java.util.regex.Pattern;=0A=
+=0A=
+public class ProcessStreamBuffer {=0A=
+       private static final String WHITESPACES =3D "\\s+";=0A=
+       List<String> errorLines;=0A=
+       List<String> outputLines;=0A=
+       boolean isTerminal;=0A=
+=0A=
+       ProcessStreamBuffer(boolean isTerminal){=0A=
+               this.isTerminal =3D isTerminal;=0A=
+               errorLines =3D new ArrayList<String>();=0A=
+               outputLines =3D new ArrayList<String>();=0A=
+       }=0A=
+=0A=
+       public void addErrorLine(String line){=0A=
+               errorLines.add(line);=0A=
+       }=0A=
+       public void addOutputLine(String line){=0A=
+               outputLines.add(line);=0A=
+       }=0A=
+=0A=
+       public List<String> getOutputLines(){=0A=
+               return outputLines;=0A=
+       }=0A=
+=0A=
+       public List<String> getErrorLines(){=0A=
+               return errorLines;=0A=
+       }=0A=
+=0A=
+       public String getMergedOutputLines(){=0A=
+               String returnVal =3D "";=0A=
+               for (int i =3D 0; i < outputLines.size(); i++) {=0A=
+                       String line =3D outputLines.get(i);=0A=
+                       returnVal +=3D line;=0A=
+                       if (outputLines.size() > 1 && i !=3D outputLines.si=
ze() - 1)=0A=
+                               returnVal +=3D "\n";=0A=
+               }=0A=
+               return returnVal;=0A=
+       }=0A=
+=0A=
+       public boolean hasErrors() {=0A=
+               return errorLines.size() !=3D 0;=0A=
+       }=0A=
+=0A=
+       public String getLastOutputLineContaining(String str) {=0A=
+               if (!errorLines.isEmpty())=0A=
+                       return null;=0A=
+               for (int i =3D outputLines.size() - 1; i >=3D 0; i--){=0A=
+                       String line =3D outputLines.get(i);=0A=
+                       if (line.replaceAll(WHITESPACES, "").contains(str.r=
eplaceAll(WHITESPACES, "")))=0A=
+                               return line;=0A=
+               }=0A=
+               return null;=0A=
+       }=0A=
+=0A=
+       public String getOutputLineContaining(String arg, String pattern) {=
=0A=
+               List<String> lines =3D null;=0A=
+               if (isTerminal)=0A=
+                       lines =3D errorLines;=0A=
+               else=0A=
+                       lines =3D outputLines;=0A=
+               for (int i =3D lines.size() - 1; i >=3D 0; i--){=0A=
+                       String line =3D lines.get(i);=0A=
+                       if (line.contains(arg)) {=0A=
+                               String[] tokens =3D line.split("\\s+");=0A=
+                               if (Pattern.matches(pattern,  tokens[0])) {=
=0A=
+                                       return tokens[0];=0A=
+                               }=0A=
+                       }=0A=
+               }=0A=
+               return "";=0A=
+       }=0A=
+}=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Remo=
teHelper.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/R=
emoteHelper.java=0A=
index a1e9a08..e9118d6 100644=0A=
--- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHelpe=
r.java=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteHe=0A=
+++ lper.java=0A=
@@ -16,16 +16,19 @@ import java.io.BufferedOutputStream;  import java.io.Fi=
le;  import java.io.FileOutputStream;  import java.io.InputStream;=0A=
+import java.net.URI;=0A=
+import java.net.URISyntaxException;=0A=
 import java.util.ArrayList;=0A=
 import java.util.Arrays;=0A=
+import java.util.HashMap;=0A=
 import java.util.Iterator;=0A=
+import java.util.Map;=0A=
=0A=
 import org.eclipse.core.runtime.CoreException;=0A=
 import org.eclipse.core.runtime.FileLocator;=0A=
 import org.eclipse.core.runtime.IProgressMonitor;=0A=
 import org.eclipse.core.runtime.IStatus;  import org.eclipse.core.runtime.=
MultiStatus;=0A=
-import org.eclipse.core.runtime.OperationCanceledException;=0A=
 import org.eclipse.core.runtime.Path;=0A=
 import org.eclipse.core.runtime.Status;  import org.eclipse.core.runtime.S=
ubProgressMonitor;=0A=
@@ -38,17 +41,26 @@ import org.eclipse.rse.core.model.ISubSystemConfigurati=
onCategories;=0A=
 import org.eclipse.rse.core.model.ISystemRegistry;=0A=
 import org.eclipse.rse.core.subsystems.ISubSystem;=0A=
 import org.eclipse.rse.services.IService;=0A=
+import=0A=
+org.eclipse.rse.services.clientserver.messages.SystemMessageException;=0A=
 import org.eclipse.rse.services.files.IFileService;=0A=
+import org.eclipse.rse.services.files.IHostFile;=0A=
 import org.eclipse.rse.services.shells.HostShellProcessAdapter;=0A=
 import org.eclipse.rse.services.shells.IHostShell;=0A=
 import org.eclipse.rse.services.shells.IShellService;=0A=
+import org.eclipse.rse.subsystems.files.core.model.RemoteFileUtility;=0A=
+import=0A=
+org.eclipse.rse.subsystems.files.core.servicesubsystem.FileServiceSubSy=0A=
+stem;=0A=
 import org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileService=
SubSystem;=0A=
+import=0A=
+org.eclipse.rse.subsystems.files.core.subsystems.IRemoteFileSubSystem;=0A=
 import org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.=
IShellServiceSubSystem;=0A=
 import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem=
;=0A=
+import org.eclipse.ui.console.MessageConsole;=0A=
=0A=
 public class RemoteHelper {=0A=
        private final static String EXIT_CMD =3D "exit"; //$NON-NLS-1$=0A=
        private final static String CMD_DELIMITER =3D ";"; //$NON-NLS-1$=0A=
+       public static final String TERMINATOR =3D "234o987dsfkcqiuwey188370=
32843259d";//$NON-NLS-1$=0A=
+       public static final int TOTALWORKLOAD =3D 100;=0A=
+       private static Map<IHost, RemoteMachine> machines;=0A=
=0A=
        public static IHost getRemoteConnectionByName(String remoteConnecti=
on) {=0A=
                if (remoteConnection =3D=3D null)=0A=
@@ -57,30 +69,7 @@ public class RemoteHelper {=0A=
                for (int i =3D 0; i < connections.length; i++)=0A=
                        if (connections[i].getAliasName().equals(remoteConn=
ection))=0A=
                                return connections[i];=0A=
-               return null; // TODO Connection is not found in the list--n=
eed to react=0A=
-               // somehow, throw the exception?=0A=
-=0A=
-       }=0A=
-=0A=
-       public static IService getConnectedRemoteFileService(=0A=
-                       IHost currentConnection, IProgressMonitor monitor) =
throws Exception {=0A=
-               final ISubSystem subsystem =3D getFileSubsystem(currentConn=
ection);=0A=
-=0A=
-               if (subsystem =3D=3D null)=0A=
-                       throw new Exception(Messages.ErrorNoSubsystem);=0A=
-=0A=
-               try {=0A=
-                       subsystem.connect(monitor, false);=0A=
-               } catch (CoreException e) {=0A=
-                       throw e;=0A=
-               } catch (OperationCanceledException e) {=0A=
-                       throw new CoreException(Status.CANCEL_STATUS);=0A=
-               }=0A=
-=0A=
-               if (!subsystem.isConnected())=0A=
-                       throw new Exception(Messages.ErrorConnectSubsystem)=
;=0A=
-=0A=
-               return ((IFileServiceSubSystem) subsystem).getFileService()=
;=0A=
+               return null;=0A=
        }=0A=
=0A=
        public static ISubSystem getFileSubsystem(IHost host) { @@ -94,27 +=
83,6 @@ public class RemoteHelper {=0A=
                return null;=0A=
        }=0A=
=0A=
-       public static IService getConnectedShellService(=0A=
-                       IHost currentConnection, IProgressMonitor monitor) =
throws Exception {=0A=
-               final ISubSystem subsystem =3D getShellSubsystem(currentCon=
nection);=0A=
-=0A=
-               if (subsystem =3D=3D null)=0A=
-                       throw new Exception(Messages.ErrorNoSubsystem);=0A=
-=0A=
-               try {=0A=
-                       subsystem.connect(monitor, false);=0A=
-               } catch (CoreException e) {=0A=
-                       throw e;=0A=
-               } catch (OperationCanceledException e) {=0A=
-                       throw new CoreException(Status.CANCEL_STATUS);=0A=
-               }=0A=
-=0A=
-               if (!subsystem.isConnected())=0A=
-                       throw new Exception(Messages.ErrorConnectSubsystem)=
;=0A=
-=0A=
-               return ((IShellServiceSubSystem) subsystem).getShellService=
();=0A=
-       }=0A=
-=0A=
        public static ISubSystem getShellSubsystem(IHost host) {=0A=
                if (host =3D=3D null)=0A=
                        return null;=0A=
@@ -161,7 +129,7 @@ public class RemoteHelper {=0A=
=0A=
                IFileService fileService;=0A=
                try {=0A=
-                       fileService =3D (IFileService) getConnectedRemoteFi=
leService(=0A=
+                       fileService =3D getConnectedRemoteFileService(=0A=
                                                        connection,=0A=
                                                        new SubProgressMoni=
tor(monitor, 5));=0A=
                        InputStream  inputStream =3D FileLocator.openStream=
( @@ -204,7 +172,7 @@ public class RemoteHelper {=0A=
=0A=
                IFileService fileService;=0A=
                try {=0A=
-                       fileService =3D (IFileService) getConnectedRemoteFi=
leService(=0A=
+                       fileService =3D getConnectedRemoteFileService(=0A=
                                                        connection,=0A=
                                                        new SubProgressMoni=
tor(monitor, 10));=0A=
                        File file =3D new File(localExePath);=0A=
@@ -341,4 +309,195 @@ public class RemoteHelper {=0A=
                                return;=0A=
                        }=0A=
        }=0A=
+       public static RemoteMachine getRemoteMachine(IHost connection){=0A=
+               if (!getMachines().containsKey(connection))=0A=
+                       getMachines().put(connection, new RemoteMachine(con=
nection));=0A=
+               return getMachines().get(connection);=0A=
+       }=0A=
+=0A=
+       private static Map<IHost, RemoteMachine> getMachines() {=0A=
+               if (machines =3D=3D null)=0A=
+                       machines =3D new HashMap<IHost, RemoteMachine>();=
=0A=
+               return machines;=0A=
+       }=0A=
+=0A=
+       public static MessageConsole getConsole(IHost connection) {=0A=
+               return getRemoteMachine(connection).getConsole();=0A=
+       }=0A=
+=0A=
+       public static CommandResponseHandler getCommandHandler(IHost connec=
tion) {=0A=
+               return getRemoteMachine(connection).getCmdHandler();=0A=
+       }=0A=
+=0A=
+       public static ProcessStreamBuffer processOutput(IProgressMonitor mo=
nitor, IHostShell hostShell, CommandResponseHandler cmdHandler) throws Exce=
ption {=0A=
+               return new CommandOutputProcessor(monitor, hostShell, cmdHa=
ndler, "").processOutput();=0A=
+       }=0A=
+=0A=
+       public static IHost getRemoteConnectionForURI(URI uri, IProgressMon=
itor monitor) {=0A=
+               if (uri =3D=3D null)=0A=
+                       return null;=0A=
+=0A=
+               String host =3D uri.getHost();=0A=
+               if (host =3D=3D null) {=0A=
+                       // this is a local connection=0A=
+                       ISystemRegistry sr =3D RSECorePlugin.getTheSystemRe=
gistry();=0A=
+                       IHost local =3D null;=0A=
+                       while (local =3D=3D null) {=0A=
+                               local =3D sr.getLocalHost();=0A=
+                       }=0A=
+                       return local;=0A=
+               }=0A=
+               ISystemRegistry sr =3D RSECorePlugin.getTheSystemRegistry()=
;=0A=
+               IHost[] connections =3D sr.getHosts();=0A=
+=0A=
+               IHost unconnected =3D null;=0A=
+               for (IHost conn : connections) {=0A=
+                       if (host.equalsIgnoreCase(conn.getHostName())) {=0A=
+                               IRemoteFileSubSystem fss =3D getRemoteFileS=
ubSystem(conn);=0A=
+                               if (fss !=3D null && fss.isConnected())=0A=
+                                       return conn;=0A=
+                               unconnected =3D conn;=0A=
+                       }=0A=
+               }=0A=
+=0A=
+               return unconnected;=0A=
+       }=0A=
+=0A=
+       public static IRemoteFileSubSystem getRemoteFileSubSystem(IHost hos=
t) {=0A=
+               IRemoteFileSubSystem candidate =3D null;=0A=
+               IRemoteFileSubSystem otherServiceCandidate =3D null;=0A=
+               IRemoteFileSubSystem[] subSystems =3D=0A=
+RemoteFileUtility.getFileSubSystems(host);=0A=
+=0A=
+               for (IRemoteFileSubSystem subSystem : subSystems) {=0A=
+                       if (subSystem instanceof FileServiceSubSystem) {=0A=
+                               if (subSystem.isConnected())=0A=
+                                       return subSystem;=0A=
+=0A=
+                               if (otherServiceCandidate =3D=3D null)=0A=
+                                       otherServiceCandidate =3D subSystem=
;=0A=
+=0A=
+                       } else if (candidate =3D=3D null || (subSystem.isCo=
nnected() && !candidate.isConnected()))=0A=
+                               candidate =3D subSystem;=0A=
+=0A=
+               }=0A=
+               if (candidate !=3D null && candidate.isConnected())=0A=
+                       return candidate;=0A=
+               if (otherServiceCandidate !=3D null)=0A=
+                       return otherServiceCandidate;=0A=
+               return null;=0A=
+       }=0A=
+=0A=
+       public static IFileService getConnectedRemoteFileService(IHost conn=
ection, IProgressMonitor monitor) throws Exception {=0A=
+               return getRemoteMachine(connection).getRemoteFileService(mo=
nitor);=0A=
+       }=0A=
+=0A=
+       public static IHostFile[] getRemoteDirContent(IHost connection, Str=
ing=0A=
+remoteParent, String fileFilter, int fileType, IProgressMonitor=0A=
+monitor){=0A=
+=0A=
+               try {=0A=
+                       IFileService fileServ =3D getConnectedRemoteFileSer=
vice(connection, monitor);=0A=
+                       return fileServ.list(remoteParent, fileFilter, file=
Type, monitor);=0A=
+               } catch (SystemMessageException e) {=0A=
+                       e.printStackTrace();=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+               return null;=0A=
+       }=0A=
+=0A=
+       public static IService getConnectedShellService(IHost connection, I=
ProgressMonitor monitor) throws Exception {=0A=
+               return getRemoteMachine(connection).getShellService(monitor=
);=0A=
+       }=0A=
+=0A=
+       public static void handleRunCommandRemote(IHost connection, YoctoCo=
mmand cmd, IProgressMonitor monitor){=0A=
+               try {=0A=
+                       CommandRunnable cmdRun =3D new CommandRunnable(conn=
ection, cmd, monitor);=0A=
+                       cmdRun.run();=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+       }=0A=
+=0A=
+       public static IHostShell runCommandRemote(IHost connection, YoctoCo=
mmand cmd,=0A=
+                       IProgressMonitor monitor) throws CoreException {=0A=
+=0A=
+               monitor.beginTask(NLS.bind(Messages.RemoteShellExec_1,=0A=
+                               cmd, cmd.getArguments()), 10);=0A=
+=0A=
+               String remoteCommand =3D cmd.getCommand() + " " + cmd.getAr=
guments() +=0A=
+" ; echo " + TERMINATOR + "; exit ;";=0A=
+=0A=
+               IShellService shellService;=0A=
+               try {=0A=
+                       shellService =3D (IShellService) getConnectedShellS=
ervice(connection,=0A=
+new SubProgressMonitor(monitor, 7));=0A=
+=0A=
+                       String env[] =3D=0A=
+getRemoteMachine(connection).prepareEnvString(monitor);=0A=
+=0A=
+                       try {=0A=
+                               IHostShell hostShell =3D shellService.runCo=
mmand(cmd.getInitialDirectory(), remoteCommand, env, new SubProgressMonitor=
(monitor, 3));=0A=
+                               return hostShell;=0A=
+                       } catch (Exception e) {=0A=
+                               e.printStackTrace();=0A=
+                       }=0A=
+               } catch (Exception e1) {=0A=
+                       e1.printStackTrace();=0A=
+               }=0A=
+               return null;=0A=
+       }=0A=
+=0A=
+       public static IHostFile getRemoteHostFile(IHost connection, String =
remoteFilePath, IProgressMonitor monitor){=0A=
+               assert(connection !=3D null);=0A=
+               monitor.beginTask(Messages.InfoDownload, 100);=0A=
+=0A=
+               try {=0A=
+                       IFileService fileService =3D getConnectedRemoteFile=
Service(connection, new SubProgressMonitor(monitor, 10));=0A=
+                       Path remotePath =3D new Path(remoteFilePath);=0A=
+                       IHostFile remoteFile =3D fileService.getFile(remote=
Path.removeLastSegments(1).toString(), remotePath.lastSegment(), new SubPro=
gressMonitor(monitor, 5));=0A=
+                       return remoteFile;=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+           }finally {=0A=
+                       monitor.done();=0A=
+               }=0A=
+               return null;=0A=
+       }=0A=
+=0A=
+       public static InputStream getRemoteInputStream(IHost connection, St=
ring parentPath, String remoteFilePath, IProgressMonitor monitor){=0A=
+               assert(connection !=3D null);=0A=
+               monitor.beginTask(Messages.InfoDownload, 100);=0A=
+=0A=
+               try {=0A=
+                       IFileService fileService =3D getConnectedRemoteFile=
Service(connection,=0A=
+new SubProgressMonitor(monitor, 10));=0A=
+=0A=
+                       return fileService.getInputStream(parentPath, remot=
eFilePath, false, monitor);=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+           }finally {=0A=
+                       monitor.done();=0A=
+               }=0A=
+               return null;=0A=
+       }=0A=
+=0A=
+       public static URI createNewURI(URI oldURI, String name) {=0A=
+               try {=0A=
+                       String sep =3D oldURI.getPath().endsWith("/") ? "" =
: "/";=0A=
+                       return new URI(oldURI.getScheme(), oldURI.getHost()=
, oldURI.getPath() + sep + name, oldURI.getFragment());=0A=
+               } catch (URISyntaxException e) {=0A=
+                       e.printStackTrace();=0A=
+                       return null;=0A=
+               }=0A=
+       }=0A=
+=0A=
+       public static boolean fileExistsRemote(IHost conn, IProgressMonitor=
 monitor, String path) {=0A=
+               try {=0A=
+                       IFileService fs =3D getConnectedRemoteFileService(c=
onn, monitor);=0A=
+                       int nameStart =3D path.lastIndexOf("/");=0A=
+                       String parentPath =3D path.substring(0, nameStart);=
=0A=
+                       String name =3D path.substring(nameStart + 1);=0A=
+                       IHostFile hostFile =3D fs.getFile(parentPath, name,=
 monitor);=0A=
+=0A=
+                       return hostFile.exists();=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+               return false;=0A=
+       }=0A=
 }=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Remo=
teMachine.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/=
RemoteMachine.java=0A=
new file mode 100644=0A=
index 0000000..123a972=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/RemoteMa=0A=
+++ chine.java=0A=
@@ -0,0 +1,206 @@=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import java.util.ArrayList;=0A=
+import java.util.HashMap;=0A=
+import java.util.List;=0A=
+import java.util.Map;=0A=
+=0A=
+import org.eclipse.core.runtime.CoreException;=0A=
+import org.eclipse.core.runtime.IProgressMonitor;=0A=
+import org.eclipse.core.runtime.NullProgressMonitor;=0A=
+import org.eclipse.core.runtime.OperationCanceledException;=0A=
+import org.eclipse.core.runtime.Status; import=0A=
+org.eclipse.core.runtime.SubProgressMonitor;=0A=
+import org.eclipse.rse.core.model.IHost; import=0A=
+org.eclipse.rse.core.subsystems.ISubSystem;=0A=
+import=0A=
+org.eclipse.rse.internal.services.local.shells.LocalShellService;=0A=
+import=0A=
+org.eclipse.rse.services.clientserver.messages.SystemMessageException;=0A=
+import org.eclipse.rse.services.files.IFileService;=0A=
+import org.eclipse.rse.services.shells.IHostShell;=0A=
+import org.eclipse.rse.services.shells.IShellService;=0A=
+import=0A=
+org.eclipse.rse.subsystems.files.core.servicesubsystem.IFileServiceSubS=0A=
+ystem; import=0A=
+org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem.IShe=0A=
+llServiceSubSystem; import org.eclipse.ui.console.MessageConsole;=0A=
+=0A=
+public class RemoteMachine {=0A=
+       public static final String PROXY =3D "proxy";=0A=
+=0A=
+       private Map<String, String> environment;=0A=
+       private MessageConsole console;=0A=
+       private CommandResponseHandler cmdHandler;=0A=
+       private IHostShell hostShell;=0A=
+       private IShellService shellService;=0A=
+       private IHost connection;=0A=
+=0A=
+       private ISubSystem fileSubSystem;=0A=
+       private IFileService fileService;=0A=
+=0A=
+       public RemoteMachine(IHost connection) {=0A=
+               setConnection(connection);=0A=
+       }=0A=
+=0A=
+       public String[] prepareEnvString(IProgressMonitor monitor){=0A=
+               String[] env =3D null;=0A=
+               try {=0A=
+                       if (shellService instanceof LocalShellService) {=0A=
+                               env  =3D shellService.getHostEnvironment();=
=0A=
+                       } else {=0A=
+                               List<String> envList =3D new ArrayList<Stri=
ng>();=0A=
+                               getRemoteEnvProxyVars(monitor);=0A=
+                               String value =3D "";=0A=
+                               for (String varName : environment.keySet())=
{=0A=
+                                       value =3D varName + "=3D" + environ=
ment.get(varName);=0A=
+                                       envList.add(value);=0A=
+                               }=0A=
+                               env =3D envList.toArray(new String[envList.=
size()]);=0A=
+                       }=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+=0A=
+               return env;=0A=
+       }=0A=
+       public void getRemoteEnvProxyVars(IProgressMonitor monitor){=0A=
+               try {=0A=
+                       if (environment !=3D null && !environment.isEmpty()=
)=0A=
+                               return;=0A=
+=0A=
+                       environment =3D new HashMap<String, String>();=0A=
+=0A=
+                       IShellService shellService =3D getShellService(new=
=0A=
+SubProgressMonitor(monitor, 7));=0A=
+=0A=
+                       ProcessStreamBuffer buffer =3D null;=0A=
+                       try {=0A=
+                               SubProgressMonitor subMonitor =3D new SubPr=
ogressMonitor(monitor, 3);=0A=
+                               IHostShell hostShell =3D shellService.runCo=
mmand("", "env" + " ; echo " + RemoteHelper.TERMINATOR + "; exit;", new Str=
ing[]{}, subMonitor);=0A=
+                               buffer =3D RemoteHelper.processOutput(subMo=
nitor, hostShell, cmdHandler);=0A=
+                               for(int i =3D 0; i < buffer.getOutputLines(=
).size(); i++) {=0A=
+                                       String out =3D buffer.getOutputLine=
s().get(i);=0A=
+                                       String[] tokens =3D out.split("=3D"=
);=0A=
+                                       if (tokens.length !=3D 2)=0A=
+                                               continue;=0A=
+                                       String varName =3D tokens[0];=0A=
+                                       String varValue =3D tokens[1];=0A=
+                                       if (varName.contains(PROXY))=0A=
+                                               environment.put(varName, va=
rValue);=0A=
+                               }=0A=
+                       } catch (Exception e) {=0A=
+                               e.printStackTrace();=0A=
+                       }=0A=
+=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+       }=0A=
+=0A=
+       public Map<String, String> getEnvironment() {=0A=
+               return environment;=0A=
+       }=0A=
+       public void setEnvironment(Map<String, String> environment) {=0A=
+               this.environment =3D environment;=0A=
+       }=0A=
+       public MessageConsole getConsole() {=0A=
+               if (console =3D=3D null)=0A=
+                       console =3D ConsoleHelper.findConsole(ConsoleHelper=
.YOCTO_CONSOLE);=0A=
+=0A=
+               ConsoleHelper.showConsole(console);=0A=
+               return console;=0A=
+       }=0A=
+       public CommandResponseHandler getCmdHandler() {=0A=
+               if (cmdHandler =3D=3D null)=0A=
+                       cmdHandler =3D new CommandResponseHandler(getConsol=
e());=0A=
+               return cmdHandler;=0A=
+       }=0A=
+       public IHostShell getHostShell() {=0A=
+               try {=0A=
+                       if (hostShell =3D=3D null) {=0A=
+                               hostShell =3D getShellService(new NullProgr=
essMonitor()).launchShell("", new String[]{}, new NullProgressMonitor());=
=0A=
+                               prepareEnvString(new NullProgressMonitor())=
;=0A=
+                       }=0A=
+               } catch (SystemMessageException e) {=0A=
+                       e.printStackTrace();=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+               return hostShell;=0A=
+       }=0A=
+=0A=
+       public IShellService getShellService(IProgressMonitor monitor) thro=
ws Exception {=0A=
+               if (shellService !=3D null)=0A=
+                       return shellService;=0A=
+=0A=
+               final ISubSystem subsystem =3D getShellSubsystem();=0A=
+=0A=
+               if (subsystem =3D=3D null)=0A=
+                       throw new Exception(Messages.ErrorNoSubsystem);=0A=
+=0A=
+               try {=0A=
+                       subsystem.connect(monitor, false);=0A=
+               } catch (CoreException e) {=0A=
+                       throw e;=0A=
+               } catch (OperationCanceledException e) {=0A=
+                       throw new CoreException(Status.CANCEL_STATUS);=0A=
+               }=0A=
+=0A=
+               if (!subsystem.isConnected())=0A=
+                       throw new Exception(Messages.ErrorConnectSubsystem)=
;=0A=
+=0A=
+               shellService =3D ((IShellServiceSubSystem) subsystem).getSh=
ellService();=0A=
+               return shellService;=0A=
+       }=0A=
+=0A=
+       private ISubSystem getShellSubsystem() {=0A=
+               if (connection =3D=3D null)=0A=
+                       return null;=0A=
+               ISubSystem[] subSystems =3D connection.getSubSystems();=0A=
+               for (int i =3D 0; i < subSystems.length; i++) {=0A=
+                       if (subSystems[i] instanceof IShellServiceSubSystem=
)=0A=
+                               return subSystems[i];=0A=
+               }=0A=
+               return null;=0A=
+       }=0A=
+=0A=
+       public IHost getConnection() {=0A=
+               return connection;=0A=
+       }=0A=
+       public void setConnection(IHost connection) {=0A=
+               this.connection =3D connection;=0A=
+       }=0A=
+=0A=
+       public IFileService getRemoteFileService(IProgressMonitor monitor) =
throws Exception {=0A=
+               if (fileService =3D=3D null) {=0A=
+=0A=
+                       while(getFileSubsystem() =3D=3D null)=0A=
+                               Thread.sleep(2);=0A=
+                       try {=0A=
+                               getFileSubsystem().connect(monitor, false);=
=0A=
+                       } catch (CoreException e) {=0A=
+                               throw e;=0A=
+                       } catch (OperationCanceledException e) {=0A=
+                               throw new CoreException(Status.CANCEL_STATU=
S);=0A=
+                       }=0A=
+=0A=
+                       if (!getFileSubsystem().isConnected())=0A=
+                               throw new Exception(Messages.ErrorConnectSu=
bsystem);=0A=
+=0A=
+                       fileService =3D ((IFileServiceSubSystem) getFileSub=
system()).getFileService();=0A=
+               }=0A=
+               return fileService;=0A=
+       }=0A=
+=0A=
+       public ISubSystem getFileSubsystem() {=0A=
+               if (fileSubSystem =3D=3D null) {=0A=
+                       if (connection =3D=3D null)=0A=
+                               return null;=0A=
+                       ISubSystem[] subSystems =3D connection.getSubSystem=
s();=0A=
+                       for (int i =3D 0; i < subSystems.length; i++) {=0A=
+                               if (subSystems[i] instanceof IFileServiceSu=
bSystem) {=0A=
+                                       fileSubSystem =3D subSystems[i];=0A=
+                                       break;=0A=
+                               }=0A=
+                       }=0A=
+               }=0A=
+               return fileSubSystem;=0A=
+       }=0A=
+=0A=
+}=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Sess=
ion.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Sessio=
n.java=0A=
new file mode 100644=0A=
index 0000000..cb14c0b=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Session.=0A=
+++ java=0A=
@@ -0,0 +1,117 @@=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+import java.io.BufferedReader;=0A=
+import java.io.IOException;=0A=
+import java.io.InputStream;=0A=
+import java.io.InputStreamReader;=0A=
+import java.io.OutputStream;=0A=
+=0A=
+import org.eclipse.core.runtime.IProgressMonitor;=0A=
+import org.eclipse.core.runtime.NullProgressMonitor;=0A=
+import org.eclipse.rse.core.model.IHost; import=0A=
+org.eclipse.rse.services.files.IHostFile;=0A=
+=0A=
+public abstract class Session {=0A=
+       public static final String LT =3D System.getProperty("line.separato=
r");=0A=
+       public static final String EXPORT_CMD =3D "export=0A=
+BB_ENV_EXTRAWHITE=3D\"DISABLE_SANITY_CHECKS $BB_ENV_EXTRAWHITE\"";=0A=
+=0A=
+       private final String initCmd;=0A=
+       private final IHostFile root;=0A=
+=0A=
+       public String terminator;=0A=
+       private volatile boolean interrupt =3D false;=0A=
+       private Process process;=0A=
+       private final OutputStream pos =3D null;=0A=
+       private IHost connection;=0A=
+=0A=
+       public Session(IHostFile root, String initCmd) throws IOException {=
=0A=
+               this.root =3D root;=0A=
+               this.initCmd  =3D initCmd;=0A=
+               initializeConnection();=0A=
+               initializeShell(new NullProgressMonitor());=0A=
+       }=0A=
+=0A=
+       protected abstract void initializeConnection();=0A=
+=0A=
+       private void initializeShell(IProgressMonitor monitor) throws IOExc=
eption {=0A=
+               try {=0A=
+                       if (root !=3D null) {=0A=
+                               RemoteHelper.handleRunCommandRemote(connect=
ion, new YoctoCommand("source " + initCmd, root.getAbsolutePath(), ""), mon=
itor);=0A=
+                               RemoteHelper.handleRunCommandRemote(connect=
ion,  new YoctoCommand(EXPORT_CMD, root.getAbsolutePath(), ""), monitor);=
=0A=
+                       } else {=0A=
+                               throw new Exception("Root file not found!")=
;=0A=
+                       }=0A=
+               } catch (Exception e) {=0A=
+                       e.printStackTrace();=0A=
+               }=0A=
+       }=0A=
+       synchronized=0A=
+       public void execute(String command, String terminator, ICommandResp=
onseHandler handler) throws IOException {=0A=
+               interrupt =3D false;=0A=
+               InputStream errIs =3D process.getErrorStream();=0A=
+               if (errIs.available() > 0) {=0A=
+                       clearErrorStream(errIs);=0A=
+               }=0A=
+               sendToProcessAndTerminate(command);=0A=
+=0A=
+               BufferedReader br =3D new BufferedReader(new InputStreamRea=
der(process.getInputStream()));=0A=
+               String std =3D null;=0A=
+=0A=
+               do {=0A=
+                       if (errIs.available() > 0) {=0A=
+                               byte[] msg =3D new byte[errIs.available()];=
=0A=
+=0A=
+                               errIs.read(msg, 0, msg.length);=0A=
+                               handler.response(new String(msg), true);=0A=
+                       }=0A=
+=0A=
+                       std =3D br.readLine();=0A=
+=0A=
+                       if (std !=3D null && !std.endsWith(terminator)) {=
=0A=
+                               handler.response(std, false);=0A=
+                       }=0A=
+=0A=
+               } while (std !=3D null && !std.endsWith(terminator) && !int=
errupt);=0A=
+=0A=
+               if (interrupt) {=0A=
+                       process.destroy();=0A=
+                       initializeShell(null);=0A=
+                       interrupt =3D false;=0A=
+               }=0A=
+       }=0A=
+=0A=
+       private void clearErrorStream(InputStream is) {=0A=
+=0A=
+               try {=0A=
+                       byte b[] =3D new byte[is.available()];=0A=
+                       is.read(b);=0A=
+                       System.out.println("clearing: " + new String(b));=
=0A=
+               } catch (IOException e) {=0A=
+                       e.printStackTrace();=0A=
+                       //Ignore any error=0A=
+               }=0A=
+       }=0A=
+       /**=0A=
+        * Send command string to shell process and add special terminator =
string so=0A=
+        * reader knows when output is complete.=0A=
+        *=0A=
+        * @param command=0A=
+        * @throws IOException=0A=
+        */=0A=
+       private void sendToProcessAndTerminate(String command) throws IOExc=
eption {=0A=
+               pos.write(command.getBytes());=0A=
+               pos.write(LT.getBytes());=0A=
+               pos.flush();=0A=
+               pos.write("echo $?".getBytes());=0A=
+               pos.write(terminator.getBytes());=0A=
+               pos.write(LT.getBytes());=0A=
+               pos.flush();=0A=
+       }=0A=
+=0A=
+       /**=0A=
+        * Interrupt any running processes.=0A=
+        */=0A=
+       public void interrupt() {=0A=
+               interrupt =3D true;=0A=
+       }=0A=
+}=0A=
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Yoct=
oCommand.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/Y=
octoCommand.java=0A=
new file mode 100644=0A=
index 0000000..0cd7dcd=0A=
--- /dev/null=0A=
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/YoctoCom=0A=
+++ mand.java=0A=
@@ -0,0 +1,53 @@=0A=
+package org.yocto.remote.utils;=0A=
+=0A=
+=0A=
+public class YoctoCommand {=0A=
+       private String command;=0A=
+       private String initialDirectory;=0A=
+       private String arguments;=0A=
+       private ProcessStreamBuffer processBuffer;=0A=
+=0A=
+       public YoctoCommand(String command, String initialDirectory, String=
 arguments){=0A=
+               this.setCommand(command);=0A=
+               this.setInitialDirectory(initialDirectory);=0A=
+               this.setArguments(arguments);=0A=
+               this.setProcessBuffer(new ProcessStreamBuffer(false));=0A=
+       }=0A=
+=0A=
+       public String getCommand() {=0A=
+               return command;=0A=
+       }=0A=
+=0A=
+       public void setCommand(String command) {=0A=
+               this.command =3D command;=0A=
+       }=0A=
+=0A=
+       public String getInitialDirectory() {=0A=
+               return initialDirectory;=0A=
+       }=0A=
+=0A=
+       public void setInitialDirectory(String initialDirectory) {=0A=
+               this.initialDirectory =3D initialDirectory;=0A=
+       }=0A=
+=0A=
+       public String getArguments() {=0A=
+               return arguments;=0A=
+       }=0A=
+=0A=
+       public void setArguments(String arguments) {=0A=
+               this.arguments =3D arguments;=0A=
+       }=0A=
+=0A=
+       public ProcessStreamBuffer getProcessBuffer() {=0A=
+               return processBuffer;=0A=
+       }=0A=
+=0A=
+       public void setProcessBuffer(ProcessStreamBuffer processBuffer) {=
=0A=
+               this.processBuffer =3D processBuffer;=0A=
+       }=0A=
+=0A=
+       @Override=0A=
+       public String toString() {=0A=
+               return command + " " + arguments;=0A=
+       }=0A=
+}=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

