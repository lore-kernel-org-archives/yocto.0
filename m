Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81BC2E01472
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:34 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629289"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:32 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:09 +0300
Message-Id: <1370451622-10619-9-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 08/21] Refactor Wizard Page fields to have consistent names
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:34 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   25 +++++++++++---------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index 36ffd4fa..4504144 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -65,9 +65,11 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private Text homepageText;
 	private Text authorText;
 	private Text sectionText;
-	private Text srcuriText;
+	private Text txtSrcURI;
 	private Text md5sumText;
 	private Text sha256sumText;
+	private Button btnPopulate;
+
 	private BitbakeRecipeUIElement element;
 	
 	private ISelection selection;
@@ -126,18 +128,19 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		label = new Label(container, SWT.NULL);
 		label.setText("SRC_&URI:");
 
-		srcuriText = new Text(container, SWT.BORDER | SWT.SINGLE);
+		txtSrcURI = new Text(container, SWT.BORDER | SWT.SINGLE);
 		gd = new GridData(GridData.FILL_HORIZONTAL);
-		srcuriText.setLayoutData(gd);
-		srcuriText.addModifyListener(new ModifyListener() {
+		txtSrcURI.setLayoutData(gd);
+		txtSrcURI.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				dialogChanged();
 			}
 		});
 
-		Button buttonP = new Button(container, SWT.PUSH);
-		buttonP.setText("Populate...");
-		buttonP.addSelectionListener(new SelectionAdapter() {
+		btnPopulate = new Button(container, SWT.PUSH);
+		btnPopulate.setText("Populate...");
+		btnPopulate.setEnabled(false);
+		btnPopulate.addSelectionListener(new SelectionAdapter() {
 			@Override
 			public void widgetSelected(SelectionEvent e) {
 				handlePopulate();
@@ -222,7 +225,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			return;
 		}
 
-		if (srcuriText.getText().length() == 0) {
+		if (txtSrcURI.getText().length() == 0) {
 			updateStatus("SRC_URI can't be empty");
 		}
 		
@@ -240,7 +243,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		element.setMd5sum(md5sumText.getText());
 		element.setSection(sectionText.getText());
 		element.setSha256sum(sha256sumText.getText());
-		element.setSrcuri(srcuriText.getText());
+		element.setSrcuri(txtSrcURI.getText());
 		element.setInheritance(inheritance);
 		element.setMetaDir(metaDirLoc);
 		
@@ -258,7 +261,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	}
 	
 	private void handlePopulate() {
-		String src_uri = srcuriText.getText();
+		String src_uri = txtSrcURI.getText();
 		if ((src_uri.startsWith("http://") || src_uri.startsWith("ftp://")) 
 			&& (src_uri.endsWith("tar.gz") || src_uri.endsWith("tar.bz2"))) {
 		
@@ -519,7 +522,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	    }
 	    int idx = src_uri.lastIndexOf("-");
 	    String new_src_uri = src_uri.substring(0, idx)+"-${PV}.tar.gz";
-	    srcuriText.setText(new_src_uri);
+	    txtSrcURI.setText(new_src_uri);
 	}
 	
 	private void initialize() {
-- 
1.7.9.5


