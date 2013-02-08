Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 7FB20E0146E
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:28:24 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 85F5140295;
	Fri,  8 Feb 2013 13:47:55 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:28:20 +0100
Message-Id: <36b5d36d2f5763213283a9b0734be5af02aace91.1360326418.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <00b2e45696c86f1a356ed4cb6c487efd152f3446.1360326418.git.timo.mueller@bmw-carit.de>
References: <cover.1360326418.git.timo.mueller@bmw-carit.de>
	<0c05c26bf5ec89ec5d2e0d65ca747b4f7e39575a.1360326418.git.timo.mueller@bmw-carit.de>
	<6a08508309a87b895e26035435c5717a1c407f04.1360326418.git.timo.mueller@bmw-carit.de>
	<91a0d498bdebd99516d4003fe4ed021f07134a09.1360326418.git.timo.mueller@bmw-carit.de>
	<00b2e45696c86f1a356ed4cb6c487efd152f3446.1360326418.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326418.git.timo.mueller@bmw-carit.de>
References: <cover.1360326418.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v1 5/5] plugins/sdk.ide: Enable the usage of profiles in the project properties
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
X-List-Received-Date: Fri, 08 Feb 2013 13:28:24 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

UI elements are added to the project properties in order to use
profile capabilites with a project.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java |  3 +
 .../yocto/sdk/ide/YoctoProjectSpecificSetting.java |  9 +++
 .../preferences/YoctoSDKProjectPropertyPage.java   | 94 +++++++++++++++++-----
 3 files changed, 86 insertions(+), 20 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index 738dba7..cc3e167 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -28,6 +28,7 @@ import org.eclipse.swt.widgets.Listener;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
 import org.yocto.sdk.ide.preferences.ProfileNameInputValidator;
 import org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage;
