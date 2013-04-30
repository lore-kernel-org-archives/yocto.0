Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB268E0151C
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 07:56:04 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 30 Apr 2013 07:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,582,1363158000"; d="scan'208";a="234834819"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Apr 2013 07:56:03 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Apr 2013 17:36:31 +0300
Message-Id: <1367332592-2585-9-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 8/8] Refactor Latencytop and Perf Handler to remove duplicate code
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
X-List-Received-Date: Tue, 30 Apr 2013 14:56:05 -0000

- both latencytop and perf handler run the same initialization code
	-> moved  the common code to TerminalHandler
	-> added constants to hold dialog's titles and messages that are different for each handler

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/actions/IBaseConstants.java    |    3 +++
 .../sdk/remotetools/actions/LatencytopHandler.java |   22 +++++++-------------
 .../yocto/sdk/remotetools/actions/PerfHandler.java |   22 +++++++-------------
 .../sdk/remotetools/actions/TerminalHandler.java   |   16 ++++++++++----
 4 files changed, 31 insertions(+), 32 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/IBaseConstants.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/IBaseConstants.java
index ccab19c..d4bbe12 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/IBaseConstants.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/IBaseConstants.java
@@ -21,4 +21,7 @@ public interface IBaseConstants {
 	public static final String CONNECTION_NAME_LATENCYTOP = QUALIFIER + "connection.latencytop"; //$NON-NLS-1$
 	public static final String CONNECTION_NAME_PERF = QUALIFIER + "connection.perf"; //$NON-NLS-1$
 	public static final String CONNECTION_NAME_SYSTEMTAP = QUALIFIER + "connection.systemtap"; //$NON-NLS-1$
+
+	public static final String DIALOG_TITLE_LATENCYTOP = "Latencytop"; //$NON-NLS-1$
+	public static final String DIALOG_TITLE_PERF = "Perf"; //$NON-NLS-1$
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java
index 55773d6..ef77957 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java
@@ -10,27 +10,21 @@
  *******************************************************************************/
 package org.yocto.sdk.remotetools.actions;
 
-import org.eclipse.core.commands.ExecutionEvent;
-import org.eclipse.core.commands.ExecutionException;
-import org.eclipse.ui.IWorkbenchWindow;
-import org.eclipse.ui.handlers.HandlerUtil;
 
 public class LatencytopHandler extends TerminalHandler {
 	
 	private static String initCmd="export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin; cd; sudo latencytop\r";
 	
+	@Override
 	protected String getInitCmd() {
 		return initCmd;
 	}
-	
-	protected void initialize(ExecutionEvent event) throws ExecutionException {
-		IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
-		shell = window.getShell();
-
-		setting=new SimpleSettingDialog(
-				shell,
-				"Latencytop",
-				IBaseConstants.CONNECTION_NAME_LATENCYTOP
-				);
+	@Override
+	protected String getConnnectionName() {
+		return IBaseConstants.CONNECTION_NAME_LATENCYTOP;
+	}
+	@Override
+	protected String getDialogTitle() {
+		return IBaseConstants.DIALOG_TITLE_LATENCYTOP;
 	}
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PerfHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PerfHandler.java
index 22046e9..949bd46 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PerfHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/PerfHandler.java
@@ -10,27 +10,21 @@
  *******************************************************************************/
 package org.yocto.sdk.remotetools.actions;
 
-import org.eclipse.core.commands.ExecutionEvent;
-import org.eclipse.core.commands.ExecutionException;
-import org.eclipse.ui.IWorkbenchWindow;
-import org.eclipse.ui.handlers.HandlerUtil;
 
 public class PerfHandler extends TerminalHandler {
 
 	private static String initCmd="cd; perf\r";
 	
+	@Override
 	protected String getInitCmd() {
 		return initCmd;
 	}
-	
-	protected void initialize(ExecutionEvent event) throws ExecutionException {
-		IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
-		shell = window.getShell();
-		setting=new SimpleSettingDialog(
-				shell,
-				"Perf",
-				IBaseConstants.CONNECTION_NAME_LATENCYTOP
-				);
+	@Override
+	protected String getConnnectionName() {
+		return IBaseConstants.CONNECTION_NAME_PERF;
+	}
+	@Override
+	protected String getDialogTitle() {
+		return IBaseConstants.DIALOG_TITLE_PERF;
 	}
-
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
index a3fa409..84e38f2 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/TerminalHandler.java
@@ -13,12 +13,11 @@ package org.yocto.sdk.remotetools.actions;
 import org.eclipse.core.commands.AbstractHandler;
 import org.eclipse.core.commands.ExecutionEvent;
 import org.eclipse.core.commands.ExecutionException;
-import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.OperationCanceledException;
 import org.eclipse.jface.dialogs.ProgressMonitorDialog;
 import org.eclipse.jface.operation.IRunnableWithProgress;
-import org.eclipse.swt.widgets.Shell;
 import org.eclipse.rse.core.model.IHost;
 import org.eclipse.rse.internal.terminals.ui.TerminalServiceHelper;
 import org.eclipse.rse.internal.terminals.ui.views.RSETerminalConnector;
@@ -32,10 +31,13 @@ import org.eclipse.rse.ui.SystemBasePlugin;
 import org.eclipse.swt.custom.CTabItem;
 import org.eclipse.swt.events.DisposeEvent;
 import org.eclipse.swt.events.DisposeListener;
+import org.eclipse.swt.widgets.Shell;
 import org.eclipse.tm.internal.terminal.control.ITerminalViewControl;
 import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector;
-import org.yocto.sdk.remotetools.RSEHelper;
+import org.eclipse.ui.IWorkbenchWindow;
+import org.eclipse.ui.handlers.HandlerUtil;
 import org.yocto.sdk.remotetools.CommonHelper;
+import org.yocto.sdk.remotetools.RSEHelper;
 
 abstract public class TerminalHandler extends AbstractHandler {
 	
@@ -46,7 +48,13 @@ abstract public class TerminalHandler extends AbstractHandler {
 	protected String changeTerm="export TERM=vt100;";
 	
 	abstract protected String getInitCmd();
-	abstract protected void initialize(ExecutionEvent event) throws ExecutionException;
+	abstract protected String getConnnectionName();
+	abstract protected String getDialogTitle();
+	protected void initialize(ExecutionEvent event) throws ExecutionException{
+		IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
+		shell = window.getShell();
+		setting = new SimpleSettingDialog(shell, getDialogTitle(), getConnnectionName());
+	}
 	
 	protected ITerminalShell getTerminalShellFromTab(CTabItem item) {
         ITerminalShell terminalShell = null;
-- 
1.7.9.5


