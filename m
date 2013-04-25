Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f52.google.com (mail-bk0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15FE4E0152A
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:52 -0700 (PDT)
Received: by mail-bk0-f52.google.com with SMTP id je9so310767bkc.39
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=0a8bi5zGJgh10OCkOwyGIv26TbgAdmsZHYHf5dhcO4Q=;
	b=E8NSdrnxUgBhJdHQOE1LlWVdTIyWb/6vrt8jauNCsoL3U0UVCWVBmKJ9Z7WDlpqpIL
	g7qhvRyFDh7bL1F9VhomtoHaK/SkuYhHn6uBM8EiOXkDmocgd4cZymDQk3w3qd4ntsJn
	VOYloK1+rchRocYBp2wvQMJB8jb94m/ndvjMDV0bLzyug9pjerz4DkmqzJfTDCdvXqNm
	KBTzRLb8jjzJ/joHvl2ns011y//x/CwHzd0cqVCgkmyPbZTobYDO5l7Wsfgosec1StsR
	GRJ2sSQ3IxS+mMEKWbVR9pNTBZqiC57YGkOh0H7Ix9QObSE7QtLuXhL8Z4N2gSg9a7h9
	OxOA==
X-Received: by 10.204.190.143 with SMTP id di15mr7661306bkb.38.1366893172128; 
	Thu, 25 Apr 2013 05:32:52 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id cv9sm1541605bkb.5.2013.04.25.05.32.51
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 05:32:51 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 14:32:33 +0200
Message-Id: <1366893153-9880-8-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [RFCv2 7/7] plugins/sdk.ide: Extracted member variables
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
X-List-Received-Date: Thu, 25 Apr 2013 12:32:53 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Simplified the calling of the addNatures(...)
method. Variables describing the nature of the
project are not more local for the process(...)
method, but private object members.
---
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |   29 ++++++++++++++------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
index 2ac52e5..9c6dca4 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
@@ -70,8 +70,18 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 	protected List<Character> illegalChars = Arrays.asList('$', '"','#','%','&','\'','(',')','*', '+', ',','.','/',':',';','<','=','>','?','@','[','\\',']','^','`','{','|','}','~');
 	private static final String PROJECT_NAME_ERROR = "Wizard.SDK.Error.ProjectName";
 
+	private boolean isCProject;
+	private boolean isEmptyProject;
+	private boolean isAutotoolsProject;
+	private boolean isCMakeProject;
+
 	public NewYoctoProjectTemplateProcess() {
 		pca = new ProjectCreatedActions();
+
+		isCProject = false;
+		isEmptyProject = false;
+		isAutotoolsProject = false;
+		isCMakeProject = false;
 	}
 
 	private String printIllegalChars(){
@@ -81,6 +91,7 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 		print = print.substring(0, print.length() - 2);
 		return print;
 	}
+
 	public void process(TemplateCore template, ProcessArgument[] args, String processId, IProgressMonitor monitor) throws ProcessFailureException {
 
 		String projectName = args[0].getSimpleValue();
@@ -90,10 +101,11 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 		String isEmptyProjetValue = args[4].getSimpleValue();
 		String isAutotoolsProjectValue = args[5].getSimpleValue();
 		String isCMakeProjectValue = args[6].getSimpleValue();
-		boolean isCProject = Boolean.valueOf(isCProjectValue).booleanValue();
-		boolean isEmptyProject = Boolean.valueOf(isEmptyProjetValue).booleanValue();
-		boolean isAutotoolsProject = Boolean.valueOf(isAutotoolsProjectValue).booleanValue();
-		boolean isCMakeProject = Boolean.valueOf(isCMakeProjectValue).booleanValue();
+
+		isCProject = Boolean.valueOf(isCProjectValue).booleanValue();
+		isEmptyProject = Boolean.valueOf(isEmptyProjetValue).booleanValue();
+		isAutotoolsProject = Boolean.valueOf(isAutotoolsProjectValue).booleanValue();
+		isCMakeProject = Boolean.valueOf(isCMakeProjectValue).booleanValue();
 
 		IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
 		try {
@@ -132,7 +144,7 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 				pca.setArtifactExtension(artifactExtension);
 				info = pca.createProject(monitor, CCorePlugin.DEFAULT_INDEXER, isCProject);
 
-				addNatures(project, false, isEmptyProject, isAutotoolsProject, isCMakeProject, monitor);
+				addNatures(project, false, monitor);
 
 				info.setValid(true);
 				ManagedBuildManager.saveBuildInfo(project, true);
@@ -145,7 +157,7 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 
 				YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
 
-				addNatures(project, true, isEmptyProject, isAutotoolsProject, isCMakeProject, monitor);
+				addNatures(project, true, monitor);
 
 				//restoreAutoBuild(workspace);
 				IDiscoveredPathManager manager = MakeCorePlugin.getDefault().getDiscoveryManager();
@@ -186,9 +198,8 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 		return matcher.find();
 	}
 
-	private void addNatures(IProject project, boolean projectExists, boolean isEmptyProject,
-			boolean isAutotoolsProject, boolean isCMakeProject, IProgressMonitor monitor)
-					throws CoreException, YoctoGeneralException {
+	private void addNatures(IProject project, boolean projectExists, IProgressMonitor monitor)
+			throws CoreException, YoctoGeneralException {
 		YoctoSDKNatureUtils.addNature(project, YoctoSDKProjectNature.YoctoSDK_NATURE_ID, monitor);
 
 		YoctoSDKChecker.checkIfGloballySelectedYoctoProfileIsValid();
-- 
1.7.9.5


