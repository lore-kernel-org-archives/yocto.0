Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 972ABE01542
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 06:30:31 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 7C3F84029E;
	Thu, 13 Jun 2013 14:34:45 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 13 Jun 2013 15:30:25 +0200
Message-Id: <7e8f36f370b0c2904b71754d14d7d48b6fb970c5.1371123125.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <4b8028eacf1dde7280092810620f4eab86383530.1371123125.git.timo.mueller@bmw-carit.de>
References: <cover.1371123125.git.timo.mueller@bmw-carit.de>
	<53ccaeae06f287489ab1b46e5ebc217149dbcd62.1371123125.git.timo.mueller@bmw-carit.de>
	<d2fcb89f435332b6958583ccd22d2cbaa9a6b05c.1371123125.git.timo.mueller@bmw-carit.de>
	<4b8028eacf1dde7280092810620f4eab86383530.1371123125.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1371123125.git.timo.mueller@bmw-carit.de>
References: <cover.1371123125.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 4/7] plugins/sdk.ide: Remove project context from method names
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
X-List-Received-Date: Thu, 13 Jun 2013 13:30:36 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Through the context of the ProjectPreferenceUtil class we can infer
that all methods act on project preferences. Having this context
information duplicated in the method name is not needed anymore and
can be removed to get a cleaner API.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../sdk/ide/preferences/YoctoSDKPreferencePage.java      |  6 +++---
 .../sdk/ide/preferences/YoctoSDKProjectPropertyPage.java | 16 ++++++++--------
 .../org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java  | 12 ++++++------
 .../sdk/ide/wizard/NewYoctoProjectTemplateProcess.java   |  2 +-
 4 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index e8123e2..4e6ca2a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -241,7 +241,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
 		for (IProject project : yoctoProjects)
 		{
-			ProjectPreferenceUtils.saveProfilesToProjectPreferences(profileElement, project);
+			ProjectPreferenceUtils.saveProfiles(profileElement, project);
 			YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(
 											YoctoSDKPlugin.getProfilePreferenceStore(PreferenceConstants.STANDARD_PROFILE_NAME));
 			ProjectPreferenceUtils.saveElemToProjectEnv(elem, project);
@@ -255,7 +255,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
 		for (IProject project : yoctoProjects)
 		{
-			ProjectPreferenceUtils.saveProfilesToProjectPreferences(profileElement, project);
+			ProjectPreferenceUtils.saveProfiles(profileElement, project);
 		}
 	}
 
