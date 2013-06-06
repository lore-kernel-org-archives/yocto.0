Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F7C0E01573
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 06:10:10 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Jun 2013 06:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,814,1363158000"; d="scan'208";a="313209323"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 06 Jun 2013 06:09:45 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Jun 2013 15:47:35 +0300
Message-Id: <1370522855-22772-6-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor 5/5] Validate project name to check for invalid characters
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
X-List-Received-Date: Thu, 06 Jun 2013 13:10:10 -0000

- project names should not allow spaces, or any illegal characters

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |   12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 24fd94b..d9ba0ee 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -179,10 +179,18 @@ public class OptionsPage extends FiniteStateWizardPage {
 	}
 
 	private boolean isValidProjectName(String projectName) {
-		if (projectName.indexOf('$') > -1) {
+		if (projectName.contains("\\s+"))
+			return false;
+
+		if (projectName.indexOf('$') != -1)
 			return false;
-		}
 
+		char[] chars = projectName.toCharArray();
+		if (!Character.isJavaIdentifierStart(chars[0]))
+			return false;
+		for (int i = 1; i < chars.length; i++)
+			if (!Character.isJavaIdentifierPart(chars[i]) && chars[i] != '-')
+				return false;
 		return true;
 	}
 
-- 
1.7.9.5


