Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE34CE0149D
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 09:49:46 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Sep 2012 09:49:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,367,1344236400"; d="scan'208";a="188662040"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.161])
	by azsmga001.ch.intel.com with ESMTP; 04 Sep 2012 09:49:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Sep 2012 17:49:06 +0100
Message-Id: <9f05fae6c83a4e970e4498127e6d93b36e1ee832.1346777221.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346777221.git.paul.eggleton@linux.intel.com>
References: <cover.1346777221.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346777221.git.paul.eggleton@linux.intel.com>
References: <cover.1346777221.git.paul.eggleton@linux.intel.com>
Subject: [meta-qt3][PATCH 2/2] core-image-lsb-qt3: fix for apps-console-core removal
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
X-List-Received-Date: Tue, 04 Sep 2012 16:49:47 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-qt3/images/core-image-lsb-qt3.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-qt3/images/core-image-lsb-qt3.bb b/recipes-qt3/images/core-image-lsb-qt3.bb
index 86bdf21..8aab5ae 100644
--- a/recipes-qt3/images/core-image-lsb-qt3.bb
+++ b/recipes-qt3/images/core-image-lsb-qt3.bb
@@ -1,4 +1,4 @@
-IMAGE_FEATURES += "apps-console-core ssh-server-openssh"
+IMAGE_FEATURES += "splash ssh-server-openssh"
 
 IMAGE_INSTALL = "\
     ${CORE_IMAGE_BASE_INSTALL} \
-- 
1.7.9.5


