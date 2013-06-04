Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 345B9E0150D
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:29:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 08:30:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,800,1363158000"; d="scan'208";a="347946869"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2013 08:29:54 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 18:07:45 +0300
Message-Id: <1370358468-20881-6-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 5/8] Fix NullPointerException when detecting changed files
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
X-List-Received-Date: Tue, 04 Jun 2013 15:29:56 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |   10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 81a4661..937cad1 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -747,10 +747,12 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 						return;
 					}
 				}
-				for(int i=0;changed != null && i<changed.length;i++) {
-					if (this.depends.contains(changed[i].getLocation().toString())) {
-						initialized = false;
-						return;
+				if (!depends.isEmpty()) {
+					for(int i=0;changed != null && i<changed.length;i++) {
+						if (changed[i].getLocation() != null && this.depends.contains(changed[i].getLocation().toString())) {
+							initialized = false;
+							return;
+						}
 					}
 				}
 			}
-- 
1.7.9.5


