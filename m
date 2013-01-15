Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2714E002AB
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 08:53:10 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Jan 2013 08:53:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,473,1355126400"; d="scan'208";a="272347506"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by orsmga002.jf.intel.com with ESMTP; 15 Jan 2013 08:53:06 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 15 Jan 2013 18:40:16 +0200
Message-Id: <1358268016-7179-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [Bug #3963][eclipse-poky][branch:denzil]
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
X-List-Received-Date: Tue, 15 Jan 2013 16:53:10 -0000

- source oe-init-build-env each time a command is ran using yocto-bsp tool

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |   86 ++++++++++++++++++--
 .../remotetools/wizards/bsp/PropertiesPage.java    |   16 ++--
 2 files changed, 89 insertions(+), 13 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index aa1c124..f7dea27 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -56,6 +56,7 @@ public class MainPage extends WizardPage {
 	private static final String PROPERTIES_CMD_PREFIX = "yocto-bsp list ";
 	private static final String PROPERTIES_CMD_SURFIX = " properties -o ";
 	private static final String PROPERTIES_FILE = "/tmp/properties.json";
+	static final String INIT_FILE = "/oe-init-build-env";
 
 	private Button btnMetadataLoc;
 	private Button btnBspOutLoc;
@@ -287,8 +288,18 @@ public class MainPage extends WizardPage {
 		}
 		
 		bspElem.setBspName(bspname);
+//		if (!textBspOutLoc.getText().isEmpty())
+//			bspElem.setBspOutLoc(textBspOutLoc.getText());
 		if (!textBspOutLoc.getText().isEmpty())
 			bspElem.setBspOutLoc(textBspOutLoc.getText());
+		else
+			bspElem.setBspOutLoc("");
+		if (!textBspOutLoc.getText().isEmpty())
+			bspElem.setBuildLoc(textBspOutLoc.getText());
+		else {
+			bspElem.setBuildLoc(metadata_loc + "/build");
+			checkBuildDir();
+		}
 		bspElem.setMetadataLoc(metadata_loc);
 		bspElem.setKarch(karch);
 		bspElem.setQarch(qarch);
@@ -296,6 +307,53 @@ public class MainPage extends WizardPage {
 		
 		return true;
 	}
+	private Status createBuildDir(String buildLoc) {
+		String metadataDir = textMetadataLoc.getText();
+
+		// if we do  not change the directory to metadata location the script will be looked into the directory indicated by user.dir system property
+		// system.property usually points to the location from where eclipse was started
+		String createBuildDirCmd = "cd " + metadataDir + ";source " + metadataDir + INIT_FILE + " " + buildLoc;
+
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
+			}
+
+			if (proc.waitFor() != 0)
+				return new Status(IStatus.ERROR, "not_used", 0, status, null);;
+			return new Status(IStatus.OK, "not_used", 0, "", null);
+		} catch (Exception e) {
+			return  new Status(IStatus.ERROR, "not_used", 0, e.getMessage(), null);
+		}
+	}
+	private Status checkBuildDir() {
+
+		String metadataLoc = textMetadataLoc.getText();
+
+		String buildLoc = metadataLoc + "/build";
+		return createBuildDir(buildLoc);
+	}
+	private String getBuildDir() {
+
+		String metadataLoc = textMetadataLoc.getText();
+		String buildLoc = textBspOutLoc.getText();
+
+		if (buildLoc.isEmpty()) {
+			buildLoc = metadataLoc + "/build";
+		} 
+		File buildLocDir = new File(buildLoc);
+		if (!buildLocDir.exists()) {
+			createBuildDir(buildLoc);
+		}
+		return buildLoc;
+	}
 	
 	private boolean createPropertiesFile() {
 		String create_properties_cmd = bspElem.getMetadataLoc() + "/scripts/" + 
@@ -319,14 +377,22 @@ public class MainPage extends WizardPage {
 		}
 		return true;
 	}
