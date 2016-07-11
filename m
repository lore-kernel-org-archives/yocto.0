Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C47FAE00DFA; Mon, 11 Jul 2016 03:52:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87DC6E00DCA
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 03:52:07 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 11 Jul 2016 03:52:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,346,1464678000"; d="scan'208";a="732493230"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2016 03:52:06 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2016 13:51:58 +0300
Message-Id: <60b10352d50b0619920f83955efa6f0f919530c8.1468233661.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <ec40860b1e5560a9afc16573c67ae4ec69cd999b.1468233661.git.jussi.kukkonen@intel.com>
References: <ec40860b1e5560a9afc16573c67ae4ec69cd999b.1468233661.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1468233661.git.jussi.kukkonen@intel.com>
References: <cover.1468233661.git.jussi.kukkonen@intel.com>
Subject: [libmatchbox][PATCH 3/4] Remove unused pointer dereferences
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
X-List-Received-Date: Mon, 11 Jul 2016 10:52:07 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 libmb/mbexp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/libmb/mbexp.c b/libmb/mbexp.c
index c6e6046..bbe11d0 100644
--- a/libmb/mbexp.c
+++ b/libmb/mbexp.c
@@ -1369,7 +1369,7 @@ mb_layout_get_geometry (MBLayout *layout, int *width, int *height)
 	 }
        else
 	 { 
-	   nbytes++; *txt++; 
+	   nbytes++; txt++;
 	 }
       
      line_width = mb_font_get_txt_width(layout->font, start, 
@@ -1703,14 +1703,14 @@ mb_util_next_utf8_char(unsigned char **string)
     return -1;
   }
 	    
-  *s++;
+  s++;
   tmp = length;
   while(tmp-- > 0) {
     if((*s & 0xc0) != 0x80) { /* trailer must be 10xxxxxx */
       /* ERROR */ 
       return -1;
     }
-    *s++;
+    s++;
   } 
   
   *string = s; 
-- 
2.8.1


