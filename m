Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A155E01566
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 16:57:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jun 2013 16:57:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,818,1363158000"; d="scan'208";a="349397650"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2013 16:57:53 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 6 Jun 2013 16:57:52 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.29]) with mapi id
	14.03.0123.003; Thu, 6 Jun 2013 16:57:53 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [Refactor RFC 4/9] Remove unused Bitbake Actions
Thread-Index: AQHOYSpRORWhAI16lUaaUp4EIY9lppkpYMSA
Date: Thu, 6 Jun 2013 23:57:52 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C38081@ORSMSX103.amr.corp.intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
	<1370352368-18730-5-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1370352368-18730-5-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Refactor RFC 4/9] Remove unused Bitbake Actions
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
X-List-Received-Date: Thu, 06 Jun 2013 23:57:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We can't remove them, since we should support build a specific recipe as fr=
om the command line.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, June 04, 2013 6:26 AM
To: yocto@yoctoproject.org
Subject: [yocto] [Refactor RFC 4/9] Remove unused Bitbake Actions

- none of the Bitbake action classes that inherit from AbstractBitbakeComma=
ndAction is used -> clean-up classes & plugin.xml

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.bc.ui/plugin.xml                 |   55 ------
 .../ui/actions/AbstractBitbakeCommandAction.java   |  198 ----------------=
----
 .../bc/ui/actions/BitbakeBuildRecipeAction.java    |   24 ---
 .../bc/ui/actions/BitbakeCleanRecipeAction.java    |   26 ---
 .../yocto/bc/ui/actions/BitbakeImportAction.java   |  106 -----------
 .../bc/ui/actions/BitbakeRebuildRecipeAction.java  |   29 ---
 6 files changed, 438 deletions(-)
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Abs=
tractBitbakeCommandAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeBuildRecipeAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeCleanRecipeAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeImportAction.java
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeRebuildRecipeAction.java

diff --git a/plugins/org.yocto.bc.ui/plugin.xml b/plugins/org.yocto.bc.ui/p=
lugin.xml
index cb0561c..2e1421f 100644
--- a/plugins/org.yocto.bc.ui/plugin.xml
+++ b/plugins/org.yocto.bc.ui/plugin.xml
@@ -39,61 +39,6 @@
             commandId=3D"org.yocto.bc.ui.command.launchHob">
       </handler>
    </extension>
