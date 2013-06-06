Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5B82E0156F
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 06:10:07 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Jun 2013 06:09:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,814,1363158000"; d="scan'208";a="313209309"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 06 Jun 2013 06:09:42 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Jun 2013 15:47:33 +0300
Message-Id: <1370522855-22772-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor 3/5] Refactor and clean-up of OptionsPage fields
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
X-List-Received-Date: Thu, 06 Jun 2013 13:10:07 -0000

- clean-up all unused fields
- rename fields to have consistent names

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |   38 ++++----------------
 1 file changed, 7 insertions(+), 31 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 2844fda..f5e6e0e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -45,19 +45,13 @@ import org.yocto.bc.ui.wizards.FiniteStateWizardPage.ValidationListener;
  */
 public class OptionsPage extends FiniteStateWizardPage {
 
-	private Map vars;
-	private Composite c1;
 	private Composite top;
 	
-	private List controlList;
-	private boolean controlsCreated = false;
-	
 	private Text txtProjectLocation;
 
-	private Text txtInit;
 	private ValidationListener validationListener;
 	private Text txtProjectName;
-	private Button gitButton;
+	private Button btnGit;
 
 	protected OptionsPage(Map model) {
 		super("Options", model);
@@ -125,10 +119,10 @@ public class OptionsPage extends FiniteStateWizardPage {
 		gl.marginWidth = 0;
 		gitComposite.setLayout(gl);
 
-		gitButton = new Button(gitComposite, SWT.CHECK);
-		gitButton.setText("Clone from Yocto Project &Git Repository");
-		gitButton.setEnabled(true);
-		gitButton.addSelectionListener(validationListener);
+		btnGit = new Button(gitComposite, SWT.CHECK);
+		btnGit.setText("Clone from Yocto Project &Git Repository");
+		btnGit.setEnabled(true);
+		btnGit.addSelectionListener(validationListener);
 
 		setControl(top);
 	}
@@ -155,7 +149,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 	protected void updateModel() {
 		model.put(InstallWizard.INSTALL_DIRECTORY, txtProjectLocation.getText()+File.separator+txtProjectName.getText());
 		model.put(InstallWizard.PROJECT_NAME, txtProjectName.getText());
-		model.put(InstallWizard.GIT_CLONE, new Boolean(gitButton.getSelection()));
+		model.put(InstallWizard.GIT_CLONE, new Boolean(btnGit.getSelection()));
 	}
 
 	private boolean isValidProjectName(String projectName) {
@@ -192,7 +186,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 		
 		String projectPath = projectLoc + File.separator+txtProjectName.getText();
 		File git_dir=new File(projectPath);
-		if(!gitButton.getSelection()) {
+		if(!btnGit.getSelection()) {
 			if(!git_dir.isDirectory() || !git_dir.exists()) {
 				setErrorMessage("Directory " + txtProjectLocation.getText()+File.separator+txtProjectName.getText() + " does not exist, please select git clone.");
 				return false;
@@ -226,22 +220,4 @@ public class OptionsPage extends FiniteStateWizardPage {
 		return true;
 	}
 	
-	private class FileOpenSelectionAdapter extends SelectionAdapter {
-		@Override
-		public void widgetSelected(SelectionEvent e) {
-			FileDialog fd = new FileDialog(PlatformUI.getWorkbench()
-					.getDisplay().getActiveShell(), SWT.OPEN);
-
-			fd.setText("Open Configuration Script");
-			fd.setFilterPath(txtProjectLocation.getText());
-
-			String selected = fd.open();
-
-			if (selected != null) {
-				txtInit.setText(selected);
-				updateModel();
-			}
-		}
-	}
-
 }
-- 
1.7.9.5


