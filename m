Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 692A9E00429
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 11:17:41 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 May 2013 11:17:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,642,1363158000"; d="scan'208";a="300060601"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 09 May 2013 11:17:38 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.150]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.213]) with mapi id
	14.01.0355.002; Thu, 9 May 2013 11:17:36 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 01/12] Separate remote logic from GUI login in
	TerminalHandler implementation
Thread-Index: AQHOTI1S20n4bteFjk2HaTT22STab5j9KWOQ
Date: Thu, 9 May 2013 18:17:37 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C70788638@ORSMSX103.amr.corp.intel.com>
References: <1368086011-24931-1-git-send-email-ioanax.grigoropol@intel.com>
	<1368086011-24931-2-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1368086011-24931-2-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH 01/12] Separate remote logic from GUI login in	TerminalHandler implementation
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
X-List-Received-Date: Thu, 09 May 2013 18:17:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please change the License to 2013.  Also if execute only returns null, does=
 it make sense to declare the API return object?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, May 09, 2013 12:53 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 01/12] Separate remote logic from GUI login in Term=
inalHandler implementation

- TerminalHandler is used by both Perf and Latencytop handlers for running =
remote commands and for holding the settings dialog
        - in order to separate the common functionality for running remote =
commands we need to separate the GUI from the utilitary funtions
        - create DialogHandler that extends TerminalHandler to hold the GUI=
 settings
        - clean-up code in TerminalHandler:
                - remove references to settings dialog
                - modify execute method and keep only remote control code
        - change Perf and Latencytop's parent to DialogHandler
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/actions/DialogHandler.java     |   41 +++++++++
 .../sdk/remotetools/actions/LatencytopHandler.java |    2 +-
 .../yocto/sdk/remotetools/actions/PerfHandler.java |    2 +-
 .../sdk/remotetools/actions/TerminalHandler.java   |   93 ++++++----------=
----
 4 files changed, 70 insertions(+), 68 deletions(-)  create mode 100644 plu=
