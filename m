Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56E87E01449
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 02:21:51 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Nov 2012 02:21:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,177,1355126400"; d="scan'208";a="223584844"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2012 02:21:49 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Nov 2012 12:12:26 +0200
Message-Id: <1354097550-21312-5-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 4/8] Validate Recipe autopopulated fields
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
X-List-Received-Date: Wed, 28 Nov 2012 10:21:51 -0000

- validate that generated md5sums and sha256 sums are valid before populating the fields
- clear all previous commands output (like after source & bitbake -e) in order to limit output parsing

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |    3 --
 .../remote/utils/YoctoHostShellProcessAdapter.java |    8 ++++--
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   29 ++++++++++----------
 3 files changed, 19 insertions(+), 21 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
index 430dc6d..9c88ee7 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/RemoteHelper.java
@@ -301,8 +301,6 @@ public class RemoteHelper {
 	}
 	
 	public static void runBatchRemote(IHost connection, List<YoctoCommand> cmds, IProgressMonitor monitor, boolean waitForOutput) throws CoreException {
-		connection.getHostName();
-		connection.getDefaultUserId();
 		try {
 			String remoteCommand = "";
 			for (YoctoCommand cmd : cmds) {
@@ -364,5 +362,4 @@ public class RemoteHelper {
 		}
 		return false;
 	}
-
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
index a772dc4..b75401c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoHostShellProcessAdapter.java
@@ -11,7 +11,6 @@ import org.eclipse.rse.services.shells.IHostOutput;
 import org.eclipse.rse.services.shells.IHostShell;
 import org.eclipse.rse.services.shells.IHostShellChangeEvent;
 import org.eclipse.rse.services.shells.IHostShellOutputReader;
-import org.eclipse.swt.widgets.Display;
 
 public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 	private ProcessStreamBuffer processStreamBuffer;
@@ -75,7 +74,6 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 	
 	private void reportProgress(String info) {
 		
-		
 		if(calculator == null) {
 			updateMonitor(1);
 		} else {
@@ -125,7 +123,6 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 				this.commandResponseHandler.response(value, false);
 			}
 		}
-
 		AbstractHostShellOutputReader absReader = (AbstractHostShellOutputReader)reader;
 		isAlive = absReader.isAlive();
 		isFinished = absReader.isFinished();
@@ -145,4 +142,9 @@ public class YoctoHostShellProcessAdapter extends  HostShellProcessAdapter{
 	public void setAlive(boolean isAlive) {
 		this.isAlive = isAlive;
 	}
+
+	public void clearProcessBuffer() {
+		this.processStreamBuffer.outputLines.clear();
+		this.processStreamBuffer.errorLines.clear();
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index f45158f..eac1211 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -18,6 +18,7 @@ import java.util.HashMap;
 import java.util.Iterator;
 import java.util.List;
 import java.util.Set;
+import java.util.regex.Pattern;
 
 import org.eclipse.core.resources.IContainer;
 import org.eclipse.core.resources.IProject;
@@ -95,6 +96,8 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private static final String CONFIGURE_IN = "configure.in";
 	private static final String CONFIGURE_AC = "configure.ac";
 	private static final String AUTOTOOLS = "autotools";
+	private static final String md5Pattern = "^[0-9a-e]{32}$";
+	protected static final String sha256Pattern = "^[0-9a-e]{64}$";
 	
 	public NewBitBakeFileRecipeWizardPage(ISelection selection, IHost connection) {
 		super("wizardPage");
@@ -302,14 +305,6 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 				} catch (Exception e) {
 					e.printStackTrace();
 				}
-//				populateRecipeName(srcURI);
-//				populateSrcUriChecksum(srcURI, monitor);
-//				
-//				URI extractDir = extractPackage(srcURI, monitor);
-//				populateLicenseFileChecksum(extractDir, monitor);
-//				updateSrcUri(createMirrorLookupTable(monitor), srcURI);
-//				populateInheritance(extractDir, monitor);
-				
 			} else {
 				String packageName = getSrcFileName(false).replace("-", "_");
 				fileText.setText(packageName + BB_RECIPE_EXT);
@@ -318,10 +313,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 			}
 		} catch (URISyntaxException e) {
 			e.printStackTrace();
-		} /*catch (MalformedURLException e) {
-			e.printStackTrace();
-		}*/
-		
+		}
 	}
 	
 	private void handleLocalPopulate(URI srcURI, IProgressMonitor monitor) {
@@ -330,6 +322,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	}
 
 	private void handleRemotePopulate(URI srcURI, IProgressMonitor monitor) throws Exception {
+		RemoteHelper.clearProcessBuffer(connection);
 		populateRecipeName(srcURI);
 		List<YoctoCommand> commands = new ArrayList<YoctoCommand>();
 		
@@ -363,9 +356,12 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		updateSrcUri(createMirrorLookupTable(monitor), srcURI);
 		populateInheritance(extractDir, monitor);
 		
-		md5sumText.setText(retrieveSum(md5YCmd));
-		sha256sumText.setText(retrieveSum(sha256YCmd));
-		checksumText.setText(RemoteHelper.createNewURI(extractDir, COPYING_FILE).toString() + ";md5=" + retrieveSum(licenseChecksumCmd));
+		String md5Val = retrieveSum(md5YCmd);
+		md5sumText.setText(Pattern.matches(md5Pattern,  md5Val) ? md5Val : "");
+		String sha256Val = retrieveSum(sha256YCmd);
+		sha256sumText.setText(Pattern.matches(sha256Pattern,  sha256Val) ? sha256Val : "");
+		String checkSumVal =  retrieveSum(licenseChecksumCmd);
+		checksumText.setText(RemoteHelper.createNewURI(extractDir, COPYING_FILE).toString() + ";md5=" + (Pattern.matches(md5Pattern,  checkSumVal) ? checkSumVal : ""));
 	}
 
 	private String retrieveSum(YoctoCommand cmd) {
@@ -409,6 +405,9 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	
 	private void populateInheritance(URI extractDir, IProgressMonitor monitor) {
 		IHostFile[] hostFiles = RemoteHelper.getRemoteDirContent(connection, metaDirLoc.getPath(), "", IFileService.FILE_TYPE_FILES, monitor);
+		if (hostFiles == null)
+			return;
+		
 		for (IHostFile file: hostFiles) {
 			String fileName = file.getName();
 			if (fileName.equalsIgnoreCase(CMAKE_LIST)){
-- 
1.7.9.5


