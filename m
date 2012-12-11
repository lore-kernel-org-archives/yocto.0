Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13A61E00770
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 03:13:38 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Dec 2012 03:13:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,258,1355126400"; d="scan'208";a="260447489"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by fmsmga001.fm.intel.com with ESMTP; 11 Dec 2012 03:13:29 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 11 Dec 2012 13:03:20 +0200
Message-Id: <1355223801-14269-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky-windows][branch:windows-build]Remove validate existing repository radio button
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
X-List-Received-Date: Tue, 11 Dec 2012 11:13:38 -0000

- remove radio button for validating existing repository but keep performing the validation in the back
- make 'clone' button a check button

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |   40 +++++++++-----------
 1 file changed, 18 insertions(+), 22 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 9e94aea..9c01e4e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -54,7 +54,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 	private ValidationListener validationListener;
 	private Text txtProjectName;
 	private Button btnGit;
-	private Button btnValidate;
+//	private Button btnValidate;
 
 	private RemoteProjectContentsLocationArea locationArea;
 
@@ -67,7 +67,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 	public void createControl(Composite parent) {
 		top = new Composite(parent, SWT.None);
 		top.setLayout(new GridLayout());
-		top.setLayoutData(new GridData(GridData.FILL_BOTH));
+		top.setLayoutData(new GridData(GridData.FILL_HORIZONTAL));
 
 		GridData gdFillH = new GridData(GridData.FILL_HORIZONTAL);
 
@@ -97,25 +97,26 @@ public class OptionsPage extends FiniteStateWizardPage {
 
 		locationArea = new RemoteProjectContentsLocationArea(errorReporter, top, null);
 
-		Group locationValidationGroup = new Group(top, SWT.NONE);
-		locationValidationGroup.setText("Git repository");
-		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL_HORIZONTAL);
-		locationValidationGroup.setLayoutData(gd);
-		GridLayout gl = new GridLayout(1, false);
-		locationValidationGroup.setLayout(gl);
+//		Group locationValidationGroup = new Group(top, SWT.NONE);
+//		locationValidationGroup.setText("Git repository");
+//		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL_HORIZONTAL);
+//		locationValidationGroup.setLayoutData(gd);
+//		GridLayout gl = new GridLayout(1, false);
+//		locationValidationGroup.setLayout(gl);
 
-		btnGit = new Button(locationValidationGroup, SWT.RADIO);
+		btnGit = new Button(top, SWT.CHECK);
 		btnGit.setText("Clone from Yocto Project &Git Repository into new location");
 		btnGit.setEnabled(true);
 		btnGit.setSelection(true);
 		btnGit.addSelectionListener(validationListener);
+		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL_HORIZONTAL);
+		btnGit.setLayoutData(gd);
 
-
-		btnValidate = new Button(locationValidationGroup, SWT.RADIO);
-		btnValidate.setText("&Validate existing Git project location");
-		btnValidate.setEnabled(true);
-		btnValidate.setSelection(false);
-		btnValidate.addSelectionListener(validationListener);
+//		btnValidate = new Button(locationValidationGroup, SWT.RADIO);
+//		btnValidate.setText("&Validate existing Git project location");
+//		btnValidate.setEnabled(true);
+//		btnValidate.setSelection(false);
+//		btnValidate.addSelectionListener(validationListener);
 
 		setControl(top);
 	}
@@ -165,16 +166,11 @@ public class OptionsPage extends FiniteStateWizardPage {
 		String projectPath = projectLoc + separator + getProjectName();
 		IHostFile repoDest = RemoteHelper.getRemoteHostFile(connection, projectPath, new NullProgressMonitor());
 
-		if(btnValidate.getSelection()) {
+		if(!btnGit.getSelection()) {
 			if (repoDest == null || !repoDest.exists()) {
 				setErrorMessage("Directory " + projectPath + " does not exist, please select git clone.");
 				return false;
 			}
-//			IHostFile gitDescr = RemoteHelper.getRemoteHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
-//			if (gitDescr == null || !gitDescr.exists()) {
-//				setErrorMessage("Directory " + projectPath + " does not contain a git repository, please select git clone.");
-//				return false;
-//			}
 
 			IHostFile validationFile = RemoteHelper.getRemoteHostFile(connection, projectPath + URI_SEPARATOR + InstallWizard.VALIDATION_FILE, new NullProgressMonitor());
 			if (validationFile == null || !validationFile.exists()) {
@@ -185,7 +181,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 			if (repoDest.exists() && repoDest.isDirectory()) {
 				IHostFile gitDescr = RemoteHelper.getRemoteHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
 				if (gitDescr != null && gitDescr.exists()) {
-					setErrorMessage("Directory " + projectPath + " contains a repository, please select validate repository.");
+					setErrorMessage("Directory " + projectPath + " contains a repository, please choose another location or skip cloning the repository.");
 					return false;
 				}
 			}
-- 
1.7.9.5


