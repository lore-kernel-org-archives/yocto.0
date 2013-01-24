Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8C18E014D5
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 05:02:45 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Jan 2013 05:01:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,529,1355126400"; d="scan'208";a="251738634"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2013 05:02:25 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 14:48:54 +0200
Message-Id: <1359031734-7443-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][branch:windows-build]Fix Launching Hob command
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Jan 2013 13:02:45 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/bc/ui/actions/LaunchHobAction.java   |   23 +++++++++-----------
 .../bc/ui/builder/BitbakeCommanderNature.java      |   20 ++++++++++-------
 2 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchHobAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchHobAction.java
index e92fac0..dbbd3cd 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchHobAction.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchHobAction.java
@@ -10,26 +10,23 @@
  *******************************************************************************/
 package org.yocto.bc.ui.actions;
 
-import org.eclipse.ui.PlatformUI;
-import org.eclipse.ui.IWorkbench;
-import org.eclipse.ui.IWorkbenchPage;
-import org.eclipse.ui.IWorkbenchWindow;
-
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.runtime.IAdaptable;
 import org.eclipse.jface.action.IAction;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.IStructuredSelection;
-
 import org.eclipse.swt.widgets.Shell;
-
+import org.eclipse.ui.IWorkbench;
+import org.eclipse.ui.IWorkbenchPage;
+import org.eclipse.ui.IWorkbenchWindow;
+import org.eclipse.ui.PlatformUI;
 import org.yocto.bc.ui.builder.BitbakeCommanderNature;
 
 
 public class LaunchHobAction  {
     private static final String DIALOG_TITLE  = "Launch HOB";
-	
+
 	public void run(IAction action) {
 		IResource resource = getSelectedResource();
 		if (resource == null)
@@ -39,21 +36,21 @@ public class LaunchHobAction  {
 		LaunchHobDialog hobDialog = new LaunchHobDialog(new Shell(), DIALOG_TITLE, project);
 		hobDialog.open();
 		String buildDir = hobDialog.getBuildDir();
-	
-		if (buildDir != null) {			
+
+		if (buildDir != null) {
 			try {
 				BitbakeCommanderNature.launchHob(project,buildDir);
 			} catch (Exception e){
-				System.out.println(e.getMessage());
+				e.printStackTrace();
 			}
 		}
-		
+
 	}
 
 	public void dispose() {
 
 	}
-	
+
 	private IResource getSelectedResource() {
 		IWorkbench iworkbench = PlatformUI.getWorkbench();
 		if (iworkbench == null){
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java
index fe2a997..dbd489d 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderNature.java
@@ -36,29 +36,30 @@ public class BitbakeCommanderNature implements IProjectNature {
 	public static void launchHob(IProject project, String buildDir) {
 		try {
 			ILaunchManager lManager = DebugPlugin.getDefault().getLaunchManager();
-			ILaunchConfigurationType configType = 
+			ILaunchConfigurationType configType =
 				lManager.getLaunchConfigurationType("org.eclipse.ui.externaltools.ProgramLaunchConfigurationType");
 			ILaunchConfigurationWorkingCopy w_copy = configType.newInstance(null, "hob");
 			ArrayList<String> listValue = new ArrayList<String>();
 			listValue.add(new String("org.eclipse.ui.externaltools.launchGroup"));
-			w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);		
+			w_copy.setAttribute("org.eclipse.debug.ui.favoriteGroups", listValue);
 			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_LOCATION", "/usr/bin/xterm");
 
-			String init_script = project.getLocation().toString() + "/oe-init-build-env ";
+			String init_script = project.getLocationURI().getPath() + "/oe-init-build-env ";
 			String argument = "-e \"source " + init_script + buildDir + ";hob";// + ";bash\"";
 
 			w_copy.setAttribute("org.eclipse.ui.externaltools.ATTR_TOOL_ARGUMENTS", argument);
 			w_copy.launch(ILaunchManager.RUN_MODE, null);
-			
+
 		} catch (CoreException e) {
 			System.out.println(e.getMessage());
 		}
 	}
 	/*
 	 * (non-Javadoc)
-	 * 
+	 *
 	 * @see org.eclipse.core.resources.IProjectNature#configure()
 	 */
+	@Override
 	public void configure() throws CoreException {
 		IProjectDescription desc = project.getDescription();
 		ICommand[] commands = desc.getBuildSpec();
@@ -80,9 +81,10 @@ public class BitbakeCommanderNature implements IProjectNature {
 
 	/*
 	 * (non-Javadoc)
-	 * 
+	 *
 	 * @see org.eclipse.core.resources.IProjectNature#deconfigure()
 	 */
+	@Override
 	public void deconfigure() throws CoreException {
 		IProjectDescription description = getProject().getDescription();
 		ICommand[] commands = description.getBuildSpec();
@@ -100,18 +102,20 @@ public class BitbakeCommanderNature implements IProjectNature {
 
 	/*
 	 * (non-Javadoc)
-	 * 
+	 *
 	 * @see org.eclipse.core.resources.IProjectNature#getProject()
 	 */
+	@Override
 	public IProject getProject() {
 		return project;
 	}
 
 	/*
 	 * (non-Javadoc)
-	 * 
+	 *
 	 * @see org.eclipse.core.resources.IProjectNature#setProject(org.eclipse.core.resources.IProject)
 	 */
+	@Override
 	public void setProject(IProject project) {
 		this.project = project;
 	}
-- 
1.7.9.5


