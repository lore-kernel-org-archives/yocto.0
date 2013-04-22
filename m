Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f54.google.com (mail-bk0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FBFDE014F7
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:06:19 -0700 (PDT)
Received: by mail-bk0-f54.google.com with SMTP id q11so149651bkw.27
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=zzzs7SwkuzL9/RWZQp5WrTe0vUBRE0cvxfA2ChCwS20=;
	b=JKSflSBrkENOn2TGKvpjd5sDFF3tKFRz6YBGq+XAZi9xwpUzQCECwDqtAwURCxU5I2
	ez4yphUvepoxQ/RhmnNwr69gJNpaGSwCAjeHzZgszCkzrndBnHSV7M9WV9uLftQa0odk
	OG5k+7oUX/2IRuc2eLdvaoGUqR2yZiivABMX71xN8YceggcbGBr3qUj8PrV2BZGxV5dT
	uRjdOXS4d6/QRsxOz81v3R/bqhOdr+Y311GqLG7tcPgWu7kDcwxxGm57+DmSzhXnzcLo
	O2BI3+VBuI4M0SIb7YHXtKzUNbLpbtyoHeMQrOt9YBrESt0Sv93YT+i0lH9T3s5HzqK1
	rJ5A==
X-Received: by 10.204.173.9 with SMTP id n9mr10703484bkz.47.1366632377985;
	Mon, 22 Apr 2013 05:06:17 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id cv9sm6751434bkb.5.2013.04.22.05.06.17
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 22 Apr 2013 05:06:17 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Apr 2013 14:06:03 +0200
Message-Id: <1366632363-6064-7-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [RFC 6/6] plugins/sdk.ide: Fixed whitespace issues
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
X-List-Received-Date: Mon, 22 Apr 2013 12:06:19 -0000

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