-	
+	private String getSourceCmd(){
+		String metadataLoc = textMetadataLoc.getText();
+		return "source " + metadataLoc + INIT_FILE + " " + getBuildDir() +" > temps; rm -rf temps;";
+	}
 	private ArrayList<String> getKArches() {
 		ArrayList<String> karches = new ArrayList<String>();
-		
-		String get_karch_cmd = textMetadataLoc.getText() + "/scripts/" + KARCH_CMD;
+		String metadataLoc = textMetadataLoc.getText();
+
+		String get_karch_cmd = getSourceCmd() + metadataLoc + "/scripts/" + KARCH_CMD;
 		try {
-			Runtime rt = Runtime.getRuntime();
-			Process proc = rt.exec(get_karch_cmd);
+//			Runtime rt = Runtime.getRuntime();
+//			Process proc = rt.exec(get_karch_cmd);
+			
+			ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", get_karch_cmd});
+			Process proc = builder.start();
+			
 			InputStream stdin = proc.getInputStream();
 			InputStreamReader isr = new InputStreamReader(stdin);
 			BufferedReader br = new BufferedReader(isr);
@@ -351,11 +417,15 @@ public class MainPage extends WizardPage {
 
 	private ArrayList<String> getQArches() {
 		ArrayList<String> qarches = new ArrayList<String>();
+		String metadataLoc = textMetadataLoc.getText();
 		
-		String get_qarch_cmd = textMetadataLoc.getText() + "/scripts/" + QARCH_CMD;
+		String get_qarch_cmd = getSourceCmd() + metadataLoc + "/scripts/" + QARCH_CMD;
 		try {
-			Runtime rt = Runtime.getRuntime();
-			Process proc = rt.exec(get_qarch_cmd);
+//			Runtime rt = Runtime.getRuntime();
+//			Process proc = rt.exec(get_qarch_cmd);
+			ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", get_qarch_cmd});
+			Process proc = builder.start();
+			
 			InputStream stdin = proc.getInputStream();
 			InputStreamReader isr = new InputStreamReader(stdin);
 			BufferedReader br = new BufferedReader(isr);
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
index a5e220e..61bd2e5 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
@@ -398,7 +398,7 @@ public class PropertiesPage extends WizardPage {
 			 existingButton.setSelection(false);
 			 kbCombo.removeAll();
 			 
-			 kb_property = "\"" + kernel_choice + "\"."+NEW_KBRANCH_NAME;
+			 kb_property = "\\\"" + kernel_choice + "\\\"."+NEW_KBRANCH_NAME;
 			 String[] values = getValues(kb_property);
 			 if (values != null)
 				 kbCombo.setItems(values);
@@ -435,14 +435,20 @@ public class PropertiesPage extends WizardPage {
 		 canFlipToNextPage();
 		 getWizard().getContainer().updateButtons();
 	}
-	
+	private String getSourceCmd(){
+		String metadataLoc = bspElem.getMetadataLoc();
+		return "source " + metadataLoc + MainPage.INIT_FILE  +" > temps; rm -rf temps;";
+	}
 	private String[] getValues(String property) {
 		ArrayList<String> values = new ArrayList<String>();
 		
-		String values_cmd = bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.getKarch() + VALUES_CMD_SURFIX + property;
+		String values_cmd = getSourceCmd() + bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.getKarch() + VALUES_CMD_SURFIX + property;
 		try {
-			Runtime rt = Runtime.getRuntime();
-			Process proc = rt.exec(values_cmd);
+//			Runtime rt = Runtime.getRuntime();
+//			Process proc = rt.exec(values_cmd);
+			ProcessBuilder builder = new ProcessBuilder(new String[] {"sh", "-c", values_cmd});
+			Process proc = builder.start();
+			
 			InputStream stdin = proc.getInputStream();
 			InputStreamReader isr = new InputStreamReader(stdin);
 			BufferedReader br = new BufferedReader(isr);
-- 
1.7.9.5


