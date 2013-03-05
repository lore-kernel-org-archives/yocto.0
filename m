Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C060CE014F3
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 00:29:30 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id CF41E4028F;
	Tue,  5 Mar 2013 08:47:08 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2013 09:29:24 +0100
Message-Id: <4b4abc8810c975ce3f93ddf7694ab3db0d198b85.1362414084.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <627f04c41270578a0e895cbd397913e4cd9da59c.1362414084.git.timo.mueller@bmw-carit.de>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
	<326c88b1356a7902bd617989dd71fbf51c4dd018.1362414084.git.timo.mueller@bmw-carit.de>
	<0e1087cc0470b96f7fd4acb8e1abb35c46fcb967.1362414084.git.timo.mueller@bmw-carit.de>
	<7795054b666eb6e5760f9f1f615eaf42b19fb535.1362414084.git.timo.mueller@bmw-carit.de>
	<627f04c41270578a0e895cbd397913e4cd9da59c.1362414084.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1362414084.git.timo.mueller@bmw-carit.de>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 5/5] plugins/sdk.ide: Inform user that the settings have to revalidated
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
X-List-Received-Date: Tue, 05 Mar 2013 08:29:31 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

If the last validation resulted in an error and the user made changes
to the settings the error message is replaced by a message asking the
user to revalidate.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  1 +
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |  1 +
 .../ide/preferences/YoctoSDKPreferencePage.java    | 26 ++++++++++++++++++-
 .../preferences/YoctoSDKProjectPropertyPage.java   | 30 +++++++++++++++++++++-
 4 files changed, 56 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 07a0009..e6d8fa1 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -37,6 +37,7 @@ Poky.Toolchain.Host.Mismatch = Toolchain and host arch mismatch.
 Poky.Toolchain.Host.Mismatch.Advice = Make sure you use 32bit toolchain for 32bit host and same for 64bit machines!
 
 Default.Advice = \nDo IDE-wide settings from Window > Preferences > Yocto Project ADT\nOr do Project-wide settings from Project > Change Yocto Project Settings.
