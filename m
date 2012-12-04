Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB116E01446
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 05:36:05 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Dec 2012 05:35:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,215,1355126400"; d="scan'208";a="228753520"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2012 05:36:04 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 15:26:22 +0200
Message-Id: <1354627583-16084-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354627583-16084-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354627583-16084-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 2/3] Show progress bar for building new Recipe in Bitbake commander perspective
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
X-List-Received-Date: Tue, 04 Dec 2012 13:36:05 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  119 +++++++++++++-------
 1 file changed, 78 insertions(+), 41 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index e27619e..e9dc1f3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -11,6 +11,7 @@
  *******************************************************************************/
 package org.yocto.bc.ui.wizards;
 
+import java.lang.reflect.InvocationTargetException;
 import java.net.URI;
 import java.net.URISyntaxException;
 import java.util.ArrayList;
@@ -27,6 +28,7 @@ import org.eclipse.core.resources.ResourcesPlugin;
 import org.eclipse.core.runtime.IProgressMonitor;
 import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.core.runtime.Path;
+import org.eclipse.jface.operation.IRunnableWithProgress;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.window.Window;
@@ -74,6 +76,8 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private IHost connection;
 
 	private String tempFolderPath;
+	private String srcFileNameExt;
+	private String srcFileName;
 
 	public static final String TEMP_FOLDER_NAME = "temp";
 	public static final String TAR_BZ2_EXT = ".tar.bz2";
@@ -98,6 +102,12 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private static final String md5Pattern = "^[0-9a-f]{32}$";
 	protected static final String sha256Pattern = "^[0-9a-f]{64}$";
 
