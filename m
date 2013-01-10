Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A09CE00726
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 08:04:44 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Jan 2013 08:03:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,444,1355126400"; d="scan'208";a="244685162"
Received: from igrigorx-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.237.108.42])
	by orsmga001.jf.intel.com with ESMTP; 10 Jan 2013 08:04:30 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Jan 2013 18:04:16 +0200
Message-Id: <1357833857-16426-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357833857-16426-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1357833857-16426-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v2 2/3] Allow '-' in project names
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
X-List-Received-Date: Thu, 10 Jan 2013 16:04:44 -0000

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


