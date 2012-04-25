Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6905EE01206
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 18:30:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Apr 2012 18:30:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="133878606"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by orsmga001.jf.intel.com with ESMTP; 25 Apr 2012 18:30:29 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.org,
	tom.zanussi@intel.com, kishore.k.bodke@intel.com
Date: Wed, 25 Apr 2012 11:17:57 -0700
Message-Id: <cf367651dd5655164f1198c7e320441935f4083d.1335393643.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0db94ea0705ad766cf9397aedef8a5f343b5629d.1335393641.git.rahul.saxena@intel.com>
References: <0db94ea0705ad766cf9397aedef8a5f343b5629d.1335393641.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1335393639.git.rahul.saxena@intel.com>
References: <cover.1335393639.git.rahul.saxena@intel.com>
Subject: [PATCH 3/3] add patch linux-3.0.0-ttm-clear-high.patch
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
X-List-Received-Date: Thu, 26 Apr 2012 01:30:30 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Add patch for TTM page allocation from high memory

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 drivers/gpu/drm/ttm/ttm_page_alloc.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_page_alloc.c b/drivers/gpu/drm/ttm/ttm_page_alloc.c
index d948575..df976d9 100644
--- a/drivers/gpu/drm/ttm/ttm_page_alloc.c
+++ b/drivers/gpu/drm/ttm/ttm_page_alloc.c
@@ -708,7 +708,10 @@ int ttm_get_pages(struct list_head *pages, int flags,
 	/* clear the pages coming from the pool if requested */
 	if (flags & TTM_PAGE_FLAG_ZERO_ALLOC) {
 		list_for_each_entry(p, pages, lru) {
-			clear_page(page_address(p));
+			if (PageHighMem(p))
+				clear_highpage(p);
+			else
+				clear_page(page_address(p));
 		}
 	}
 
-- 
1.7.4.1


