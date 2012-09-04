Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B29FE00344
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 07:20:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Sep 2012 07:20:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,367,1344236400"; d="scan'208";a="188735651"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.40])
	by orsmga001.jf.intel.com with ESMTP; 04 Sep 2012 07:20:07 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Sep 2012 17:17:24 +0300
Message-Id: <1346768244-11170-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [Temporary Fix for Yocto #3044]
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
X-List-Received-Date: Tue, 04 Sep 2012 14:20:09 -0000

Disable @Override annotations until AB jdk issue is resolved

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index fea1c76..861cb08 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -520,12 +520,12 @@ public class MainPage extends WizardPage {
 		BuildLocationListener(String value){
 			this.value = value;
 		}
-		@Override
+		//@Override
 		public void focusGained(FocusEvent e) {
 			value = ((Text)e.getSource()).getText();
 		}
 
-		@Override
+		//@Override
 		public void focusLost(FocusEvent e) {
 			if(!((Text)e.getSource()).getText().equals(value)) {
 				checkBuildDir();
-- 
1.7.9.5


