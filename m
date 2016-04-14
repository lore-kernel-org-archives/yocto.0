Return-Path: <prvs=905201302=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFB64E00DB2; Thu, 14 Apr 2016 03:58:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.230.2.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC155E00DAA
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 03:58:27 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2DOAQAadw9X/0oKEKxehQgGtgGCGYIPAQ2BcYYOAoFsFAEBAQEBAQGBDIRCAQEEeRAYOVcGDgXKZAEBAQEGAQEBARyGIYlWhQoFmAuBVIw7iU+FP0WOZB4BAYJGGRWBN2qIfH4BAQE
X-IPAS-Result: A2DOAQAadw9X/0oKEKxehQgGtgGCGYIPAQ2BcYYOAoFsFAEBAQEBAQGBDIRCAQEEeRAYOVcGDgXKZAEBAQEGAQEBARyGIYlWhQoFmAuBVIw7iU+FP0WOZB4BAYJGGRWBN2qIfH4BAQE
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Date: Thu, 14 Apr 2016 12:58:35 +0200
Message-ID: <1460631517-16864-4-git-send-email-richard.leitner@skidata.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1460631517-16864-1-git-send-email-richard.leitner@skidata.com>
References: <1460631517-16864-1-git-send-email-richard.leitner@skidata.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: [psplash][PATCH 3/5] psplash-fb: remove unused parameter from psplash_fb_text_size
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
X-List-Received-Date: Thu, 14 Apr 2016 10:58:32 -0000
Content-Type: text/plain

This fixes following unused-parameter warning:

psplash-fb.c: In function 'psplash_fb_text_size':
psplash-fb.c:464:43: warning: unused parameter 'fb' [-Wunused-parameter]

Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 psplash-fb.c | 3 +--
 psplash-fb.h | 3 +--
 psplash.c    | 2 +-
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index cdcbc19..8daaf6f 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -461,8 +461,7 @@ psplash_font_glyph (const PSplashFont *font, wchar_t wc, u_int32_t **bitmap)
 }
 
 void
-psplash_fb_text_size (PSplashFB          *fb,
-		      int                *width,
+psplash_fb_text_size (int                *width,
 		      int                *height,
 		      const PSplashFont  *font,
 		      const char         *text)
diff --git a/psplash-fb.h b/psplash-fb.h
index c6c3144..a4a0f4c 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -78,8 +78,7 @@ psplash_fb_draw_image (PSplashFB    *fb,
 		       uint8       *rle_data);
 
 void
-psplash_fb_text_size (PSplashFB          *fb,
-		      int                *width, 
+psplash_fb_text_size (int                *width,
 		      int                *height,
 		      const PSplashFont  *font,
 		      const char         *text);
diff --git a/psplash.c b/psplash.c
index 185f38e..65cf514 100644
--- a/psplash.c
+++ b/psplash.c
@@ -45,7 +45,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
 {
   int w, h;
 
-  psplash_fb_text_size (fb, &w, &h, &radeon_font, msg);
+  psplash_fb_text_size (&w, &h, &radeon_font, msg);
 
   DBG("displaying '%s' %ix%i\n", msg, w, h);
 
-- 
2.1.4


