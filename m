Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF871E0121B
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 02:24:03 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Mar 2013 02:24:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,843,1355126400"; d="scan'208";a="301870589"
Received: from unknown (HELO localhost.localdomain) ([10.237.105.62])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2013 02:24:01 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Mar 2013 11:06:42 +0200
Message-Id: <1363252002-16769-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][master]Add more comprehensive error message for invalid project name
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
X-List-Received-Date: Thu, 14 Mar 2013 09:24:03 -0000

[Yocto #4008]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   34 +++++++++++++++++---
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
index 5ffd6b7..8ab5972 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
@@ -10,6 +10,8 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.wizard;
 
+import java.util.ArrayList;
+import java.util.Arrays;
 import java.util.LinkedHashMap;
 import java.util.List;
 
@@ -46,11 +48,11 @@ import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoSDKChecker;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
+import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.natures.YoctoSDKEmptyProjectNature;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
-import org.yocto.sdk.ide.YoctoSDKPlugin;
-import org.yocto.sdk.ide.YoctoUIElement;
 
 
 @SuppressWarnings("restriction")
@@ -58,11 +60,20 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 	protected boolean savedAutoBuildingValue;
 	protected ProjectCreatedActions pca;
 	protected IManagedBuildInfo info;
+	protected List<Character> illegalChars = Arrays.asList('$', '"','#','%','&','\'','(',')','*', '+', ',','.','/',':',';','<','=','>','?','@','[','\\',']','^','`','{','|','}','~');
 	
 	public NewYoctoCProjectTemplate() {
 		pca = new ProjectCreatedActions();
 	}
-	
+	private String printIllegalChars(){
+		String print = "";
+		for (int i = 0; i < illegalChars.size(); i++) {
+			print += illegalChars.get(i);
+			if (i != illegalChars.size() - 1)
+				print += " ,";
+		}
+		return print;
+	}
 	public void process(TemplateCore template, ProcessArgument[] args, String processId, IProgressMonitor monitor) throws ProcessFailureException {
 
 		String projectName = args[0].getSimpleValue();
@@ -74,9 +85,10 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 		boolean isEmptryProject = Boolean.valueOf(isEmptyProjetValue).booleanValue();
 		IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
 		try {
-			if (projectName.contains(" ")) {
+			if (!isValidProjectName(projectName)) {
 				project.delete(true, null);
-				throw new ProcessFailureException(projectName + " contains space(s).  Project name can't contain space(s)");
+				throw new ProcessFailureException("Project name " + "\""+ projectName +"\"" +" is invalid! " +
+						"\nNone of these characters are accepted inside project names: whitespaces, " + printIllegalChars());
 			}
 			if (!project.exists()) {
 				IWorkspace workspace = ResourcesPlugin.getWorkspace();
@@ -166,6 +178,18 @@ public class NewYoctoCProjectTemplate extends ProcessRunner {
 			throw new OperationCanceledException(Messages.getString("NewManagedProject.3") + e.getMessage());
 		}
 	}
+	private boolean isValidProjectName(String projectName) {
+		if (projectName.contains("\\s+"))
+			return false;
+
+		char[] chars = projectName.toCharArray();
+		if (!Character.isJavaIdentifierStart(chars[0]))
+			return false;
+		for (int i = 1; i < chars.length; i++)
+			if (illegalChars.contains(chars[i]))
+				return false;
+		return true;
+}
 
 	protected final void turnOffAutoBuild(IWorkspace workspace) throws CoreException {
 		IWorkspaceDescription workspaceDesc = workspace.getDescription();
-- 
1.7.9.5


