Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B4F3E01520
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629270"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:30 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:07 +0300
Message-Id: <1370451622-10619-7-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 06/21] Initialize and store the connection on Recipe Wizard
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:32 -0000

- retrieve the connection for the project destination of the recipe (using the Activator map)
- store it in the Wizard & use it for running remote commands

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |   37 ++++++++++++++------
 1 file changed, 26 insertions(+), 11 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
index 14b268b..c08651a 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
@@ -20,6 +20,7 @@ import java.util.ArrayList;
 
 import org.eclipse.core.resources.IContainer;
 import org.eclipse.core.resources.IFile;
+import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.IWorkspaceRoot;
 import org.eclipse.core.resources.ResourcesPlugin;
@@ -33,6 +34,7 @@ import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.wizard.Wizard;
+import org.eclipse.rse.core.model.IHost;
 import org.eclipse.ui.INewWizard;
 import org.eclipse.ui.IWorkbench;
 import org.eclipse.ui.IWorkbenchPage;
@@ -42,10 +44,15 @@ import org.eclipse.ui.PlatformUI;
 import org.eclipse.ui.ide.IDE;
 
 import org.yocto.bc.bitbake.BBLanguageHelper;
+import org.yocto.bc.ui.Activator;
+import org.yocto.bc.ui.model.ProjectInfo;
+import org.yocto.remote.utils.RemoteHelper;
+import org.yocto.remote.utils.YoctoCommand;
 
 public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 	private NewBitBakeFileRecipeWizardPage page;
 	private ISelection selection;
+	private IHost connection;
 
 	public NewBitBakeFileRecipeWizard() {
 		super();
@@ -106,6 +113,24 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 	 */
 	public void init(IWorkbench workbench, IStructuredSelection selection) {
 		this.selection = selection;
+		if (selection instanceof IStructuredSelection) {
+			Object element = selection.getFirstElement();
+
+			if (element instanceof IResource) {
+				IProject p = ((IResource)element).getProject();
+				try {
+					ProjectInfo projInfo = Activator.getProjInfo(p.getLocationURI());
+					this.connection = projInfo.getConnection();
+				} catch (CoreException e) {
+					e.printStackTrace();
+				} catch (InvocationTargetException e) {
+					e.printStackTrace();
+				} catch (InterruptedException e) {
+					e.printStackTrace();
+				}
+
+			}
+		}
 	}
 
 	/**
@@ -178,17 +203,7 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 			public void run(IProgressMonitor monitor) throws InvocationTargetException {
 				try {
 					doFinish(element, monitor);
-					File temp_dir = new File(element.getMetaDir() + "/temp");
-					if (temp_dir.exists()) {
-						File working_dir = new File(element.getMetaDir());
-					
-						String rm_cmd = "rm -rf temp";
-						final Process process = Runtime.getRuntime().exec(rm_cmd, null, working_dir);
-						int returnCode = process.waitFor();
-						if (returnCode != 0) {
-							throw new Exception("Failed to clean up the temp dir");
-						}
-					}
+					RemoteHelper.handleRunCommandRemote(connection, new YoctoCommand("rm -rf " + element.getMetaDir() + "/temp", "", ""), monitor);
 				} catch (Exception e) {
 					throw new InvocationTargetException(e);
 				} finally {
-- 
1.7.9.5


