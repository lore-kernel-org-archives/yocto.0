Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5E5DE0155F
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 04:40:39 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id w61so1025479wes.31
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 04:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=c3rYKv7bQ/rRVOtJ/HMEKfVSEjboB3Cqi9VWOpQDgCo=;
	b=ka86L2//aBNKye6ZodmG93XKw2TpdOxED93Epx9kWdHH0ValB+YyyrxlRCf5c6+W2U
	VioZncct6T9FA5JsAG4LEpbauZis0I6NnvSlanXhcuAvQiATgL/G+ev74rAMFxgdOpt0
	wceYeIIZ4LrRcPflKWIHP49Vz+5QAwI4aM7lEPIa6cZjmFCW911Uo+6vx2FHxP6awP0Y
	wgPxUGfJCQMluNZxsjjOJpklrtTTlovcwadhGGtJCzll9mU/qC5LD3TgIRHQ+ogq1Pc8
	xxYNY2pejCq8ZOzzu2mPzKNbiltJgLIUBMkYpgMKiKKFwps2sdngs6VPfsx7K9TSNFxr
	wbkw==
X-Received: by 10.194.77.167 with SMTP id t7mr10511736wjw.27.1379072438120;
	Fri, 13 Sep 2013 04:40:38 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id b11sm2920808wik.1.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 13 Sep 2013 04:40:37 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Sep 2013 13:40:23 +0200
Message-Id: <1379072423-3315-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][PATCH] plugins/cmake: Added warning dialog on missing cmake
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
X-List-Received-Date: Fri, 13 Sep 2013 11:40:40 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

If the system is not able to run the command
"cmake", the user is prompted with a MessageDialog
to check the correctness of the cmake
installation.
---
Hi,

this patch creates a MessageDialog to warn the user when the system was not able
to run "cmake". This happens if cmake is not installed on the build machine
(where the IDE itself is running).

Cheers,
Atanas

P.S: This patch applies on the current eclipse-poky master.

 .../managedbuilder/YoctoCMakeMessages.properties   |    2 ++
 .../managedbuilder/job/ExecuteConfigureJob.java    |   20 +++++++++++++++++---
 2 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
index 82a5c79..55773ac 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMessages.properties
@@ -16,6 +16,8 @@ ExecuteConfigureJob.buildingMakefile=Building Makefile
 ExecuteConfigureJob.warning.aborted=Build of project has been aborted
 ExecuteConfigureJob.error.couldNotStart=Build of project could not be started
 ExecuteConfigureJob.error.buildFailed=Build of project failed
+ExecuteConfigureJob.cmakeWarning.dialogTitle=Unable to run command "cmake"
+ExecuteConfigureJob.cmakeWarning.dialogMessage=Please make sure that cmake is installed properly on this machine.
 
 # File generator
 YoctoCMakeMakefileGenerator.configureJob.name=Configuring project
diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
index 347843e..354d930 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/job/ExecuteConfigureJob.java
@@ -32,6 +32,8 @@ import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.core.runtime.jobs.Job;
+import org.eclipse.jface.dialogs.MessageDialog;
+import org.eclipse.swt.widgets.Display;
 import org.eclipse.ui.console.IOConsoleOutputStream;
 import org.yocto.cmake.managedbuilder.Activator;
 import org.yocto.cmake.managedbuilder.YoctoCMakeMessages;
@@ -126,9 +128,21 @@ public class ExecuteConfigureJob extends Job {
 		try {
 			return buildProject(monitor, cos);
 		} catch (IOException e) {
-			return new Status(Status.ERROR,
-					Activator.PLUGIN_ID, Status.OK,
-					YoctoCMakeMessages.getString("ExecuteConfigureJob.error.couldNotStart"), e); //$NON-NLS-1$
+			if(e.getMessage().startsWith("Cannot run program \"cmake\"")) { //$NON-NLS-1$
+				Display.getDefault().asyncExec(new Runnable() {
+					@Override
+					public void run() {
+						MessageDialog.openWarning(null,
+								YoctoCMakeMessages.getString("ExecuteConfigureJob.cmakeWarning.dialogTitle"), //$NON-NLS-1$
+								YoctoCMakeMessages.getString("ExecuteConfigureJob.cmakeWarning.dialogMessage")); //$NON-NLS-1$
+					}
+				});
+				return Status.OK_STATUS;
+			} else {
+				return new Status(Status.ERROR,
+						Activator.PLUGIN_ID, Status.OK,
+						YoctoCMakeMessages.getString("ExecuteConfigureJob.error.couldNotStart"), e); //$NON-NLS-1$	
+			}
 		} catch (InterruptedException e) {
 			return new Status(Status.WARNING,
 					Activator.PLUGIN_ID,
-- 
1.7.9.5


