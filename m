Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2B2CE01507
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 01:14:02 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 May 2013 01:13:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,639,1363158000"; d="scan'208";a="239011823"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 09 May 2013 01:13:24 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 May 2013 10:53:20 +0300
Message-Id: <1368086011-24931-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368086011-24931-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368086011-24931-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 01/12] Separate remote logic from GUI login in TerminalHandler implementation
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
X-List-Received-Date: Thu, 09 May 2013 08:14:04 -0000

- TerminalHandler is used by both Perf and Latencytop handlers for running remote commands and for holding the settings dialog
	- in order to separate the common functionality for running remote commands we need to separate the GUI from the utilitary funtions
	- create DialogHandler that extends TerminalHandler to hold the GUI settings
	- clean-up code in TerminalHandler:
		- remove references to settings dialog
		- modify execute method and keep only remote control code
	- change Perf and Latencytop's parent to DialogHandler
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/actions/DialogHandler.java     |   41 +++++++++
 .../sdk/remotetools/actions/LatencytopHandler.java |    2 +-
 .../yocto/sdk/remotetools/actions/PerfHandler.java |    2 +-
 .../sdk/remotetools/actions/TerminalHandler.java   |   93 ++++++--------------
 4 files changed, 70 insertions(+), 68 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
new file mode 100644
index 0000000..d5c3583
--- /dev/null
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
@@ -0,0 +1,41 @@
+/*******************************************************************************
+ * Copyright (c) 2010 Intel Corporation.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * Intel - initial API and implementation
+ *******************************************************************************/
+package org.yocto.sdk.remotetools.actions;
+
+import org.eclipse.core.commands.ExecutionEvent;
+import org.eclipse.core.commands.ExecutionException;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.ui.IWorkbenchWindow;
+import org.eclipse.ui.handlers.HandlerUtil;
+
+abstract public class DialogHandler extends TerminalHandler {
+	
+	protected BaseSettingDialog setting;
+	
+	abstract protected String getDialogTitle();
+	
+	protected void initialize(ExecutionEvent event) throws ExecutionException{
+		IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
+		shell = window.getShell();
+		setting = new SimpleSettingDialog(shell, getDialogTitle(), getConnnectionName());
+	}
+	
+	@Override
+	public Object execute(ExecutionEvent event) throws ExecutionException {
+		initialize(event);
+		
+		if(setting.open() == BaseSettingDialog.OK) {
+			IHost currentHost = setting.getHost();
+			execute(currentHost);
+		}
+		return null;
+	}
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java
index ef77957..e931388 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java
@@ -11,7 +11,7 @@
 package org.yocto.sdk.remotetools.actions;
 
 
-public class LatencytopHandler extends TerminalHandler {
+public class LatencytopHandler extends DialogHandler {
 	
 	private static String initCmd="export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin; cd; sudo latencytop\r";
 	
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PerfHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PerfHandler.java
index 949bd46..f3f9e49 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PerfHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PerfHandler.java
@@ -11,7 +11,7 @@
 package org.yocto.sdk.remotetools.actions;
 
 
-public class PerfHandler extends TerminalHandler {
+public class PerfHandler extends DialogHandler {
 
 	private static String initCmd="cd; perf\r";
 	
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
index 84e38f2..9e7c169 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
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
 import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector;
-import org.eclipse.ui.IWorkbenchWindow;
-import org.eclipse.ui.handlers.HandlerUtil;
 import org.yocto.sdk.remotetools.CommonHelper;
 import org.yocto.sdk.remotetools.RSEHelper;
 
 abstract public class TerminalHandler extends AbstractHandler {
 	
-	protected BaseSettingDialog setting;
 	
 	protected Shell shell;
 	
@@ -50,11 +46,6 @@ abstract public class TerminalHandler extends AbstractHandler {
 	abstract protected String getInitCmd();
 	abstract protected String getConnnectionName();
 	abstract protected String getDialogTitle();
-	protected void initialize(ExecutionEvent event) throws ExecutionException{
-		IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
-		shell = window.getShell();
-		setting = new SimpleSettingDialog(shell, getDialogTitle(), getConnnectionName());
-	}
 	
 	protected ITerminalShell getTerminalShellFromTab(CTabItem item) {
         ITerminalShell terminalShell = null;
@@ -98,70 +89,40 @@ abstract public class TerminalHandler extends AbstractHandler {
 		return false;
 	}
 	
-	public Object execute(ExecutionEvent event) throws ExecutionException {
+	public void execute(IHost host) throws ExecutionException {
 		
-		initialize(event);
+		final ITerminalServiceSubSystem terminalSubSystem = RSEHelper.getTerminalSubSystem(host);
 		
-		if(setting.open()==BaseSettingDialog.OK) {
-			IHost currentHost = setting.getHost();
-			final ITerminalServiceSubSystem terminalSubSystem = RSEHelper.getTerminalSubSystem(currentHost);
-			
-			if (terminalSubSystem != null) {
-				TerminalsUI terminalsUI = TerminalsUI.getInstance();
-				TerminalViewer viewer = terminalsUI.activateTerminalsView();
-				if (preProcess(terminalSubSystem)) {
-				/*if (!terminalSubSystem.isConnected()) {
-					try {
-						ProgressMonitorDialog dialog = new ProgressMonitorDialog(shell);
-						dialog.run(true, true, new IRunnableWithProgress(){
-						    public void run(IProgressMonitor monitor) {
-						        monitor.beginTask("Connecting to remote target ...", 100);
-						        try {
-						        terminalSubSystem.connect(new NullProgressMonitor(), false);
-						        monitor.done();
-						        } catch (Exception e) {
-						        	CommonHelper.showErrorDialog("Connection failure", null, e.getMessage());
-						        	monitor.done();
-						        }
-						    }
-						});
-					} catch (OperationCanceledException e) {
-						// user canceled, return silently
-						return null;
-					} catch (Exception e) {
-						SystemBasePlugin.logError(e.getLocalizedMessage(), e);
-					}
-				}
-				if (terminalSubSystem.isConnected()) {*/
-					CTabItem tab = viewer.getTabFolder().createTabItem(
-							terminalSubSystem.getHost(), changeTerm + getInitCmd());
-					//since RSETerminalConnector not exit the shell during the diconnection,
-					//we have manually exit it here
-					try {
-						tab.addDisposeListener(new DisposeListener() {
-							public void widgetDisposed(DisposeEvent e) {
-								
-								Object source = e.getSource();
-								if (source instanceof CTabItem) {
-									CTabItem currentItem = (CTabItem) source;
-									ITerminalShell shell=getTerminalShellFromTab(currentItem);
-									if(shell!=null) {
-										shell.exit();
-									}
+		if (terminalSubSystem != null) {
+			TerminalsUI terminalsUI = TerminalsUI.getInstance();
+			TerminalViewer viewer = terminalsUI.activateTerminalsView();
+			if (preProcess(terminalSubSystem)) {
+				CTabItem tab = viewer.getTabFolder().createTabItem(
+						terminalSubSystem.getHost(), changeTerm + getInitCmd());
+				//since RSETerminalConnector not exit the shell during the diconnection,
+				//we have manually exit it here
+				try {
+					tab.addDisposeListener(new DisposeListener() {
+						public void widgetDisposed(DisposeEvent e) {
+							Object source = e.getSource();
+							if (source instanceof CTabItem) {
+								CTabItem currentItem = (CTabItem) source;
+								ITerminalShell shell=getTerminalShellFromTab(currentItem);
+								if(shell!=null) {
+									shell.exit();
 								}
 							}
-						});
-					}catch(Exception e) {
-						e.printStackTrace();
-					}
-					TerminalElement element = TerminalServiceHelper
-							.createTerminalElement(tab, terminalSubSystem);
-					terminalSubSystem.addChild(element);
-	
+						}
+					});
+				}catch(Exception e) {
+					e.printStackTrace();
 				}
+				TerminalElement element = TerminalServiceHelper
+						.createTerminalElement(tab, terminalSubSystem);
+				terminalSubSystem.addChild(element);
+
 			}
 		}
-		return null;
 	}
 
 }
-- 
1.7.9.5


