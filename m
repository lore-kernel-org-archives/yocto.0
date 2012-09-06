Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77CEBE00717
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 06:12:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Sep 2012 06:12:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; d="scan'208";a="218561686"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.173])
	by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2012 06:12:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 14:11:39 +0100
Message-Id: <1346937099-8151-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-tlk][PATCH] README: add info explaining meta-tlk layer purpose
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
X-List-Received-Date: Thu, 06 Sep 2012 13:12:04 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-tlk/README |   11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/meta-tlk/README b/meta-tlk/README
index 5ff4d3b..07cbd76 100644
--- a/meta-tlk/README
+++ b/meta-tlk/README
@@ -1,6 +1,9 @@
-meta-autobuilder
-===============
+meta-tlk
+========
 
-Contains recipe modifications required to produce the official 
-yocto autobuild BSPs.
+This layer makes the appropriate kernel modifications to enable a 10 day
+time limit in the official BSP images produced using the Yocto Project
+autobuilder, in order to encourage people to produce their own images
+for production whilst still allowing the images to be useful for testing
+and debugging.
 
-- 
1.7.9.5


