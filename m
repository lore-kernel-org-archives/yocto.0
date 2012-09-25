Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D95F7E011C0
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 04:18:52 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Sep 2012 04:18:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,481,1344236400"; d="scan'208";a="226170722"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.40])
	by fmsmga001.fm.intel.com with ESMTP; 25 Sep 2012 04:18:49 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 25 Sep 2012 14:14:29 +0300
Message-Id: <1348571669-1012-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] eclipse-plugin/yocto-bsp-wizard : Progress Dialog
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
X-List-Received-Date: Tue, 25 Sep 2012 11:18:53 -0000

- removed progress dialog for loading kernel choices (it is a short process and it only causes the Process Dialog to appear and disapear quickly)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../remotetools/wizards/bsp/PropertiesPage.java    |   36 +++++++++++---------
 1 file changed, 20 insertions(+), 16 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
index 14de18c..4a79d64 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
@@ -135,7 +135,7 @@ public class PropertiesPage extends WizardPage {
 			newButton.setSelection(true);
 			existingButton.setSelection(false);
 
-			updateKernelValues(KERNEL_CHOICES, KERNEL_CHOICE);
+			updateKernelValues(KERNEL_CHOICES, KERNEL_CHOICE, false);
 		}
 
 		try {
@@ -383,7 +383,7 @@ public class PropertiesPage extends WizardPage {
 			 existingButton.setSelection(false);
 			 kbCombo.removeAll();
 			 
-			 updateKernelValues(KERNEL_BRANCHES, "\\\"" + kernel_choice + "\\\"." + NEW_KBRANCH_NAME);
+			 updateKernelValues(KERNEL_BRANCHES, "\\\"" + kernel_choice + "\\\"." + NEW_KBRANCH_NAME, true);
 		 } else if (widget == kbCombo) {
 			 setErrorMessage(null);
 		 } else if (widget == newButton) {
@@ -392,34 +392,38 @@ public class PropertiesPage extends WizardPage {
 			 
 			 if (newBranch) {
 				 kbCombo.removeAll();
-				 updateKernelValues(KERNEL_BRANCHES, "\\\"" + kernel_choice + "\\\"." + NEW_KBRANCH_NAME);
+				 updateKernelValues(KERNEL_BRANCHES, "\\\"" + kernel_choice + "\\\"." + NEW_KBRANCH_NAME, true);
 			 }
 		 } else if (widget == existingButton) {
 			 boolean existingBranch = existingButton.getSelection();
 
 			 if (existingBranch) {
 				 kbCombo.removeAll();
-				 updateKernelValues(KERNEL_BRANCHES, "\\\"" + kernel_choice + "\\\"." + EXISTING_KBRANCH_NAME);
+				 updateKernelValues(KERNEL_BRANCHES, "\\\"" + kernel_choice + "\\\"." + EXISTING_KBRANCH_NAME, true);
 			 }
 		 }
 		 canFlipToNextPage();
 		 getWizard().getContainer().updateButtons();
 	}
 
-	private void updateKernelValues(final String value, String property) {
+	private void updateKernelValues(final String value, String property, boolean showProgress) {
 		final ValuesGetter runnable  = new ValuesGetter(property);
 
-		ProgressMonitorDialog dialog = new ProgressMonitorDialog(getShell());
-		try {
-			dialog.run(true, true, new IRunnableWithProgress(){
-			     public void run(IProgressMonitor monitor) {
-			         monitor.beginTask("Loading Kernel " + value + " ...", 100);
-			         runnable.run();
-			         monitor.done();
-			     }
-			 });
-		} catch (Exception e) {
-			runnable.getBspAction().setMessage(e.getMessage());
+		if (showProgress) {
+			ProgressMonitorDialog dialog = new ProgressMonitorDialog(getShell());
+			try {
+				dialog.run(true, true, new IRunnableWithProgress(){
+				     public void run(IProgressMonitor monitor) {
+				         monitor.beginTask("Loading Kernel " + value + " ...", 100);
+				         runnable.run();
+				         monitor.done();
+				     }
+				 });
+			} catch (Exception e) {
+				runnable.getBspAction().setMessage(e.getMessage());
+			}
+		} else {
+			runnable.run();
 		}
 
 		BSPAction action = runnable.getBspAction();
-- 
1.7.9.5


