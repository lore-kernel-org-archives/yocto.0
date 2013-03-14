Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B01EBE012F1
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 05:07:25 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 14 Mar 2013 05:07:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,844,1355126400"; d="scan'208";a="214603299"
Received: from unknown (HELO localhost.localdomain) ([10.237.105.62])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Mar 2013 05:07:23 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Mar 2013 13:50:12 +0200
Message-Id: <1363261812-20167-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v2] [eclipse-poky][master]Add more comprehensive error message for invalid project name
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
X-List-Received-Date: Thu, 14 Mar 2013 12:07:25 -0000

[Yocto #4008]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |    1 +
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   27 ++++++++++++++++----
 2 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 8596123..fc9813f 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -10,6 +10,7 @@
  * BMW Car IT - added keys for target profiles
  *******************************************************************************/
 Wizard.SDK.Warning.Title = Invalid Yocto Project ADT Location
+Wizard.SDK.Error.ProjecName = Project name "{0}" is invalid! \nNone of these characters are accepted inside project names: whitespaces, {1}
 
 Poky.SDK.Location.Empty = Specified Toolchain Root Location is empty.
 Poky.SDK.Location.Empty.Advice = You need specify Toolchain Root Location before building any project.
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
index 5ffd6b7..4d1684a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -10,8 +10,11 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.wizard;
 
+import java.util.Arrays;
 import java.util.LinkedHashMap;
 import java.util.List;
+import java.util.regex.Matcher;
+import java.util.regex.Pattern;
 
 import org.eclipse.cdt.autotools.core.AutotoolsNewProjectNature;
 import org.eclipse.cdt.core.CCorePlugin;
@@ -46,11 +49,12 @@ import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoSDKChecker;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
+import org.yocto.sdk.ide.YoctoSDKMessages;
+import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
-import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.YoctoUIElement;
 
 
 @SuppressWarnings("restriction")
@@ -58,11 +62,19 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 	protected boolean savedAutoBuildingValue;
 	protected ProjectCreatedActions pca;
 	protected IManagedBuildInfo info;
+	protected List<Character> illegalChars = Arrays.asList('$', '"','#','%','&','\'','(',')','*', '+', ',','.','/',':',';','<','=','>','?','@','[','\\',']','^','`','{','|','}','~');
+	private static final String PROJECT_NAME_ERROR = "Wizard.SDK.Error.ProjecName";
 	
 	public NewYoctoCProjectTemplate() {
 		pca = new ProjectCreatedActions();
 	}
-	
+	private String printIllegalChars(){
+		String print = "";
+		for (Character ch : illegalChars)
+			print += ch + ", ";
+		print = print.substring(0, print.length() - 2);
+		return print;
+	}
 	public void process(TemplateCore template, ProcessArgument[] args, String processId, IProgressMonitor monitor) throws ProcessFailureException {
 
 		String projectName = args[0].getSimpleValue();
@@ -74,9 +86,9 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 		boolean isEmptryProject = Boolean.valueOf(isEmptyProjetValue).booleanValue();
 		IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
 		try {
-			if (projectName.contains(" ")) {
+			if (!isValidProjectName(projectName)) {
 				project.delete(true, null);
-				throw new ProcessFailureException(projectName + " contains space(s).  Project name can't contain space(s)");
+				throw new ProcessFailureException(YoctoSDKMessages.getFormattedString(PROJECT_NAME_ERROR, new Object[]{projectName, printIllegalChars()}));
 			}
 			if (!project.exists()) {
 				IWorkspace workspace = ResourcesPlugin.getWorkspace();
@@ -166,6 +178,11 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 			throw new OperationCanceledException(Messages.getString("NewManagedProject.3") + e.getMessage());
 		}
 	}
+	private boolean isValidProjectName(String projectName) {
+		Pattern pattern = Pattern.compile("^[a-zA-Z][a-zA-Z0-9_\\-]*$");
+		Matcher matcher = pattern.matcher(projectName);
+		return matcher.find();
+}
 
 	protected final void turnOffAutoBuild(IWorkspace workspace) throws CoreException {
 		IWorkspaceDescription workspaceDesc = workspace.getDescription();
-- 
1.7.9.5