+	private HashMap<String, String> mirrorTable;
+	private URI extractDir;
+	private YoctoCommand licenseChecksumCmd;
+	protected YoctoCommand md5YCmd;
+	protected YoctoCommand sha256YCmd;
+
 	public NewBitBakeFileRecipeWizardPage(ISelection selection, IHost connection) {
 		super("wizardPage");
 		setTitle("BitBake Recipe");
@@ -300,16 +310,17 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			IProgressMonitor monitor = new NullProgressMonitor();
 			URI srcURI = new URI(txtSrcURI.getText().trim());
 			String scheme = srcURI.getScheme();
-			String srcFileName = getSrcFileName(true);
+			this.srcFileNameExt = getSrcFileName(true);
+			this.srcFileName = getSrcFileName(false);
 			if ((scheme.equals(HTTP) || scheme.equals(FTP))
-					&& (srcFileName.endsWith(TAR_GZ_EXT) || srcFileName.endsWith(TAR_BZ2_EXT))) {
+					&& (srcFileNameExt.endsWith(TAR_GZ_EXT) || srcFileNameExt.endsWith(TAR_BZ2_EXT))) {
 				try {
 					handleRemotePopulate(srcURI, monitor);
 				} catch (Exception e) {
 					e.printStackTrace();
 				}
 			} else {
-				String packageName = getSrcFileName(false).replace("-", "_");
+				String packageName = srcFileName.replace("-", "_");
 				fileText.setText(packageName + BB_RECIPE_EXT);
 
 				handleLocalPopulate(srcURI, monitor);
@@ -320,52 +331,78 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	}
 
 	private void handleLocalPopulate(URI srcURI, IProgressMonitor monitor) {
-		populateLicenseFileChecksum(srcURI, monitor);
+		populateLicenseFileChecksum(srcURI);
 		populateInheritance(srcURI, monitor);
 	}
 
-	private void handleRemotePopulate(URI srcURI, IProgressMonitor monitor) throws Exception {
+	private void handleRemotePopulate(final URI srcURI, IProgressMonitor monitor) throws Exception {
 		RemoteHelper.clearProcessBuffer(connection);
-
 		populateRecipeName(srcURI);
-		List<YoctoCommand> commands = new ArrayList<YoctoCommand>();
 
-		String metaDirLocPath = metaDirLoc.getPath();
-		commands.add(new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
-		commands.add(new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
-		updateTempFolderPath();
+		this.getContainer().run(true, true, new IRunnableWithProgress() {
 
+			@Override
+			public void run(IProgressMonitor monitor) throws InvocationTargetException,
+					InterruptedException {
+				monitor.beginTask("Populating recipe fields ... ", 100);
+				List<YoctoCommand> commands = new ArrayList<YoctoCommand>();
 
-		try {
-			commands.add(new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, ""));
+				try {
+					String metaDirLocPath = metaDirLoc.getPath();
 
-			updateTempFolderPath();
-			RemoteHelper.runBatchRemote(connection, commands, true);
+					monitor.subTask("Cleaning environment");
+					commands.add(new YoctoCommand("rm -rf " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
+					commands.add(new YoctoCommand( "mkdir " + TEMP_FOLDER_NAME, metaDirLocPath, ""));
+					updateTempFolderPath();
+					monitor.worked(10);
 
-			commands.clear();
+					monitor.subTask("Downloading package sources");
+					commands.add(new YoctoCommand("wget " + srcURI.toURL(), tempFolderPath, ""));
 
-			String md5Cmd = "md5sum " + getSrcFileName(true);
-			YoctoCommand md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
-			RemoteHelper.runCommandRemote(connection, md5YCmd);
+					updateTempFolderPath();
+					RemoteHelper.runBatchRemote(connection, commands, true);
 
-			String sha256Cmd = "sha256sum " + getSrcFileName(true);
-			YoctoCommand sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
-			RemoteHelper.runCommandRemote(connection, sha256YCmd);
+					commands.clear();
+					monitor.worked(50);
 
-			URI extractDir = extractPackage(srcURI, monitor);
-			YoctoCommand licenseChecksumCmd = populateLicenseFileChecksum(extractDir, monitor);
-			updateSrcUri(createMirrorLookupTable(monitor), srcURI);
-			populateInheritance(extractDir, monitor);
+					monitor.subTask("Compute package checksums");
+					String md5Cmd = "md5sum " + srcFileNameExt;
+					md5YCmd = new YoctoCommand(md5Cmd, tempFolderPath, "");
+					RemoteHelper.runCommandRemote(connection, md5YCmd);
 
-			String md5Val = retrieveSum(md5YCmd);
-			md5sumText.setText(Pattern.matches(md5Pattern,  md5Val) ? md5Val : "");
-			String sha256Val = retrieveSum(sha256YCmd);
-			sha256sumText.setText(Pattern.matches(sha256Pattern,  sha256Val) ? sha256Val : "");
-			String checkSumVal =  retrieveSum(licenseChecksumCmd);
-			checksumText.setText(RemoteHelper.createNewURI(extractDir, COPYING_FILE).toString() + ";md5=" + (Pattern.matches(md5Pattern,  checkSumVal) ? checkSumVal : ""));
-		} catch (Exception e) {
-			e.printStackTrace();
-		}
+					monitor.worked(60);
+
+					String sha256Cmd = "sha256sum " + srcFileNameExt;
+					sha256YCmd = new YoctoCommand(sha256Cmd, tempFolderPath, "");
+					RemoteHelper.runCommandRemote(connection, sha256YCmd);
+
+					monitor.worked(70);
+
+					monitor.subTask("Extracting package");
+					extractDir = extractPackage(srcURI);
+					monitor.worked(80);
+
+					licenseChecksumCmd = populateLicenseFileChecksum(extractDir);
+
+					monitor.subTask("Creating mirror lookup table");
+					mirrorTable = createMirrorLookupTable();
+
+					monitor.worked(90);
+					monitor.done();
+				} catch (Exception e) {
+					e.printStackTrace();
+				}
+			}
+		});
+		updateSrcUri(mirrorTable, srcURI);
+		populateInheritance(extractDir, monitor);
+
+		String md5Val = retrieveSum(md5YCmd);
+		md5sumText.setText(Pattern.matches(md5Pattern,  md5Val) ? md5Val : "");
+		String sha256Val = retrieveSum(sha256YCmd);
+		sha256sumText.setText(Pattern.matches(sha256Pattern,  sha256Val) ? sha256Val : "");
+		String checkSumVal =  retrieveSum(licenseChecksumCmd);
+		checksumText.setText(RemoteHelper.createNewURI(extractDir, COPYING_FILE).toString() + ";md5=" + (Pattern.matches(md5Pattern,  checkSumVal) ? checkSumVal : ""));
 	}
 
 	private String retrieveSum(YoctoCommand cmd) {
@@ -378,9 +415,9 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		return "";
 	}
 
-	private URI extractPackage(URI srcURI, IProgressMonitor monitor) {
+	private URI extractPackage(URI srcURI) {
 		try {
-			String path = getSrcFileName(true);
+			String path = srcFileNameExt;
 			String tarCmd = "tar ";
 			if (path.endsWith(TAR_BZ2_EXT)) {
 				tarCmd += "-zxvf ";
@@ -390,7 +427,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 
 			RemoteHelper.runCommandRemote(connection, new YoctoCommand(tarCmd + path, tempFolderPath, ""));
 
-			return RemoteHelper.createNewURI(metaDirLoc, TEMP_FOLDER_NAME + "/" + getSrcFileName(false));
+			return RemoteHelper.createNewURI(metaDirLoc, TEMP_FOLDER_NAME + "/" + srcFileName);
 
 		} catch (Exception e) {
 			e.printStackTrace();
@@ -424,7 +461,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		}
 	}
 
-	private YoctoCommand populateLicenseFileChecksum(URI extractDir, IProgressMonitor monitor) {
+	private YoctoCommand populateLicenseFileChecksum(URI extractDir) {
 		if (extractDir == null)
 			throw new RuntimeException("Something went wrong during source extraction!");
 
@@ -459,7 +496,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		return "";
 	}
 
-	private HashMap<String, String> createMirrorLookupTable(IProgressMonitor monitor) throws Exception {
+	private HashMap<String, String> createMirrorLookupTable() throws Exception {
 		HashMap<String, String> mirrorMap = new HashMap<String, String>();
 
 		YoctoCommand cmd = new YoctoCommand("cat " + MIRRORS_FILE, getMetaFolderPath() + CLASSES_FOLDER, "");
@@ -486,7 +523,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		if (!fileName.isEmpty())
 			return;
 
-		String recipeFile = getSrcFileName(false).replace("-", "_");
+		String recipeFile = srcFileName.replace("-", "_");
 		recipeFile += BB_RECIPE_EXT;
 		if (recipeFile != null)
 			fileText.setText(recipeFile);
-- 
1.7.9.5


