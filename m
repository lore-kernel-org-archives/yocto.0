Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EA7EE0073A
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 10:05:52 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Dec 2011 10:05:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="81842233"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by orsmga001.jf.intel.com with ESMTP; 01 Dec 2011 10:05:51 -0800
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com, kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Thu,  1 Dec 2011 12:05:51 -0600
Message-Id: <60546eb67c48759f0c50cca021d9ed4d5b2838a1.1322762434.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <05cda5202784ef61c52e8237590a31de988f4834.1322762434.git.tom.zanussi@intel.com>
References: <05cda5202784ef61c52e8237590a31de988f4834.1322762434.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322762434.git.tom.zanussi@intel.com>
References: <cover.1322762434.git.tom.zanussi@intel.com>
Subject: [PATCH 3/4] meta-intel: point the top-level README to the BSP READMEs
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
X-List-Received-Date: Thu, 01 Dec 2011 18:05:52 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Based on community feedback, it might be more user-friendly to have
the top-level README make users aware that there might be BSP-specific
READMEs to consult.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 README |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/README b/README
index 87631ab..363a754 100644
--- a/README
+++ b/README
@@ -1,4 +1,7 @@
 meta-intel
 ==========
 
-This is the location for Intel maintained BSP's
+This is the location for Intel maintained BSPs.
+
+Please see the README files contained in the individual BSP layers for
+BSP-specific information.
-- 
1.7.0.4


