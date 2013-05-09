Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EEC4E014E0
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 01:07:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 May 2013 01:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,639,1363158000"; d="scan'208";a="334817121"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 09 May 2013 01:07:30 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 May 2013 10:47:13 +0300
Message-Id: <1368085635-24575-18-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368085635-24575-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368085635-24575-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 10/12] Move TerminalHandler to org.yocto.remote.utils
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
X-List-Received-Date: Thu, 09 May 2013 08:07:32 -0000

- move TerminalHandler to separate plugin since it performs actions that are best suited for remote utilities
- remove TerminalHandler from remotetools plugin
- modify org.yocto.sdk.remotetools to use implementation from org.yocto.remote.utils

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    9 ++++++-
 .../org/yocto/remote/utils}/TerminalHandler.java   |   28 ++++++++++----------
 .../sdk/remotetools/actions/DialogHandler.java     |    1 +
 3 files changed, 23 insertions(+), 15 deletions(-)
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions => org.yocto.remote.utils/src/org/yocto/remote/utils}/TerminalHandler.java (94%)

diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index 9616484..e7afbd0 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -11,10 +11,17 @@ Bundle-RequiredExecutionEnvironment: JavaSE-1.7
 Import-Package: org.eclipse.rse.core,
  org.eclipse.rse.core.model,
  org.eclipse.rse.core.subsystems,
+ org.eclipse.rse.internal.terminals.ui,
+ org.eclipse.rse.internal.terminals.ui.views,
  org.eclipse.rse.services,
  org.eclipse.rse.services.files,
  org.eclipse.rse.services.shells,
+ org.eclipse.rse.services.terminals,
  org.eclipse.rse.subsystems.files.core.servicesubsystem,
  org.eclipse.rse.subsystems.shells.core.subsystems.servicesubsystem,
- org.eclipse.rse.subsystems.terminals.core
+ org.eclipse.rse.subsystems.terminals.core,
+ org.eclipse.rse.subsystems.terminals.core.elements,
+ org.eclipse.rse.ui,
+ org.eclipse.tm.internal.terminal.control,
+ org.eclipse.tm.internal.terminal.provisional.api
 Export-Package: org.yocto.remote.utils
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
similarity index 94%
rename from plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
rename to plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
index ae04dc9..e28ae79 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
@@ -8,7 +8,7 @@
  * Contributors:
  * Intel - initial API and implementation
  *******************************************************************************/
-package org.yocto.sdk.remotetools.actions;
+package org.yocto.remote.utils;
 
 import org.eclipse.core.commands.AbstractHandler;
 import org.eclipse.core.commands.ExecutionException;
@@ -33,20 +33,18 @@ import org.eclipse.swt.events.DisposeListener;
 import org.eclipse.swt.widgets.Shell;
 import org.eclipse.tm.internal.terminal.control.ITerminalViewControl;
 import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector;
-import org.yocto.remote.utils.CommonHelper;
-import org.yocto.remote.utils.RSEHelper;
 
 abstract public class TerminalHandler extends AbstractHandler {
-	
-	
+
+
 	protected Shell shell;
-	
-	protected String changeTerm="export TERM=vt100;";
-	
+
+	protected String changeTerm = "export TERM=vt100;";
+
 	abstract protected String getInitCmd();
 	abstract protected String getConnnectionName();
 	abstract protected String getDialogTitle();
-	
+
 	protected ITerminalShell getTerminalShellFromTab(CTabItem item) {
         ITerminalShell terminalShell = null;
         ITerminalViewControl terminalViewControl = (ITerminalViewControl) item
@@ -65,7 +63,8 @@ abstract public class TerminalHandler extends AbstractHandler {
 			try {
 				ProgressMonitorDialog dialog = new ProgressMonitorDialog(shell);
 				dialog.run(true, true, new IRunnableWithProgress(){
-				    public void run(IProgressMonitor monitor) {
+				    @Override
+					public void run(IProgressMonitor monitor) {
 				        monitor.beginTask("Connecting to remote target ...", 100);
 				        try {
 				        terminalSubSystem.connect(new NullProgressMonitor(), false);
@@ -73,7 +72,7 @@ abstract public class TerminalHandler extends AbstractHandler {
 				        } catch (Exception e) {
 				        	CommonHelper.showErrorDialog("Connection failure", null, e.getMessage());
 				        	monitor.done();
-				        	
+
 				        }
 				    }
 				});
@@ -88,11 +87,11 @@ abstract public class TerminalHandler extends AbstractHandler {
 			return true;
 		return false;
 	}
-	
+
 	public void execute(IHost host) throws ExecutionException {
-		
+
 		final ITerminalServiceSubSystem terminalSubSystem = RSEHelper.getTerminalSubSystem(host);
-		
+
 		if (terminalSubSystem != null) {
 			TerminalsUI terminalsUI = TerminalsUI.getInstance();
 			TerminalViewer viewer = terminalsUI.activateTerminalsView();
@@ -103,6 +102,7 @@ abstract public class TerminalHandler extends AbstractHandler {
 				//we have manually exit it here
 				try {
 					tab.addDisposeListener(new DisposeListener() {
+						@Override
 						public void widgetDisposed(DisposeEvent e) {
 							Object source = e.getSource();
 							if (source instanceof CTabItem) {
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
index d5c3583..ca6d13b 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
@@ -15,6 +15,7 @@ import org.eclipse.core.commands.ExecutionException;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
 import org.eclipse.ui.handlers.HandlerUtil;
+import org.yocto.remote.utils.TerminalHandler;
 
 abstract public class DialogHandler extends TerminalHandler {
 	
-- 
1.7.9.5