@@ -296,7 +296,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 
 	private boolean projectUsesProfile(IProject project, String profile)
 	{
-		YoctoProfileElement profileElement = ProjectPreferenceUtils.getProfilesFromProjectPreferences(project);
+		YoctoProfileElement profileElement = ProjectPreferenceUtils.getProfiles(project);
 
 		if (!profileElement.getSelectedProfile().equals(profile)) {
 			return false;
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index 1f82fe1..f6026ee 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -64,7 +64,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 		IProject project = getProject();
 
 		YoctoProfileElement globalProfileElement= YoctoSDKUtils.getProfilesFromDefaultStore();
-		YoctoProfileElement profileElement = ProjectPreferenceUtils.getProfilesFromProjectPreferences(project);
+		YoctoProfileElement profileElement = ProjectPreferenceUtils.getProfiles(project);
 
 		String selectedProfile = profileElement.getSelectedProfile();
 		if (!globalProfileElement.contains(selectedProfile)) {
@@ -73,10 +73,10 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 
 		yoctoProfileSetting = new YoctoProfileSetting(
 				new YoctoProfileElement(globalProfileElement.getProfilesAsString(), selectedProfile), this, false);
-		boolean useProjectSpecificSetting = ProjectPreferenceUtils.getUseProjectSpecificOptionFromProjectPreferences(project);
+		boolean useProjectSpecificSetting = ProjectPreferenceUtils.getUseProjectSpecificOption(project);
 
 		if (useProjectSpecificSetting) {
-			yoctoUISetting = new YoctoUISetting(ProjectPreferenceUtils.getElemFromProjectPreferences(project));
+			yoctoUISetting = new YoctoUISetting(ProjectPreferenceUtils.getElem(project));
 		} else {
 			yoctoUISetting = new YoctoUISetting(YoctoSDKUtils.getElemFromStore(YoctoSDKPlugin.getProfilePreferenceStore(selectedProfile)));
 		}
@@ -154,12 +154,12 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 				return false;
 			}
 
-			ProjectPreferenceUtils.saveUseProjectSpecificOptionToProjectPreferences(project, true);
-			ProjectPreferenceUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
-			ProjectPreferenceUtils.saveElemToProjectPreferences(yoctoUISetting.getCurrentInput(), project);
+			ProjectPreferenceUtils.saveUseProjectSpecificOption(project, true);
+			ProjectPreferenceUtils.saveProfiles(yoctoProfileSetting.getCurrentInput(), project);
+			ProjectPreferenceUtils.saveElem(yoctoUISetting.getCurrentInput(), project);
 		} else {
-			ProjectPreferenceUtils.saveUseProjectSpecificOptionToProjectPreferences(project, false);
-			ProjectPreferenceUtils.saveProfilesToProjectPreferences(yoctoProfileSetting.getCurrentInput(), project);
+			ProjectPreferenceUtils.saveUseProjectSpecificOption(project, false);
+			ProjectPreferenceUtils.saveProfiles(yoctoProfileSetting.getCurrentInput(), project);
 		}
 
 		ProjectPreferenceUtils.saveElemToProjectEnv(yoctoUISetting.getCurrentInput(), getProject());
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java
index 50904c1..a06a03c 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java
@@ -36,7 +36,7 @@ public class ProjectPreferenceUtils {
 	private static final String CONSOLE_MESSAGE  = "Menu.SDK.Console.Configure.Message";
 
 	/* Get POKY Preference settings from project's preference store */
-	public static YoctoUIElement getElemFromProjectPreferences(IProject project) {
+	public static YoctoUIElement getElem(IProject project) {
 		IScopeContext projectScope = new ProjectScope(project);
 		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
 		if (projectNode == null) {
@@ -98,7 +98,7 @@ public class ProjectPreferenceUtils {
 	}
 
 	/* Get profiles and selected profile from the project's preference store */
-	public static YoctoProfileElement getProfilesFromProjectPreferences(IProject project) {
+	public static YoctoProfileElement getProfiles(IProject project) {
 		IScopeContext projectScope = new ProjectScope(project);
 		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
 
@@ -112,7 +112,7 @@ public class ProjectPreferenceUtils {
 		return new YoctoProfileElement(profiles, selectedProfile);
 	}
 
-	public static boolean getUseProjectSpecificOptionFromProjectPreferences(IProject project) {
+	public static boolean getUseProjectSpecificOption(IProject project) {
 		IScopeContext projectScope = new ProjectScope(project);
 		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
 		if (projectNode == null) {
@@ -130,7 +130,7 @@ public class ProjectPreferenceUtils {
 	}
 
 	/* Save POKY Preference settings to project's preference store */
-	public static void saveElemToProjectPreferences(YoctoUIElement elem, IProject project) {
+	public static void saveElem(YoctoUIElement elem, IProject project) {
 		IScopeContext projectScope = new ProjectScope(project);
 		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
 		if (projectNode == null) {
@@ -199,7 +199,7 @@ public class ProjectPreferenceUtils {
 	}
 
 	/* Save profiles and selected profile to the project's preference store */
-	public static void saveProfilesToProjectPreferences(YoctoProfileElement profileElement, IProject project) {
+	public static void saveProfiles(YoctoProfileElement profileElement, IProject project) {
 		IScopeContext projectScope = new ProjectScope(project);
 		IEclipsePreferences projectPreferences = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
 
@@ -218,7 +218,7 @@ public class ProjectPreferenceUtils {
 		}
 	}
 
-	public static void saveUseProjectSpecificOptionToProjectPreferences(IProject project, boolean useProjectSpecificSetting) {
+	public static void saveUseProjectSpecificOption(IProject project, boolean useProjectSpecificSetting) {
 		IScopeContext projectScope = new ProjectScope(project);
 		IEclipsePreferences projectNode = projectScope.getNode(YoctoSDKUtilsConstants.PROJECT_SCOPE);
 		if (projectNode == null) {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
index f64043d..d8c1232 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
@@ -206,7 +206,7 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 		YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
 
 		YoctoProfileElement profileElement = YoctoSDKUtils.getProfilesFromDefaultStore();
-		ProjectPreferenceUtils.saveProfilesToProjectPreferences(profileElement, project);
+		ProjectPreferenceUtils.saveProfiles(profileElement, project);
 
 		IPreferenceStore selecteProfileStore = YoctoSDKPlugin.getProfilePreferenceStore(profileElement.getSelectedProfile());
 		YoctoUIElement elem = YoctoSDKUtils.getElemFromStore(selecteProfileStore);
-- 
1.8.1.4


