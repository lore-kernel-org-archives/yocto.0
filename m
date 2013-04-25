Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f50.google.com (mail-bk0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DBD2E0152A
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:52 -0700 (PDT)
Received: by mail-bk0-f50.google.com with SMTP id ik5so1216432bkc.9
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=zzzs7SwkuzL9/RWZQp5WrTe0vUBRE0cvxfA2ChCwS20=;
	b=XQoxExgu82QwBK4ld29HzzsG0xvOVtwHvZ/Ugn0YA3NeAUctlGPqGDbFLMuDVMc6n3
	CzwZttm++hI+vRFgfEm++JLkMyjNvZU4a0dKEviHzOATFHIKT1fHxOoKPaql0EMeEOOY
	qCjBfeZ65FA5lzk9WfivzcZ3cybxjqD6liETRfu9ZwX95fzeWRhR/OUnJZZUIF/XonMQ
	afQ8GkKQz8bSjxSCKPtzNaRa89IHZDE/D2gRP5gH9Yov/kuTSaJbeARcUjp2nnqtLvIr
	OWQ3Is12OFNs7ukWPZuhrbObKRN5wQVkUWXGiRrSLJDo/rVs1613wcZdm0q5Dw1FZc6y
	zT8w==
X-Received: by 10.204.232.8 with SMTP id js8mr13256925bkb.109.1366893171053;
	Thu, 25 Apr 2013 05:32:51 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id cv9sm1541605bkb.5.2013.04.25.05.32.49
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 05:32:50 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 14:32:32 +0200
Message-Id: <1366893153-9880-7-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [RFCv2 6/7] plugins/sdk.ide: Fixed whitespace issues
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
X-List-Received-Date: Thu, 25 Apr 2013 12:32:52 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Resolved whitespace issues which popped up while
renaming the NewYoctoProjectTemplateProcess. Also
added some missing "//$NON-NLS-1$" declarations.
---
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |   37 +++++++++++---------
 1 file changed, 21 insertions(+), 16 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
index bf89488..2ac52e5 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java
@@ -62,7 +62,6 @@ import org.yocto.sdk.ide.natures.YoctoSDKNatureUtils;
 import org.yocto.sdk.ide.natures.YoctoSDKProjectNature;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
-
 @SuppressWarnings("restriction")
 public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 	protected boolean savedAutoBuildingValue;
@@ -70,10 +69,11 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 	protected IManagedBuildInfo info;
 	protected List<Character> illegalChars = Arrays.asList('$', '"','#','%','&','\'','(',')','*', '+', ',','.','/',':',';','<','=','>','?','@','[','\\',']','^','`','{','|','}','~');
 	private static final String PROJECT_NAME_ERROR = "Wizard.SDK.Error.ProjectName";
-	
+
 	public NewYoctoProjectTemplateProcess() {
 		pca = new ProjectCreatedActions();
 	}
+
 	private String printIllegalChars(){
 		String print = "";
 		for (Character ch : illegalChars)
@@ -98,7 +98,7 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 		IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(projectName);
 		try {
 			if (!isValidProjectName(projectName)) {
-				
+
 				IWizardPage[] pages = MBSCustomPageManager.getPages();
 				if(pages != null && pages.length > 0) {
 					CDTMainWizardPage cdtMainPage = (CDTMainWizardPage)pages[0];
@@ -110,6 +110,7 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 				}
 				throw new ProcessFailureException(YoctoSDKMessages.getFormattedString(PROJECT_NAME_ERROR, new Object[]{projectName, printIllegalChars()}));
 			}
+
 			if (!project.exists()) {
 				IWorkspace workspace = ResourcesPlugin.getWorkspace();
 				turnOffAutoBuild(workspace);
@@ -120,6 +121,7 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 				}
 
 				List<?> configs = template.getTemplateInfo().getConfigurations();
+
 				if (configs == null || configs.size() == 0) {
 					throw new ProcessFailureException(Messages.getString("NewManagedProject.4") + projectName); //$NON-NLS-1$
 				}
@@ -137,7 +139,7 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 
 				restoreAutoBuild(workspace);
 			} else {
-				
+
 				IWorkspace workspace = ResourcesPlugin.getWorkspace();
 				turnOffAutoBuild(workspace);
 
@@ -148,19 +150,20 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 				//restoreAutoBuild(workspace);
 				IDiscoveredPathManager manager = MakeCorePlugin.getDefault().getDiscoveryManager();
 				IDiscoveredPathInfo pathInfo = manager.getDiscoveredInfo(project);
+
 				if (pathInfo instanceof IPerProjectDiscoveredPathInfo) {
-				    IPerProjectDiscoveredPathInfo projectPathInfo =
-				    	(IPerProjectDiscoveredPathInfo) pathInfo;
-				    projectPathInfo.setIncludeMap(new LinkedHashMap<String, Boolean>());
-				    projectPathInfo.setSymbolMap(new LinkedHashMap<String, SymbolEntry>());
-				    manager.removeDiscoveredInfo(project);    
+					IPerProjectDiscoveredPathInfo projectPathInfo =
+							(IPerProjectDiscoveredPathInfo) pathInfo;
+					projectPathInfo.setIncludeMap(new LinkedHashMap<String, Boolean>());
+					projectPathInfo.setSymbolMap(new LinkedHashMap<String, SymbolEntry>());
+					manager.removeDiscoveredInfo(project);
 				}
 			}
 		}
 		catch (CoreException e)
 		{
 			throw new ProcessFailureException(Messages.getString("NewManagedProject.3") + e.getMessage(), e); //$NON-NLS-1$
-		} 
+		}
 		catch (BuildException e)
 		{
 			throw new ProcessFailureException(Messages.getString("NewManagedProject.3") + e.getMessage()); //$NON-NLS-1$
@@ -170,16 +173,18 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 			try {
 				project.delete(true, monitor);
 			} catch (CoreException err) {
-				throw new ProcessFailureException(Messages.getString("NewManagedProject.3") + e.getMessage() + " " + err.getMessage()); 
+				throw new ProcessFailureException(Messages.getString("NewManagedProject.3") + e.getMessage() //$NON-NLS-1$
+						+ " " + err.getMessage()); //$NON-NLS-1$
 			}
-			throw new OperationCanceledException(Messages.getString("NewManagedProject.3") + e.getMessage());
+			throw new OperationCanceledException(Messages.getString("NewManagedProject.3") + e.getMessage()); //$NON-NLS-1$
 		}
 	}
+
 	private boolean isValidProjectName(String projectName) {
-		Pattern pattern = Pattern.compile("^[a-zA-Z][a-zA-Z0-9_\\-]*$");
+		Pattern pattern = Pattern.compile("^[a-zA-Z][a-zA-Z0-9_\\-]*$"); //$NON-NLS-1$
 		Matcher matcher = pattern.matcher(projectName);
 		return matcher.find();
-}
+	}
 
 	private void addNatures(IProject project, boolean projectExists, boolean isEmptyProject,
 			boolean isAutotoolsProject, boolean isCMakeProject, IProgressMonitor monitor)
@@ -224,13 +229,13 @@ public class NewYoctoProjectTemplateProcess extends ProcessRunner {
 		workspaceDesc.setAutoBuilding(false);
 		workspace.setDescription(workspaceDesc);
 	}
-	
+
 	protected final void restoreAutoBuild(IWorkspace workspace) throws CoreException {
 		IWorkspaceDescription workspaceDesc = workspace.getDescription();
 		workspaceDesc.setAutoBuilding(savedAutoBuildingValue);
 		workspace.setDescription(workspaceDesc);
 	}
-	
+
 	/**
 	 * setOptionValue
 	 * @param config
-- 
1.7.9.5


