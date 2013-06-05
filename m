Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22909E0155B
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629373"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:40 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:15 +0300
Message-Id: <1370451622-10619-15-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 14/21] Run all Recipe task in wizard container
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:42 -0000

- if we run the remote commands without using the Wizard container, the monitor will never get updated properly and the messages will not appear
	- in order to fix this, we use a IRunnableWithProgress to perform all tasks

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   88 +++++++++++---------
 1 file changed, 50 insertions(+), 38 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index db8724d..dc29498 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -22,6 +22,7 @@ import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.SubProgressMonitor;
+import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.window.Window;
@@ -337,6 +338,10 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			}
 		} catch (URISyntaxException e) {
 			e.printStackTrace();
+		} catch (InvocationTargetException e) {
+			e.printStackTrace();
+		} catch (InterruptedException e) {
+			e.printStackTrace();
 		}
 	}
 
@@ -360,62 +365,69 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		}
 		return "";
 	}
-	private void handleRemotePopulate(URI srcURI, IProgressMonitor monitor) {
+	private void handleRemotePopulate(final URI srcURI, IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
 		populateRecipeName();
 
-		try {
-			String metaDirLocPath = metaDirLoc.getPath();
-			monitor.subTask("Cleaning environment");
-			YoctoCommand rmYCmd = new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, "");
-			RemoteHelper.handleRunCommandRemote(connection, rmYCmd, new SubProgressMonitor(monitor, 5));
+		this.getContainer().run(true, true, new IRunnableWithProgress() {
 
-			YoctoCommand mkdirYCmd = new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, "");
-			RemoteHelper.handleRunCommandRemote(connection, mkdirYCmd, new SubProgressMonitor(monitor, 5));
+			@Override
+			public void run(IProgressMonitor monitor) throws InvocationTargetException,
+					InterruptedException {
+				monitor.beginTask("Populating recipe fields ... ", 100);
+				try {
+					String metaDirLocPath = metaDirLoc.getPath();
+					monitor.subTask("Cleaning environment");
+					YoctoCommand rmYCmd = new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, rmYCmd, new SubProgressMonitor(monitor, 5));
 
-			updateTempFolderPath();
-			monitor.worked(10);
+					YoctoCommand mkdirYCmd = new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, mkdirYCmd, new SubProgressMonitor(monitor, 5));
 
-			monitor.subTask("Downloading package sources");
+					updateTempFolderPath();
+					monitor.worked(10);
 
-			updateTempFolderPath();
+					monitor.subTask("Downloading package sources");
 
-			YoctoCommand wgetYCmd = new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, "");
-			RemoteHelper.handleRunCommandRemote(connection, wgetYCmd, new SubProgressMonitor(monitor, 40));
+					updateTempFolderPath();
 
-			monitor.worked(50);
+					YoctoCommand wgetYCmd = new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, wgetYCmd, new SubProgressMonitor(monitor, 40));
 
-			monitor.subTask("Compute package checksums");
-			String md5Cmd = "md5sum " + srcFileNameExt;
-			YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
+					monitor.worked(50);
 
-			RemoteHelper.handleRunCommandRemote(connection, md5YCmd, new SubProgressMonitor(monitor, 10));
-			md5Buffer =  md5YCmd.getProcessBuffer();
+					monitor.subTask("Compute package checksums");
+					String md5Cmd = "md5sum " + srcFileNameExt;
+					YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
 
-			monitor.worked(60);
+					RemoteHelper.handleRunCommandRemote(connection, md5YCmd, new SubProgressMonitor(monitor, 10));
+					md5Buffer =  md5YCmd.getProcessBuffer();
 
-			String sha256Cmd = "sha256sum " + srcFileNameExt;
-			YoctoCommand sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
-			RemoteHelper.handleRunCommandRemote(connection, sha256YCmd, new SubProgressMonitor(monitor, 10));
-			sha256Buffer = sha256YCmd.getProcessBuffer();
+					monitor.worked(60);
 
-			monitor.worked(70);
+					String sha256Cmd = "sha256sum " + srcFileNameExt;
+					YoctoCommand sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
+					RemoteHelper.handleRunCommandRemote(connection, sha256YCmd, new SubProgressMonitor(monitor, 10));
+					sha256Buffer = sha256YCmd.getProcessBuffer();
 
-			monitor.subTask("Extracting package");
-			extractDir = extractPackage(srcURI, new SubProgressMonitor(monitor, 0));
-			monitor.worked(80);
+					monitor.worked(70);
 
-			YoctoCommand licenseChecksumCmd = populateLicenseFileChecksum(extractDir, new SubProgressMonitor(monitor, 10));
-			md5CopyingBuffer = 	licenseChecksumCmd.getProcessBuffer();
+					monitor.subTask("Extracting package");
+					extractDir = extractPackage(srcURI, new SubProgressMonitor(monitor, 0));
+					monitor.worked(80);
 
-			monitor.subTask("Creating mirror lookup table");
-			mirrorTable = createMirrorLookupTable(new SubProgressMonitor(monitor, 10));
+					YoctoCommand licenseChecksumCmd = populateLicenseFileChecksum(extractDir, new SubProgressMonitor(monitor, 10));
+					md5CopyingBuffer = 	licenseChecksumCmd.getProcessBuffer();
 
-			monitor.worked(90);
-			monitor.done();
-		} catch (Exception e) {
-			e.printStackTrace();
-		}
+					monitor.subTask("Creating mirror lookup table");
+					mirrorTable = createMirrorLookupTable(new SubProgressMonitor(monitor, 10));
 
+					monitor.worked(90);
+					monitor.done();
+				} catch (Exception e) {
+					e.printStackTrace();
+				}
+			}
+		});
 		updateSrcUri(mirrorTable, srcURI);
 		populateInheritance(extractDir, monitor);
 
-- 
1.7.9.5


