Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3E5B4E004FE
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:28:23 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 6611340238;
	Fri,  8 Feb 2013 13:47:55 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:28:19 +0100
Message-Id: <00b2e45696c86f1a356ed4cb6c487efd152f3446.1360326418.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <91a0d498bdebd99516d4003fe4ed021f07134a09.1360326418.git.timo.mueller@bmw-carit.de>
References: <cover.1360326418.git.timo.mueller@bmw-carit.de>
	<0c05c26bf5ec89ec5d2e0d65ca747b4f7e39575a.1360326418.git.timo.mueller@bmw-carit.de>
	<6a08508309a87b895e26035435c5717a1c407f04.1360326418.git.timo.mueller@bmw-carit.de>
	<91a0d498bdebd99516d4003fe4ed021f07134a09.1360326418.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326418.git.timo.mueller@bmw-carit.de>
References: <cover.1360326418.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v1 4/5] plugins/sdk.ide: Update projects affected by changes of a target profile
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
X-List-Received-Date: Fri, 08 Feb 2013 13:28:23 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

If a target profile is modified, renamed or deleted globally the
projects using this profile are updated accordingly.
On deletion of a target profile the affected projects will set use the
standard target profile.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  2 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    | 91 +++++++++++++++++++++-
 2 files changed, 89 insertions(+), 4 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index bfdde41..e779f7d 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -60,7 +60,7 @@ Preferences.Profile.Rename.Dialog.Title = Rename target profile
 Preferences.Profile.Rename.Dialog.Message = Please input a new profile name.
 Preferences.Profile.Remove.Title = Remove
 Preferences.Profile.Remove.Dialog.Title = Remove target profile
-Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the target profile "{0}"?
+Preferences.Profile.Remove.Dialog.Message = Do you really want to the remove the target profile "{0}"?\nProjects using this target profile will be reconfigured to use the standard profile.
 Preferences.Profile.Standard.Modification.Title = Modify standard target profile
 Preferences.Profile.Standard.Modification.Message = Standard target profile cannot be removed or renamed.
 
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index fb015ab..b5963cf 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -10,6 +10,11 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.preferences;
 
+import java.util.HashSet;
+
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.ResourcesPlugin;
+import org.eclipse.core.runtime.CoreException;
 import org.eclipse.jface.dialogs.Dialog;
 import org.eclipse.jface.dialogs.IDialogConstants;
 import org.eclipse.jface.dialogs.InputDialog;
@@ -25,6 +30,7 @@ import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoProfileSetting;
 import org.yocto.sdk.ide.YoctoSDKMessages;
 import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.YoctoSDKUtils;
 import org.yocto.sdk.ide.YoctoSDKUtils.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoUIElement;
@@ -80,8 +86,8 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 			System.out.println(e.getMessage());
 			return result;
 		}
-
 	}
+
 	/*
 	 * @see IPreferencePage#performOk()
 	 */
@@ -95,6 +101,8 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 			YoctoProfileElement profileElement = yoctoProfileSetting.getCurrentInput();
 			YoctoSDKUtils.saveProfilesToDefaultStore(profileElement);
 
+			updateAffectedProjects(profileElement.getSelectedProfile(), elem);
+
 			return super.performOk();
 		} catch (YoctoGeneralException e) {
 			// TODO Auto-generated catch block
@@ -151,9 +159,86 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 	public void renameProfile(String oldProfileName, String newProfileName) {
 		YoctoUIElement oldProfileElement = YoctoSDKUtils.getElemFromStore(YoctoSDKPlugin.getProfilePreferenceStore(oldProfileName));
 		YoctoSDKUtils.saveElemToStore(oldProfileElement, YoctoSDKPlugin.getProfilePreferenceStore(newProfileName));
+
+		renameProfileInAffectedProjects(oldProfileName, newProfileName);
+	}
+
+	public void deleteProfile(String selectedProfile)
+	{
+		resetProfileInAffectedProjects(selectedProfile);
 	}
 
-	public void deleteProfile(String selectedProfile) {
-		// do nothing
+	private void resetProfileInAffectedProjects(String usedProfile)
+	{
+		HashSet<IProject> yoctoProjects = getAffectedProjects(usedProfile);
+		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
+		profileElement.setSelectedProfile(PreferenceConstants.STANDARD_PROFILE_NAME);
+
+		for (IProject project : yoctoProjects)
+		{
+			YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
+			YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(
+											YoctoSDKPlugin.getProfilePreferenceStore(PreferenceConstants.STANDARD_PROFILE_NAME));
+			YoctoSDKUtils.saveElemToProjectEnv(elem, project);
+		}
+	}
+
+	private void renameProfileInAffectedProjects(String oldProfileName, String newProfileName) {
+		HashSet<IProject> yoctoProjects = getAffectedProjects(oldProfileName);
+		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
+		profileElement.setSelectedProfile(newProfileName);
+
+		for (IProject project : yoctoProjects)
+		{
+			YoctoSDKUtils.saveProfilesToProjectPreferences(profileElement, project);
+		}
+	}
+
+	private void updateAffectedProjects(String usedProfile, YoctoUIElement elem) {
+		HashSet<IProject> yoctoProjects = getAffectedProjects(usedProfile);
+
+		for (IProject project : yoctoProjects)
+		{
+			YoctoSDKUtils.saveElemToProjectEnv(elem, project);
+		}
+	}
+
+	private HashSet<IProject> getAffectedProjects(String usedProfile)
+	{
+		HashSet<IProject> yoctoProjects = new HashSet<IProject>();
+
+		IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
+
+		for (IProject project : projects)
+		{
+			try
+			{
+				if (!project.hasNature(YoctoSDKProjectNature.YoctoSDK_NATURE_ID)) {
+					continue;
+				}
+			} catch (CoreException e)
+			{
+				// project is closed or does not exist so don't update
+				continue;
+			}
+
+			if (!projectUsesProfile(project, usedProfile)) {
+				continue;
+			}
+
+			yoctoProjects.add(project);
+		}
+		return yoctoProjects;
+	}
+
+	private boolean projectUsesProfile(IProject project, String profile)
+	{
+		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromProjectPreferences(project);
+
+		if (!profileElement.getSelectedProfile().equals(profile)) {
+			return false;
+		}
+
+		return true;
 	}
 }
-- 
1.7.11.7


