Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4751A4C8118D
	for <yocto@yoctoproject.org>; Sat, 13 Nov 2010 08:52:10 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Nov 2010 06:52:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,191,1288594800"; d="scan'208";a="573403818"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 13 Nov 2010 06:52:09 -0800
Message-Id: <8522ff93063f0e5945a865a62016627fdeb828d8.1289659279.git.ke.yu@intel.com>
In-Reply-To: <cover.1289659279.git.ke.yu@intel.com>
References: <cover.1289659279.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sat, 13 Nov 2010 16:57:39 +0800
To: yocto@yoctoproject.org
Subject: [PATCH 2/3] sqlite: upgrade from 3.6.23 to 3.7.3
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
X-List-Received-Date: Sat, 13 Nov 2010 14:52:10 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../{sqlite3_3.6.23.1.bb => sqlite3_3.7.3.bb}      |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-support/sqlite/{sqlite3_3.6.23.1.bb => sqlite3_3.7.3.bb} (67%)

diff --git a/meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb b/meta/recipes-support/sqlite/sqlite3_3.7.3.bb
similarity index 67%
rename from meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb
rename to meta/recipes-support/sqlite/sqlite3_3.7.3.bb
index 5075dd3..479516d 100644
--- a/meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb
+++ b/meta/recipes-support/sqlite/sqlite3_3.7.3.bb
@@ -1,3 +1,3 @@
 require sqlite3.inc
 
-PR = "r1"
+PR = "r0"
-- 
1.7.0.4


