Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AF52E01506
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:48:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 06:48:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,799,1363158000"; d="scan'208";a="344571092"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2013 06:48:36 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 16:26:03 +0300
Message-Id: <1370352368-18730-5-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 4/9] Remove unused Bitbake Actions
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
X-List-Received-Date: Tue, 04 Jun 2013 13:48:21 -0000

- none of the Bitbake action classes that inherit from AbstractBitbakeCommandAction is used -> clean-up classes & plugin.xml

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/plugin.xml                 |   55 ------
 .../ui/actions/AbstractBitbakeCommandAction.java   |  198 --------------------
 .../bc/ui/actions/BitbakeBuildRecipeAction.java    |   24 ---
 .../bc/ui/actions/BitbakeCleanRecipeAction.java    |   26 ---
 .../yocto/bc/ui/actions/BitbakeImportAction.java   |  106 -----------
 .../bc/ui/actions/BitbakeRebuildRecipeAction.java  |   29 ---
 6 files changed, 438 deletions(-)
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCommandAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeBuildRecipeAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeCleanRecipeAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeImportAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeRebuildRecipeAction.java

diff --git a/plugins/org.yocto.bc.ui/plugin.xml b/plugins/org.yocto.bc.ui/plugin.xml
index cb0561c..2e1421f 100644
--- a/plugins/org.yocto.bc.ui/plugin.xml
+++ b/plugins/org.yocto.bc.ui/plugin.xml
@@ -39,61 +39,6 @@
             commandId="org.yocto.bc.ui.command.launchHob">
       </handler>
    </extension>
