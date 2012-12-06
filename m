Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82FFDE0145D
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 05:57:03 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2012 05:57:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,230,1355126400"; d="scan'208";a="227491119"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2012 05:57:02 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 15:46:59 +0200
Message-Id: <1354801622-13962-6-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 5/8] Remove validation for existing git repository
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
X-List-Received-Date: Thu, 06 Dec 2012 13:57:03 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 37c12f8..9e94aea 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -170,11 +170,11 @@ public class OptionsPage extends FiniteStateWizardPage {
 				setErrorMessage("Directory " + projectPath + " does not exist, please select git clone.");
 				return false;
 			}
-			IHostFile gitDescr = RemoteHelper.getRemoteHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
-			if (gitDescr == null || !gitDescr.exists()) {
-				setErrorMessage("Directory " + projectPath + " does not contain a git repository, please select git clone.");
-				return false;
-			}
+//			IHostFile gitDescr = RemoteHelper.getRemoteHostFile(connection, projectPath + "/.git", new NullProgressMonitor());
+//			if (gitDescr == null || !gitDescr.exists()) {
+//				setErrorMessage("Directory " + projectPath + " does not contain a git repository, please select git clone.");
+//				return false;
+//			}
 
 			IHostFile validationFile = RemoteHelper.getRemoteHostFile(connection, projectPath + URI_SEPARATOR + InstallWizard.VALIDATION_FILE, new NullProgressMonitor());
 			if (validationFile == null || !validationFile.exists()) {
-- 
1.7.9.5


