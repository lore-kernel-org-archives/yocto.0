Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02F3EE003E3
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 05:19:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Jun 2013 05:20:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,821,1363158000"; d="scan'208";a="349663397"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2013 05:19:51 -0700
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 7 Jun 2013 13:19:46 +0100
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.105]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.3]) with mapi id
	14.03.0123.003; Fri, 7 Jun 2013 13:19:44 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [Refactor RFC 4/9] Remove unused Bitbake Actions
Thread-Index: AQHOYSo+bbkHqI330ECSzSy54xPsMJkpUDcAgADf2Yk=
Date: Fri, 7 Jun 2013 12:19:43 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A463915FF43EC@IRSMSX101.ger.corp.intel.com>
References: <1370352368-18730-1-git-send-email-ioanax.grigoropol@intel.com>
	<1370352368-18730-5-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C73C38081@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C38081@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
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
X-List-Received-Date: Fri, 07 Jun 2013 12:19:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Neither of the actions is actually defined in the plugin.xml. If we need to=
 support it, why aren't they enabled ?=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Friday, June 07, 2013 2:57 AM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [Refactor RFC 4/9] Remove unused Bitbake Actions=0A=
=0A=
We can't remove them, since we should support build a specific recipe as fr=
om the command line.=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Tuesday, June 04, 2013 6:26 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [Refactor RFC 4/9] Remove unused Bitbake Actions=0A=
=0A=
- none of the Bitbake action classes that inherit from AbstractBitbakeComma=
ndAction is used -> clean-up classes & plugin.xml=0A=
=0A=
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
---=0A=
 plugins/org.yocto.bc.ui/plugin.xml                 |   55 ------=0A=
 .../ui/actions/AbstractBitbakeCommandAction.java   |  198 ----------------=
----=0A=
 .../bc/ui/actions/BitbakeBuildRecipeAction.java    |   24 ---=0A=
 .../bc/ui/actions/BitbakeCleanRecipeAction.java    |   26 ---=0A=
 .../yocto/bc/ui/actions/BitbakeImportAction.java   |  106 -----------=0A=
 .../bc/ui/actions/BitbakeRebuildRecipeAction.java  |   29 ---=0A=
 6 files changed, 438 deletions(-)=0A=
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Abs=
tractBitbakeCommandAction.java=0A=
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeBuildRecipeAction.java=0A=
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeCleanRecipeAction.java=0A=
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeImportAction.java=0A=
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bit=
bakeRebuildRecipeAction.java=0A=
=0A=
diff --git a/plugins/org.yocto.bc.ui/plugin.xml b/plugins/org.yocto.bc.ui/p=
lugin.xml=0A=
index cb0561c..2e1421f 100644=0A=
--- a/plugins/org.yocto.bc.ui/plugin.xml=0A=
+++ b/plugins/org.yocto.bc.ui/plugin.xml=0A=
@@ -39,61 +39,6 @@=0A=
             commandId=3D"org.yocto.bc.ui.command.launchHob">=0A=
       </handler>=0A=
    </extension>=0A=
