Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D853FE01461
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 02:21:53 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Nov 2012 02:21:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,177,1355126400"; d="scan'208";a="223584859"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2012 02:21:52 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Nov 2012 12:12:28 +0200
Message-Id: <1354097550-21312-7-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354097550-21312-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 6/8] Fix md5sum & sha256sum pattern checks
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
X-List-Received-Date: Wed, 28 Nov 2012 10:21:54 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index eac1211..f1d90c9 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -96,8 +96,8 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private static final String CONFIGURE_IN = "configure.in";
 	private static final String CONFIGURE_AC = "configure.ac";
 	private static final String AUTOTOOLS = "autotools";
-	private static final String md5Pattern = "^[0-9a-e]{32}$";
-	protected static final String sha256Pattern = "^[0-9a-e]{64}$";
+	private static final String md5Pattern = "^[0-9a-f]{32}$";
+	protected static final String sha256Pattern = "^[0-9a-f]{64}$";
 	
 	public NewBitBakeFileRecipeWizardPage(ISelection selection, IHost connection) {
 		super("wizardPage");
@@ -323,6 +323,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 
 	private void handleRemotePopulate(URI srcURI, IProgressMonitor monitor) throws Exception {
 		RemoteHelper.clearProcessBuffer(connection);
+
 		populateRecipeName(srcURI);
 		List<YoctoCommand> commands = new ArrayList<YoctoCommand>();
 		
-- 
1.7.9.5


