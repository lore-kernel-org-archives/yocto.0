Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34966E01443
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 01:22:27 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id E055340276;
	Tue,  4 Dec 2012 09:46:56 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 10:22:22 +0100
Message-Id: <76aa03e369ccd27b2d80399a4df41670788a2627.1354608536.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <43218d4bdb950e1f92123f4d3879ae0180d7c7bf.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
	<56d6fb92e4678d78e49b872c45dc678f635aad80.1354608536.git.timo.mueller@bmw-carit.de>
	<15320fff8e0ade9b2c6a8013b9e140aa9236aac7.1354608536.git.timo.mueller@bmw-carit.de>
	<260dbc9c47e40a233d1810979677e3cc1a70b957.1354608536.git.timo.mueller@bmw-carit.de>
	<49c4eff9354e4a871a58d8f3bc7f4ef90f4f734d.1354608536.git.timo.mueller@bmw-carit.de>
	<23825fe29ce2bbeef35b3fffa9bbb3d6c79d01f9.1354608536.git.timo.mueller@bmw-carit.de>
	<43218d4bdb950e1f92123f4d3879ae0180d7c7bf.1354608536.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 7/8] plugins/sdk.ide: Show yocto ui setting widget in project property page
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

The yocto property page in a project's properties dialog will now show
the yocto settings that are also used in the global yocto preferences
dialog.  On save the defined values will be stored to the project's
environment.
---
 .../preferences/YoctoSDKProjectPropertyPage.java   |   88 +++++++++++++++++++-
 1 files changed, 85 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 265c8dc..92d476a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -1,5 +1,6 @@
 /*******************************************************************************
  * Copyright (c) 2012 BMW Car IT GmbH.
+ * Copyright (c) 2010 Intel.
  * All rights reserved. This program and the accompanying materials
  * are made available under the terms of the Eclipse Public License v1.0
  * which accompanies this distribution, and is available at
@@ -7,23 +8,104 @@
  *
  * Contributors:
  * BMW Car IT GmbH - initial implementation
+ * Intel - initial API implementation (copied from YoctoSDKPreferencePage)
  *******************************************************************************/
 package org.yocto.sdk.ide.preferences;
 
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.runtime.IAdaptable;
+import org.eclipse.jface.dialogs.Dialog;
+import org.eclipse.swt.SWT;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.ui.IWorkbenchPropertyPage;
 import org.eclipse.ui.dialogs.PropertyPage;
+import org.yocto.sdk.ide.YoctoGeneralException;
+import org.yocto.sdk.ide.YoctoSDKUtils;
+import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
+import org.yocto.sdk.ide.YoctoUIElement;
+import org.yocto.sdk.ide.YoctoUISetting;
 
 public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		IWorkbenchPropertyPage {
 
-	public YoctoSDKProjectPropertyPage() {
-	}
+	private YoctoUISetting yoctoUISetting;
+	private IProject project = null;
 
 	@Override
 	protected Control createContents(Composite parent) {
-		return null;
+		YoctoUIElement uiElement = loadUIElement();
+		this.yoctoUISetting = new YoctoUISetting(uiElement);
+
+		initializeDialogUnits(parent);
+		final Composite result = new Composite(parent, SWT.NONE);
+
+		try {
+			yoctoUISetting.createComposite(result);
+			yoctoUISetting
+					.validateInput(SDKCheckRequestFrom.Preferences, false);
+			Dialog.applyDialogFont(result);
+			return result;
+		} catch (YoctoGeneralException e) {
+			System.out.println("Have you ever set Yocto Project Reference before?");
+			System.out.println(e.getMessage());
+			return result;
+		}
+	}
+
+	private IProject getProject() {
+		if (project != null) {
+			return project;
+		}
+
+		IAdaptable adaptable = getElement();
+		if (adaptable == null) {
+			throw new IllegalStateException("Project can only be retrieved after properties page has been set up.");
+		}
+
+		project = (IProject) adaptable.getAdapter(IProject.class);
+		return project;
+	}
+
+	private YoctoUIElement loadUIElement() {
+		YoctoUIElement uiElement = YoctoSDKUtils.getElemFromProjectEnv(getProject());
+
+		if (uiElement.getStrToolChainRoot().isEmpty()
+				|| uiElement.getStrTarget().isEmpty()) {
+			// No project environment has been set yet, use the Preference
+			// values
+			uiElement = YoctoSDKUtils.getElemFromStore();
+		}
+
+		return uiElement;
+	}
+
+	/*
+	 * @see PreferencePage#performDefaults()
+	 */
+	@Override
+	protected void performDefaults() {
+		YoctoUIElement defaultElement = YoctoSDKUtils.getDefaultElemFromStore();
+		yoctoUISetting.setCurrentInput(defaultElement);
+		super.performDefaults();
 	}
 
+	/*
+	 * @see IPreferencePage#performOk()
+	 */
+	@Override
+	public boolean performOk() {
+		try {
+			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
+
+			YoctoUIElement elem = yoctoUISetting.getCurrentInput();
+			YoctoSDKUtils.saveElemToProjectEnv(getProject(), elem);
+
+			return super.performOk();
+		} catch (YoctoGeneralException e) {
+			// TODO Auto-generated catch block
+			System.out.println(e.getMessage());
+			return false;
+		}
+	}
 }
-- 
1.7.7.6


