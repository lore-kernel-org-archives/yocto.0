Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2F22E00803
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 15:46:24 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Dec 2013 15:42:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,510,1384329600"; d="scan'208";a="426917800"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.128])
	by orsmga001.jf.intel.com with ESMTP; 18 Dec 2013 15:46:18 -0800
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Dec 2013 15:46:18 -0800
Message-Id: <1387410378-32122-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [DOCS][PATCH] profile-manual-usage: remove meta-toolchain-sdk references
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
X-List-Received-Date: Wed, 18 Dec 2013 23:46:24 -0000

[YOCTO #5676]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 documentation/profile-manual/profile-manual-usage.xml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/documentation/profile-manual/profile-manual-usage.xml b/documentation/profile-manual/profile-manual-usage.xml
index 5279730..e1b4250 100644
--- a/documentation/profile-manual/profile-manual-usage.xml
+++ b/documentation/profile-manual/profile-manual-usage.xml
@@ -2175,7 +2175,6 @@
         core-image-minimal
         core-image-sato
         meta-toolchain
-        meta-toolchain-sdk
         adt-installer
         meta-ide-support
 
-- 
1.8.3.1


