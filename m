Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0614E011AD
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 08:15:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Aug 2012 08:15:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,778,1336374000"; d="scan'208";a="181523203"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.40])
	by orsmga001.jf.intel.com with ESMTP; 16 Aug 2012 08:15:13 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Aug 2012 18:13:45 +0300
Message-Id: <1345130026-11104-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Ioana Grigoropol <ioanax.grigoropol@intel.com>
Subject: [PATCH 2/3] [PATCH]Fixed bug 2922 - Yocto-BSP main page checks for build/output location generate error pop-up on properties pages
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
X-List-Received-Date: Thu, 16 Aug 2012 15:15:14 -0000

checks for build location :
	- if no location is specified, use metadataLocation/build
	- if a directory is specified
		- if it does not exist -> create it under metadataLocation
		- if it does exist -> oe-init-build-env - create conf/ hierachy
			- skip if already there
	- collect error output for build directory creation
- checks for output location :
	- if the output directory already exists -> show error & disable
next(the yocto-bsp script will fail if the directory already exists)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |   96 +++++++++++++-------
 1 file changed, 64 insertions(+), 32 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index b729ad1..e5a21d1 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -251,28 +251,33 @@ public class MainPage extends WizardPage {
 				 labelQArch.setEnabled(false);
 				 comboQArch.setEnabled(false);
 			 }		
+		 } else if (widget == textBuildLoc){
+			 status = checkBuildDir();
 		 }
-		
-		 checkBuildDir();
-		 
-		 String build_dir = textBuildLoc.getText();
-		 String output_dir = textBspOutputLoc.getText();
-		 String bsp_name = textBspName.getText();
 		 
-		 if (!output_dir.isEmpty() && output_dir.matches(build_dir)) {
-			 status = new Status(IStatus.ERROR, "not_used", 0,
-					 "You've set BSP output directory the same as build directory, please leave output directory empty for this scenario!", null);
-		 }
+		 String buildDir = textBuildLoc.getText();
+		 String outputDir = textBspOutputLoc.getText();
+		 String bspName = textBspName.getText();
 		 
-		 if (build_dir.startsWith(metadataLoc) && output_dir.isEmpty() && !bsp_name.isEmpty()) {
-			 String bsp_dir_str = metadataLoc + "/meta-" + bsp_name;
-			 File bsp_dir = new File(bsp_dir_str);
-			 if (bsp_dir.exists()) {
+		 if (!outputDir.isEmpty()){
+			 if (outputDir.matches(buildDir)) {
+				 status = new Status(IStatus.ERROR, "not_used", 0,
+						 "You've set BSP output directory the same as build directory, please leave output directory empty for this scenario!", null);
+			 } else {
+				 File outputDirectory = new File(outputDir);
+				 if (outputDirectory.exists()){
+					status = new Status(IStatus.ERROR, "not_used", 0,
+							 "Your BSP output directory points to an exiting directory!", null); 
+				 }
+			 } 
+		 } else if (buildDir.startsWith(metadataLoc) && !bspName.isEmpty()) {
+			 String bspDirStr = metadataLoc + "/meta-" + bspName;
+			 File bspDir = new File(bspDirStr);
+			 if (bspDir.exists()) {
 				 status = new Status(IStatus.ERROR, "not_used", 0,
-						 "Your BSP with name: " + bsp_name + " already exist under directory: " + bsp_dir_str + ", please change your bsp name!", null);
+						 "Your BSP with name: " + bspName + " already exist under directory: " + bspDirStr + ", please change your bsp name!", null);
 			 }
 		 }
-		 validatePage();
 		 
 		 if (status.getSeverity() == IStatus.ERROR)
 			 setErrorMessage(status.getMessage());
@@ -281,25 +286,52 @@ public class MainPage extends WizardPage {
 		 canFlipToNextPage();
 	}
 	
-	private void checkBuildDir() {
-		String metadata_dir = textMetadataLoc.getText();
-		String builddir_str = textBuildLoc.getText();
+	private Status checkBuildDir() {
+		
+		String metadataLoc = textMetadataLoc.getText();
+		String buildLoc = textBuildLoc.getText();
+		
+		if (buildLoc.isEmpty()) {
+			 buildLoc = metadataLoc + "/build";
+			 return createBuildDir(buildLoc);
+		} else {
+			 File buildLocDir = new File(buildLoc);
+			 if (!buildLocDir.exists()) {
+				 return createBuildDir(metadataLoc + "/" + buildLoc);
+			 } else if (buildLocDir.isDirectory()) {
+				return createBuildDir(buildLoc);
+			 } else {
+				 return new Status(IStatus.ERROR, "not_used", 0, "Invalid build location: Make sure the build location is a directory!", null);
+			 }
+		 }
+	}
+	
+	private Status createBuildDir(String buildLoc) {
+		String metadataDir = textMetadataLoc.getText();
 	
-		File build_dir = null;
-		if ((builddir_str == null) || builddir_str.isEmpty()) 
-			builddir_str = metadata_dir + "/build";
-			
-		build_dir = new File(builddir_str);
+		// if we do  not change the directory to metadata location the script will be looked into the directory indicated by user.dir system property
+		// system.property usually points to the location from where eclipse was started
+		String createBuildDirCmd = "cd " + metadataDir + ";source " + metadataDir + "/oe-init-build-env " + buildLoc;
 		
-		if (!build_dir.exists()) {
-			String create_builddir_cmd = metadata_dir + "/oe-init-build-env " + builddir_str;
-			try {
-				Runtime rt = Runtime.getRuntime();
-				Process proc = rt.exec(new String[] {"sh", "-c", create_builddir_cmd});
-				proc.waitFor();
-			} catch (Throwable t) {
-				t.printStackTrace();
+		System.out.println(createBuildDirCmd);
+		try {
+			ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", createBuildDirCmd});
+			Process proc = builder.start();
+			
+			InputStream errorStream = proc.getErrorStream();
+			InputStreamReader isr = new InputStreamReader(errorStream);
+			BufferedReader br = new BufferedReader(isr);
+			String line = null;
+			String status = "";
+			while ( (line = br.readLine()) != null) {
+				status += line;
 			}
+
+			if (proc.waitFor() != 0)
+				return new Status(IStatus.ERROR, "not_used", 0, status, null);;
+			return new Status(IStatus.OK, "not_used", 0, "", null);
+		} catch (Exception e) {
+			return  new Status(IStatus.ERROR, "not_used", 0, e.getMessage(), null);
 		}
 	}
 	
-- 
1.7.9.5


