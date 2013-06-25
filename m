Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58394E01561
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 08:33:49 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 10D6440087;
	Tue, 25 Jun 2013 16:37:09 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue, 25 Jun 2013 17:33:46 +0200
Message-Id: <f80f48fe2add2c749fdc292574ec5774ffda3826.1372170704.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cc65d2199349f7d98c4cbe2c7e5aaaede68fd3dc.1372170704.git.timo.mueller@bmw-carit.de>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
	<8919d96da8a2ff55ff0bea99af6ba4f931e79300.1372170704.git.timo.mueller@bmw-carit.de>
	<773e9adacf475c19c2ff25d8812b54a417415dc6.1372170704.git.timo.mueller@bmw-carit.de>
	<38f1a1a86e0d37470ef7779e0be4bf04f941ce10.1372170704.git.timo.mueller@bmw-carit.de>
	<3136367127ec958a69d3f812bf6f6cffb3d23b42.1372170704.git.timo.mueller@bmw-carit.de>
	<9301cceee7ee98f3d4b306ffc7e4df37de2f32c5.1372170704.git.timo.mueller@bmw-carit.de>
	<3fbc6a267e19288877aeef93675ec0628d139c3d.1372170704.git.timo.mueller@bmw-carit.de>
	<cc65d2199349f7d98c4cbe2c7e5aaaede68fd3dc.1372170704.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1372170704.git.timo.mueller@bmw-carit.de>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv3 8/8] TESTING: add tracing for radio menu
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
X-List-Received-Date: Tue, 25 Jun 2013 15:33:49 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.sdk.ide/.options                        |  2 ++
 .../org/yocto/sdk/ide/TargetProfileContributionItem.java  | 15 ++++++++++++++-
 2 files changed, 16 insertions(+), 1 deletion(-)
 create mode 100644 plugins/org.yocto.sdk.ide/.options

diff --git a/plugins/org.yocto.sdk.ide/.options b/plugins/org.yocto.sdk.ide/.options
new file mode 100644
index 0000000..30ba9c2
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/.options
@@ -0,0 +1,2 @@
+org.yocto.sdk.ide/debug=false
+org.yocto.sdk.ide/debug/profileMenu=true
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java
index 95d8229..755005d 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java
@@ -21,6 +21,7 @@ import org.eclipse.core.commands.ExecutionException;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.runtime.IAdaptable;
+import org.eclipse.core.runtime.Platform;
 import org.eclipse.jface.action.IContributionItem;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.ITreeSelection;
@@ -38,6 +39,9 @@ import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
 public class TargetProfileContributionItem extends CompoundContributionItem implements IWorkbenchContribution {
+	private static final boolean DEBUG = YoctoSDKPlugin.getDefault().isDebugging() &&
+								"true".equalsIgnoreCase(Platform.getDebugOption("org.yocto.sdk.ide/debug/profileMenu"));
+
 	private IServiceLocator serviceLocator;
 
 	public TargetProfileContributionItem() {}
@@ -114,13 +118,22 @@ public class TargetProfileContributionItem extends CompoundContributionItem impl
 		try {
 			if (ProjectPreferenceUtils.getUseProjectSpecificOption(project)) {
 				HandlerUtil.updateRadioState(command, ProfileSwitchHandler.PROJECT_SPECIFIC_PARAMETER);
+
+				if (DEBUG)
+					System.out.println("Enabling project specific menu item");
+
 				return;
 			}
 
 			String selectedProfile = ProjectPreferenceUtils.getProfiles(project).getSelectedProfile();
 			HandlerUtil.updateRadioState(command, selectedProfile);
+			if (DEBUG)
+				System.out.println("Enabling menu item of profile: " + selectedProfile);
 		} catch (ExecutionException e) {
-			// ignore
+			if (DEBUG) {
+				System.out.println("An error occurred when trying to enable a menu item");
+				e.printStackTrace();
+			}
 		}
 	}
 }
-- 
1.8.1.4


