Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28D59E00B45; Tue, 24 Nov 2015 08:47:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24BDFE00B45
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 08:47:10 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 24 Nov 2015 08:47:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,338,1444719600"; d="scan'208";a="828103708"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2015 08:47:10 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Nov 2015 08:39:07 -0800
Message-Id: <1448383148-2344-2-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
References: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [PSPLASH 1/2] psplash-fb.c: Fix BGR888 detection
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
X-List-Received-Date: Tue, 24 Nov 2015 16:47:11 -0000

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 psplash-fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index bd9cd9d..e71af8f 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -185,7 +185,7 @@ psplash_fb_new (int angle)
          fb->rgbmode = RGB888;
   } else if (fb->red_offset == 0 && fb->red_length == 8 &&
       fb->green_offset == 8 && fb->green_length == 8 &&
-      fb->blue_offset == 8 && fb->blue_length == 8) {
+      fb->blue_offset == 16 && fb->blue_length == 8) {
          fb->rgbmode = BGR888;
   } else {
          fb->rgbmode = GENERIC;
-- 
1.9.1


