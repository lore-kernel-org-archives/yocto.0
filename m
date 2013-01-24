Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 354CBE014E4
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 14:26:51 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Jan 2013 14:25:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,532,1355126400"; d="scan'208";a="252026164"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2013 14:26:50 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 24 Jan 2013 14:26:50 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.17]) with mapi id
	14.01.0355.002; Thu, 24 Jan 2013 14:26:49 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] [eclipse-poky][branch:windows-build]Fix
	Launching	Hob command
Thread-Index: AQHN+jNiVk6N6SOWrEqqQu5i2Daf35hZD0Dw
Date: Thu, 24 Jan 2013 22:26:49 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD774A@ORSMSX101.amr.corp.intel.com>
References: <1359031734-7443-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1359031734-7443-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] [eclipse-poky][branch:windows-build]Fix Launching	Hob command
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
X-List-Received-Date: Thu, 24 Jan 2013 22:26:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to Eclipse windows-build branch.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, January 24, 2013 4:49 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH] [eclipse-poky][branch:windows-build]Fix Launching =
Hob command

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/bc/ui/actions/LaunchHobAction.java   |   23 +++++++++-------=
----
 .../bc/ui/builder/BitbakeCommanderNature.java      |   20 ++++++++++------=
-
 2 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchHobA=
ction.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchHobA=
ction.java
index e92fac0..dbbd3cd 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchHobAction.j=
ava
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/actions/LaunchHobActio
+++ n.java
@@ -10,26 +10,23 @@
  *************************************************************************=
******/
 package org.yocto.bc.ui.actions;

-import org.eclipse.ui.PlatformUI;
-import org.eclipse.ui.IWorkbench;
-import org.eclipse.ui.IWorkbenchPage;
-import org.eclipse.ui.IWorkbenchWindow;
-
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.runtime.IAdaptable;
 import org.eclipse.jface.action.IAction;  import org.eclipse.jface.viewers=
.ISelection;
 import org.eclipse.jface.viewers.IStructuredSelection;
-
 import org.eclipse.swt.widgets.Shell;
-
+import org.eclipse.ui.IWorkbench;
+import org.eclipse.ui.IWorkbenchPage;
+import org.eclipse.ui.IWorkbenchWindow; import
+org.eclipse.ui.PlatformUI;
 import org.yocto.bc.ui.builder.BitbakeCommanderNature;


 public class LaunchHobAction  {
     private static final String DIALOG_TITLE  =3D "Launch HOB";
-
+
        public void run(IAction action) {
                IResource resource =3D getSelectedResource();
                if (resource =3D=3D null)
@@ -39,21 +36,21 @@ public class LaunchHobAction  {
                LaunchHobDialog hobDialog =3D new LaunchHobDialog(new Shell=
(), DIALOG_TITLE, project);
                hobDialog.open();
                String buildDir =3D hobDialog.getBuildDir();
-
-               if (buildDir !=3D null) {
+
+               if (buildDir !=3D null) {
                        try {
                                BitbakeCommanderNature.launchHob(project,bu=
ildDir);
                        } catch (Exception e){
-                               System.out.println(e.getMessage());
+                               e.printStackTrace();
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
                IWorkbench iworkbench =3D PlatformUI.getWorkbench();
                if (iworkbench =3D=3D null){
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCom=
manderNature.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/Bit=
bakeCommanderNature.java
index fe2a997..dbd489d 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommanderN=
ature.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/builder/BitbakeCommand
+++ erNature.java
@@ -36,29 +36,30 @@ public class BitbakeCommanderNature implements IProject=
Nature {
        public static void launchHob(IProject project, String buildDir) {
                try {
                        ILaunchManager lManager =3D DebugPlugin.getDefault(=
).getLaunchManager();
-                       ILaunchConfigurationType configType =3D
+                       ILaunchConfigurationType configType =3D
                                lManager.getLaunchConfigurationType("org.ec=
lipse.ui.externaltools.ProgramLaunchConfigurationType");
                        ILaunchConfigurationWorkingCopy w_copy =3D configTy=
pe.newInstance(null, "hob");
                        ArrayList<String> listValue =3D new ArrayList<Strin=
g>();
                        listValue.add(new String("org.eclipse.ui.externalto=
ols.launchGroup"));
-                       w_copy.setAttribute("org.eclipse.debug.ui.favoriteG=
roups", listValue);
+                       w_copy.setAttribute("org.eclipse.debug.ui.favoriteG=
roups",
+listValue);
                        w_copy.setAttribute("org.eclipse.ui.externaltools.A=
TTR_LOCATION", "/usr/bin/xterm");

-                       String init_script =3D project.getLocation().toStri=
ng() + "/oe-init-build-env ";
+                       String init_script =3D project.getLocationURI().get=
Path() +
+"/oe-init-build-env ";
                        String argument =3D "-e \"source " + init_script + =
buildDir + ";hob";// + ";bash\"";

                        w_copy.setAttribute("org.eclipse.ui.externaltools.A=
TTR_TOOL_ARGUMENTS", argument);
                        w_copy.launch(ILaunchManager.RUN_MODE, null);
-
+
                } catch (CoreException e) {
                        System.out.println(e.getMessage());
                }
        }
        /*
         * (non-Javadoc)
-        *
+        *
         * @see org.eclipse.core.resources.IProjectNature#configure()
         */
+       @Override
        public void configure() throws CoreException {
                IProjectDescription desc =3D project.getDescription();
                ICommand[] commands =3D desc.getBuildSpec(); @@ -80,9 +81,1=
0 @@ public class BitbakeCommanderNature implements IProjectNature {

        /*
         * (non-Javadoc)
-        *
+        *
         * @see org.eclipse.core.resources.IProjectNature#deconfigure()
         */
+       @Override
        public void deconfigure() throws CoreException {
                IProjectDescription description =3D getProject().getDescrip=
tion();
                ICommand[] commands =3D description.getBuildSpec(); @@ -100=
,18 +102,20 @@ public class BitbakeCommanderNature implements IProjectNatur=
e {

        /*
         * (non-Javadoc)
-        *
+        *
         * @see org.eclipse.core.resources.IProjectNature#getProject()
         */
+       @Override
        public IProject getProject() {
                return project;
        }

        /*
         * (non-Javadoc)
-        *
+        *
         * @see org.eclipse.core.resources.IProjectNature#setProject(org.ec=
lipse.core.resources.IProject)
         */
+       @Override
        public void setProject(IProject project) {
                this.project =3D project;
        }
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

