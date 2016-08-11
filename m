Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CED5FE0124F; Thu, 11 Aug 2016 16:30:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08917E0124D
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 16:30:27 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 11 Aug 2016 16:30:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,507,1464678000"; d="scan'208";a="1012911451"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2016 16:30:26 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 16:31:10 -0700
Message-Id: <1470958271-28279-8-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][PATCH 7/8] org.yocto.sdk.ide: remove InvokeAction usage
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
X-List-Received-Date: Thu, 11 Aug 2016 23:30:27 -0000

[YOCTO #9908]

Dropped from CDT 9.0.0 (that work is done by handlers now)
Suppress restriction warnings
Cleanup unused imports

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   1 -
 .../yocto/sdk/ide/actions/InvokeSyncAction.java    | 110 ---------------------
 .../yocto/sdk/ide/actions/ReconfigYoctoAction.java |  44 ---------
 .../sdk/ide/actions/ReconfigYoctoHandler.java      |  71 ++++---------
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   1 +
 5 files changed, 21 insertions(+), 206 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/InvokeSyncAction.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
index 8e48852..d1d74f2 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKChecker.java
@@ -22,7 +22,6 @@ import java.io.InputStream;
 import java.io.InputStreamReader;
 
 import org.eclipse.jface.preference.IPreferenceStore;
-import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/InvokeSyncAction.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/InvokeSyncAction.java
deleted file mode 100644
index f39d5fd..0000000
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/InvokeSyncAction.java
+++ /dev/null
@@ -1,110 +0,0 @@
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
-package org.yocto.sdk.ide.actions;
-
-import java.io.IOException;
-import java.io.OutputStream;
-import java.util.ArrayList;
-
-import org.eclipse.cdt.core.CommandLauncher;
-import org.eclipse.cdt.core.ConsoleOutputStream;
-import org.eclipse.cdt.core.envvar.IEnvironmentVariable;
-import org.eclipse.cdt.core.resources.IConsole;
-import org.eclipse.cdt.managedbuilder.core.IConfiguration;
-import org.eclipse.cdt.managedbuilder.core.IManagedBuildInfo;
-import org.eclipse.cdt.managedbuilder.core.ManagedBuildManager;
-import org.eclipse.core.resources.IProject;
-import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.IPath;
-import org.eclipse.core.runtime.NullProgressMonitor;
-import org.eclipse.core.runtime.Path;
-import org.eclipse.cdt.internal.autotools.core.AutotoolsNewMakeGenerator;
-import org.eclipse.cdt.internal.autotools.ui.actions.InvokeAction;
-import org.eclipse.cdt.internal.autotools.ui.actions.InvokeMessages;
-
-import org.yocto.sdk.ide.YoctoSDKPlugin;
-
-@SuppressWarnings("restriction")
-public class InvokeSyncAction extends InvokeAction {
-	protected void executeLocalConsoleCommand(final IConsole console, final String actionName, final String command,
-			final String[] argumentList, final IPath execDir, final String password) throws CoreException, IOException {
-		
-		String errMsg = null;
-		IProject project = getSelectedContainer().getProject();
-		// Get a build console for the project
-		ConsoleOutputStream consoleOutStream = console.getOutputStream();
-		// FIXME: we want to remove need for ManagedBuilderManager, but how do we
-		// get environment variables.
-		IManagedBuildInfo info = ManagedBuildManager.getBuildInfo(project);
-		IConfiguration cfg = info.getDefaultConfiguration();
-
-		StringBuffer buf = new StringBuffer();
-		String[] consoleHeader = new String[3];
-
-		consoleHeader[0] = actionName;
-		consoleHeader[1] = cfg.getName();
-		consoleHeader[2] = project.getName();
-		buf.append(System.getProperty("line.separator", "\n")); //$NON-NLS-1$	//$NON-NLS-2$
-		String invokeMsg = InvokeMessages.getFormattedString("InvokeAction.console.message", //$NON-NLS-1$
-				new String[]{actionName, execDir.toString()}); //$NON-NLS-1$
-		buf.append(invokeMsg);
-		buf.append(System.getProperty("line.separator", "\n")); //$NON-NLS-1$	//$NON-NLS-2$
-		buf.append(System.getProperty("line.separator", "\n")); //$NON-NLS-1$	//$NON-NLS-2$
-		consoleOutStream.write(buf.toString().getBytes());
-		consoleOutStream.flush();
-		
-		ArrayList<String> additionalEnvs = new ArrayList<String>();
-		String strippedCommand = AutotoolsNewMakeGenerator.stripEnvVars(command, additionalEnvs);
-		// Get a launcher for the config command
-		CommandLauncher launcher = new CommandLauncher();
-		// Set the environment
-		IEnvironmentVariable variables[] = ManagedBuildManager
-				.getEnvironmentVariableProvider().getVariables(cfg, true);
-		String[] env = null;
-		ArrayList<String> envList = new ArrayList<String>();
-		if (variables != null) {
-			for (int i = 0; i < variables.length; i++) {
-				envList.add(variables[i].getName()
-						+ "=" + variables[i].getValue()); //$NON-NLS-1$
-			}
-			// add any additional environment variables specified ahead of script
-			if (additionalEnvs.size() > 0)
-				envList.addAll(additionalEnvs); 
-			env = (String[]) envList.toArray(new String[envList.size()]);
-		}
-		OutputStream stdout = consoleOutStream;
-		OutputStream stderr = consoleOutStream;
-
-		launcher.showCommand(true);
-		// Run the shell script via shell command.
-		Process proc = launcher.execute(new Path(strippedCommand), argumentList, env,
-					execDir, new NullProgressMonitor());
-
-		if (proc != null) {
-			// Close the input of the process since we will never write to it
-			OutputStream out = proc.getOutputStream();
-			if (!password.isEmpty()) {
-				out.write(password.getBytes());
-				out.write("\n".getBytes());
-			}
-			out.close();
-			
-			if (launcher.waitAndRead(stdout, stderr) != CommandLauncher.OK) {
-				errMsg = launcher.getErrorMessage();
-			}
-		} else {
-			errMsg = launcher.getErrorMessage();
-		}
-		
-		if (errMsg != null)
-			YoctoSDKPlugin.logErrorMessage(errMsg);	
-	}	
-}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java
deleted file mode 100644
index e255fd1..0000000
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java
+++ /dev/null
@@ -1,44 +0,0 @@
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
-package org.yocto.sdk.ide.actions;
-
-import org.eclipse.cdt.internal.autotools.ui.actions.InvokeAction;
-import org.eclipse.core.resources.IContainer;
-import org.eclipse.core.resources.IProject;
-import org.eclipse.jface.action.IAction;
-import org.eclipse.jface.preference.PreferenceDialog;
-import org.eclipse.ui.dialogs.PreferencesUtil;
-import org.yocto.sdk.ide.YoctoSDKPlugin;
-
-
-@SuppressWarnings("restriction")
-public class ReconfigYoctoAction extends InvokeAction {
-	
-	public void run(IAction action) {
-		IContainer container = getSelectedContainer();
-		if (container == null)
-			return;
-
-		IProject project = container.getProject();
-
-		PreferenceDialog dialog =
-				PreferencesUtil.createPropertyDialogOn(YoctoSDKPlugin.getActiveWorkbenchShell(), 
-														project,
-														"org.yocto.sdk.ide.page",
-														null,
-														null);
-		dialog.open();
-	}
-
-	public void dispose() {
-
-	}
-}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoHandler.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoHandler.java
index 6d508d3..c6c842b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoHandler.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoHandler.java
@@ -10,18 +10,14 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.actions;
 
-import java.lang.reflect.Method;
-
 import org.eclipse.core.commands.ExecutionEvent;
 import org.eclipse.core.commands.ExecutionException;
-import org.eclipse.core.expressions.IEvaluationContext;
 import org.eclipse.core.resources.IContainer;
-import org.eclipse.core.runtime.IStatus;
-import org.eclipse.core.runtime.Status;
-import org.eclipse.jface.dialogs.ErrorDialog;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.jface.preference.PreferenceDialog;
 import org.eclipse.cdt.internal.autotools.ui.actions.AbstractAutotoolsHandler;
-import org.eclipse.cdt.internal.autotools.ui.actions.InvokeAction;
-import org.eclipse.swt.widgets.Display;
+import org.eclipse.swt.widgets.Shell;
+import org.eclipse.ui.dialogs.PreferencesUtil;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 
 
@@ -29,50 +25,23 @@ import org.yocto.sdk.ide.YoctoSDKPlugin;
 public class ReconfigYoctoHandler extends AbstractAutotoolsHandler {
 
 	public Object execute(ExecutionEvent event) throws ExecutionException {
-		ReconfigYoctoAction action = new ReconfigYoctoAction();
-		Method method = null;
+		return execute1(event);
+	}
+
+	@Override
+	protected void run(Shell arg0) {
+		IContainer container = getSelectedContainer();
+		if (container == null)
+			return;
 
-		try {
-			/*
-			 * This is hack to workaround upstream eclipse bug #370288
-			 */
-			Class [] params = {ExecutionEvent.class, InvokeAction.class};
-			method = AbstractAutotoolsHandler.class.getDeclaredMethod("execute",params );
-		} catch (NoSuchMethodException e) {
-			//no such method, old version of plugin org.eclipse.linuxtools.autotools.ui
-			method = null;
-		} catch (Exception e) {
-			throw new ExecutionException(e.getMessage(), e);
-		}
+		IProject project = container.getProject();
 
-		if (method != null) {
-			//new version
-			Object [] params = {event, action};
-			try {
-				return method.invoke(this, params);
-			}catch (Exception e) {
-				throw new ExecutionException(e.getMessage(), e);
-			}
-		} else {
-			//old version
-			//display a dialog to warn the user
-			Display.getDefault().syncExec(new Runnable() {
-				public void run() {
-					ErrorDialog.openError(null, "Change Yocto Project Settings", "Please update the plugin of \"Autotools support for CDT\"!", 
-							new Status(IStatus.WARNING,YoctoSDKPlugin.PLUGIN_ID,"old version of plugin \"Autotools support for CDT\" detected."));
-				}
-			});
-			//try to display the dialog in the old way
-			Object o = event.getApplicationContext();
-			if (o instanceof IEvaluationContext) {
-				IContainer container = getContainer((IEvaluationContext)o);
-				if (container != null) {
-					action.setSelectedContainer(container);
-					action.run(null);
-				}
-			}
-		}
-		
-		return null;
+		PreferenceDialog dialog =
+				PreferencesUtil.createPropertyDialogOn(YoctoSDKPlugin.getActiveWorkbenchShell(),
+														project,
+														"org.yocto.sdk.ide.page",
+														null,
+														null);
+		dialog.open();
 	}
 }
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
index ce80d77..db63639 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
@@ -21,6 +21,7 @@ import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
+@SuppressWarnings("restriction")
 public class YoctoSDKAutotoolsProjectNature extends YoctoSDKProjectNature {
 	public static final  String YoctoSDK_AUTOTOOLS_NATURE_ID = YoctoSDKPlugin.getUniqueIdentifier() + ".YoctoSDKAutotoolsNature";
 
-- 
2.7.4


