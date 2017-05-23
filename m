Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D02B2E0091A; Tue, 23 May 2017 14:01:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07A6CE0077F
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 14:00:58 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 23 May 2017 14:00:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,383,1491289200"; d="scan'208";a="90782883"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.53])
	by orsmga004.jf.intel.com with ESMTP; 23 May 2017 14:00:56 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 May 2017 14:00:44 -0700
Message-Id: <1495573244-38170-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com
Subject: [pseudo] openat.c: fix flags in wrap_openat
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
X-List-Received-Date: Tue, 23 May 2017 21:01:09 -0000

Due to a silly typo we use incorrect open flags.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 ports/darwin/guts/open.c  | 2 +-
 ports/linux/guts/openat.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/ports/darwin/guts/open.c b/ports/darwin/guts/open.c
index f34b0d3..307bcc9 100644
--- a/ports/darwin/guts/open.c
+++ b/ports/darwin/guts/open.c
@@ -12,7 +12,7 @@
 
 	/* mask out mode bits appropriately */
 	mode = mode & ~pseudo_umask;
-#ifdef PSEUDO_FORCE_ASYNCH
+#ifdef PSEUDO_FORCE_ASYNC
         flags &= ~O_SYNC;
 #endif
 
diff --git a/ports/linux/guts/openat.c b/ports/linux/guts/openat.c
index eb7c0b5..5b26e08 100644
--- a/ports/linux/guts/openat.c
+++ b/ports/linux/guts/openat.c
@@ -20,7 +20,7 @@
 	}
 #endif
 
-#ifdef PSEUDO_FORCE_ASYNCH
+#ifdef PSEUDO_FORCE_ASYNC
         /* Yes, I'm aware that every Linux system I've seen has
          * DSYNC and RSYNC being the same value as SYNC.
          */
-- 
2.7.4


