Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DC6AE01557
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:38 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629341"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:36 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:12 +0300
Message-Id: <1370451622-10619-12-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 11/21] Use uri instead of string to determine location of recipe & determine archive type
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:38 -0000

- create URI from text location of the recipe and determine the location of the recipe by using the scheme(ftp, http, file)
- extract achive type from URI

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   59 ++++++++++++++++----
 1 file changed, 49 insertions(+), 10 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index 9db0608..c9b39be 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -54,6 +54,8 @@ import java.io.InputStream;
 import java.io.FilenameFilter;
 import java.security.MessageDigest;
 import java.math.BigInteger;
+import java.net.URI;
+import java.net.URISyntaxException;
 
 public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private Text containerText;
@@ -76,6 +78,17 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private String metaDirLoc;
 	private ArrayList inheritance;
 	private final IHost connection;
+
+	private String srcFileNameExt;
+	private String srcFileName;
+
+	public static final String TEMP_FOLDER_NAME = "temp";
+	public static final String TAR_BZ2_EXT = ".tar.bz2";
+	public static final String TAR_GZ_EXT = ".tar.gz";
+	public static final String HTTP = "http";
+	public static final String FTP ="ftp";
+	public static final String BB_RECIPE_EXT =".bb";
+	private static final String COPYING_FILE = "COPYING";
 	
 	public NewBitBakeFileRecipeWizardPage(ISelection selection, IHost connection) {
 		super("wizardPage");
@@ -261,20 +274,46 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	}
 	
 	private void handlePopulate() {
-		String src_uri = txtSrcURI.getText();
-		if ((src_uri.startsWith("http://") || src_uri.startsWith("ftp://")) 
-			&& (src_uri.endsWith("tar.gz") || src_uri.endsWith("tar.bz2"))) {
-			handleRemotePopulate(src_uri);
-		} else if (src_uri.startsWith("file://")) {
-			String path_str = src_uri.substring(7);
-			File package_dir = new File(path_str);
-			if (package_dir.isDirectory()) {
-				handleLocalPopulate(path_str);
+		try {
+			String src_uri = txtSrcURI.getText();
+			URI srcURI = new URI(txtSrcURI.getText().trim());
+			String scheme = srcURI.getScheme();
+			this.srcFileNameExt = getSrcFileName(true);
+			this.srcFileName = getSrcFileName(false);
+			if ((scheme.equals(HTTP) || scheme.equals(FTP))
+					&& (srcFileNameExt.endsWith(TAR_GZ_EXT) || srcFileNameExt.endsWith(TAR_BZ2_EXT))) {
+				handleRemotePopulate(src_uri);
+			} else {
+				String packageName = srcFileName.replace("-", "_");
+				fileText.setText(packageName + BB_RECIPE_EXT);
+
+				handleLocalPopulate(src_uri);
 			}
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
 		}
-		
 	}
 
+	private String getSrcFileName(boolean withExt){
+		URI srcURI;
+		try {
+			srcURI = new URI(txtSrcURI.getText().trim());
+			String path = srcURI.getPath();
+			String fileName = path.substring(path.lastIndexOf("/") + 1);
+			if (withExt)
+				return fileName;
+			else {
+				if (fileName.endsWith(TAR_BZ2_EXT)) {
+					return fileName.substring(0, fileName.indexOf(TAR_BZ2_EXT));
+				} else if(fileName.endsWith(TAR_GZ_EXT)){
+					return fileName.substring(0, fileName.indexOf(TAR_GZ_EXT));
+				}
+			}
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
+		}
+		return "";
+	}
 	private void handleRemotePopulate(String src_uri) {
 		HashMap<String, String> mirror_map = createMirrorLookupTable();
 		populateRecipeName(src_uri);
-- 
1.7.9.5


