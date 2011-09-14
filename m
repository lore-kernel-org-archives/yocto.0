Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26C4DE004D9
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2011 16:16:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Sep 2011 16:15:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="48533271"
Received: from unknown (HELO localhost) ([10.255.14.200])
	by orsmga001.jf.intel.com with ESMTP; 14 Sep 2011 16:15:52 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 14 Sep 2011 18:15:38 -0500
Message-Id: <b254d171d395ffee1a718db36cf2d61da5d40bf1.1316041909.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1316041909.git.tom.zanussi@intel.com>
References: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1316041909.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1316041909.git.tom.zanussi@intel.com>
References: <cover.1316041909.git.tom.zanussi@intel.com>
Subject: [PATCH 2/4] meta-intel/MAINTAINERS: remove grub
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
X-List-Received-Date: Thu, 15 Sep 2011 04:05:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove the entry for grub, since it is no longer a part of meta-intel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 MAINTAINERS |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 328136f..fda48ad 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -35,7 +35,6 @@ Maintainers List (try to look for most precise areas first)
 
 COMMON
 M:	Tom Zanussi <tom.zanussi@intel.com>
-F:	common/recipes-bsp/grub/
 F:	common/recipes-core/
 
 CROWNBAY
-- 
1.7.0.4