+import org.yocto.sdk.ide.preferences.YoctoSDKProjectPropertyPage;
 
 public class YoctoProfileSetting {
 	private static final String PROFILES_TITLE = "Preferences.Profiles.Title";
@@ -91,6 +92,8 @@ public class YoctoProfileSetting {
 
 				if (preferencePage instanceof YoctoSDKPreferencePage) {
 					((YoctoSDKPreferencePage) preferencePage).switchProfile(selectedItem);
+				} else if (preferencePage instanceof YoctoSDKProjectPropertyPage) {
+					((YoctoSDKProjectPropertyPage) preferencePage).switchProfile(selectedItem);
 				}
 			}
 		};
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java
index 25d4de4..13acb8e 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java
@@ -19,6 +19,7 @@ import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Group;
+import org.yocto.sdk.ide.preferences.YoctoSDKProjectPropertyPage;
 
 public class YoctoProjectSpecificSetting {
 	private static final String PROJECT_SPECIFIC_TITLE = "Preferences.Profile.ProjectSpecific.Title";
@@ -58,10 +59,18 @@ public class YoctoProjectSpecificSetting {
 				if (btnUseProjectSpecificSettingsCheckbox.getSelection()){
 					yoctoConfigurationsSetting.setUIFormEnabledState(false);
 					yoctoUISetting.setUIFormEnabledState(true);
+
+					if (preferencePage instanceof YoctoSDKProjectPropertyPage) {
+						((YoctoSDKProjectPropertyPage) preferencePage).switchToProjectSpecificProfile();
+					}
 				} else {
 					yoctoConfigurationsSetting.setUIFormEnabledState(true);
 					yoctoConfigurationsSetting.setButtonsEnabledState(false);
 					yoctoUISetting.setUIFormEnabledState(false);
+
+					if (preferencePage instanceof YoctoSDKProjectPropertyPage) {
+						((YoctoSDKProjectPropertyPage) preferencePage).switchToSelectedProfile();
+					}
 				}
 			}
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 56cc4cb..eef56c1 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -21,6 +21,10 @@ import org.eclipse.swt.widgets.Control;
 import org.eclipse.ui.IWorkbenchPropertyPage;
 import org.eclipse.ui.dialogs.PropertyPage;
 import org.yocto.sdk.ide.YoctoGeneralException;
+import org.yocto.sdk.ide.YoctoProfileElement;
+import org.yocto.sdk.ide.YoctoProfileSetting;
+import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
+import org.yocto.sdk.ide.YoctoSDKPlugin;
 import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoUIElement;
@@ -29,21 +33,56 @@ import org.yocto.sdk.ide.YoctoUISetting;
 public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		IWorkbenchPropertyPage {
 
+	private YoctoProfileSetting yoctoProfileSetting;
+	private YoctoProjectSpecificSetting yoctoProjectSpecificSetting;
 	private YoctoUISetting yoctoUISetting;
 	private IProject project = null;
 
 	@Override
 	protected Control createContents(Composite parent) {
-		YoctoUIElement uiElement = loadUIElement();
-		this.yoctoUISetting = new YoctoUISetting(uiElement);
+		IProject project = getProject();
+
+		YoctoProfileElement globalProfileElement= YoctoSDKUtils.getProfilesFromDefaultStore();
+		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromProjectPreferences(project);
+
+		String selectedProfile = profileElement.getSelectedProfile();
+		if (!globalProfileElement.contains(selectedProfile)) {
+			selectedProfile = globalProfileElement.getSelectedProfile();
+		}
+
+		yoctoProfileSetting = new YoctoProfileSetting(
+				new YoctoProfileElement(globalProfileElement.getProfilesAsString(), selectedProfile), this);
+		boolean useProjectSpecificSetting = YoctoSDKUtils.getUseProjectSpecificOptionFromProjectPreferences(project);
+
+		if (useProjectSpecificSetting) {
+			yoctoUISetting = new YoctoUISetting(YoctoSDKUtils.getElemFromProjectPreferences(project));
+		} else {
+			yoctoUISetting = new YoctoUISetting(YoctoSDKUtils.getElemFromStore(YoctoSDKPlugin.getProfilePreferenceStore(selectedProfile)));
+		}
+
+		yoctoProjectSpecificSetting = new YoctoProjectSpecificSetting(yoctoProfileSetting, yoctoUISetting, this);
 
 		initializeDialogUnits(parent);
 		final Composite result = new Composite(parent, SWT.NONE);
 
+		yoctoProfileSetting.createComposite(result);
+		yoctoProjectSpecificSetting.createComposite(result);
+
 		try {
 			yoctoUISetting.createComposite(result);
-			yoctoUISetting
-					.validateInput(SDKCheckRequestFrom.Preferences, false);
+
+			if (useProjectSpecificSetting) {
+				yoctoProfileSetting.setUIFormEnabledState(false);
+				yoctoProjectSpecificSetting.setUseProjectSpecificSettings(true);
+				yoctoUISetting.setUIFormEnabledState(true);
+				yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
+			} else {
+				yoctoProfileSetting.setUIFormEnabledState(true);
+				yoctoProfileSetting.setButtonsEnabledState(false);
+				yoctoProjectSpecificSetting.setUseProjectSpecificSettings(false);
+				yoctoUISetting.setUIFormEnabledState(false);
+			}
+
 			Dialog.applyDialogFont(result);
 			return result;
 		} catch (YoctoGeneralException e) {
@@ -67,19 +106,6 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		return project;
 	}
 
-	private YoctoUIElement loadUIElement() {
-		YoctoUIElement uiElement = YoctoSDKUtils.getElemFromProjectEnv(getProject());
-
-		if (uiElement.getStrToolChainRoot().isEmpty()
-				|| uiElement.getStrTarget().isEmpty()) {
-			// No project environment has been set yet, use the Preference
-			// values
-			uiElement = YoctoSDKUtils.getElemFromDefaultStore();
-		}
-
-		return uiElement;
-	}
-
 	/*
 	 * @see PreferencePage#performDefaults()
 	 */
@@ -87,6 +113,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 	protected void performDefaults() {
 		YoctoUIElement defaultElement = YoctoSDKUtils.getDefaultElemFromDefaultStore();
 		yoctoUISetting.setCurrentInput(defaultElement);
+		yoctoProjectSpecificSetting.setUseProjectSpecificSettings(true);
 		super.performDefaults();
 	}
 
@@ -96,10 +123,20 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 	@Override
 	public boolean performOk() {
 		try {
-			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
+			IProject project = getProject();
 
-			YoctoUIElement elem = yoctoUISetting.getCurrentInput();
-			YoctoSDKUtils.saveElemToProjectEnv(elem, getProject());
+			if (yoctoProjectSpecificSetting.isUsingProjectSpecificSettings()) {
+				yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
+
+				YoctoSDKUtils.saveUseProjectSpecificOptionToProjectPreferences(project, true);
+				YoctoSDKUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
+				YoctoSDKUtils.saveElemToProjectPreferences(yoctoUISetting.getCurrentInput(), project);
+			} else {
+				YoctoSDKUtils.saveUseProjectSpecificOptionToProjectPreferences(project, false);
+				YoctoSDKUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
+			}
+
+			YoctoSDKUtils.saveElemToProjectEnv(yoctoUISetting.getCurrentInput(), getProject());
 
 			return super.performOk();
 		} catch (YoctoGeneralException e) {
@@ -108,4 +145,21 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 			return false;
 		}
 	}
+
+	public void switchProfile(String selectedProfile)
+	{
+		YoctoUIElement profileElement = YoctoSDKUtils.getElemFromStore(YoctoSDKPlugin.getProfilePreferenceStore(selectedProfile));
+		yoctoUISetting.setCurrentInput(profileElement);
+	}
+
+	public void switchToProjectSpecificProfile()
+	{
+		YoctoUIElement profileElement = YoctoSDKUtils.getElemFromProjectPreferences(getProject());
+		yoctoUISetting.setCurrentInput(profileElement);
+	}
+
+	public void switchToSelectedProfile()
+	{
+		switchProfile(yoctoProfileSetting.getCurrentInput().getSelectedProfile());
+	}
 }
-- 
1.7.11.7


