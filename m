Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75C50E013EC
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 05:44:56 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id AFF04402D9;
	Fri, 21 Jun 2013 13:48:31 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri, 21 Jun 2013 14:44:47 +0200
Message-Id: <7bfc6de04ffe4814774de2a0ed84b6eecfed2a82.1371818609.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <0d5013a2d71595ba90a8bf18066d62b8c83d0cad.1371818609.git.timo.mueller@bmw-carit.de>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
	<8747086bfca592129ab38a4f0a90182488e5cc9c.1371818609.git.timo.mueller@bmw-carit.de>
	<3febae446e2129227471238802a4185719bddc99.1371818609.git.timo.mueller@bmw-carit.de>
	<eb8b7614daafd5a2c359a83dae533c62e2667bf6.1371818609.git.timo.mueller@bmw-carit.de>
	<8759d4ba2272a2f923431e7d761c8957ac594d60.1371818609.git.timo.mueller@bmw-carit.de>
	<bf0b2d82c7810aac76794cc7ce511e217d447ec3.1371818609.git.timo.mueller@bmw-carit.de>
	<2424730fff49a5becf5921c4df6d01a4c9c5d78a.1371818609.git.timo.mueller@bmw-carit.de>
	<0d5013a2d71595ba90a8bf18066d62b8c83d0cad.1371818609.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1371818609.git.timo.mueller@bmw-carit.de>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 8/8] plugins/sdk.ide: Add project configuration button
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
X-List-Received-Date: Fri, 21 Jun 2013 12:44:56 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

This changes the behaviour of the project specific profile button. If
the project specific profile is not yet defined for the selected
project, the list will contain a button to open the project
preferences instead of the greying out the button.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.sdk.ide/plugin.xml                              | 4 ----
 .../src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java    | 8 +++++---
 .../src/org/yocto/sdk/ide/YoctoSDKMessages.properties             | 1 +
 3 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index c082c3a..04ed40e 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -81,10 +81,6 @@
             id="org.yocto.sdk.ide.command.reconfigYocto"
             name="%command.name">
       </command>
-      <command
-            id="org.yocto.sdk.ide.command.disabled"
-            name="DisabledCommand">
-      </command>
    </extension>
    <extension
          point="org.eclipse.ui.handlers">
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java
index 41374a6..13e0e7a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java
@@ -27,9 +27,11 @@ import org.yocto.sdk.ide.actions.ProfileSwitchHandler;
 import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
 
 public class ProjectSpecificContributionItem extends TargetProfileContributionItem {
+	private static final String CONFIGURE_PROJECT_SPECIFIC_PROFILE =
+								"Preferences.Profile.ProjectSpecific.Configure.Label"; //$NON-NLS-N$
 	private static final String PROJECT_SPECIFIC_PROFILE =
 			"Preferences.Profile.ProjectSpecific.Profile.Label"; //$NON-NLS-N$
-	private static final String DISABLED_COMMAND_ID = "org.yocto.sdk.ide.command.disabled"; //$NON-NLS-N$
+	private static final String RECONFIG_YOCTO_COMMAND_ID = "org.yocto.sdk.ide.command.reconfigYocto"; //$NON-NLS-N$
 
 	private IServiceLocator serviceLocator;
 
@@ -50,10 +52,10 @@ public class ProjectSpecificContributionItem extends TargetProfileContributionIt
 		if ((result != SDKCheckResults.SDK_PASS)) {
 			CommandContributionItemParameter parameter = new CommandContributionItemParameter(serviceLocator,
 															null,
-															DISABLED_COMMAND_ID,
+															RECONFIG_YOCTO_COMMAND_ID,
 															CommandContributionItem.STYLE_PUSH);
 
-			parameter.label = YoctoSDKMessages.getString(PROJECT_SPECIFIC_PROFILE);
+			parameter.label = YoctoSDKMessages.getString(CONFIGURE_PROJECT_SPECIFIC_PROFILE);
 
 			items.add(new CommandContributionItem(parameter));
 		} else {
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index e71b7dd..f545c2b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -89,6 +89,7 @@ Preferences.Profile.Standard.Modification.Message = Standard cross development p
 Preferences.Profile.ProjectSpecific.Title = Use project specific settings
 Preferences.Profile.ProjectSpecific.Group.Title = Project specific settings:
 Preferences.Profile.ProjectSpecific.Profile.Label = Project specific profile
+Preferences.Profile.ProjectSpecific.Configure.Label = Configure project specific profile ...
 
 Preferences.Profile.ProjectSpecific.Error.Title = Could not change to project specific target profile
 Preferences.Profile.ProjectSpecific.Error.Message = The project specific target profile is not defined for the project "{0}".\nYou can define it in the project's property page.  
-- 
1.8.1.4


