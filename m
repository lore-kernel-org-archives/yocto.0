Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED9EEE0045D
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 09:29:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Oct 2012 09:29:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,640,1344236400"; d="scan'208";a="210055221"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.14.104])
	by orsmga001.jf.intel.com with ESMTP; 24 Oct 2012 09:29:02 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Oct 2012 09:29:01 -0700
Message-Id: <1351096141-20494-2-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <1351096141-20494-1-git-send-email-sgw@linux.intel.com>
References: <1351096141-20494-1-git-send-email-sgw@linux.intel.com>
Subject: [PATCH 2/2] psplash: use correct blue offset value for BGR888
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
X-List-Received-Date: Wed, 24 Oct 2012 16:29:03 -0000

From: Aws Ismail <aws.ismail@windriver.com>

Author: Aws Ismail <aws.ismail@windriver.com>
Date:   Thu Aug 16 11:06:13 2012 -0400

     Use correct blue offset value for BGR888

     fs->blue_offset should be compared to 16 instead
     of 8 in order to detect BGR.

     Credit goes to Ulrich Feichter <u.feichter@avibit.com>
     for detecting this.

     Signed-off-by: Aws Ismail <aws.ismail@windriver.com>

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 psplash-fb.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index 72505b0..1db4fde 100644
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
1.7.7.6


