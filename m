Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75D5CE00D74; Tue,  3 May 2016 04:31:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D1FE00DA8
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:11 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489775"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:09 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:35 +0300
Message-Id: <16f04023b368854213895475bda32494ff0d90cb.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 16/25] mb-panel: replace --titlebar with --mode
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
X-List-Received-Date: Tue, 03 May 2016 11:31:23 -0000

From: Ross Burton <ross.burton@intel.com>

--mode supports:

"dock" (usual panel behaviour)
"titlebar" (embed into Matchbox titlebar, not funtional at present)
"window" (normal window, for testing)
---
 matchbox-panel/mb-panel.c | 61 +++++++++++++++++++++++++++++++++++------------
 1 file changed, 46 insertions(+), 15 deletions(-)

diff --git a/matchbox-panel/mb-panel.c b/matchbox-panel/mb-panel.c
index ea1bb19..3f7e3b4 100644
--- a/matchbox-panel/mb-panel.c
+++ b/matchbox-panel/mb-panel.c
@@ -261,7 +261,8 @@ main (int argc, char **argv)
         GOptionGroup *option_group;
         GError *error;
         char *start_applets = NULL, *end_applets = NULL;
-        char *edge_string = NULL;
+        char *edge_string = NULL, *mode_string = NULL;
+        enum { MODE_DOCK, MODE_TITLEBAR, MODE_WINDOW } mode = MODE_DOCK;
         int size = DEFAULT_HEIGHT;
         int screen_num = -1;
         int monitor_num = -1;
@@ -270,7 +271,6 @@ main (int argc, char **argv)
         GdkDisplay *display;
         GdkScreen *screen;
         GtkOrientation orientation = GTK_ORIENTATION_HORIZONTAL;
-        gboolean in_titlebar = FALSE;
         GdkRectangle screen_geom;
 
         /* TODO: add these as groups (applets / position) */
@@ -285,13 +285,12 @@ main (int argc, char **argv)
                 { "monitor", 'm', 0, G_OPTION_ARG_INT, &monitor_num,
                   N_("Monitor number"), N_("MONITOR") },
 
-                { "titlebar", 't', 0, G_OPTION_ARG_NONE, &in_titlebar,
-                  N_("Display in window titlebar (with Matchbox theme support)"), NULL },
                 { "edge", 'e', 0, G_OPTION_ARG_STRING, &edge_string,
                   N_("Panel edge"), N_("TOP|BOTTON|LEFT|RIGHT") },
                 { "size", 's', 0, G_OPTION_ARG_INT, &size,
                   N_("Panel size"), N_("PIXELS")},
-
+                { "mode", 'm', 0, G_OPTION_ARG_STRING, &mode_string,
+                  N_("Panel mode"), N_("DOCK|TITLEBAR|WINDOW") },
                 { NULL }
         };
 
@@ -327,12 +326,6 @@ main (int argc, char **argv)
 
         g_option_context_free (option_context);
 
-        /* Can't be in the titlebar *and* on an edge, so check for this and exit */
-        if (in_titlebar && edge_string) {
-                g_printerr ("Cannot specify both --edge and --titlebar\n");
-                return 1;
-        }
-
         if (edge_string) {
                 if (g_ascii_strcasecmp (edge_string, "top") == 0) {
                         edge = GTK_POS_TOP;
@@ -349,6 +342,20 @@ main (int argc, char **argv)
                 g_free (edge_string);
         }
 
+        if (mode_string) {
+                if (g_ascii_strcasecmp (mode_string, "dock") == 0) {
+                        mode = MODE_DOCK;
+                } else if (g_ascii_strcasecmp (mode_string, "titlebar") == 0) {
+                        mode = MODE_TITLEBAR;
+                } else if (g_ascii_strcasecmp (mode_string, "window") == 0) {
+                        mode = MODE_WINDOW;
+                } else {
+                        g_printerr ("Unparsable mode '%s', expecting dock/titlebar/window\n", mode_string);
+                        return 1;
+                }
+                g_free (mode_string);
+        }
+
         /* Set app name */
         g_set_application_name (_("Matchbox Panel"));
 
@@ -373,16 +380,18 @@ main (int argc, char **argv)
         /* Create window */
         window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
         gtk_widget_set_name (window, "MatchboxPanel");
-        gtk_window_set_type_hint (GTK_WINDOW (window), GDK_WINDOW_TYPE_HINT_DOCK);
         gtk_window_set_has_resize_grip (GTK_WINDOW (window), FALSE);
 
-        /* No key focus please */
-        gtk_window_set_accept_focus (GTK_WINDOW (window), FALSE);
+        if (mode != MODE_WINDOW) {
+                gtk_window_set_type_hint (GTK_WINDOW (window), GDK_WINDOW_TYPE_HINT_DOCK);
+                gtk_window_set_accept_focus (GTK_WINDOW (window), FALSE);
+        }
 
         gtk_widget_realize (window);
 
         /* Set size */
-        if (!in_titlebar) {
+        switch (mode) {
+        case MODE_DOCK:
                 /* TODO: hook this up to GdkScreen:size-changed */
 
                 /* Orientation and size */
@@ -420,6 +429,28 @@ main (int argc, char **argv)
                 }
 
                 set_struts (window, edge, size);
+                break;
+        case MODE_TITLEBAR:
+                /* TODO */
+                break;
+        case MODE_WINDOW:
+                /* Set the size based on half the screen dimensions, and
+                   requested size */
+                switch (edge) {
+                case GTK_POS_TOP:
+                case GTK_POS_BOTTOM:
+                        orientation = GTK_ORIENTATION_HORIZONTAL;
+                        gtk_widget_set_size_request (window,
+                                           screen_geom.width / 2, size);
+                        break;
+                case GTK_POS_LEFT:
+                case GTK_POS_RIGHT:
+                        orientation = GTK_ORIENTATION_VERTICAL;
+                        gtk_widget_set_size_request (window,
+                                           size, screen_geom.height / 2);
+                        break;
+                }
+                break;
         }
 
         /* Add frame */
-- 
2.8.1