-   <!--
-   <extension
-         point="org.eclipse.ui.popupMenus">
-      <objectContribution
-            adaptable="true"
-            id="org.yocto.bc.ui.contribution2"
-            nameFilter="*.bb"
-            objectClass="org.eclipse.core.resources.IFile">
-         <action
-               class="org.yocto.bc.ui.actions.BitbakeBuildRecipeAction"
-               enablesFor="+"
-               icon="icons/binary.gif"
-               id="org.yocto.bc.ui.BuildPackagePopupAction"
-               label="Build"
-               menubarPath="org.yocto.bc.ui.menu1/group1"
-               tooltip="Build a package">
-         </action>
-   		<action
-               class="org.yocto.bc.ui.actions.BitbakeCleanRecipeAction"
-               enablesFor="+"
-               icon="icons/trash.gif"
-               id="org.yocto.bc.ui.CleanPackagePopupAction"
-               label="Clean"
-               menubarPath="org.yocto.bc.ui.menu1/group1"
-               tooltip="Clean a package">
-         </action>
-         <action
-               class="org.yocto.bc.ui.actions.BitbakeImportAction"
-               enablesFor="+"
-               icon="icons/import_wiz.gif"
-               id="org.yocto.bc.ui.BitbakeImportPopupAction"
-               label="Import"
-               menubarPath="org.yocto.bc.ui.menu1/group1"
-               tooltip="Import package sources as Eclipse project.">
-         </action>
-         <menu
-               id="org.yocto.bc.ui.menu1"
-               label="BitBake"
-               path="additions">
-            <separator
-                  name="bc.separator1">
-            </separator>
-         </menu>
-         <action
-               class="org.yocto.bc.ui.actions.BitbakeRebuildRecipeAction"
-               enablesFor="+"
-               icon="icons/refresh.gif"
-               id="org.yocto.bc.ui.BuildPackagePopupAction"
-               label="Rebuild"
-               menubarPath="org.yocto.bc.ui.menu1/group1"
-               tooltip="Rebuild a package">
-         </action>
-     </objectContribution>
-   </extension>
-   -->
    <extension
          point="org.eclipse.ui.menus">
       <menuContribution
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCommandAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCommandAction.java
deleted file mode 100644
index cd4f4c9..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCommandAction.java
+++ /dev/null
@@ -1,198 +0,0 @@
-/*****************************************************************************
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *******************************************************************************/
-package org.yocto.bc.ui.actions;
-
-import java.io.IOException;
-
-import org.eclipse.core.resources.IFile;
-import org.eclipse.core.resources.IProject;
-import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.IStatus;
-import org.eclipse.core.runtime.Status;
-import org.eclipse.core.runtime.jobs.Job;
-import org.eclipse.jface.action.IAction;
-import org.eclipse.jface.preference.JFacePreferences;
-import org.eclipse.jface.resource.JFaceResources;
-import org.eclipse.jface.viewers.ISelection;
-import org.eclipse.jface.viewers.IStructuredSelection;
-import org.eclipse.swt.graphics.Color;
-import org.eclipse.ui.IWorkbenchWindow;
-import org.eclipse.ui.IWorkbenchWindowActionDelegate;
-import org.eclipse.ui.console.MessageConsole;
-import org.eclipse.ui.console.MessageConsoleStream;
-import org.yocto.bc.bitbake.BBLanguageHelper;
-import org.yocto.bc.bitbake.BBSession;
-import org.yocto.bc.ui.Activator;
-import org.yocto.bc.ui.builder.BitbakeCommanderNature;
-import org.yocto.remote.utils.ICommandResponseHandler;
-
-public abstract class AbstractBitbakeCommandAction implements IWorkbenchWindowActionDelegate {
-
-	private class CommandJob extends Job {
-
-		public CommandJob() {
-			super(getJobTitle());
-		}
-
-		@Override
-		protected IStatus run(IProgressMonitor monitor) {
-			String cmds[] = getCommands();
-			return execCommands(cmds, monitor);
-		}
-
-	}
-	protected IAction action;
-	protected IFile recipe;
-	protected BBSession bbs;
-
-	private Color commandColor, responseColor, errorColor;
-	private boolean errorOccurred = false;
-
-	public AbstractBitbakeCommandAction() {
-		commandColor = JFaceResources.getColorRegistry().get(JFacePreferences.ACTIVE_HYPERLINK_COLOR);
-		responseColor = JFaceResources.getColorRegistry().get(JFacePreferences.HYPERLINK_COLOR);
-		errorColor = JFaceResources.getColorRegistry().get(JFacePreferences.ERROR_COLOR);
-	}
-
-	private void checkEnabled(IFile file) {
-		try {
-			if (file.getFileExtension() == null || !file.getFileExtension().equals(BBLanguageHelper.BITBAKE_RECIPE_FILE_EXTENSION)) {
-				action.setEnabled(false);
-				return;
-			}
-
-			IProject project = file.getProject();
-			if (!(project.hasNature(BitbakeCommanderNature.NATURE_ID))) {
-				action.setEnabled(false);
-				return;
-			}
-
-			bbs = Activator.getBBSession(project.getLocationURI().getPath());
-
-			if (bbs != null) {
-				recipe = file;
-				action.setEnabled(true);
-			}
-
-		} catch (CoreException e) {
-			action.setEnabled(false);
-			e.printStackTrace();
-		} catch (Exception e) {
-			action.setEnabled(false);
-			e.printStackTrace();
-		}
-	}
-
-	public void dispose() {
-	}
-
-	/**
-	 * Execute array of commands with bitbake and put output in console.
-	 * 
-	 * @param cmds
-	 * @param monitor
-	 * @return
-	 */
-	protected IStatus execCommands(String[] cmds, final IProgressMonitor monitor) {
-		MessageConsole mc = bbs.getConsole();
-		final MessageConsoleStream cmd = mc.newMessageStream();
-		cmd.setColor(commandColor);
-		final MessageConsoleStream out = mc.newMessageStream();
-		final MessageConsoleStream err = mc.newMessageStream();
-		err.setColor(errorColor);
-		
-		try {
-			for (int i = 0; i < cmds.length; ++i) {
-				cmd.println(cmds[i]);
-				monitor.subTask(cmds[i]);
-				bbs.getShell().execute(cmds[i], new ICommandResponseHandler() {
-
-					public void response(String line, boolean isError) {
-						if (monitor.isCanceled()) {
-							cmd.println("Interrupting process by user request.");
-							bbs.getShell().interrupt();
-						}
-						
-						if (isError) {
-							err.println(line);
-							errorOccurred();
-						} else if (line.startsWith("ERROR:")) {
-							err.println(line);
-						} else {
-							out.println(line);
-						}
-					}
-				});
-			}
-		} catch (IOException e) {
-			return new Status(IStatus.ERROR, Activator.PLUGIN_ID, e.getMessage(), e);
-		} finally {
-			try {
-				if (errorOccurred) {
-					cmd.println("At least one error occured while executing this command.  Check output for more details.");
-				}
-				cmd.close();
-				out.close();
-				err.close();
-			} catch (IOException e) {
-				e.printStackTrace();
-			}
-		}
-
-		return Status.OK_STATUS;
-	}
-
-	protected void errorOccurred() {
-		errorOccurred = true;
-	}
-
-	/**
-	 * Return the command to be executed.
-	 * 
-	 * @return
-	 */
-	public abstract String[] getCommands();
-
-	public Job getJob() {
-		return new CommandJob();
-	}
-
-	/**
-	 * Return the title of the job.
-	 * 
-	 * @return
-	 */
-	public abstract String getJobTitle();
-
-	public void init(IWorkbenchWindow window) {
-	}
-
-	public void run(IAction action) {
-		Job job = getJob();
-		job.schedule();
-	}
-
-	public void selectionChanged(IAction action, ISelection selection) {
-		this.action = action;
-		if (selection instanceof IStructuredSelection) {
-			Object sel = ((IStructuredSelection) selection).getFirstElement();
-
-			if (sel instanceof IFile) {
-				checkEnabled((IFile) sel);
-				return;
-			}
-		}
-
-		action.setEnabled(false);
-	}
-
-}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeBuildRecipeAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeBuildRecipeAction.java
deleted file mode 100644
index 22ac94c..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeBuildRecipeAction.java
+++ /dev/null
@@ -1,24 +0,0 @@
-/*****************************************************************************
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *******************************************************************************/
-package org.yocto.bc.ui.actions;
-
-public  class BitbakeBuildRecipeAction extends AbstractBitbakeCommandAction {
-
-	@Override
-	public String [] getCommands() {
-		return new String[] {"bitbake -b " + recipe.getLocationURI().getPath()};
-	}
-
-	@Override
-	public String getJobTitle() {
-		return "Building " + recipe.getName();
-	}
-}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeCleanRecipeAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeCleanRecipeAction.java
deleted file mode 100644
index f95117e..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeCleanRecipeAction.java
+++ /dev/null
@@ -1,26 +0,0 @@
-/*****************************************************************************
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *******************************************************************************/
-package org.yocto.bc.ui.actions;
-
-public class BitbakeCleanRecipeAction extends AbstractBitbakeCommandAction {
-
-	@Override
-	public String [] getCommands() {
-		return new String[] {"bitbake -c clean -b " + recipe.getLocationURI().getPath()};
-	}
-
-	@Override
-	public String getJobTitle() {
-		return "Cleaning " + recipe.getName();
-	}
-	
-
-}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeImportAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeImportAction.java
deleted file mode 100644
index ecceecf..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeImportAction.java
+++ /dev/null
@@ -1,106 +0,0 @@
-/*****************************************************************************
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *******************************************************************************/
-package org.yocto.bc.ui.actions;
-
-import java.io.File;
-
-import org.eclipse.core.resources.IProject;
-import org.eclipse.core.resources.IProjectDescription;
-import org.eclipse.core.resources.IResource;
-import org.eclipse.core.resources.IWorkspaceRoot;
-import org.eclipse.core.resources.ResourcesPlugin;
-import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.IStatus;
-import org.eclipse.core.runtime.Status;
-import org.eclipse.core.runtime.jobs.Job;
-
-import org.yocto.bc.bitbake.BBCommonVars;
-import org.yocto.bc.bitbake.BBRecipe;
-import org.yocto.bc.ui.Activator;
-
-public  class BitbakeImportAction extends AbstractBitbakeCommandAction {
-
-	private class ImportJob extends Job {
-
-		public ImportJob() {
-			super(getJobTitle());
-		}
-
-		@Override
-		protected IStatus run(IProgressMonitor monitor) {
-			
-			try {
-				BBRecipe br = new BBRecipe(bbs, recipe.getLocationURI().getPath());
-				br.initialize();
-				String filePath = (String) br.get(BBCommonVars.S);
-				
-				//"${WORKDIR}/${PN}-${PV}"
-				if (filePath == null) {
-					filePath = ((String) br.get(BBCommonVars.WORKDIR)) + File.separator + ((String) br.get(BBCommonVars.PN)) + "-" + ((String) br.get(BBCommonVars.PV));
-				}
-				
-				String projectName = (String) br.get(BBCommonVars.PN);
-				
-				if (filePath == null || projectName == null) {
-					return new Status(IStatus.ERROR, Activator.PLUGIN_ID, "Unable to parse recipe file.");
-				}
-				
-				File workdir = new File(filePath);
-				
-				if (workdir.exists() && workdir.isFile()) {
-					return new Status(IStatus.ERROR, Activator.PLUGIN_ID, workdir.getPath() + " is an invalid workdir.");
-				}
-			
-				if (!workdir.exists()) {
-					execCommands(new String[] {"bitbake -c patch -b " + recipe.getLocationURI().getPath()}, monitor);
-				}
-				
-				if (!workdir.exists()) {
-					return new Status(IStatus.ERROR, Activator.PLUGIN_ID, "Unable to retrieve sources from BitBake.  Consult console.");
-				}
-				
-				IProjectDescription desc = ResourcesPlugin.getWorkspace().newProjectDescription(projectName);
-				IWorkspaceRoot wsroot = ResourcesPlugin.getWorkspace().getRoot();
-				IProject proj = wsroot.getProject(projectName);
-				proj.create(desc, monitor);		
-				proj.open(monitor);
-				
-				String copyCmd = "cp -r " + workdir.getAbsolutePath() + File.separator + "* \"" + proj.getLocationURI().getPath() + "\"";
-				execCommands(new String[] {copyCmd} , monitor);
-				
-				proj.refreshLocal(IResource.DEPTH_INFINITE, monitor);
-				
-			} catch (Exception e) {
-				e.printStackTrace();
-				return new Status(IStatus.ERROR, Activator.PLUGIN_ID, "Unable to create project.", e);
-			}
-			
-			return Status.OK_STATUS;
-		}
-		
-	}
-
-	@Override
-	public String [] getCommands() {
-		return null;
-	}
-	
-
-	@Override
-	public Job getJob() {
-		return new ImportJob();
-	}
-	
-	@Override
-	public String getJobTitle() {
-		return "Importing " + recipe.getName();
-	}
-}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeRebuildRecipeAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeRebuildRecipeAction.java
deleted file mode 100644
index c5dedea..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeRebuildRecipeAction.java
+++ /dev/null
@@ -1,29 +0,0 @@
-/*****************************************************************************
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *******************************************************************************/
-package org.yocto.bc.ui.actions;
-
-/**
- * Rebuild a recipe.
- * @author kgilmer
- *
- */
-public  class BitbakeRebuildRecipeAction extends AbstractBitbakeCommandAction {
-
-	@Override
-	public String [] getCommands() {
-		return new String[] {"bitbake -c rebuild -b " + recipe.getLocationURI().getPath()};
-	}
-
-	@Override
-	public String getJobTitle() {
-		return "Rebuilding " + recipe.getName();
-	}
-}
\ No newline at end of file
-- 
1.7.9.5