-   <!--
-   <extension
-         point=3D"org.eclipse.ui.popupMenus">
-      <objectContribution
-            adaptable=3D"true"
-            id=3D"org.yocto.bc.ui.contribution2"
-            nameFilter=3D"*.bb"
-            objectClass=3D"org.eclipse.core.resources.IFile">
-         <action
-               class=3D"org.yocto.bc.ui.actions.BitbakeBuildRecipeAction"
-               enablesFor=3D"+"
-               icon=3D"icons/binary.gif"
-               id=3D"org.yocto.bc.ui.BuildPackagePopupAction"
-               label=3D"Build"
-               menubarPath=3D"org.yocto.bc.ui.menu1/group1"
-               tooltip=3D"Build a package">
-         </action>
-               <action
-               class=3D"org.yocto.bc.ui.actions.BitbakeCleanRecipeAction"
-               enablesFor=3D"+"
-               icon=3D"icons/trash.gif"
-               id=3D"org.yocto.bc.ui.CleanPackagePopupAction"
-               label=3D"Clean"
-               menubarPath=3D"org.yocto.bc.ui.menu1/group1"
-               tooltip=3D"Clean a package">
-         </action>
-         <action
-               class=3D"org.yocto.bc.ui.actions.BitbakeImportAction"
-               enablesFor=3D"+"
-               icon=3D"icons/import_wiz.gif"
-               id=3D"org.yocto.bc.ui.BitbakeImportPopupAction"
-               label=3D"Import"
-               menubarPath=3D"org.yocto.bc.ui.menu1/group1"
-               tooltip=3D"Import package sources as Eclipse project.">
-         </action>
-         <menu
-               id=3D"org.yocto.bc.ui.menu1"
-               label=3D"BitBake"
-               path=3D"additions">
-            <separator
-                  name=3D"bc.separator1">
-            </separator>
-         </menu>
-         <action
-               class=3D"org.yocto.bc.ui.actions.BitbakeRebuildRecipeAction=
"
-               enablesFor=3D"+"
-               icon=3D"icons/refresh.gif"
-               id=3D"org.yocto.bc.ui.BuildPackagePopupAction"
-               label=3D"Rebuild"
-               menubarPath=3D"org.yocto.bc.ui.menu1/group1"
-               tooltip=3D"Rebuild a package">
-         </action>
-     </objectContribution>
-   </extension>
-   -->
    <extension
          point=3D"org.eclipse.ui.menus">
       <menuContribution
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBi=
tbakeCommandAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actio=
ns/AbstractBitbakeCommandAction.java
deleted file mode 100644
index cd4f4c9..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCo=
mmandAction.java
+++ /dev/null
@@ -1,198 +0,0 @@
-/*************************************************************************=
****
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *************************************************************************=
******/
-package org.yocto.bc.ui.actions;
-
-import java.io.IOException;
-
-import org.eclipse.core.resources.IFile; -import org.eclipse.core.resource=
s.IProject;
-import org.eclipse.core.runtime.CoreException;
-import org.eclipse.core.runtime.IProgressMonitor;
-import org.eclipse.core.runtime.IStatus; -import org.eclipse.core.runtime.=
Status; -import org.eclipse.core.runtime.jobs.Job;
-import org.eclipse.jface.action.IAction; -import org.eclipse.jface.prefere=
nce.JFacePreferences;
-import org.eclipse.jface.resource.JFaceResources;
-import org.eclipse.jface.viewers.ISelection;
-import org.eclipse.jface.viewers.IStructuredSelection;
-import org.eclipse.swt.graphics.Color;
-import org.eclipse.ui.IWorkbenchWindow; -import org.eclipse.ui.IWorkbenchW=
indowActionDelegate;
-import org.eclipse.ui.console.MessageConsole;
-import org.eclipse.ui.console.MessageConsoleStream;
-import org.yocto.bc.bitbake.BBLanguageHelper;
-import org.yocto.bc.bitbake.BBSession;
-import org.yocto.bc.ui.Activator;
-import org.yocto.bc.ui.builder.BitbakeCommanderNature;
-import org.yocto.remote.utils.ICommandResponseHandler;
-
-public abstract class AbstractBitbakeCommandAction implements IWorkbenchWi=
ndowActionDelegate {
-
-       private class CommandJob extends Job {
-
-               public CommandJob() {
-                       super(getJobTitle());
-               }
-
-               @Override
-               protected IStatus run(IProgressMonitor monitor) {
-                       String cmds[] =3D getCommands();
-                       return execCommands(cmds, monitor);
-               }
-
-       }
-       protected IAction action;
-       protected IFile recipe;
-       protected BBSession bbs;
-
-       private Color commandColor, responseColor, errorColor;
-       private boolean errorOccurred =3D false;
-
-       public AbstractBitbakeCommandAction() {
-               commandColor =3D JFaceResources.getColorRegistry().get(JFac=
ePreferences.ACTIVE_HYPERLINK_COLOR);
-               responseColor =3D JFaceResources.getColorRegistry().get(JFa=
cePreferences.HYPERLINK_COLOR);
-               errorColor =3D JFaceResources.getColorRegistry().get(JFaceP=
references.ERROR_COLOR);
-       }
-
-       private void checkEnabled(IFile file) {
-               try {
-                       if (file.getFileExtension() =3D=3D null || !file.ge=
tFileExtension().equals(BBLanguageHelper.BITBAKE_RECIPE_FILE_EXTENSION)) {
-                               action.setEnabled(false);
-                               return;
-                       }
-
-                       IProject project =3D file.getProject();
-                       if (!(project.hasNature(BitbakeCommanderNature.NATU=
RE_ID))) {
-                               action.setEnabled(false);
-                               return;
-                       }
-
-                       bbs =3D Activator.getBBSession(project.getLocationU=
RI().getPath());
-
-                       if (bbs !=3D null) {
-                               recipe =3D file;
-                               action.setEnabled(true);
-                       }
-
-               } catch (CoreException e) {
-                       action.setEnabled(false);
-                       e.printStackTrace();
-               } catch (Exception e) {
-                       action.setEnabled(false);
-                       e.printStackTrace();
-               }
-       }
-
-       public void dispose() {
-       }
-
-       /**
-        * Execute array of commands with bitbake and put output in console=
.
-        *
-        * @param cmds
-        * @param monitor
-        * @return
-        */
-       protected IStatus execCommands(String[] cmds, final IProgressMonito=
r monitor) {
-               MessageConsole mc =3D bbs.getConsole();
-               final MessageConsoleStream cmd =3D mc.newMessageStream();
-               cmd.setColor(commandColor);
-               final MessageConsoleStream out =3D mc.newMessageStream();
-               final MessageConsoleStream err =3D mc.newMessageStream();
-               err.setColor(errorColor);
-
-               try {
-                       for (int i =3D 0; i < cmds.length; ++i) {
-                               cmd.println(cmds[i]);
-                               monitor.subTask(cmds[i]);
-                               bbs.getShell().execute(cmds[i], new IComman=
dResponseHandler() {
-
-                                       public void response(String line, b=
oolean isError) {
-                                               if (monitor.isCanceled()) {
-                                                       cmd.println("Interr=
upting process by user request.");
-                                                       bbs.getShell().inte=
rrupt();
-                                               }
-
-                                               if (isError) {
-                                                       err.println(line);
-                                                       errorOccurred();
-                                               } else if (line.startsWith(=
"ERROR:")) {
-                                                       err.println(line);
-                                               } else {
-                                                       out.println(line);
-                                               }
-                                       }
-                               });
-                       }
-               } catch (IOException e) {
-                       return new Status(IStatus.ERROR, Activator.PLUGIN_I=
D, e.getMessage(), e);
-               } finally {
-                       try {
-                               if (errorOccurred) {
-                                       cmd.println("At least one error occ=
ured while executing this command.  Check output for more details.");
-                               }
-                               cmd.close();
-                               out.close();
-                               err.close();
-                       } catch (IOException e) {
-                               e.printStackTrace();
-                       }
-               }
-
-               return Status.OK_STATUS;
-       }
-
-       protected void errorOccurred() {
-               errorOccurred =3D true;
-       }
-
-       /**
-        * Return the command to be executed.
-        *
-        * @return
-        */
-       public abstract String[] getCommands();
-
-       public Job getJob() {
-               return new CommandJob();
-       }
-
-       /**
-        * Return the title of the job.
-        *
-        * @return
-        */
-       public abstract String getJobTitle();
-
-       public void init(IWorkbenchWindow window) {
-       }
-
-       public void run(IAction action) {
-               Job job =3D getJob();
-               job.schedule();
-       }
-
-       public void selectionChanged(IAction action, ISelection selection) =
{
-               this.action =3D action;
-               if (selection instanceof IStructuredSelection) {
-                       Object sel =3D ((IStructuredSelection) selection).g=
etFirstElement();
-
-                       if (sel instanceof IFile) {
-                               checkEnabled((IFile) sel);
-                               return;
-                       }
-               }
-
-               action.setEnabled(false);
-       }
-
-}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeBui=
ldRecipeAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/B=
itbakeBuildRecipeAction.java
deleted file mode 100644
index 22ac94c..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeBuildRecip=
eAction.java
+++ /dev/null
@@ -1,24 +0,0 @@
-/*************************************************************************=
****
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *************************************************************************=
******/
-package org.yocto.bc.ui.actions;
-
-public  class BitbakeBuildRecipeAction extends AbstractBitbakeCommandActio=
n {
-
-       @Override
-       public String [] getCommands() {
-               return new String[] {"bitbake -b " + recipe.getLocationURI(=
).getPath()};
-       }
-
-       @Override
-       public String getJobTitle() {
-               return "Building " + recipe.getName();
-       }
-}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeCle=
anRecipeAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/B=
itbakeCleanRecipeAction.java
deleted file mode 100644
index f95117e..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeCleanRecip=
eAction.java
+++ /dev/null
@@ -1,26 +0,0 @@
-/*************************************************************************=
****
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *************************************************************************=
******/
-package org.yocto.bc.ui.actions;
-
-public class BitbakeCleanRecipeAction extends AbstractBitbakeCommandAction=
 {
-
-       @Override
-       public String [] getCommands() {
-               return new String[] {"bitbake -c clean -b " + recipe.getLoc=
ationURI().getPath()};
-       }
-
-       @Override
-       public String getJobTitle() {
-               return "Cleaning " + recipe.getName();
-       }
-
-
-}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeImp=
ortAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bitbak=
eImportAction.java
deleted file mode 100644
index ecceecf..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeImportActi=
on.java
+++ /dev/null
@@ -1,106 +0,0 @@
-/*************************************************************************=
****
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *************************************************************************=
******/
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
-import org.eclipse.core.runtime.IStatus; -import org.eclipse.core.runtime.=
Status; -import org.eclipse.core.runtime.jobs.Job;
-
-import org.yocto.bc.bitbake.BBCommonVars;
-import org.yocto.bc.bitbake.BBRecipe;
-import org.yocto.bc.ui.Activator;
-
-public  class BitbakeImportAction extends AbstractBitbakeCommandAction {
-
-       private class ImportJob extends Job {
-
-               public ImportJob() {
-                       super(getJobTitle());
-               }
-
-               @Override
-               protected IStatus run(IProgressMonitor monitor) {
-
-                       try {
-                               BBRecipe br =3D new BBRecipe(bbs, recipe.ge=
tLocationURI().getPath());
-                               br.initialize();
-                               String filePath =3D (String) br.get(BBCommo=
nVars.S);
-
-                               //"${WORKDIR}/${PN}-${PV}"
-                               if (filePath =3D=3D null) {
-                                       filePath =3D ((String) br.get(BBCom=
monVars.WORKDIR)) + File.separator + ((String) br.get(BBCommonVars.PN)) + "=
-" + ((String) br.get(BBCommonVars.PV));
-                               }
-
-                               String projectName =3D (String) br.get(BBCo=
mmonVars.PN);
-
-                               if (filePath =3D=3D null || projectName =3D=
=3D null) {
-                                       return new Status(IStatus.ERROR, Ac=
tivator.PLUGIN_ID, "Unable to parse recipe file.");
-                               }
-
-                               File workdir =3D new File(filePath);
-
-                               if (workdir.exists() && workdir.isFile()) {
-                                       return new Status(IStatus.ERROR, Ac=
tivator.PLUGIN_ID, workdir.getPath() + " is an invalid workdir.");
-                               }
-
-                               if (!workdir.exists()) {
-                                       execCommands(new String[] {"bitbake=
 -c patch -b " + recipe.getLocationURI().getPath()}, monitor);
-                               }
-
-                               if (!workdir.exists()) {
-                                       return new Status(IStatus.ERROR, Ac=
tivator.PLUGIN_ID, "Unable to retrieve sources from BitBake.  Consult conso=
le.");
-                               }
-
-                               IProjectDescription desc =3D ResourcesPlugi=
n.getWorkspace().newProjectDescription(projectName);
-                               IWorkspaceRoot wsroot =3D ResourcesPlugin.g=
etWorkspace().getRoot();
-                               IProject proj =3D wsroot.getProject(project=
Name);
-                               proj.create(desc, monitor);
-                               proj.open(monitor);
-
-                               String copyCmd =3D "cp -r " + workdir.getAb=
solutePath() + File.separator + "* \"" + proj.getLocationURI().getPath() + =
"\"";
-                               execCommands(new String[] {copyCmd} , monit=
or);
-
-                               proj.refreshLocal(IResource.DEPTH_INFINITE,=
 monitor);
-
-                       } catch (Exception e) {
-                               e.printStackTrace();
-                               return new Status(IStatus.ERROR, Activator.=
PLUGIN_ID, "Unable to create project.", e);
-                       }
-
-                       return Status.OK_STATUS;
-               }
-
-       }
-
-       @Override
-       public String [] getCommands() {
-               return null;
-       }
-
-
-       @Override
-       public Job getJob() {
-               return new ImportJob();
-       }
-
-       @Override
-       public String getJobTitle() {
-               return "Importing " + recipe.getName();
-       }
-}
\ No newline at end of file
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeReb=
uildRecipeAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions=
/BitbakeRebuildRecipeAction.java
deleted file mode 100644
index c5dedea..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeRebuildRec=
ipeAction.java
+++ /dev/null
@@ -1,29 +0,0 @@
-/*************************************************************************=
****
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *************************************************************************=
******/
-package org.yocto.bc.ui.actions;
-
-/**
- * Rebuild a recipe.
- * @author kgilmer
- *
- */
-public  class BitbakeRebuildRecipeAction extends AbstractBitbakeCommandAct=
ion {
-
-       @Override
-       public String [] getCommands() {
-               return new String[] {"bitbake -c rebuild -b " + recipe.getL=
ocationURI().getPath()};
-       }
-
-       @Override
-       public String getJobTitle() {
-               return "Rebuilding " + recipe.getName();
-       }
-}
\ No newline at end of file
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