-   <!--=0A=
-   <extension=0A=
-         point=3D"org.eclipse.ui.popupMenus">=0A=
-      <objectContribution=0A=
-            adaptable=3D"true"=0A=
-            id=3D"org.yocto.bc.ui.contribution2"=0A=
-            nameFilter=3D"*.bb"=0A=
-            objectClass=3D"org.eclipse.core.resources.IFile">=0A=
-         <action=0A=
-               class=3D"org.yocto.bc.ui.actions.BitbakeBuildRecipeAction"=
=0A=
-               enablesFor=3D"+"=0A=
-               icon=3D"icons/binary.gif"=0A=
-               id=3D"org.yocto.bc.ui.BuildPackagePopupAction"=0A=
-               label=3D"Build"=0A=
-               menubarPath=3D"org.yocto.bc.ui.menu1/group1"=0A=
-               tooltip=3D"Build a package">=0A=
-         </action>=0A=
-               <action=0A=
-               class=3D"org.yocto.bc.ui.actions.BitbakeCleanRecipeAction"=
=0A=
-               enablesFor=3D"+"=0A=
-               icon=3D"icons/trash.gif"=0A=
-               id=3D"org.yocto.bc.ui.CleanPackagePopupAction"=0A=
-               label=3D"Clean"=0A=
-               menubarPath=3D"org.yocto.bc.ui.menu1/group1"=0A=
-               tooltip=3D"Clean a package">=0A=
-         </action>=0A=
-         <action=0A=
-               class=3D"org.yocto.bc.ui.actions.BitbakeImportAction"=0A=
-               enablesFor=3D"+"=0A=
-               icon=3D"icons/import_wiz.gif"=0A=
-               id=3D"org.yocto.bc.ui.BitbakeImportPopupAction"=0A=
-               label=3D"Import"=0A=
-               menubarPath=3D"org.yocto.bc.ui.menu1/group1"=0A=
-               tooltip=3D"Import package sources as Eclipse project.">=0A=
-         </action>=0A=
-         <menu=0A=
-               id=3D"org.yocto.bc.ui.menu1"=0A=
-               label=3D"BitBake"=0A=
-               path=3D"additions">=0A=
-            <separator=0A=
-                  name=3D"bc.separator1">=0A=
-            </separator>=0A=
-         </menu>=0A=
-         <action=0A=
-               class=3D"org.yocto.bc.ui.actions.BitbakeRebuildRecipeAction=
"=0A=
-               enablesFor=3D"+"=0A=
-               icon=3D"icons/refresh.gif"=0A=
-               id=3D"org.yocto.bc.ui.BuildPackagePopupAction"=0A=
-               label=3D"Rebuild"=0A=
-               menubarPath=3D"org.yocto.bc.ui.menu1/group1"=0A=
-               tooltip=3D"Rebuild a package">=0A=
-         </action>=0A=
-     </objectContribution>=0A=
-   </extension>=0A=
-   -->=0A=
    <extension=0A=
          point=3D"org.eclipse.ui.menus">=0A=
       <menuContribution=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBi=
tbakeCommandAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actio=
ns/AbstractBitbakeCommandAction.java=0A=
deleted file mode 100644=0A=
index cd4f4c9..0000000=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/AbstractBitbakeCo=
mmandAction.java=0A=
+++ /dev/null=0A=
@@ -1,198 +0,0 @@=0A=
-/*************************************************************************=
****=0A=
- * Copyright (c) 2009 Ken Gilmer=0A=
- * All rights reserved. This program and the accompanying materials=0A=
- * are made available under the terms of the Eclipse Public License v1.0=
=0A=
- * which accompanies this distribution, and is available at=0A=
- * http://www.eclipse.org/legal/epl-v10.html=0A=
- *=0A=
- * Contributors:=0A=
- *     Ken Gilmer - initial API and implementation=0A=
- *************************************************************************=
******/=0A=
-package org.yocto.bc.ui.actions;=0A=
-=0A=
-import java.io.IOException;=0A=
-=0A=
-import org.eclipse.core.resources.IFile; -import org.eclipse.core.resource=
s.IProject;=0A=
-import org.eclipse.core.runtime.CoreException;=0A=
-import org.eclipse.core.runtime.IProgressMonitor;=0A=
-import org.eclipse.core.runtime.IStatus; -import org.eclipse.core.runtime.=
Status; -import org.eclipse.core.runtime.jobs.Job;=0A=
-import org.eclipse.jface.action.IAction; -import org.eclipse.jface.prefere=
nce.JFacePreferences;=0A=
-import org.eclipse.jface.resource.JFaceResources;=0A=
-import org.eclipse.jface.viewers.ISelection;=0A=
-import org.eclipse.jface.viewers.IStructuredSelection;=0A=
-import org.eclipse.swt.graphics.Color;=0A=
-import org.eclipse.ui.IWorkbenchWindow; -import org.eclipse.ui.IWorkbenchW=
indowActionDelegate;=0A=
-import org.eclipse.ui.console.MessageConsole;=0A=
-import org.eclipse.ui.console.MessageConsoleStream;=0A=
-import org.yocto.bc.bitbake.BBLanguageHelper;=0A=
-import org.yocto.bc.bitbake.BBSession;=0A=
-import org.yocto.bc.ui.Activator;=0A=
-import org.yocto.bc.ui.builder.BitbakeCommanderNature;=0A=
-import org.yocto.remote.utils.ICommandResponseHandler;=0A=
-=0A=
-public abstract class AbstractBitbakeCommandAction implements IWorkbenchWi=
ndowActionDelegate {=0A=
-=0A=
-       private class CommandJob extends Job {=0A=
-=0A=
-               public CommandJob() {=0A=
-                       super(getJobTitle());=0A=
-               }=0A=
-=0A=
-               @Override=0A=
-               protected IStatus run(IProgressMonitor monitor) {=0A=
-                       String cmds[] =3D getCommands();=0A=
-                       return execCommands(cmds, monitor);=0A=
-               }=0A=
-=0A=
-       }=0A=
-       protected IAction action;=0A=
-       protected IFile recipe;=0A=
-       protected BBSession bbs;=0A=
-=0A=
-       private Color commandColor, responseColor, errorColor;=0A=
-       private boolean errorOccurred =3D false;=0A=
-=0A=
-       public AbstractBitbakeCommandAction() {=0A=
-               commandColor =3D JFaceResources.getColorRegistry().get(JFac=
ePreferences.ACTIVE_HYPERLINK_COLOR);=0A=
-               responseColor =3D JFaceResources.getColorRegistry().get(JFa=
cePreferences.HYPERLINK_COLOR);=0A=
-               errorColor =3D JFaceResources.getColorRegistry().get(JFaceP=
references.ERROR_COLOR);=0A=
-       }=0A=
-=0A=
-       private void checkEnabled(IFile file) {=0A=
-               try {=0A=
-                       if (file.getFileExtension() =3D=3D null || !file.ge=
tFileExtension().equals(BBLanguageHelper.BITBAKE_RECIPE_FILE_EXTENSION)) {=
=0A=
-                               action.setEnabled(false);=0A=
-                               return;=0A=
-                       }=0A=
-=0A=
-                       IProject project =3D file.getProject();=0A=
-                       if (!(project.hasNature(BitbakeCommanderNature.NATU=
RE_ID))) {=0A=
-                               action.setEnabled(false);=0A=
-                               return;=0A=
-                       }=0A=
-=0A=
-                       bbs =3D Activator.getBBSession(project.getLocationU=
RI().getPath());=0A=
-=0A=
-                       if (bbs !=3D null) {=0A=
-                               recipe =3D file;=0A=
-                               action.setEnabled(true);=0A=
-                       }=0A=
-=0A=
-               } catch (CoreException e) {=0A=
-                       action.setEnabled(false);=0A=
-                       e.printStackTrace();=0A=
-               } catch (Exception e) {=0A=
-                       action.setEnabled(false);=0A=
-                       e.printStackTrace();=0A=
-               }=0A=
-       }=0A=
-=0A=
-       public void dispose() {=0A=
-       }=0A=
-=0A=
-       /**=0A=
-        * Execute array of commands with bitbake and put output in console=
.=0A=
-        *=0A=
-        * @param cmds=0A=
-        * @param monitor=0A=
-        * @return=0A=
-        */=0A=
-       protected IStatus execCommands(String[] cmds, final IProgressMonito=
r monitor) {=0A=
-               MessageConsole mc =3D bbs.getConsole();=0A=
-               final MessageConsoleStream cmd =3D mc.newMessageStream();=
=0A=
-               cmd.setColor(commandColor);=0A=
-               final MessageConsoleStream out =3D mc.newMessageStream();=
=0A=
-               final MessageConsoleStream err =3D mc.newMessageStream();=
=0A=
-               err.setColor(errorColor);=0A=
-=0A=
-               try {=0A=
-                       for (int i =3D 0; i < cmds.length; ++i) {=0A=
-                               cmd.println(cmds[i]);=0A=
-                               monitor.subTask(cmds[i]);=0A=
-                               bbs.getShell().execute(cmds[i], new IComman=
dResponseHandler() {=0A=
-=0A=
-                                       public void response(String line, b=
oolean isError) {=0A=
-                                               if (monitor.isCanceled()) {=
=0A=
-                                                       cmd.println("Interr=
upting process by user request.");=0A=
-                                                       bbs.getShell().inte=
rrupt();=0A=
-                                               }=0A=
-=0A=
-                                               if (isError) {=0A=
-                                                       err.println(line);=
=0A=
-                                                       errorOccurred();=0A=
-                                               } else if (line.startsWith(=
"ERROR:")) {=0A=
-                                                       err.println(line);=
=0A=
-                                               } else {=0A=
-                                                       out.println(line);=
=0A=
-                                               }=0A=
-                                       }=0A=
-                               });=0A=
-                       }=0A=
-               } catch (IOException e) {=0A=
-                       return new Status(IStatus.ERROR, Activator.PLUGIN_I=
D, e.getMessage(), e);=0A=
-               } finally {=0A=
-                       try {=0A=
-                               if (errorOccurred) {=0A=
-                                       cmd.println("At least one error occ=
ured while executing this command.  Check output for more details.");=0A=
-                               }=0A=
-                               cmd.close();=0A=
-                               out.close();=0A=
-                               err.close();=0A=
-                       } catch (IOException e) {=0A=
-                               e.printStackTrace();=0A=
-                       }=0A=
-               }=0A=
-=0A=
-               return Status.OK_STATUS;=0A=
-       }=0A=
-=0A=
-       protected void errorOccurred() {=0A=
-               errorOccurred =3D true;=0A=
-       }=0A=
-=0A=
-       /**=0A=
-        * Return the command to be executed.=0A=
-        *=0A=
-        * @return=0A=
-        */=0A=
-       public abstract String[] getCommands();=0A=
-=0A=
-       public Job getJob() {=0A=
-               return new CommandJob();=0A=
-       }=0A=
-=0A=
-       /**=0A=
-        * Return the title of the job.=0A=
-        *=0A=
-        * @return=0A=
-        */=0A=
-       public abstract String getJobTitle();=0A=
-=0A=
-       public void init(IWorkbenchWindow window) {=0A=
-       }=0A=
-=0A=
-       public void run(IAction action) {=0A=
-               Job job =3D getJob();=0A=
-               job.schedule();=0A=
-       }=0A=
-=0A=
-       public void selectionChanged(IAction action, ISelection selection) =
{=0A=
-               this.action =3D action;=0A=
-               if (selection instanceof IStructuredSelection) {=0A=
-                       Object sel =3D ((IStructuredSelection) selection).g=
etFirstElement();=0A=
-=0A=
-                       if (sel instanceof IFile) {=0A=
-                               checkEnabled((IFile) sel);=0A=
-                               return;=0A=
-                       }=0A=
-               }=0A=
-=0A=
-               action.setEnabled(false);=0A=
-       }=0A=
-=0A=
-}=0A=
\ No newline at end of file=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeBui=
ldRecipeAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/B=
itbakeBuildRecipeAction.java=0A=
deleted file mode 100644=0A=
index 22ac94c..0000000=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeBuildRecip=
eAction.java=0A=
+++ /dev/null=0A=
@@ -1,24 +0,0 @@=0A=
-/*************************************************************************=
****=0A=
- * Copyright (c) 2009 Ken Gilmer=0A=
- * All rights reserved. This program and the accompanying materials=0A=
- * are made available under the terms of the Eclipse Public License v1.0=
=0A=
- * which accompanies this distribution, and is available at=0A=
- * http://www.eclipse.org/legal/epl-v10.html=0A=
- *=0A=
- * Contributors:=0A=
- *     Ken Gilmer - initial API and implementation=0A=
- *************************************************************************=
******/=0A=
-package org.yocto.bc.ui.actions;=0A=
-=0A=
-public  class BitbakeBuildRecipeAction extends AbstractBitbakeCommandActio=
n {=0A=
-=0A=
-       @Override=0A=
-       public String [] getCommands() {=0A=
-               return new String[] {"bitbake -b " + recipe.getLocationURI(=
).getPath()};=0A=
-       }=0A=
-=0A=
-       @Override=0A=
-       public String getJobTitle() {=0A=
-               return "Building " + recipe.getName();=0A=
-       }=0A=
-}=0A=
\ No newline at end of file=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeCle=
anRecipeAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/B=
itbakeCleanRecipeAction.java=0A=
deleted file mode 100644=0A=
index f95117e..0000000=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeCleanRecip=
eAction.java=0A=
+++ /dev/null=0A=
@@ -1,26 +0,0 @@=0A=
-/*************************************************************************=
****=0A=
- * Copyright (c) 2009 Ken Gilmer=0A=
- * All rights reserved. This program and the accompanying materials=0A=
- * are made available under the terms of the Eclipse Public License v1.0=
=0A=
- * which accompanies this distribution, and is available at=0A=
- * http://www.eclipse.org/legal/epl-v10.html=0A=
- *=0A=
- * Contributors:=0A=
- *     Ken Gilmer - initial API and implementation=0A=
- *************************************************************************=
******/=0A=
-package org.yocto.bc.ui.actions;=0A=
-=0A=
-public class BitbakeCleanRecipeAction extends AbstractBitbakeCommandAction=
 {=0A=
-=0A=
-       @Override=0A=
-       public String [] getCommands() {=0A=
-               return new String[] {"bitbake -c clean -b " + recipe.getLoc=
ationURI().getPath()};=0A=
-       }=0A=
-=0A=
-       @Override=0A=
-       public String getJobTitle() {=0A=
-               return "Cleaning " + recipe.getName();=0A=
-       }=0A=
-=0A=
-=0A=
-}=0A=
\ No newline at end of file=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeImp=
ortAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/Bitbak=
eImportAction.java=0A=
deleted file mode 100644=0A=
index ecceecf..0000000=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeImportActi=
on.java=0A=
+++ /dev/null=0A=
@@ -1,106 +0,0 @@=0A=
-/*************************************************************************=
****=0A=
- * Copyright (c) 2009 Ken Gilmer=0A=
- * All rights reserved. This program and the accompanying materials=0A=
- * are made available under the terms of the Eclipse Public License v1.0=
=0A=
- * which accompanies this distribution, and is available at=0A=
- * http://www.eclipse.org/legal/epl-v10.html=0A=
- *=0A=
- * Contributors:=0A=
- *     Ken Gilmer - initial API and implementation=0A=
- *************************************************************************=
******/=0A=
-package org.yocto.bc.ui.actions;=0A=
-=0A=
-import java.io.File;=0A=
-=0A=
-import org.eclipse.core.resources.IProject;=0A=
-import org.eclipse.core.resources.IProjectDescription;=0A=
-import org.eclipse.core.resources.IResource;=0A=
-import org.eclipse.core.resources.IWorkspaceRoot;=0A=
-import org.eclipse.core.resources.ResourcesPlugin;=0A=
-import org.eclipse.core.runtime.IProgressMonitor;=0A=
-import org.eclipse.core.runtime.IStatus; -import org.eclipse.core.runtime.=
Status; -import org.eclipse.core.runtime.jobs.Job;=0A=
-=0A=
-import org.yocto.bc.bitbake.BBCommonVars;=0A=
-import org.yocto.bc.bitbake.BBRecipe;=0A=
-import org.yocto.bc.ui.Activator;=0A=
-=0A=
-public  class BitbakeImportAction extends AbstractBitbakeCommandAction {=
=0A=
-=0A=
-       private class ImportJob extends Job {=0A=
-=0A=
-               public ImportJob() {=0A=
-                       super(getJobTitle());=0A=
-               }=0A=
-=0A=
-               @Override=0A=
-               protected IStatus run(IProgressMonitor monitor) {=0A=
-=0A=
-                       try {=0A=
-                               BBRecipe br =3D new BBRecipe(bbs, recipe.ge=
tLocationURI().getPath());=0A=
-                               br.initialize();=0A=
-                               String filePath =3D (String) br.get(BBCommo=
nVars.S);=0A=
-=0A=
-                               //"${WORKDIR}/${PN}-${PV}"=0A=
-                               if (filePath =3D=3D null) {=0A=
-                                       filePath =3D ((String) br.get(BBCom=
monVars.WORKDIR)) + File.separator + ((String) br.get(BBCommonVars.PN)) + "=
-" + ((String) br.get(BBCommonVars.PV));=0A=
-                               }=0A=
-=0A=
-                               String projectName =3D (String) br.get(BBCo=
mmonVars.PN);=0A=
-=0A=
-                               if (filePath =3D=3D null || projectName =3D=
=3D null) {=0A=
-                                       return new Status(IStatus.ERROR, Ac=
tivator.PLUGIN_ID, "Unable to parse recipe file.");=0A=
-                               }=0A=
-=0A=
-                               File workdir =3D new File(filePath);=0A=
-=0A=
-                               if (workdir.exists() && workdir.isFile()) {=
=0A=
-                                       return new Status(IStatus.ERROR, Ac=
tivator.PLUGIN_ID, workdir.getPath() + " is an invalid workdir.");=0A=
-                               }=0A=
-=0A=
-                               if (!workdir.exists()) {=0A=
-                                       execCommands(new String[] {"bitbake=
 -c patch -b " + recipe.getLocationURI().getPath()}, monitor);=0A=
-                               }=0A=
-=0A=
-                               if (!workdir.exists()) {=0A=
-                                       return new Status(IStatus.ERROR, Ac=
tivator.PLUGIN_ID, "Unable to retrieve sources from BitBake.  Consult conso=
le.");=0A=
-                               }=0A=
-=0A=
-                               IProjectDescription desc =3D ResourcesPlugi=
n.getWorkspace().newProjectDescription(projectName);=0A=
-                               IWorkspaceRoot wsroot =3D ResourcesPlugin.g=
etWorkspace().getRoot();=0A=
-                               IProject proj =3D wsroot.getProject(project=
Name);=0A=
-                               proj.create(desc, monitor);=0A=
-                               proj.open(monitor);=0A=
-=0A=
-                               String copyCmd =3D "cp -r " + workdir.getAb=
solutePath() + File.separator + "* \"" + proj.getLocationURI().getPath() + =
"\"";=0A=
-                               execCommands(new String[] {copyCmd} , monit=
or);=0A=
-=0A=
-                               proj.refreshLocal(IResource.DEPTH_INFINITE,=
 monitor);=0A=
-=0A=
-                       } catch (Exception e) {=0A=
-                               e.printStackTrace();=0A=
-                               return new Status(IStatus.ERROR, Activator.=
PLUGIN_ID, "Unable to create project.", e);=0A=
-                       }=0A=
-=0A=
-                       return Status.OK_STATUS;=0A=
-               }=0A=
-=0A=
-       }=0A=
-=0A=
-       @Override=0A=
-       public String [] getCommands() {=0A=
-               return null;=0A=
-       }=0A=
-=0A=
-=0A=
-       @Override=0A=
-       public Job getJob() {=0A=
-               return new ImportJob();=0A=
-       }=0A=
-=0A=
-       @Override=0A=
-       public String getJobTitle() {=0A=
-               return "Importing " + recipe.getName();=0A=
-       }=0A=
-}=0A=
\ No newline at end of file=0A=
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeReb=
uildRecipeAction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions=
/BitbakeRebuildRecipeAction.java=0A=
deleted file mode 100644=0A=
index c5dedea..0000000=0A=
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/BitbakeRebuildRec=
ipeAction.java=0A=
+++ /dev/null=0A=
@@ -1,29 +0,0 @@=0A=
-/*************************************************************************=
****=0A=
- * Copyright (c) 2009 Ken Gilmer=0A=
- * All rights reserved. This program and the accompanying materials=0A=
- * are made available under the terms of the Eclipse Public License v1.0=
=0A=
- * which accompanies this distribution, and is available at=0A=
- * http://www.eclipse.org/legal/epl-v10.html=0A=
- *=0A=
- * Contributors:=0A=
- *     Ken Gilmer - initial API and implementation=0A=
- *************************************************************************=
******/=0A=
-package org.yocto.bc.ui.actions;=0A=
-=0A=
-/**=0A=
- * Rebuild a recipe.=0A=
- * @author kgilmer=0A=
- *=0A=
- */=0A=
-public  class BitbakeRebuildRecipeAction extends AbstractBitbakeCommandAct=
ion {=0A=
-=0A=
-       @Override=0A=
-       public String [] getCommands() {=0A=
-               return new String[] {"bitbake -c rebuild -b " + recipe.getL=
ocationURI().getPath()};=0A=
-       }=0A=
-=0A=
-       @Override=0A=
-       public String getJobTitle() {=0A=
-               return "Rebuilding " + recipe.getName();=0A=
-       }=0A=
-}=0A=
\ No newline at end of file=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

