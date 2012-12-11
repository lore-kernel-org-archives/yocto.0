Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E2EEE00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 06:14:23 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 11 Dec 2012 06:14:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,259,1355126400"; d="scan'208";a="179404355"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Dec 2012 06:14:20 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 11 Dec 2012 16:04:06 +0200
Message-Id: <1355234646-16456-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v3] [eclipse-poky-windows][branch:windows-build]Remove validate existing repository radio button
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
X-List-Received-Date: Tue, 11 Dec 2012 14:14:23 -0000

- remove radio button for validating existing repository but keep performing the validation in the back
- make 'clone' button a check button

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |   30 ++++----------------
 1 file changed, 6 insertions(+), 24 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 9e94aea..72aeec2 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -54,7 +54,6 @@ public class OptionsPage extends FiniteStateWizardPage {
 	private ValidationListener validationListener;
 	private Text txtProjectName;
 	private Button btnGit;
-	private Button btnValidate;
 
 	private RemoteProjectContentsLocationArea locationArea;
 
@@ -67,7 +66,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 	public void createControl(Composite parent) {
 		top = new Composite(parent, SWT.None);
 		top.setLayout(new GridLayout());
-		top.setLayoutData(new GridData(GridData.FILL_BOTH));
+		top.setLayoutData(new GridData(GridData.FILL_HORIZONTAL));
 
 		GridData gdFillH = new GridData(GridData.FILL_HORIZONTAL);
 
@@ -97,25 +96,13 @@ public class OptionsPage extends FiniteStateWizardPage {
 
 		locationArea = new RemoteProjectContentsLocationArea(errorReporter, top, null);
 
-		Group locationValidationGroup = new Group(top, SWT.NONE);
-		locationValidationGroup.setText("Git repository");
-		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL_HORIZONTAL);
-		locationValidationGroup.setLayoutData(gd);
-		GridLayout gl = new GridLayout(1, false);
-		locationValidationGroup.setLayout(gl);
-
-		btnGit = new Button(locationValidationGroup, SWT.RADIO);
+		btnGit = new Button(top, SWT.CHECK);
 		btnGit.setText("Clone from Yocto Project &Git Repository into new location");
 		btnGit.setEnabled(true);
 		btnGit.setSelection(true);
 		btnGit.addSelectionListener(validationListener);
-
-
-		btnValidate = new Button(locationValidationGroup, SWT.RADIO);
-		btnValidate.setText("&Validate existing Git project location");
-		btnValidate.setEnabled(true);
-		btnValidate.setSelection(false);
-		btnValidate.addSelectionListener(validationListener);
+		GridData gd = new GridData(GridData.VERTICAL_ALIGN_END | GridData.FILL_HORIZONTAL);
+		btnGit.setLayoutData(gd);
 
 		setControl(top);
 	}
@@ -165,16 +152,11 @@ public class OptionsPage extends FiniteStateWizardPage {
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
@@ -185,7 +167,7 @@ public class OptionsPage extends FiniteStateWizardPage {
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


