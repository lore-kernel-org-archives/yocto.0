Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 494D4E014A7
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:38 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id c41so2543102eek.37
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=zzzs7SwkuzL9/RWZQp5WrTe0vUBRE0cvxfA2ChCwS20=;
	b=aMEMOp3l51jv918/0tixB3CHQ5xSaJLeLvuuWH4QfU8Mew0sgTklkMEroiZ4dv+tgZ
	kHBq8+O/+L8d9cCMJoFvvtgCTMHtk6Jcae0p2aze9RPDR/Wu8w5hyJDLrSkAvtETpIf4
	oSZIX1P1nWk1z6o/seBKG+JHZwwg677gycp+paiGOHDJ0cfcHpVR/VRJbFVDjW3CcNms
	6axFSE+NIMLkYcWVdduIu8z+aQIiHhxLClwPZc4wO/FymYq4JseRt14X8de7ONCPO4OZ
	HjwBhqLzyS+gZJI+fz6s2Iklbxg416TivrKXZIkxWz5gai/rc1R9mVWZRRFjKg7YokCG
	RVhg==
X-Received: by 10.15.35.71 with SMTP id f47mr42949117eev.15.1369397017538;
	Fri, 24 May 2013 05:03:37 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id y10sm23198135eev.3.2013.05.24.05.03.36
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 24 May 2013 05:03:37 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 24 May 2013 14:03:24 +0200
Message-Id: <1369397005-3262-7-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 6/7] plugins/sdk.ide: Fixed whitespace issues
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
X-List-Received-Date: Fri, 24 May 2013 12:03:38 -0000

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


