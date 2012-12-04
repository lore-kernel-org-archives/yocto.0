Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 347D8E0143A
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 01:22:27 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 13C2C40283;
	Tue,  4 Dec 2012 09:46:57 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 10:22:23 +0100
Message-Id: <2dae601397b9cc56d0db54479423fda5b50c0a31.1354608536.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <76aa03e369ccd27b2d80399a4df41670788a2627.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
	<56d6fb92e4678d78e49b872c45dc678f635aad80.1354608536.git.timo.mueller@bmw-carit.de>
	<15320fff8e0ade9b2c6a8013b9e140aa9236aac7.1354608536.git.timo.mueller@bmw-carit.de>
	<260dbc9c47e40a233d1810979677e3cc1a70b957.1354608536.git.timo.mueller@bmw-carit.de>
	<49c4eff9354e4a871a58d8f3bc7f4ef90f4f734d.1354608536.git.timo.mueller@bmw-carit.de>
	<23825fe29ce2bbeef35b3fffa9bbb3d6c79d01f9.1354608536.git.timo.mueller@bmw-carit.de>
	<43218d4bdb950e1f92123f4d3879ae0180d7c7bf.1354608536.git.timo.mueller@bmw-carit.de>
	<76aa03e369ccd27b2d80399a4df41670788a2627.1354608536.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 8/8] plugins/sdk.ide: Open project properties instead of standalone yocto settings dialog
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
X-List-Received-Date: Tue, 04 Dec 2012 09:22:28 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

As the yocto settings can now be set via the project's property pages,
the "Change Yocto Project Settings" will now open the property page
instead of showing the a standalone dialog.
---
 .../yocto/sdk/ide/actions/ReconfigYoctoAction.java |   29 ++----
 .../yocto/sdk/ide/actions/SDKLocationDialog.java   |   89 --------------------
 2 files changed, 10 insertions(+), 108 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/SDKLocationDialog.java

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java
index d7021be..e255fd1 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ReconfigYoctoAction.java
@@ -14,16 +14,13 @@ import org.eclipse.cdt.internal.autotools.ui.actions.InvokeAction;
 import org.eclipse.core.resources.IContainer;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.jface.action.IAction;
-import org.eclipse.swt.widgets.Shell;
-import org.yocto.sdk.ide.YoctoSDKMessages;
-import org.yocto.sdk.ide.YoctoSDKUtils;
-import org.yocto.sdk.ide.YoctoUIElement;
+import org.eclipse.jface.preference.PreferenceDialog;
+import org.eclipse.ui.dialogs.PreferencesUtil;
+import org.yocto.sdk.ide.YoctoSDKPlugin;
 
 
 @SuppressWarnings("restriction")
 public class ReconfigYoctoAction extends InvokeAction {
-    private static final String DIALOG_TITLE  = "Menu.SDK.Dialog.Title";
-
 	
 	public void run(IAction action) {
 		IContainer container = getSelectedContainer();
@@ -32,19 +29,13 @@ public class ReconfigYoctoAction extends InvokeAction {
 
 		IProject project = container.getProject();
 
-		//Try to get the per project configuration first
-		YoctoUIElement elem = YoctoSDKUtils.getElemFromProjectEnv(project);
-		if (elem.getStrToolChainRoot().isEmpty()|| elem.getStrTarget().isEmpty()){
-			// No project environment has been set yet, use the Preference values
-			elem = YoctoSDKUtils.getElemFromStore();
-		} 
-
-		SDKLocationDialog optionDialog = new SDKLocationDialog(new Shell(), YoctoSDKMessages.getString(DIALOG_TITLE), elem);
-		optionDialog.open();
-		elem = optionDialog.getElem();
-		if (elem.getStrToolChainRoot() != null) {
-			YoctoSDKUtils.saveElemToProjectEnv(project, elem);
-		}
+		PreferenceDialog dialog =
+				PreferencesUtil.createPropertyDialogOn(YoctoSDKPlugin.getActiveWorkbenchShell(), 
+														project,
+														"org.yocto.sdk.ide.page",
+														null,
+														null);
+		dialog.open();
 	}
 
 	public void dispose() {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/SDKLocationDialog.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/SDKLocationDialog.java
deleted file mode 100644
index 439d720..0000000
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/SDKLocationDialog.java
+++ /dev/null
@@ -1,89 +0,0 @@
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
-import org.eclipse.jface.dialogs.Dialog;
-import org.eclipse.jface.dialogs.IDialogConstants;
-
-import org.eclipse.swt.SWT;
-import org.eclipse.swt.widgets.Composite;
-import org.eclipse.swt.widgets.Control;
-import org.eclipse.swt.widgets.Shell;
-
-import org.yocto.sdk.ide.YoctoGeneralException;
-import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
-import org.yocto.sdk.ide.YoctoUIElement;
-import org.yocto.sdk.ide.YoctoUISetting;
-
-public class SDKLocationDialog extends Dialog {
-	private String title;
-	private YoctoUISetting yoctoUISetting;
-	private YoctoUIElement elem;
-
-	public SDKLocationDialog(Shell parentShell, String dialogTitle, YoctoUIElement elem) {
-        super(parentShell);
-        this.setElem(elem);
-        this.yoctoUISetting = new YoctoUISetting(elem);
-        this.title = dialogTitle;
-        setShellStyle(getShellStyle() | SWT.RESIZE);
-        
-	}
-
-	@Override
-	protected Control createDialogArea(Composite parent) {
-		final Composite result = (Composite) super.createDialogArea(parent);
-				
-		try {
-			yoctoUISetting.createComposite(result);
-			yoctoUISetting.validateInput(SDKCheckRequestFrom.Menu, false);
-		} catch (YoctoGeneralException e) {
-			// TODO Auto-generated catch block
-			System.out.println("Have you ever set the project specific Yocto Settings?");
-			System.out.println(e.getMessage());
-		}
-
-		return result;
-	}
-
-
-	@Override
-	protected void configureShell(Shell newShell) {
-		super.configureShell(newShell);
-		newShell.setText(title);
-	}
-	
-	protected void buttonPressed(int buttonId) {
-		if (buttonId == IDialogConstants.OK_ID) {
-			//this should not be called in fact, because widget change should be called firstly!
-			try {
-				yoctoUISetting.validateInput(SDKCheckRequestFrom.Menu, true);
-				this.setElem(yoctoUISetting.getCurrentInput());
-				super.buttonPressed(buttonId);
-			} catch (YoctoGeneralException e) {
-				// TODO Auto-generated catch block
-				System.out.println(e.getMessage());
-			}
-		}
-		else if (buttonId == IDialogConstants.CANCEL_ID)
-		{
-			super.buttonPressed(buttonId);
-		}			
-	}
-
-	public void setElem(YoctoUIElement elem) {
-		this.elem = elem;
-	}
-
-	public YoctoUIElement getElem() {
-		return elem;
-	}
-
-}
-- 
1.7.7.6


