Return-Path: <prvs=905201302=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCAA6E00DB1; Thu, 14 Apr 2016 03:58:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail2.skidata.com (mail2.skidata.com [80.120.57.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B82E00C55
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 03:58:26 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CpBACbdg9X/0oKEKxehQgGuBqEDoYOAoIAAQEBAQEBgQ2EQgEBBCdSEBg5VwYOBcpkAQEBAQYBAQEBHIYhiFh+hQoFmAuBVIw7iU+FP48phEtqiD0/fgEBAQ
X-IPAS-Result: A2CpBACbdg9X/0oKEKxehQgGuBqEDoYOAoIAAQEBAQEBgQ2EQgEBBCdSEBg5VwYOBcpkAQEBAQYBAQEBHIYhiFh+hQoFmAuBVIw7iU+FP48phEtqiD0/fgEBAQ
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Date: Thu, 14 Apr 2016 12:58:34 +0200
Message-ID: <1460631517-16864-3-git-send-email-richard.leitner@skidata.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1460631517-16864-1-git-send-email-richard.leitner@skidata.com>
References: <1460631517-16864-1-git-send-email-richard.leitner@skidata.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: [psplash][PATCH 2/5] psplash-fb: fix sign-compare warning
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
X-List-Received-Date: Thu, 14 Apr 2016 10:58:29 -0000
Content-Type: text/plain

Cast font->index[i] to wchar_t for the comparison.

This fixes following sign-compare warning:

psplash-fb.c: In function 'psplash_font_glyph':
psplash-fb.c:452:33: warning: comparison between signed and unsigned
integer expressions [-Wsign-compare]

Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 psplash-fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index 38cd6a4..cdcbc19 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -449,7 +449,7 @@ psplash_font_glyph (const PSplashFont *font, wchar_t wc, u_int32_t **bitmap)
     {
       for (i = font->offset[wc & mask]; font->index[i]; i += 2)
 	{
-	  if ((font->index[i] & ~mask) == (wc & ~mask))
+	  if ((wchar_t)(font->index[i] & ~mask) == (wc & ~mask))
 	    {
 	      if (bitmap != NULL)
 		*bitmap = &font->content[font->index[i+1]];
-- 
2.1.4


