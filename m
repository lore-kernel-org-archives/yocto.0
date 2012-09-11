Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41B0FE002AC
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 09:38:59 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 11 Sep 2012 09:38:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,406,1344236400"; d="scan'208";a="143857317"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.177])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Sep 2012 09:38:58 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Tue, 11 Sep 2012 09:39:28 -0700
Message-Id: <291034a18261ba5b1371efff385eccfac12b0360.1347381298.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1347381298.git.kishore.k.bodke@intel.com>
References: <cover.1347381298.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] meta-crystalforest: Add Maintainer.
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
X-List-Received-Date: Tue, 11 Sep 2012 16:38:59 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Add Maintainer for the newly added Crystal Forest BSP.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 MAINTAINERS |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a4df96d..5bcf470 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -48,6 +48,10 @@ CROWNBAY
 M:	Tom Zanussi <tom.zanussi@intel.com>
 F:	meta-crownbay/
 
+CRYSTALFOREST
+M:      Kishore Bodke <kishore.k.bodke@intel.com>
+F:      meta-crystalforest/
+
 EMENLOW
 M:	Tom Zanussi <tom.zanussi@intel.com>
 F:	meta-emenlow/
-- 
1.7.9.5


