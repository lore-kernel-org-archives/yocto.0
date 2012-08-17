Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51F3CE002A6
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 06:15:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Aug 2012 06:15:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,784,1336374000"; d="scan'208";a="187726766"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.40])
	by orsmga002.jf.intel.com with ESMTP; 17 Aug 2012 06:15:56 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Aug 2012 16:14:31 +0300
Message-Id: <1345209272-5296-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Ioana Grigoropol <ioanax.grigoropol@intel.com>
Subject: [PATCH 2/3] Fixed bug 2922 - Yocto-BSP main page checks for build/output location generate error pop-up on properties pages
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
X-List-Received-Date: Fri, 17 Aug 2012 13:15:58 -0000

checks for build location (collect value of build location when focus is lost only if the value of the text field has changed
				or at the validation of the page if the control was never gained)
	- if no location is specified, use metadataLocation/build
	- if a directory is specified
		- if it does not exist -> create it under the given location
		- if it does exist -> oe-init-build-env - create conf/ hierachy
			- skip if already there (done by oe-init-build-env)
	- collect error output for build directory creation
- checks for output location :
	- if the output directory already exists -> show error & disable
next(the yocto-bsp script will fail if the directory already exists)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |  142 ++++++++++++++------
 1 file changed, 100 insertions(+), 42 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index b729ad1..05b1c35 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -20,6 +20,8 @@ import org.eclipse.core.runtime.IStatus;
 import org.eclipse.core.runtime.Status;
 import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.swt.SWT;
+import org.eclipse.swt.events.FocusEvent;
+import org.eclipse.swt.events.FocusListener;
 import org.eclipse.swt.events.ModifyEvent;
 import org.eclipse.swt.events.ModifyListener;
 import org.eclipse.swt.events.SelectionAdapter;
@@ -64,6 +66,9 @@ public class MainPage extends WizardPage {
 	private Text textBuildLoc;
 	private Label labelBuildLoc;
 	
+	private boolean buildDirChecked;
+	private BuildLocationListener buildLocationListener;
+	
 	private Text textBspName;
 	private Label labelBspName;
 	
@@ -114,11 +119,8 @@ public class MainPage extends WizardPage {
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
 		
 		textBuildLoc = (Text)addTextControl(textContainer, "");
-		textBuildLoc.addModifyListener(new ModifyListener() {
-			public void modifyText(ModifyEvent e) {
-				controlChanged(e.widget);
-			}
-		});
+		buildLocationListener = new BuildLocationListener("");
+		textBuildLoc.addFocusListener(buildLocationListener);
 		
 		setBtnBuilddirLoc(addFileSelectButton(textContainer, textBuildLoc));
 		
@@ -252,27 +254,30 @@ public class MainPage extends WizardPage {
 				 comboQArch.setEnabled(false);
 			 }		
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
 				 status = new Status(IStatus.ERROR, "not_used", 0,
-						 "Your BSP with name: " + bsp_name + " already exist under directory: " + bsp_dir_str + ", please change your bsp name!", null);
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
+				 status = new Status(IStatus.ERROR, "not_used", 0,
+						 "Your BSP with name: " + bspName + " already exist under directory: " + bspDirStr + ", please change your bsp name!", null);
 			 }
 		 }
-		 validatePage();
 		 
 		 if (status.getSeverity() == IStatus.ERROR)
 			 setErrorMessage(status.getMessage());
@@ -281,25 +286,50 @@ public class MainPage extends WizardPage {
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
+				 return createBuildDir(buildLoc);
+			 } else if (buildLocDir.isDirectory()) {
+				return createBuildDir(buildLoc);
+			 } else {
+				 return new Status(IStatus.ERROR, "not_used", 0, "Invalid build location: Make sure the build location is a directory!", null);
+			 }
+		 }
+	}
 	
-		File build_dir = null;
-		if ((builddir_str == null) || builddir_str.isEmpty()) 
-			builddir_str = metadata_dir + "/build";
-			
-		build_dir = new File(builddir_str);
+	private Status createBuildDir(String buildLoc) {
+		String metadataDir = textMetadataLoc.getText();
+	
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
+		try {
+			ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", createBuildDirCmd});
+			Process proc = builder.start();
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
 	
@@ -347,11 +377,11 @@ public class MainPage extends WizardPage {
 	
 	
 	public boolean validatePage() {
-		String metadata_loc = textMetadataLoc.getText();
+		String metadataLoc = textMetadataLoc.getText();
 		String bspname = textBspName.getText();
 		String karch = comboKArch.getText();
 		String qarch = comboQArch.getText();
-		if (metadata_loc.isEmpty() ||
+		if (metadataLoc.isEmpty() ||
 				bspname.isEmpty() ||
 				karch.isEmpty()) {
 			return false;
@@ -366,9 +396,14 @@ public class MainPage extends WizardPage {
 			bspElem.setBspOutLoc("");
 		if (!textBuildLoc.getText().isEmpty())
 			bspElem.setBuildLoc(textBuildLoc.getText());
-		else
-			bspElem.setBuildLoc("");
-		bspElem.setMetadataLoc(metadata_loc);
+		else {
+			bspElem.setBuildLoc(metadataLoc + "/build");
+			if (!buildDirChecked) {
+				checkBuildDir();
+				buildDirChecked = true;
+			}
+		}
+		bspElem.setMetadataLoc(metadataLoc);
 		bspElem.setKarch(karch);
 		bspElem.setQarch(qarch);
 		bspElem.setValidPropertiesFile(createPropertiesFile());
@@ -376,6 +411,7 @@ public class MainPage extends WizardPage {
 		return true;
 	}
 	
+
 	private boolean createPropertiesFile() {
 		String create_properties_cmd = bspElem.getMetadataLoc() + "/scripts/" + 
 										PROPERTIES_CMD_PREFIX + bspElem.getKarch() + 
@@ -476,4 +512,26 @@ public class MainPage extends WizardPage {
 	public void setBtnBuilddirLoc(Button btnBuilddirLoc) {
 		this.btnBuildLoc = btnBuilddirLoc;
 	}
+	
+	class BuildLocationListener implements FocusListener{
+		String value;
+		boolean changed;
+		
+		BuildLocationListener(String value){
+			this.value = value;
+		}
+		@Override
+		public void focusGained(FocusEvent e) {
+			value = ((Text)e.getSource()).getText();
+		}
+
+		@Override
+		public void focusLost(FocusEvent e) {
+			if(!((Text)e.getSource()).getText().equals(value)) {
+				checkBuildDir();
+				buildDirChecked = true;
+			}
+		}
+		
+	}
 }
-- 
1.7.9.5


