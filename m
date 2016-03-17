Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 972A2E00C2D; Thu, 17 Mar 2016 09:41:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44902E00931
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 09:41:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 17 Mar 2016 09:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,350,1455004800"; d="scan'208";a="939498501"
Received: from mmaidmen-mobl3.amr.corp.intel.com (HELO
	swold-mobl.jf.intel.com) ([10.254.103.97])
	by fmsmga002.fm.intel.com with ESMTP; 17 Mar 2016 09:40:58 -0700
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 17 Mar 2016 09:40:56 -0700
Message-Id: <1458232856-26224-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.5.0
Subject: [PATCH] matchbox-keyboard-ui.c: Fix int -> long to address 32bit vs 64 bit addressing
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
X-List-Received-Date: Thu, 17 Mar 2016 16:41:25 -0000

The soft keyboard was displaying incorrectly on 64bit machines

[YOCTO #9254]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 src/matchbox-keyboard-ui.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/matchbox-keyboard-ui.c b/src/matchbox-keyboard-ui.c
index 84bc375..988504e 100644
--- a/src/matchbox-keyboard-ui.c
+++ b/src/matchbox-keyboard-ui.c
@@ -125,7 +125,7 @@ get_desktop_area(MBKeyboardUI *ui, int *x, int *y, int *width, int *height)
   Atom           atom_area, type;
   int            result, format;
   unsigned long  nitems, bytes_after;
-  int           *geometry = NULL;
+  long           *geometry = NULL;
 
   atom_area = XInternAtom (ui->xdpy, "_NET_WORKAREA", False);
 
-- 
2.5.0


