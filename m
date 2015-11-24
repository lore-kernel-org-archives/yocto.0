Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2F14E00B5A; Tue, 24 Nov 2015 08:47:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C2EFE00B58
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 08:47:11 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 24 Nov 2015 08:47:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,338,1444719600"; d="scan'208";a="828103721"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2015 08:47:11 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Nov 2015 08:39:08 -0800
Message-Id: <1448383148-2344-3-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
References: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [PSPLASH 2/2] psplash-fb.c: Fix some endian issues
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

The routine psplash_fb_plot_pixel implicitly assumed little endian
format when plotting pixels in RGB888 or BGR888 modes.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 psplash-fb.c | 29 +++++++++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index e71af8f..7b352e0 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -14,6 +14,8 @@
  *  GNU General Public License for more details.
  *
  */
+
+#include <endian.h>
 #include "psplash.h"
 
 void
@@ -294,11 +296,21 @@ psplash_fb_plot_pixel (PSplashFB    *fb,
     switch (fb->bpp)
       {
       case 24:
-      case 32:
-        *(fb->data + off)     = blue;
+#if __BYTE_ORDER == __BIG_ENDIAN
+        *(fb->data + off + 0) = red;
+        *(fb->data + off + 1) = green;
+        *(fb->data + off + 2) = blue;
+#else
+        *(fb->data + off + 0) = blue;
         *(fb->data + off + 1) = green;
         *(fb->data + off + 2) = red;
+#endif
+        break;
+      case 32:
+        *(volatile uint32_t *) (fb->data + off)
+          = (red << 16) | (green << 8) | (blue);
         break;
+
       case 16:
         *(volatile uint16_t *) (fb->data + off)
 	  = ((red >> 3) << 11) | ((green >> 2) << 5) | (blue >> 3);
@@ -311,10 +323,19 @@ psplash_fb_plot_pixel (PSplashFB    *fb,
     switch (fb->bpp)
       {
       case 24:
-      case 32:
-        *(fb->data + off)     = red;
+#if __BYTE_ORDER == __BIG_ENDIAN
+        *(fb->data + off + 0) = blue;
+        *(fb->data + off + 1) = green;
+        *(fb->data + off + 2) = red;
+#else
+        *(fb->data + off + 0) = red;
         *(fb->data + off + 1) = green;
         *(fb->data + off + 2) = blue;
+#endif
+        break;
+      case 32:
+        *(volatile uint32_t *) (fb->data + off)
+          = (blue << 16) | (green << 8) | (red);
         break;
       case 16:
         *(volatile uint16_t *) (fb->data + off)
-- 
1.9.1