gins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Dialog=
Handler.java

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/DialogHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yo=
cto/sdk/remotetools/actions/DialogHandler.java
new file mode 100644
index 0000000..d5c3583
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/DialogHandler.java
@@ -0,0 +1,41 @@
+/**********************************************************************
+*********
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License
+v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+***********************************************************************
+********/ package org.yocto.sdk.remotetools.actions;
+
+import org.eclipse.core.commands.ExecutionEvent;
+import org.eclipse.core.commands.ExecutionException;
+import org.eclipse.rse.core.model.IHost; import
+org.eclipse.ui.IWorkbenchWindow; import
+org.eclipse.ui.handlers.HandlerUtil;
+
+abstract public class DialogHandler extends TerminalHandler {
+
+       protected BaseSettingDialog setting;
+
+       abstract protected String getDialogTitle();
+
+       protected void initialize(ExecutionEvent event) throws ExecutionExc=
eption{
+               IWorkbenchWindow window =3D HandlerUtil.getActiveWorkbenchW=
indowChecked(event);
+               shell =3D window.getShell();
+               setting =3D new SimpleSettingDialog(shell, getDialogTitle()=
, getConnnectionName());
+       }
+
+       @Override
+       public Object execute(ExecutionEvent event) throws ExecutionExcepti=
on {
+               initialize(event);
+
+               if(setting.open() =3D=3D BaseSettingDialog.OK) {
+                       IHost currentHost =3D setting.getHost();
+                       execute(currentHost);
+               }
+               return null;
+       }
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/LatencytopHandler.java b/plugins/org.yocto.sdk.remotetools/src/or=
g/yocto/sdk/remotetools/actions/LatencytopHandler.java
index ef77957..e931388 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/LatencytopHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/LatencytopHandler.java
@@ -11,7 +11,7 @@
 package org.yocto.sdk.remotetools.actions;


-public class LatencytopHandler extends TerminalHandler {
+public class LatencytopHandler extends DialogHandler {

        private static String initCmd=3D"export PATH=3D$PATH:/usr/local/sbi=
n:/usr/sbin:/sbin; cd; sudo latencytop\r";

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/PerfHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yoct=
o/sdk/remotetools/actions/PerfHandler.java
index 949bd46..f3f9e49 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/PerfHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/PerfHandler.java
@@ -11,7 +11,7 @@
 package org.yocto.sdk.remotetools.actions;


-public class PerfHandler extends TerminalHandler {
+public class PerfHandler extends DialogHandler {

        private static String initCmd=3D"cd; perf\r";

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/TerminalHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/=
yocto/sdk/remotetools/actions/TerminalHandler.java
index 84e38f2..9e7c169 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/TerminalHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/TerminalHandler.java
@@ -11,7 +11,6 @@
 package org.yocto.sdk.remotetools.actions;

 import org.eclipse.core.commands.AbstractHandler;
-import org.eclipse.core.commands.ExecutionEvent;
 import org.eclipse.core.commands.ExecutionException;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
@@ -34,14 +33,11 @@ import org.eclipse.swt.events.DisposeListener;
 import org.eclipse.swt.widgets.Shell;
 import org.eclipse.tm.internal.terminal.control.ITerminalViewControl;
 import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector=
;
-import org.eclipse.ui.IWorkbenchWindow; -import org.eclipse.ui.handlers.Ha=
ndlerUtil;
 import org.yocto.sdk.remotetools.CommonHelper;
 import org.yocto.sdk.remotetools.RSEHelper;

 abstract public class TerminalHandler extends AbstractHandler {

-       protected BaseSettingDialog setting;

        protected Shell shell;

@@ -50,11 +46,6 @@ abstract public class TerminalHandler extends AbstractHa=
ndler {
        abstract protected String getInitCmd();
        abstract protected String getConnnectionName();
        abstract protected String getDialogTitle();
-       protected void initialize(ExecutionEvent event) throws ExecutionExc=
eption{
-               IWorkbenchWindow window =3D HandlerUtil.getActiveWorkbenchW=
indowChecked(event);
-               shell =3D window.getShell();
-               setting =3D new SimpleSettingDialog(shell, getDialogTitle()=
, getConnnectionName());
-       }

        protected ITerminalShell getTerminalShellFromTab(CTabItem item) {
         ITerminalShell terminalShell =3D null; @@ -98,70 +89,40 @@ abstrac=
t public class TerminalHandler extends AbstractHandler {
                return false;
        }

-       public Object execute(ExecutionEvent event) throws ExecutionExcepti=
on {
+       public void execute(IHost host) throws ExecutionException {

-               initialize(event);
+               final ITerminalServiceSubSystem terminalSubSystem =3D
+RSEHelper.getTerminalSubSystem(host);

-               if(setting.open()=3D=3DBaseSettingDialog.OK) {
-                       IHost currentHost =3D setting.getHost();
-                       final ITerminalServiceSubSystem terminalSubSystem =
=3D RSEHelper.getTerminalSubSystem(currentHost);
-
-                       if (terminalSubSystem !=3D null) {
-                               TerminalsUI terminalsUI =3D TerminalsUI.get=
Instance();
-                               TerminalViewer viewer =3D terminalsUI.activ=
ateTerminalsView();
-                               if (preProcess(terminalSubSystem)) {
-                               /*if (!terminalSubSystem.isConnected()) {
-                                       try {
-                                               ProgressMonitorDialog dialo=
g =3D new ProgressMonitorDialog(shell);
-                                               dialog.run(true, true, new =
IRunnableWithProgress(){
-                                                   public void run(IProgre=
ssMonitor monitor) {
-                                                       monitor.beginTask("=
Connecting to remote target ...", 100);
-                                                       try {
-                                                       terminalSubSystem.c=
onnect(new NullProgressMonitor(), false);
-                                                       monitor.done();
-                                                       } catch (Exception =
e) {
-                                                               CommonHelpe=
r.showErrorDialog("Connection failure", null, e.getMessage());
-                                                               monitor.don=
e();
-                                                       }
-                                                   }
-                                               });
-                                       } catch (OperationCanceledException=
 e) {
-                                               // user canceled, return si=
lently
-                                               return null;
-                                       } catch (Exception e) {
-                                               SystemBasePlugin.logError(e=
.getLocalizedMessage(), e);
-                                       }
-                               }
-                               if (terminalSubSystem.isConnected()) {*/
-                                       CTabItem tab =3D viewer.getTabFolde=
r().createTabItem(
-                                                       terminalSubSystem.g=
etHost(), changeTerm + getInitCmd());
-                                       //since RSETerminalConnector not ex=
it the shell during the diconnection,
-                                       //we have manually exit it here
-                                       try {
-                                               tab.addDisposeListener(new =
DisposeListener() {
-                                                       public void widgetD=
isposed(DisposeEvent e) {
-
-                                                               Object sour=
ce =3D e.getSource();
-                                                               if (source =
instanceof CTabItem) {
-                                                                       CTa=
bItem currentItem =3D (CTabItem) source;
-                                                                       ITe=
rminalShell shell=3DgetTerminalShellFromTab(currentItem);
-                                                                       if(=
shell!=3Dnull) {
-                                                                          =
     shell.exit();
-                                                                       }
+               if (terminalSubSystem !=3D null) {
+                       TerminalsUI terminalsUI =3D TerminalsUI.getInstance=
();
+                       TerminalViewer viewer =3D terminalsUI.activateTermi=
nalsView();
+                       if (preProcess(terminalSubSystem)) {
+                               CTabItem tab =3D viewer.getTabFolder().crea=
teTabItem(
+                                               terminalSubSystem.getHost()=
, changeTerm + getInitCmd());
+                               //since RSETerminalConnector not exit the s=
hell during the diconnection,
+                               //we have manually exit it here
+                               try {
+                                       tab.addDisposeListener(new DisposeL=
istener() {
+                                               public void widgetDisposed(=
DisposeEvent e) {
+                                                       Object source =3D e=
.getSource();
+                                                       if (source instance=
of CTabItem) {
+                                                               CTabItem cu=
rrentItem =3D (CTabItem) source;
+                                                               ITerminalSh=
ell shell=3DgetTerminalShellFromTab(currentItem);
+                                                               if(shell!=
=3Dnull) {
+                                                                       she=
ll.exit();
                                                                }
                                                        }
-                                               });
-                                       }catch(Exception e) {
-                                               e.printStackTrace();
-                                       }
-                                       TerminalElement element =3D Termina=
lServiceHelper
-                                                       .createTerminalElem=
ent(tab, terminalSubSystem);
-                                       terminalSubSystem.addChild(element)=
;
-
+                                               }
+                                       });
+                               }catch(Exception e) {
+                                       e.printStackTrace();
                                }
+                               TerminalElement element =3D TerminalService=
Helper
+                                               .createTerminalElement(tab,=
 terminalSubSystem);
+                               terminalSubSystem.addChild(element);
+
                        }
                }
-               return null;
        }

 }
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

