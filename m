Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13414E0146F
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 07:10:30 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jan 2013 07:10:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,473,1355126400"; d="scan'208";a="274027430"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jan 2013 07:10:28 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 15 Jan 2013 16:57:26 +0200
Message-Id: <1358261849-5021-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1358261849-5021-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1358261849-5021-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v3 2/5] Allow '-' in project names
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
X-List-Received-Date: Tue, 15 Jan 2013 15:10:30 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index 72aeec2..97d1ad0 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -313,7 +313,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 		if (!Character.isJavaIdentifierStart(chars[0]))
 			return false;
 		for (int i = 1; i < chars.length; i++)
-			if (!Character.isJavaIdentifierPart(chars[i]))
+			if (!Character.isJavaIdentifierPart(chars[i]) && chars[i] != '-')
 				return false;
 		return true;
 	}
-- 
1.7.9.5


