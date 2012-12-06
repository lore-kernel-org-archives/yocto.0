Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9255FE0146E
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 05:57:07 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2012 05:57:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,230,1355126400"; d="scan'208";a="227491173"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2012 05:57:06 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 15:47:02 +0200
Message-Id: <1354801622-13962-9-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 8/8] Validate Bitbake Commander project when switching between new repo and existing one
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
X-List-Received-Date: Thu, 06 Dec 2012 13:57:07 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/FiniteStateWizardPage.java |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
index 40696d3..2ef150a 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
@@ -106,7 +106,7 @@ public abstract class FiniteStateWizardPage extends WizardPage {
          * @see org.eclipse.swt.events.SelectionListener#widgetSelected(org.eclipse.swt.events.SelectionEvent)
          */
         public void widgetSelected(SelectionEvent e) {
-//            validate();
+            validate();
         }
 
         /*
-- 
1.7.9.5


