Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80F07E00D40; Wed,  7 Dec 2016 05:22:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 794E0E00D26
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 05:22:01 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 07 Dec 2016 05:22:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,310,1477983600"; d="scan'208";a="795284444"
Received: from heimdall.fi.intel.com ([10.237.68.151])
	by FMSMGA003.fm.intel.com with ESMTP; 07 Dec 2016 05:22:00 -0800
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Dec 2016 15:22:57 +0200
Message-Id: <8bb36e3c82860f1a06c5ddef73bba99fe2f44ae9.1481116465.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <c26fc4ba4dab33f08414cb373a20f1ead517fd8a.1481116465.git.jussi.kukkonen@intel.com>
References: <c26fc4ba4dab33f08414cb373a20f1ead517fd8a.1481116465.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1481116465.git.jussi.kukkonen@intel.com>
References: <cover.1481116465.git.jussi.kukkonen@intel.com>
Subject: [matchbox-wm][PATCH 3/3] Fix "unused variable" warnings
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
X-List-Received-Date: Wed, 07 Dec 2016 13:22:02 -0000

Some were removed as unused, some just silenced with the gcc
attribute since they were actually somehow used and fixing
otherwise would have been more invasive.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 src/ewmh.c    | 6 ++++--
 src/mbtheme.c | 7 -------
 src/wm.c      | 2 +-
 3 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/src/ewmh.c b/src/ewmh.c
index 17ea48a..afcabe7 100644
--- a/src/ewmh.c
+++ b/src/ewmh.c
@@ -1257,8 +1257,9 @@ int
 ewmh_utf8_len(unsigned char *str) /* Only parse _validated_ utf8 */
 {
   unsigned char *p = str;
+  int len, result = 0;
+  __attribute__((unused)) int mask;
 
-  int mask, len, result = 0;
   while (*p != '\0')
     {
       UTF8_COMPUTE(*p, mask, len);
@@ -1273,8 +1274,9 @@ int
 ewmh_utf8_get_byte_cnt(unsigned char *str, int num_chars)
 {
   unsigned char *p = str;
+  int len, result = 0;
+  __attribute__((unused)) int mask;
 
-  int mask, len, result = 0;
   while (*p != '\0' && num_chars-- > 0)
     {
       UTF8_COMPUTE(*p, mask, len);
diff --git a/src/mbtheme.c b/src/mbtheme.c
index 42459a0..821195a 100644
--- a/src/mbtheme.c
+++ b/src/mbtheme.c
@@ -602,7 +602,6 @@ theme_frame_paint( MBTheme *theme,
   MBThemeFrame     *frame;
   MBPixbufImage    *img;
   MBThemeLayer     *layer_label = NULL, *layer_icon = NULL;
-  struct list_item *layer_list_item;
   int               label_rendered_width;
   int               decor_idx = 0;
   MBDrawable       *drawable = NULL;
@@ -699,8 +698,6 @@ theme_frame_paint( MBTheme *theme,
       img = theme->img_caches[frame_type];
     }
 
-  layer_list_item = frame->layers;
-
   layer_label = (MBThemeLayer*)list_find_by_id(frame->layers, LAYER_LABEL);
 
   /* Figure out text alignment + positioning */
@@ -981,7 +978,6 @@ theme_frame_menu_highlight_entry(Client         *c,
   MBDrawable    *drw;
   MBThemeFrame  *frame;
   MBFont        *font;
-  MBColor       *color;
   Client        *entry = (Client *)button->data;
   int            offset, item_h;
 
@@ -991,7 +987,6 @@ theme_frame_menu_highlight_entry(Client         *c,
     return;
 
   font  = frame->font;
-  color = frame->color;
 
   if (frame->hl_color)
     {
@@ -1982,7 +1977,6 @@ parse_color_tag (MBTheme *theme,
 		 XMLNode *node)
 {
   MBColor *color = NULL;
-  int alpha;
   char *id     = get_attr(node, "id");
   char *spec   = get_attr(node, "def");
 
@@ -1990,7 +1984,6 @@ parse_color_tag (MBTheme *theme,
     {
       fprintf(stderr, "matchbox *warning*: alpha attribute in theme.xml color tar is depreciated\n                    Use def='rrggbbaa' format instead to specify alpha\n"); 
     }
-  else alpha = 0xff;
 
   dbg("%s() id : %s , def : %s\n", __func__, id, spec);
 
diff --git a/src/wm.c b/src/wm.c
index cb033c6..0823fef 100644
--- a/src/wm.c
+++ b/src/wm.c
@@ -2621,7 +2621,7 @@ wm_activate_client(Client *c)
       /* As matchbox works around 'main' windows ( apps/main and desktop wins).
 	 We need to sync extra stuff up when displaying a new one.
        */
-      Bool switching_from_to_fullscreen = False;
+      __attribute__((unused)) Bool switching_from_to_fullscreen = False;
 
       /* save focus state for transient dialogs of prev showing main win */
 
-- 
2.11.0


