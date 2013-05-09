Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D652E014D5
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 14:39:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 May 2013 14:37:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,643,1363158000"; d="scan'208";a="334517997"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by orsmga002.jf.intel.com with ESMTP; 09 May 2013 14:39:18 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 10 May 2013 00:19:13 +0300
Message-Id: <1368134354-5816-7-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368134354-5816-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368134354-5816-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 6/6] Move TerminalHandler to org.yocto.remote.utils
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
X-List-Received-Date: Thu, 09 May 2013 21:39:48 -0000

- move TerminalHandler to separate plugin since it performs actions that are best suited for remote utilities
- remove TerminalHandler from remotetools plugin
- modify org.yocto.sdk.remotetools to use implementation from org.yocto.remote.utils

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |    9 +-
 .../org/yocto/remote/utils/TerminalHandler.java    |  128 ++++++++++++++++++++
 .../sdk/remotetools/actions/DialogHandler.java     |    1 +
 .../sdk/remotetools/actions/TerminalHandler.java   |  128 --------------------
 4 files changed, 137 insertions(+), 129 deletions(-)
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java

diff --git a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
index 6c4fb35..a9b65f7 100644
--- a/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
@@ -11,11 +11,18 @@ Bundle-RequiredExecutionEnvironment: JavaSE-1.6
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
 >>>>>>> 2504c89... Move RSEHelper to a separate plugin
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
new file mode 100644
index 0000000..e28ae79
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/TerminalHandler.java
@@ -0,0 +1,128 @@
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
+package org.yocto.remote.utils;
+
+import org.eclipse.core.commands.AbstractHandler;
+import org.eclipse.core.commands.ExecutionException;
+import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.NullProgressMonitor;
+import org.eclipse.core.runtime.OperationCanceledException;
+import org.eclipse.jface.dialogs.ProgressMonitorDialog;
+import org.eclipse.jface.operation.IRunnableWithProgress;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.rse.internal.terminals.ui.TerminalServiceHelper;
+import org.eclipse.rse.internal.terminals.ui.views.RSETerminalConnector;
+import org.eclipse.rse.internal.terminals.ui.views.TerminalViewTab;
+import org.eclipse.rse.internal.terminals.ui.views.TerminalViewer;
+import org.eclipse.rse.internal.terminals.ui.views.TerminalsUI;
+import org.eclipse.rse.services.terminals.ITerminalShell;
+import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem;
+import org.eclipse.rse.subsystems.terminals.core.elements.TerminalElement;
+import org.eclipse.rse.ui.SystemBasePlugin;
+import org.eclipse.swt.custom.CTabItem;
+import org.eclipse.swt.events.DisposeEvent;
+import org.eclipse.swt.events.DisposeListener;
+import org.eclipse.swt.widgets.Shell;
+import org.eclipse.tm.internal.terminal.control.ITerminalViewControl;
+import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector;
+
+abstract public class TerminalHandler extends AbstractHandler {
+
+
+	protected Shell shell;
+
+	protected String changeTerm = "export TERM=vt100;";
+
+	abstract protected String getInitCmd();
+	abstract protected String getConnnectionName();
+	abstract protected String getDialogTitle();
+
+	protected ITerminalShell getTerminalShellFromTab(CTabItem item) {
+        ITerminalShell terminalShell = null;
+        ITerminalViewControl terminalViewControl = (ITerminalViewControl) item
+                .getData(TerminalViewTab.DATA_KEY_CONTROL);
+        ITerminalConnector terminalConnector = terminalViewControl
+                .getTerminalConnector();
+        if (terminalConnector instanceof RSETerminalConnector) {
+            RSETerminalConnector rseTerminalConnector = (RSETerminalConnector) terminalConnector;
+            terminalShell = rseTerminalConnector.getTerminalHostShell();
+        }
+        return terminalShell;
+    }
+
+	protected boolean preProcess(final ITerminalServiceSubSystem terminalSubSystem) {
+		if (!terminalSubSystem.isConnected()) {
+			try {
+				ProgressMonitorDialog dialog = new ProgressMonitorDialog(shell);
+				dialog.run(true, true, new IRunnableWithProgress(){
+				    @Override
+					public void run(IProgressMonitor monitor) {
+				        monitor.beginTask("Connecting to remote target ...", 100);
+				        try {
+				        terminalSubSystem.connect(new NullProgressMonitor(), false);
+				        monitor.done();
+				        } catch (Exception e) {
+				        	CommonHelper.showErrorDialog("Connection failure", null, e.getMessage());
+				        	monitor.done();
+
+				        }
+				    }
+				});
+			} catch (OperationCanceledException e) {
+				// user canceled, return silently
+				return false;
+			} catch (Exception e) {
+				SystemBasePlugin.logError(e.getLocalizedMessage(), e);
+				return false;
+			}
+		} else
+			return true;
+		return false;
+	}
+
+	public void execute(IHost host) throws ExecutionException {
+
+		final ITerminalServiceSubSystem terminalSubSystem = RSEHelper.getTerminalSubSystem(host);
+
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
+						@Override
+						public void widgetDisposed(DisposeEvent e) {
+							Object source = e.getSource();
+							if (source instanceof CTabItem) {
+								CTabItem currentItem = (CTabItem) source;
+								ITerminalShell shell=getTerminalShellFromTab(currentItem);
+								if(shell!=null) {
+									shell.exit();
+								}
+							}
+						}
+					});
+				}catch(Exception e) {
+					e.printStackTrace();
+				}
+				TerminalElement element = TerminalServiceHelper
+						.createTerminalElement(tab, terminalSubSystem);
+				terminalSubSystem.addChild(element);
+
+			}
+		}
+	}
+
+}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
index 67d33ba..5031e70 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
@@ -15,6 +15,7 @@ import org.eclipse.core.commands.ExecutionException;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.IWorkbenchWindow;
 import org.eclipse.ui.handlers.HandlerUtil;