+Poky.SDK.Revalidation.Message = Please apply the changes to revalidate.
 
 Poky.SDK.Error.Origin.Wizard = Yocto Wizard Configuration Error:
 Poky.SDK.Error.Origin.Menu = Yocto Menu Configuration Error:
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index 95209b6..e5a7897 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -300,6 +300,7 @@ public class YoctoUISetting {
 		btnPokyRoot.addSelectionListener(fSelectionListener);
 		btnQemu.addSelectionListener(fSelectionListener);
 		btnDevice.addSelectionListener(fSelectionListener);
+		targetArchCombo.addSelectionListener(fSelectionListener);
 		textRootLoc.addModifyListener(fModifyListener);
 		textKernelLoc.addModifyListener(fModifyListener);
 		textQemuOption.addModifyListener(fModifyListener);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index 97c602b..f013cf8 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -25,6 +25,8 @@ import org.eclipse.swt.SWT;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
+import org.eclipse.swt.widgets.Event;
+import org.eclipse.swt.widgets.Listener;
 import org.eclipse.ui.IWorkbench;
 import org.eclipse.ui.IWorkbenchPreferencePage;
 import org.yocto.sdk.ide.YoctoProfileElement;
@@ -44,10 +46,13 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 	private static final String NEW_DIALOG_MESSAGE = "Preferences.Profile.New.Dialog.Message";
 	private static final String UPDATE_DIALOG_TITLE = "Preferences.Profile.Update.Dialog.Title";
 	private static final String UPDATE_DIALOG_MESSAGE = "Preferences.Profile.Update.Dialog.Message";
+	private static final String REVALIDATION_MESSAGE = "Poky.SDK.Revalidation.Message";
 
 	private YoctoProfileSetting yoctoProfileSetting;
 	private YoctoUISetting yoctoUISetting;
 
+	private Listener changeListener;
+
 	public YoctoSDKPreferencePage() {
 		//super(GRID);
 		IPreferenceStore defaultStore = YoctoSDKPlugin.getDefault().getPreferenceStore();
@@ -66,6 +71,16 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
 		YoctoProfileElement profileElement = new YoctoProfileElement(profiles, selectedProfile);
 		this.yoctoProfileSetting = new YoctoProfileSetting(profileElement, this, true);
+
+		changeListener = new Listener() {
+			@Override
+			public void handleEvent(Event event) {
+				if (getErrorMessage() != null) {
+					setErrorMessage(null);
+					setMessage(YoctoSDKMessages.getString(REVALIDATION_MESSAGE), INFORMATION);
+				}
+			}
+		};
 	}
 
 	/*
@@ -82,6 +97,9 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		yoctoProfileSetting.createComposite(composite);
 		yoctoUISetting.createComposite(composite);
 
+		composite.addListener(SWT.Modify, changeListener);
+		composite.addListener(SWT.Selection, changeListener);
+
 		SDKCheckResults result = yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
 		if (result != SDKCheckResults.SDK_PASS) {
 		}
@@ -94,7 +112,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 	 * @see IPreferencePage#performOk()
 	 */
 	public boolean performOk() {
-		setErrorMessage(null);
+		clearMessages();
 
 		SDKCheckResults result = yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
 		if (result != SDKCheckResults.SDK_PASS) {
@@ -130,6 +148,12 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		return super.performOk();
 	}
 
+	private void clearMessages() {
+		setErrorMessage(null);
+		setMessage(null);
+		setTitle(getTitle());
+	}
+
 	/*
 	 * @see PreferencePage#performDefaults()
 	 */
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index effd432..34c497b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -19,6 +19,8 @@ import org.eclipse.swt.SWT;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
+import org.eclipse.swt.widgets.Event;
+import org.eclipse.swt.widgets.Listener;
 import org.eclipse.ui.IWorkbenchPropertyPage;
 import org.eclipse.ui.dialogs.PropertyPage;
 import org.yocto.sdk.ide.YoctoProfileElement;
@@ -26,6 +28,7 @@ import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
+import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoUIElement;
@@ -34,11 +37,27 @@ import org.yocto.sdk.ide.YoctoUISetting;
 public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		IWorkbenchPropertyPage {
 
+	private static final String REVALIDATION_MESSAGE = "Poky.SDK.Revalidation.Message";
+
 	private YoctoProfileSetting yoctoProfileSetting;
 	private YoctoProjectSpecificSetting yoctoProjectSpecificSetting;
 	private YoctoUISetting yoctoUISetting;
 	private IProject project = null;
 
+	private Listener changeListener;
+
+	public YoctoSDKProjectPropertyPage() {
+		changeListener = new Listener() {
+			@Override
+			public void handleEvent(Event event) {
+				if (getErrorMessage() != null) {
+					setErrorMessage(null);
+					setMessage(YoctoSDKMessages.getString(REVALIDATION_MESSAGE), INFORMATION);
+				}
+			}
+		};
+	}
+
 	@Override
 	protected Control createContents(Composite parent) {
 		IProject project = getProject();
@@ -86,6 +105,9 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 			yoctoUISetting.setUIFormEnabledState(false);
 		}
 
+		composite.addListener(SWT.Modify, changeListener);
+		composite.addListener(SWT.Selection, changeListener);
+
 		Dialog.applyDialogFont(composite);
 		return composite;
 	}
@@ -120,7 +142,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 	 */
 	@Override
 	public boolean performOk() {
-		setErrorMessage(null);
+		clearMessages();
 
 		IProject project = getProject();
 
@@ -144,6 +166,12 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		return super.performOk();
 	}
 
+	private void clearMessages() {
+		setErrorMessage(null);
+		setMessage(null);
+		setTitle(getTitle());
+	}
+
 	public void switchProfile(String selectedProfile)
 	{
 		YoctoUIElement profileElement = YoctoSDKUtils.getElemFromStore(YoctoSDKPlugin.getProfilePreferenceStore(selectedProfile));
-- 
1.7.11.7


