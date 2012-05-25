Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16B7BE01412
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:49 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2012 14:50:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104438718"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by AZSMGA002.ch.intel.com with ESMTP; 25 May 2012 14:50:48 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:47 -0500
Message-Id: <1bf51b95e638b956aa2b4ef7fb6e97b1d957443f.1337981721.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 22/22] meta-intel: add chiefriver BSP to MAINTAINERS
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
X-List-Received-Date: Fri, 25 May 2012 21:50:49 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 MAINTAINERS |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 0f6cb27..a4df96d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -36,6 +36,10 @@ CEDARTRAIL
 M:      Kishore Bodke <kishore.k.bodke@intel.com>
 F:      meta-cedartrail/
 
+CHIEFRIVER
+M:	Tom Zanussi <tom.zanussi@intel.com>
+F:	meta-chiefriver/
+
 COMMON
 M:	Tom Zanussi <tom.zanussi@intel.com>
 F:	common/recipes-core/
-- 
1.7.0.4


