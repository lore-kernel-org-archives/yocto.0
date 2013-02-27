Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 41E24E01400
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 06:37:19 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 971F5400F8;
	Wed, 27 Feb 2013 14:55:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 27 Feb 2013 15:37:14 +0100
Message-Id: <33091cc0031551c2c58e14f6d62ebf429ace2fa6.1361954280.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <33b90639b31373dc0d65e23cdb51cc80b3e81b6e.1361954280.git.timo.mueller@bmw-carit.de>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
	<1d77db41ae01d101639ebe358965aa2a43682052.1361954280.git.timo.mueller@bmw-carit.de>
	<33b90639b31373dc0d65e23cdb51cc80b3e81b6e.1361954280.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1361954280.git.timo.mueller@bmw-carit.de>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 3/5] plugins/sdk.ide: Show SDK check errors in message area
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
X-List-Received-Date: Wed, 27 Feb 2013 14:37:19 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

If settings made by the user do not pass the SDK check the error
message was not shown in eclipse but was printed to system out which
was never visible by the user.

The error is now shown in the message area of the property or preference
page if the check fails.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      | 43 ++++-------
 .../ide/preferences/YoctoSDKPreferencePage.java    | 84 ++++++++++-----------
 .../preferences/YoctoSDKProjectPropertyPage.java   | 85 +++++++++++-----------
 3 files changed, 97 insertions(+), 115 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index 74cfd69..2affe82 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -336,40 +336,29 @@ public class YoctoUISetting {
 		textQemuOption.setText(elem.getStrQemuOption());
 		textSysrootLoc.setText(elem.getStrSysrootLoc());
 
-		try {
-			validateInput(SDKCheckRequestFrom.Preferences, false);
-		} catch (YoctoGeneralException e) {
+		SDKCheckResults result = validateInput(SDKCheckRequestFrom.Preferences, false);
+		if (result != SDKCheckResults.SDK_PASS) {
 			System.out.println("Have you ever set Yocto Project Reference before?");
-			System.out.println(e.getMessage());
+			System.out.println(YoctoSDKChecker.getErrorMessage(result, SDKCheckRequestFrom.Other));
 		}
 	}
 
-	public boolean validateInput(SDKCheckRequestFrom from, boolean bPrompt) throws YoctoGeneralException {
-		YoctoUIElement elem = getCurrentInput();
-		boolean pass = true;
-		String strErrorMessage;
-
-		SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(elem);
+	public SDKCheckResults validateInput(SDKCheckRequestFrom from, boolean showErrorDialog) {
+		SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(getCurrentInput());
 
 		//Show Error Message on the Label to help users.
-		if (result != SDKCheckResults.SDK_PASS) {
-			strErrorMessage = YoctoSDKChecker.getErrorMessage(result, from);
-			pass = false;
-			if (bPrompt)
-			{
-				Display display = Display.getCurrent();
-				Shell shell = new Shell(display);
-				MessageBox msgBox = new MessageBox(shell, SWT.ICON_ERROR | SWT.OK);
-				msgBox.setText("Yocto Project Configuration Error");
-				msgBox.setMessage(strErrorMessage);
-				msgBox.open();
-				if (shell != null)
-					shell.dispose();
-			}
-
-			throw new YoctoGeneralException(strErrorMessage);
+		if ((result != SDKCheckResults.SDK_PASS) && showErrorDialog) {
+			Display display = Display.getCurrent();
+			Shell shell = new Shell(display);
+			MessageBox msgBox = new MessageBox(shell, SWT.ICON_ERROR | SWT.OK);
+			msgBox.setText("Yocto Project Configuration Error");
+			msgBox.setMessage(YoctoSDKChecker.getErrorMessage(result, from));
+			msgBox.open();
+			if (shell != null)
+				shell.dispose();
 		}
-		return pass;
+
+		return result;
 	}
 
 	public void setUIFormEnabledState(boolean isEnabled) {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index ef681a4..1a8c8ca 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -26,14 +26,14 @@ import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.ui.IWorkbench;
 import org.eclipse.ui.IWorkbenchPreferencePage;
-import org.yocto.sdk.ide.YoctoGeneralException;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoProfileSetting;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.YoctoSDKUtils;
-import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.YoctoUISetting;
 
@@ -75,60 +75,57 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
 	protected Control createContents(Composite parent) {
 		initializeDialogUnits(parent);
-		final Composite result= new Composite(parent, SWT.NONE);
-
-		yoctoProfileSetting.createComposite(result);
-
-		try {
-			yoctoUISetting.createComposite(result);
-			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
-			Dialog.applyDialogFont(result);
-			return result;
-		} catch (YoctoGeneralException e) {
-			System.out.println("Have you ever set Yocto Project Reference before?");
-			System.out.println(e.getMessage());
-			return result;
+		final Composite composite= new Composite(parent, SWT.NONE);
+
+		yoctoProfileSetting.createComposite(composite);
+		yoctoUISetting.createComposite(composite);
+
+		SDKCheckResults result = yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
+		if (result != SDKCheckResults.SDK_PASS) {
 		}
+
+		Dialog.applyDialogFont(composite);
+		return composite;
 	}
 
 	/*
 	 * @see IPreferencePage#performOk()
 	 */
 	public boolean performOk() {
-		try {
-			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
+		setErrorMessage(null);
 
-			YoctoUIElement savedElement = YoctoSDKUtils.getElemFromStore(getPreferenceStore());
-			YoctoUIElement modifiedElement = yoctoUISetting.getCurrentInput();
+		SDKCheckResults result = yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
+		if (result != SDKCheckResults.SDK_PASS) {
+			setErrorMessage(result.getMessage());
+			return false;
+		}
 
-			if (savedElement.equals(modifiedElement)) {
-				return true;
-			}
+		YoctoUIElement savedElement = YoctoSDKUtils.getElemFromStore(getPreferenceStore());
+		YoctoUIElement modifiedElement = yoctoUISetting.getCurrentInput();
 
-			YoctoProfileElement profileElement = yoctoProfileSetting.getCurrentInput();
-			HashSet<IProject> yoctoProjects = getAffectedProjects(profileElement.getSelectedProfile());
+		if (savedElement.equals(modifiedElement)) {
+			return true;
+		}
+
+		YoctoProfileElement profileElement = yoctoProfileSetting.getCurrentInput();
+		HashSet<IProject> yoctoProjects = getAffectedProjects(profileElement.getSelectedProfile());
 
-			if (!yoctoProjects.isEmpty()) {
-				boolean deleteConfirmed =
-						MessageDialog.openConfirm(null, YoctoSDKMessages.getString(UPDATE_DIALOG_TITLE),
-								YoctoSDKMessages.getFormattedString(UPDATE_DIALOG_MESSAGE, profileElement.getSelectedProfile()));
+		if (!yoctoProjects.isEmpty()) {
+			boolean deleteConfirmed =
+					MessageDialog.openConfirm(null, YoctoSDKMessages.getString(UPDATE_DIALOG_TITLE),
+							YoctoSDKMessages.getFormattedString(UPDATE_DIALOG_MESSAGE, profileElement.getSelectedProfile()));
 
-				if (!deleteConfirmed) {
-					return false;
-				}
+			if (!deleteConfirmed) {
+				return false;
 			}
+		}
 
-			YoctoSDKUtils.saveElemToStore(modifiedElement, getPreferenceStore());
-			YoctoSDKUtils.saveProfilesToDefaultStore(profileElement);
+		YoctoSDKUtils.saveElemToStore(modifiedElement, getPreferenceStore());
+		YoctoSDKUtils.saveProfilesToDefaultStore(profileElement);
 
-			updateProjects(yoctoProjects, modifiedElement);
+		updateProjects(yoctoProjects, modifiedElement);
 
-			return super.performOk();
-		} catch (YoctoGeneralException e) {
-			// TODO Auto-generated catch block
-			System.out.println(e.getMessage());
-			return false;
-		}
+		return super.performOk();
 	}
 
 	/*
@@ -144,10 +141,9 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		YoctoProfileElement profileElement = yoctoProfileSetting.getCurrentInput();
 		YoctoUIElement uiElement = yoctoUISetting.getCurrentInput();
 
-		try {
-			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
-		} catch (YoctoGeneralException e) {
-			// just abort saving, validateInput will show an error dialog
+		SDKCheckResults result = yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
+		if (result != SDKCheckResults.SDK_PASS) {
+			setErrorMessage(result.getMessage());
 			return;
 		}
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 551d3bd..ca148af 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -20,11 +20,11 @@ import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.ui.IWorkbenchPropertyPage;
 import org.eclipse.ui.dialogs.PropertyPage;
-import org.yocto.sdk.ide.YoctoGeneralException;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
@@ -63,32 +63,29 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		yoctoProjectSpecificSetting = new YoctoProjectSpecificSetting(yoctoProfileSetting, yoctoUISetting, this);
 
 		initializeDialogUnits(parent);
-		final Composite result = new Composite(parent, SWT.NONE);
-
-		yoctoProfileSetting.createComposite(result);
-		yoctoProjectSpecificSetting.createComposite(result);
-
-		try {
-			yoctoUISetting.createComposite(result);
-
-			if (useProjectSpecificSetting) {
-				yoctoProfileSetting.setUIFormEnabledState(false);
-				yoctoProjectSpecificSetting.setUseProjectSpecificSettings(true);
-				yoctoUISetting.setUIFormEnabledState(true);
-				yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
-			} else {
-				yoctoProfileSetting.setUIFormEnabledState(true);
-				yoctoProjectSpecificSetting.setUseProjectSpecificSettings(false);
-				yoctoUISetting.setUIFormEnabledState(false);
-			}
+		final Composite composite = new Composite(parent, SWT.NONE);
+
+		yoctoProfileSetting.createComposite(composite);
+		yoctoProjectSpecificSetting.createComposite(composite);
+		yoctoUISetting.createComposite(composite);
+
+		if (useProjectSpecificSetting) {
+			yoctoProfileSetting.setUIFormEnabledState(false);
+			yoctoProjectSpecificSetting.setUseProjectSpecificSettings(true);
+			yoctoUISetting.setUIFormEnabledState(true);
 
-			Dialog.applyDialogFont(result);
-			return result;
-		} catch (YoctoGeneralException e) {
-			System.out.println("Have you ever set Yocto Project Reference before?");
-			System.out.println(e.getMessage());
-			return result;
+			SDKCheckResults result = yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
+			if (result != SDKCheckResults.SDK_PASS) {
+				setErrorMessage(result.getMessage());
+			}
+		} else {
+			yoctoProfileSetting.setUIFormEnabledState(true);
+			yoctoProjectSpecificSetting.setUseProjectSpecificSettings(false);
+			yoctoUISetting.setUIFormEnabledState(false);
 		}
+
+		Dialog.applyDialogFont(composite);
+		return composite;
 	}
 
 	private IProject getProject() {
@@ -121,28 +118,28 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 	 */
 	@Override
 	public boolean performOk() {
-		try {
-			IProject project = getProject();
-
-			if (yoctoProjectSpecificSetting.isUsingProjectSpecificSettings()) {
-				yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
-
-				YoctoSDKUtils.saveUseProjectSpecificOptionToProjectPreferences(project, true);
-				YoctoSDKUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
-				YoctoSDKUtils.saveElemToProjectPreferences(yoctoUISetting.getCurrentInput(), project);
-			} else {
-				YoctoSDKUtils.saveUseProjectSpecificOptionToProjectPreferences(project, false);
-				YoctoSDKUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
-			}
+		setErrorMessage(null);
+
+		IProject project = getProject();
 
-			YoctoSDKUtils.saveElemToProjectEnv(yoctoUISetting.getCurrentInput(), getProject());
+		if (yoctoProjectSpecificSetting.isUsingProjectSpecificSettings()) {
+			SDKCheckResults result = yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
+			if (result != SDKCheckResults.SDK_PASS) {
+				setErrorMessage(result.getMessage());
+				return false;
+			}
 
-			return super.performOk();
-		} catch (YoctoGeneralException e) {
-			// TODO Auto-generated catch block
-			System.out.println(e.getMessage());
-			return false;
+			YoctoSDKUtils.saveUseProjectSpecificOptionToProjectPreferences(project, true);
+			YoctoSDKUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
+			YoctoSDKUtils.saveElemToProjectPreferences(yoctoUISetting.getCurrentInput(), project);
+		} else {
+			YoctoSDKUtils.saveUseProjectSpecificOptionToProjectPreferences(project, false);
+			YoctoSDKUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
 		}
+
+		YoctoSDKUtils.saveElemToProjectEnv(yoctoUISetting.getCurrentInput(), getProject());
+
+		return super.performOk();
 	}
 
 	public void switchProfile(String selectedProfile)
-- 
1.7.11.7