+import org.yocto.remote.utils.TerminalHandler;
 
 abstract public class DialogHandler extends TerminalHandler {
 
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
deleted file mode 100644
index ae04dc9..0000000
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
+++ /dev/null
@@ -1,128 +0,0 @@
-/*******************************************************************************
- * Copyright (c) 2010 Intel Corporation.
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Intel - initial API and implementation
- *******************************************************************************/
-package org.yocto.sdk.remotetools.actions;
-
-import org.eclipse.core.commands.AbstractHandler;
-import org.eclipse.core.commands.ExecutionException;
-import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.NullProgressMonitor;
-import org.eclipse.core.runtime.OperationCanceledException;
-import org.eclipse.jface.dialogs.ProgressMonitorDialog;
-import org.eclipse.jface.operation.IRunnableWithProgress;
-import org.eclipse.rse.core.model.IHost;
-import org.eclipse.rse.internal.terminals.ui.TerminalServiceHelper;
-import org.eclipse.rse.internal.terminals.ui.views.RSETerminalConnector;
-import org.eclipse.rse.internal.terminals.ui.views.TerminalViewTab;
-import org.eclipse.rse.internal.terminals.ui.views.TerminalViewer;
-import org.eclipse.rse.internal.terminals.ui.views.TerminalsUI;
-import org.eclipse.rse.services.terminals.ITerminalShell;
-import org.eclipse.rse.subsystems.terminals.core.ITerminalServiceSubSystem;
-import org.eclipse.rse.subsystems.terminals.core.elements.TerminalElement;
-import org.eclipse.rse.ui.SystemBasePlugin;
-import org.eclipse.swt.custom.CTabItem;
-import org.eclipse.swt.events.DisposeEvent;
-import org.eclipse.swt.events.DisposeListener;
-import org.eclipse.swt.widgets.Shell;
-import org.eclipse.tm.internal.terminal.control.ITerminalViewControl;
-import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector;
-import org.yocto.remote.utils.CommonHelper;
-import org.yocto.remote.utils.RSEHelper;
-
-abstract public class TerminalHandler extends AbstractHandler {
-	
-	
-	protected Shell shell;
-	
-	protected String changeTerm="export TERM=vt100;";
-	
-	abstract protected String getInitCmd();
-	abstract protected String getConnnectionName();
-	abstract protected String getDialogTitle();
-	
-	protected ITerminalShell getTerminalShellFromTab(CTabItem item) {
-        ITerminalShell terminalShell = null;
-        ITerminalViewControl terminalViewControl = (ITerminalViewControl) item
-                .getData(TerminalViewTab.DATA_KEY_CONTROL);
-        ITerminalConnector terminalConnector = terminalViewControl
-                .getTerminalConnector();
-        if (terminalConnector instanceof RSETerminalConnector) {
-            RSETerminalConnector rseTerminalConnector = (RSETerminalConnector) terminalConnector;
-            terminalShell = rseTerminalConnector.getTerminalHostShell();
-        }
-        return terminalShell;
-    }
-
-	protected boolean preProcess(final ITerminalServiceSubSystem terminalSubSystem) {
-		if (!terminalSubSystem.isConnected()) {
-			try {
-				ProgressMonitorDialog dialog = new ProgressMonitorDialog(shell);
-				dialog.run(true, true, new IRunnableWithProgress(){
-				    public void run(IProgressMonitor monitor) {
-				        monitor.beginTask("Connecting to remote target ...", 100);
-				        try {
-				        terminalSubSystem.connect(new NullProgressMonitor(), false);
-				        monitor.done();
-				        } catch (Exception e) {
-				        	CommonHelper.showErrorDialog("Connection failure", null, e.getMessage());
-				        	monitor.done();
-				        	
-				        }
-				    }
-				});
-			} catch (OperationCanceledException e) {
-				// user canceled, return silently
-				return false;
-			} catch (Exception e) {
-				SystemBasePlugin.logError(e.getLocalizedMessage(), e);
-				return false;
-			}
-		} else
-			return true;
-		return false;
-	}
-	
-	public void execute(IHost host) throws ExecutionException {
-		
-		final ITerminalServiceSubSystem terminalSubSystem = RSEHelper.getTerminalSubSystem(host);
-		
-		if (terminalSubSystem != null) {
-			TerminalsUI terminalsUI = TerminalsUI.getInstance();
-			TerminalViewer viewer = terminalsUI.activateTerminalsView();
-			if (preProcess(terminalSubSystem)) {
-				CTabItem tab = viewer.getTabFolder().createTabItem(
-						terminalSubSystem.getHost(), changeTerm + getInitCmd());
-				//since RSETerminalConnector not exit the shell during the diconnection,
-				//we have manually exit it here
-				try {
-					tab.addDisposeListener(new DisposeListener() {
-						public void widgetDisposed(DisposeEvent e) {
-							Object source = e.getSource();
-							if (source instanceof CTabItem) {
-								CTabItem currentItem = (CTabItem) source;
-								ITerminalShell shell=getTerminalShellFromTab(currentItem);
-								if(shell!=null) {
-									shell.exit();
-								}
-							}
-						}
-					});
-				}catch(Exception e) {
-					e.printStackTrace();
-				}
-				TerminalElement element = TerminalServiceHelper
-						.createTerminalElement(tab, terminalSubSystem);
-				terminalSubSystem.addChild(element);
-
-			}
-		}
-	}
-
-}
-- 
1.7.9.5


