Return-Path: <igor.stoppa@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73AD8E00D5B; Tue, 10 May 2016 08:02:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9971E00D57
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 08:02:40 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 10 May 2016 08:02:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,604,1455004800"; d="scan'208";a="803097083"
Received: from labatc00.fi.intel.com (HELO labatc00.labatc00.fi.intel.com)
	([10.237.72.10])
	by orsmga003.jf.intel.com with ESMTP; 10 May 2016 08:02:31 -0700
From: Igor Stoppa <igor.stoppa@intel.com>
To: yocto@yoctoproject.org joshua.g.lock@intel.com
Date: Tue, 10 May 2016 18:02:09 +0300
Message-Id: <1462892529-5265-2-git-send-email-igor.stoppa@intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1462892529-5265-1-git-send-email-igor.stoppa@intel.com>
References: <1462892529-5265-1-git-send-email-igor.stoppa@intel.com>
X-Mailman-Approved-At: Thu, 12 May 2016 07:51:51 -0700
Cc: Igor Stoppa <igor.stoppa@intel.com>
Subject: [PATCH] Rebase patch for xattr workaround against pseudo.
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
X-List-Received-Date: Tue, 10 May 2016 15:02:42 -0000

The original patch was not applying cleanly anymore,
due to changes in the list of included headers.
This is a trivial cleanup.

Signed-off-by: Igor Stoppa <igor.stoppa@intel.com>
---
 .../fullfiles.c-work-around-pseudo-bug.patch       | 29 +++++++++++++---------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/recipes-core/swupd-server/swupd-server/fullfiles.c-work-around-pseudo-bug.patch b/recipes-core/swupd-server/swupd-server/fullfiles.c-work-around-pseudo-bug.patch
index 91e1493..07ec30d 100644
--- a/recipes-core/swupd-server/swupd-server/fullfiles.c-work-around-pseudo-bug.patch
+++ b/recipes-core/swupd-server/swupd-server/fullfiles.c-work-around-pseudo-bug.patch
@@ -1,4 +1,4 @@
-From 939a50bf2fec9463fb721fa9188f98e991dfddc9 Mon Sep 17 00:00:00 2001
+From 0fd9bf8d2cf8e2edf9ea178c4b93ad8eebdffa38 Mon Sep 17 00:00:00 2001
 From: Patrick Ohly <patrick.ohly@intel.com>
 Date: Wed, 30 Mar 2016 13:14:42 +0200
 Subject: [PATCH] fullfiles.c: work around pseudo bug
@@ -9,23 +9,25 @@ We work around that here by explicitly copying the xattrs.
 Upstream-Status: Inappropriate [workaround]
 
 Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
+
+Re-based-by: Igor Stoppa <igor.stoppa@intel.com>
 ---
  src/fullfiles.c | 30 ++++++++++++++++++++++++++++++
  1 file changed, 30 insertions(+)
 
-Index: git/src/fullfiles.c
-===================================================================
---- git.orig/src/fullfiles.c
-+++ git/src/fullfiles.c
-@@ -31,6 +31,7 @@
- #include <stdlib.h>
- #include <string.h>
+diff --git a/src/fullfiles.c b/src/fullfiles.c
+index cf77e74..827eabf 100644
+--- a/src/fullfiles.c
++++ b/src/fullfiles.c
+@@ -29,6 +29,7 @@
+ #include <assert.h>
+ #include <sys/types.h>
  #include <sys/stat.h>
 +#include <sys/xattr.h>
- #include <sys/types.h>
- #include <unistd.h>
- 
-@@ -141,6 +142,35 @@ static void create_fullfile(struct file
+ #include <stdint.h>
+ #include <errno.h>
+ #include <libgen.h>
+@@ -144,6 +145,35 @@ static void create_fullfile(struct file *file)
  			}
  		}
  
@@ -61,3 +63,6 @@ Index: git/src/fullfiles.c
  		/* step 2a: tar it with each compression type  */
  		// lzma
  		string_or_die(&tarcommand, TAR_COMMAND " --directory=%s " TAR_PERM_ATTR_ARGS " -Jcf %s/%i/files/%s.tar.xz %s",
+-- 
+2.1.4
+
-- 
2.1.4


