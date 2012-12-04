Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31B52E01439
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 01:22:27 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id C31CD40275;
	Tue,  4 Dec 2012 09:46:56 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 10:22:21 +0100
Message-Id: <43218d4bdb950e1f92123f4d3879ae0180d7c7bf.1354608536.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <23825fe29ce2bbeef35b3fffa9bbb3d6c79d01f9.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
	<56d6fb92e4678d78e49b872c45dc678f635aad80.1354608536.git.timo.mueller@bmw-carit.de>
	<15320fff8e0ade9b2c6a8013b9e140aa9236aac7.1354608536.git.timo.mueller@bmw-carit.de>
	<260dbc9c47e40a233d1810979677e3cc1a70b957.1354608536.git.timo.mueller@bmw-carit.de>
	<49c4eff9354e4a871a58d8f3bc7f4ef90f4f734d.1354608536.git.timo.mueller@bmw-carit.de>
	<23825fe29ce2bbeef35b3fffa9bbb3d6c79d01f9.1354608536.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 6/8] plugins/sdk.ide: Move modification of yocto project settings to utils class
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
X-List-Received-Date: Tue, 04 Dec 2012 09:22:27 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Saving yocto project settings is currently only used by the "Change
Yocto Project Settings" command. To allow other UI elements
(e.g. project property pages) to modify the yocto settings of a
project the functionality has been extraced to a separate method and
moved to the utils class.
---
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |   42 ++++++++++++++++++++
 .../yocto/sdk/ide/actions/ReconfigYoctoAction.java |   41 ++-----------------
 2 files changed, 46 insertions(+), 37 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index 16035fd..7ea4262 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -22,10 +22,12 @@ import java.util.HashMap;
 import java.util.Iterator;
 
 import org.eclipse.cdt.core.CCorePlugin;
+import org.eclipse.cdt.core.ConsoleOutputStream;
 import org.eclipse.cdt.core.envvar.IContributedEnvironment;
 import org.eclipse.cdt.core.envvar.IEnvironmentVariable;
 import org.eclipse.cdt.core.envvar.IEnvironmentVariableManager;
 import org.eclipse.cdt.core.model.CoreModel;
+import org.eclipse.cdt.core.resources.IConsole;
 import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;
 import org.eclipse.cdt.core.settings.model.ICProjectDescription;
 import org.eclipse.core.resources.IProject;
@@ -75,6 +77,7 @@ public class YoctoSDKUtils {
 	private static final String DEFAULT_SYSROOT_PREFIX = "--sysroot=";
 	private static final String LIBTOOL_SYSROOT_PREFIX = "--with-libtool-sysroot=";
 	private static final String SYSROOTS_DIR = "sysroots";
+	private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
 
 	public static SDKCheckResults checkYoctoSDK(YoctoUIElement elem) {		
 		
@@ -418,6 +421,45 @@ public class YoctoSDKUtils {
 			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
 		return elem;
 	}
+	
+	/* Save YoctoUIElement to project settings */
+	public static void saveElemToProjectEnv(IProject project, YoctoUIElement elem)
+	{
+		ConsoleOutputStream consoleOutStream = null;
+		
+		try {
+			YoctoSDKProjectNature.setEnvironmentVariables(project, elem);
+			YoctoSDKProjectNature.configureAutotoolsOptions(project);
+			IConsole console = CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
+			console.start(project);
+			consoleOutStream = console.getOutputStream();
+			String messages = YoctoSDKMessages.getString(CONSOLE_MESSAGE);
+			consoleOutStream.write(messages.getBytes());
+		}
+		catch (CoreException e)
+		{
+			System.out.println(e.getMessage());
+		}
+		catch (IOException e)
+		{
+			System.out.println(e.getMessage());
+		}
+		catch (YoctoGeneralException e)
+		{
+			System.out.println(e.getMessage());
+		}
+		finally {
+			if (consoleOutStream != null) {
+				try {
+					consoleOutStream.flush();
+					consoleOutStream.close();
+				}
+				catch (IOException e) {
+					// ignore
+				}
+			}
+		}
+	}
 
 	/* Load IDE wide POKY Preference settings into Preference Store */
 	public static void saveElemToStore(YoctoUIElement elem)
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java
index f68b552..d7021be 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java
@@ -10,29 +10,19 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.actions;
 
-import java.io.IOException;
-
-import org.eclipse.cdt.core.CCorePlugin;
-import org.eclipse.cdt.core.ConsoleOutputStream;
-import org.eclipse.cdt.core.resources.IConsole;
+import org.eclipse.cdt.internal.autotools.ui.actions.InvokeAction;
 import org.eclipse.core.resources.IContainer;
 import org.eclipse.core.resources.IProject;
-import org.eclipse.core.runtime.CoreException;
 import org.eclipse.jface.action.IAction;
-import org.eclipse.cdt.internal.autotools.ui.actions.InvokeAction;
 import org.eclipse.swt.widgets.Shell;
-
-import org.yocto.sdk.ide.YoctoGeneralException;
-import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKMessages;
-import org.yocto.sdk.ide.YoctoSDKProjectNature;
+import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
 
 
 @SuppressWarnings("restriction")
 public class ReconfigYoctoAction extends InvokeAction {
     private static final String DIALOG_TITLE  = "Menu.SDK.Dialog.Title";
-    private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
 
 	
 	public void run(IAction action) {
@@ -52,31 +42,8 @@ public class ReconfigYoctoAction extends InvokeAction {
 		SDKLocationDialog optionDialog = new SDKLocationDialog(new Shell(), YoctoSDKMessages.getString(DIALOG_TITLE), elem);
 		optionDialog.open();
 		elem = optionDialog.getElem();
-		if (elem.getStrToolChainRoot() != null) {			
-			try {
-				YoctoSDKProjectNature.setEnvironmentVariables(project, elem);
-				YoctoSDKProjectNature.configureAutotoolsOptions(project);
-				IConsole console = CCorePlugin.getDefault().getConsole("org.yocto.sdk.ide.YoctoConsole");
-				console.start(project);
-				ConsoleOutputStream consoleOutStream;
-				consoleOutStream = console.getOutputStream();
-				String messages = YoctoSDKMessages.getString(CONSOLE_MESSAGE);
-				consoleOutStream.write(messages.getBytes());
-				consoleOutStream.flush();
-				consoleOutStream.close();
-			}
-			catch (CoreException e)
-			{
-				System.out.println(e.getMessage());
-			}
-			catch (IOException e)
-			{
-				System.out.println(e.getMessage());
-			}
-			catch (YoctoGeneralException e)
-			{
-				System.out.println(e.getMessage());
-			}
+		if (elem.getStrToolChainRoot() != null) {
+			YoctoSDKUtils.saveElemToProjectEnv(project, elem);
 		}
 	}
 
-- 
1.7.7.6


