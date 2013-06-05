Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4029CE01556
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629328"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:35 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:11 +0300
Message-Id: <1370451622-10619-11-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 10/21] Break handlePopulate into remote and local functions
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:37 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   31 ++++++++++++--------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index 4ee6b9c..9db0608 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -264,28 +264,33 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		String src_uri = txtSrcURI.getText();
 		if ((src_uri.startsWith("http://") || src_uri.startsWith("ftp://")) 
 			&& (src_uri.endsWith("tar.gz") || src_uri.endsWith("tar.bz2"))) {
-		
-			HashMap<String, String> mirror_map = createMirrorLookupTable();
-		
-			populateRecipeName(src_uri);
-			populateSrcuriChecksum(src_uri);
-			String extractDir = extractPackage(src_uri);
-			populateLicensefileChecksum(extractDir);
-			updateSrcuri(mirror_map, src_uri);
-			populateInheritance(extractDir);
+			handleRemotePopulate(src_uri);
 		} else if (src_uri.startsWith("file://")) {
 			String path_str = src_uri.substring(7);
 			File package_dir = new File(path_str);
 			if (package_dir.isDirectory()) {
-				String package_name = path_str.substring(path_str.lastIndexOf("/")+1);
-				fileText.setText(package_name+".bb");
-				populateLicensefileChecksum(path_str);
-				populateInheritance(path_str);
+				handleLocalPopulate(path_str);
 			}
 		}
 		
 	}
+
+	private void handleRemotePopulate(String src_uri) {
+		HashMap<String, String> mirror_map = createMirrorLookupTable();
+		populateRecipeName(src_uri);
+		populateSrcuriChecksum(src_uri);
+		String extractDir = extractPackage(src_uri);
+		populateLicensefileChecksum(extractDir);
+		updateSrcuri(mirror_map, src_uri);
+		populateInheritance(extractDir);
+	}
 	
+	private void handleLocalPopulate(String path_str) {
+		String package_name = path_str.substring(path_str.lastIndexOf("/")+1);
+		fileText.setText(package_name+".bb");
+		populateLicensefileChecksum(path_str);
+		populateInheritance(path_str);
+	}
 	private String extractPackage(String src_uri) {
 		try {
 			File working_dir = new File(metaDirLoc+"/temp");
-- 
1.7.9.5


