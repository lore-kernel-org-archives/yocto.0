Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5DBD7E004AB
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 05:49:27 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id F1571401B3;
	Tue, 26 Feb 2013 14:07:35 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue, 26 Feb 2013 14:49:22 +0100
Message-Id: <86f268402f54102ad2d1c0c485fffebd938d4687.1361867924.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <cf432b8aa5a8e376447eff09990b1ce364aa48d8.1361867924.git.timo.mueller@bmw-carit.de>
References: <cover.1361867924.git.timo.mueller@bmw-carit.de>
	<25b0cc70b24171a329c3a29139970bfacec9e080.1361867924.git.timo.mueller@bmw-carit.de>
	<c6a14985367e7e7d057250b89bd07552302e03af.1361867924.git.timo.mueller@bmw-carit.de>
	<38b600dfa83b4468462690eb67675ee05c8d0c7a.1361867924.git.timo.mueller@bmw-carit.de>
	<cf432b8aa5a8e376447eff09990b1ce364aa48d8.1361867924.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1361867924.git.timo.mueller@bmw-carit.de>
References: <cover.1361867924.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 5/5] plugin/sdk.ide: Update projects on profile update
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
X-List-Received-Date: Tue, 26 Feb 2013 13:49:27 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

If a cross development profile is changed that is used by projects,
the user will be warned that these projects will also be changed. If
the user accepts the affected projects are updated and are marked
"dirty". Next time the projects are built a reconfigure will also be
triggered.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  2 ++
 .../ide/preferences/YoctoSDKPreferencePage.java    | 32 +++++++++++++++++-----
 2 files changed, 27 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 0323d1c..e5748f7 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -61,6 +61,8 @@ Preferences.Profile.Rename.Dialog.Message = Please input a new profile name.
 Preferences.Profile.Remove.Title = Remove
 Preferences.Profile.Remove.Dialog.Title = Remove cross development profile
 Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the cross development profile "{0}"?\nProjects using this cross development profile will be reconfigured to use the standard profile.
+Preferences.Profile.Update.Dialog.Title = Update cross development profile
+Preferences.Profile.Update.Dialog.Message = Do you really want to the update the cross development profile "{0}"?\nProjects using this cross development profile will be reconfigured.
 Preferences.Profile.Standard.Modification.Title = Modify standard cross development profile
 Preferences.Profile.Standard.Modification.Message = Standard cross development profile cannot be removed or renamed.
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index b5963cf..4d57b45 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -18,6 +18,7 @@ import org.eclipse.core.runtime.CoreException;
 import org.eclipse.jface.dialogs.Dialog;
 import org.eclipse.jface.dialogs.IDialogConstants;
 import org.eclipse.jface.dialogs.InputDialog;
+import org.eclipse.jface.dialogs.MessageDialog;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
@@ -40,6 +41,8 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
 	private static final String NEW_DIALOG_TITLE = "Preferences.Profile.New.Dialog.Title";
 	private static final String NEW_DIALOG_MESSAGE = "Preferences.Profile.New.Dialog.Message";
+	private static final String UPDATE_DIALOG_TITLE = "Preferences.Profile.Update.Dialog.Title";
+	private static final String UPDATE_DIALOG_MESSAGE = "Preferences.Profile.Update.Dialog.Message";
 
 	private YoctoProfileSetting yoctoProfileSetting;
 	private YoctoUISetting yoctoUISetting;
@@ -93,15 +96,32 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 	 */
 	public boolean performOk() {
 		try {
-			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, true);
+			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
+
+			YoctoUIElement savedElement = YoctoSDKUtils.getElemFromStore(getPreferenceStore());
+			YoctoUIElement modifiedElement = yoctoUISetting.getCurrentInput();
 
-			YoctoUIElement elem = yoctoUISetting.getCurrentInput();
-			YoctoSDKUtils.saveElemToStore(elem, getPreferenceStore());
+			if (savedElement.equals(modifiedElement)) {
+				return true;
+			}
 
 			YoctoProfileElement profileElement = yoctoProfileSetting.getCurrentInput();
+			HashSet<IProject> yoctoProjects = getAffectedProjects(profileElement.getSelectedProfile());
+
+			if (!yoctoProjects.isEmpty()) {
+				boolean deleteConfirmed =
+						MessageDialog.openConfirm(null, YoctoSDKMessages.getString(UPDATE_DIALOG_TITLE),
+								YoctoSDKMessages.getFormattedString(UPDATE_DIALOG_MESSAGE, profileElement.getSelectedProfile()));
+
+				if (!deleteConfirmed) {
+					return false;
+				}
+			}
+
+			YoctoSDKUtils.saveElemToStore(modifiedElement, getPreferenceStore());
 			YoctoSDKUtils.saveProfilesToDefaultStore(profileElement);
 
-			updateAffectedProjects(profileElement.getSelectedProfile(), elem);
+			updateProjects(yoctoProjects, modifiedElement);
 
 			return super.performOk();
 		} catch (YoctoGeneralException e) {
@@ -194,9 +214,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 		}
 	}
 
-	private void updateAffectedProjects(String usedProfile, YoctoUIElement elem) {
-		HashSet<IProject> yoctoProjects = getAffectedProjects(usedProfile);
-
+	private void updateProjects(HashSet<IProject> yoctoProjects, YoctoUIElement elem) {
 		for (IProject project : yoctoProjects)
 		{
 			YoctoSDKUtils.saveElemToProjectEnv(elem, project);
-- 
1.7.11.7


