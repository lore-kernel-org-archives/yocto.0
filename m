Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42A62E01564
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:43 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629385"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:41 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:16 +0300
Message-Id: <1370451622-10619-16-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 15/21] Enable Populate button when src URI changes
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:43 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   38 +++++++++++---------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index dc29498..2d66fed 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -183,6 +183,12 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		txtSrcURI.setLayoutData(gd);
 		txtSrcURI.addModifyListener(new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
+				if (txtSrcURI.getText().trim().isEmpty()) {
+					if (btnPopulate != null)
+						btnPopulate.setEnabled(false);
+				} else if (btnPopulate != null){
+					btnPopulate.setEnabled(true);
+				}
 				dialogChanged();
 			}
 		});
@@ -367,7 +373,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	}
 	private void handleRemotePopulate(final URI srcURI, IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
 		populateRecipeName();
-
+		
 		this.getContainer().run(true, true, new IRunnableWithProgress() {
 
 			@Override
@@ -379,48 +385,48 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 					monitor.subTask("Cleaning environment");
 					YoctoCommand rmYCmd = new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, "");
 					RemoteHelper.handleRunCommandRemote(connection, rmYCmd, new SubProgressMonitor(monitor, 5));
-
+		
 					YoctoCommand mkdirYCmd = new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, "");
 					RemoteHelper.handleRunCommandRemote(connection, mkdirYCmd, new SubProgressMonitor(monitor, 5));
-
+		
 					updateTempFolderPath();
 					monitor.worked(10);
-
+		
 					monitor.subTask("Downloading package sources");
-
+		
 					updateTempFolderPath();
-
+		
 					YoctoCommand wgetYCmd = new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, "");
 					RemoteHelper.handleRunCommandRemote(connection, wgetYCmd, new SubProgressMonitor(monitor, 40));
-
+		
 					monitor.worked(50);
-
+		
 					monitor.subTask("Compute package checksums");
 					String md5Cmd = "md5sum " + srcFileNameExt;
 					YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
-
+		
 					RemoteHelper.handleRunCommandRemote(connection, md5YCmd, new SubProgressMonitor(monitor, 10));
 					md5Buffer =  md5YCmd.getProcessBuffer();
-
+		
 					monitor.worked(60);
-
+		
 					String sha256Cmd = "sha256sum " + srcFileNameExt;
 					YoctoCommand sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
 					RemoteHelper.handleRunCommandRemote(connection, sha256YCmd, new SubProgressMonitor(monitor, 10));
 					sha256Buffer = sha256YCmd.getProcessBuffer();
-
+		
 					monitor.worked(70);
-
+		
 					monitor.subTask("Extracting package");
 					extractDir = extractPackage(srcURI, new SubProgressMonitor(monitor, 0));
 					monitor.worked(80);
-
+		
 					YoctoCommand licenseChecksumCmd = populateLicenseFileChecksum(extractDir, new SubProgressMonitor(monitor, 10));
 					md5CopyingBuffer = 	licenseChecksumCmd.getProcessBuffer();
-
+		
 					monitor.subTask("Creating mirror lookup table");
 					mirrorTable = createMirrorLookupTable(new SubProgressMonitor(monitor, 10));
-
+		
 					monitor.worked(90);
 					monitor.done();
 				} catch (Exception e) {
-- 
1.7.9.5


