Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 223ECE00DBC; Tue,  3 May 2016 04:31:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56CC3E00D58
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:30:59 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:30:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489624"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:30:57 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:26 +0300
Message-Id: <68c6b44560468f5cdf16d993bb385154bb3db855.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 07/25] mb-panel: port to GTK+3
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
X-List-Received-Date: Tue, 03 May 2016 11:31:13 -0000

From: Ross Burton <ross.burton@intel.com>

Whilst porting to GTK+ 3 the layout model was simplified: panels are always
full-width and you just pick an edge and size.  The panel is also multi-screen
and multi-monitor aware now.
---
 matchbox-panel/mb-panel.c | 368 +++++++++++++++++++++++-----------------------
 1 file changed, 187 insertions(+), 181 deletions(-)

diff --git a/matchbox-panel/mb-panel.c b/matchbox-panel/mb-panel.c
index 828a36d..1d6832f 100644
--- a/matchbox-panel/mb-panel.c
+++ b/matchbox-panel/mb-panel.c
@@ -1,9 +1,10 @@
 /* -*- Mode: C; tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 8 -*- */
 
 /*
- * (C) 2006 OpenedHand Ltd.
+ * (C) 2006-2013 Intel Corp
  *
- * Author: Jorn Baayen <jorn@openedhand.com>
+ * Authors: Ross Burton <ross.burton@intel.com>
+ *          Jorn Baayen <jorn@openedhand.com>
  *
  * Licensed under the GPL v2 or greater.
  */
@@ -23,17 +24,16 @@
 
 static GList *open_modules = NULL; /* List of open modules */
 
-/* Extra width and height to reserve for panel struts (see --reserve-extra) */
-static gint extra_width  = 0;
-static gint extra_height = 0;
+enum {
+        ATOM_WM_STRUT_PARTIAL,
+        ATOM_MB_STATE,
+        ATOM_STATE_DOCT_TITLEBAR,
+        ATOM_DOCK_TITLEBAR_DESKTOP,
+        /* Counter */
+        ATOM_LAST
+};
 
-static gboolean snap_right = FALSE;
-static gboolean snap_bottom = FALSE;
-
-static gboolean center_vertical   = FALSE;
-static gboolean center_horizontal = FALSE;
-
-static gboolean fullscreen = FALSE;
+static Atom atoms[ATOM_LAST];
 
 /* Load applet @name with ID @id */
 static GtkWidget *
@@ -132,63 +132,70 @@ load_applets (const char    *applets_desc,
         g_strfreev (applets);
 }
 
-/* Set struts based on the window size and position */
 static void
-set_struts (GtkWidget *window, gint x, gint y, gint w, gint h)
+set_struts (GtkWidget *window, GtkPositionType edge, int size)
 {
-        static Atom net_wm_strut_partial = None;
-
-        guint32    struts [12];
-        gint       screen_width, screen_height;
-        GdkScreen *screen;
-
-        screen = gdk_screen_get_default ();
-
-        screen_width  = gdk_screen_get_width (screen);
-        screen_height = gdk_screen_get_height (screen);
-
-        /* left */
-        struts[0] = x == 0 ? w + extra_width : 0;
-        struts[4] = struts[0] ? y : 0;
-        struts[5] = struts[0] ? y + h : 0;
+        Display *xdisplay;
+        int x, y, w, h;
+        struct {
+                long left;
+                long right;
+                long top;
+                long bottom;
+                long left_start_y;
+                long left_end_y;
+                long right_start_y;
+                long right_end_y;
+                long top_start_x;
+                long top_end_x;
+                long bottom_start_x;
+                long bottom_end_x;
+        } struts = { 0, };
+
+        xdisplay = GDK_SCREEN_XDISPLAY (gtk_widget_get_screen (window));
+        g_assert (xdisplay);
 
-        /* right */
-        struts[1] = x + w == screen_width ? w + extra_width: 0;
-        struts[6] = struts[1] ? y : 0;
-        struts[7] = struts[1] ? y + h : 0;
-
-        /* top */
-        struts[2] = y == 0 ? h + extra_height: 0;
-        struts[8] = struts[2] ? x : 0;
-        struts[9] = struts[2] ? x + w : 0;
+        gtk_window_get_position (GTK_WINDOW (window), &x, &y);
+        gtk_window_get_size (GTK_WINDOW (window), &w, &h);
 
-        /* bottom */
-        struts[3] = y + h == screen_height ? h + extra_height : 0;
-        struts[10] = struts[3] ? x : 0;
-        struts[11] = struts[3] ? x + w : 0;
+        switch (edge) {
+        case GTK_POS_LEFT:
+                struts.left = size;
+                struts.left_start_y = y;
+                struts.left_end_y = y + h;
+                break;
+        case GTK_POS_RIGHT:
+                struts.right = size;
+                struts.right_start_y = y;
+                struts.right_end_y = y + h;
+                break;
+        case GTK_POS_TOP:
+                struts.top = size;
+                struts.top_start_x = x;
+                struts.top_end_x = x + w;
+                break;
+        case GTK_POS_BOTTOM:
+                struts.bottom = size;
+                struts.bottom_start_x = x;
+                struts.bottom_end_x = x + w;
+                break;
+        }
 
         gdk_error_trap_push ();
-
-        if (!net_wm_strut_partial)
-                net_wm_strut_partial = XInternAtom (GDK_DISPLAY () ,
-                                                    "_NET_WM_STRUT_PARTIAL",
-                                                    False);
-
-        XChangeProperty (GDK_DISPLAY (),
-                         GDK_WINDOW_XID (window->window),
-                         net_wm_strut_partial, XA_CARDINAL, 32,
+        XChangeProperty (xdisplay,
+                         GDK_WINDOW_XID (gtk_widget_get_window (window)),
+                         atoms[ATOM_WM_STRUT_PARTIAL], XA_CARDINAL, 32,
                          PropModeReplace,
                          (guchar *) &struts, 12);
-
-        gdk_error_trap_pop ();
+        gdk_error_trap_pop_ignored ();
 }
 
+#if 0
 static void
 screen_size_changed_cb (GdkScreen *screen, GtkWidget *window)
 {
         gint       x, y, w, h;
         gint       screen_width, screen_height;
-
         gtk_window_get_position (GTK_WINDOW (window), &x, &y);
         gtk_window_get_size (GTK_WINDOW (window), &w, &h);
 
@@ -232,6 +239,20 @@ screen_size_changed_cb (GdkScreen *screen, GtkWidget *window)
 
         set_struts (window, x, y, w, h);
 }
+#endif
+
+static void
+get_atoms (Display *xdisplay)
+{
+        static const char *names[] = {
+                "_NET_WM_STRUT_PARTIAL",
+                "_MB_WM_STATE",
+                "_MB_WM_STATE_DOCK_TITLEBAR",
+                "_MB_DOCK_TITLEBAR_SHOW_ON_DESKTOP"
+        };
+
+        XInternAtoms (xdisplay, (char**)names, G_N_ELEMENTS (names), False, atoms);
+}
 
 int
 main (int argc, char **argv)
@@ -239,54 +260,44 @@ main (int argc, char **argv)
         GOptionContext *option_context;
         GOptionGroup *option_group;
         GError *error;
-        char *geometry = NULL, *start_applets = NULL, *end_applets = NULL;
+        char *start_applets = NULL, *end_applets = NULL;
+        char *edge_string = NULL;
+        int size = DEFAULT_HEIGHT;
+        int screen_num = -1;
+        int monitor_num = -1;
+        GtkPositionType edge = GTK_POS_TOP;
         GtkWidget *window, *box, *frame;
+        GdkDisplay *display;
         GdkScreen *screen;
-        int panel_width, panel_height;
-        GtkOrientation orientation;
-        gboolean want_titlebar = FALSE;
+        GtkOrientation orientation = GTK_ORIENTATION_HORIZONTAL;
+        gboolean in_titlebar = FALSE;
+        GdkRectangle screen_geom;
 
+        /* TODO: add these as groups (applets / position) */
         GOptionEntry option_entries[] = {
-                { "geometry", 0, 0, G_OPTION_ARG_STRING, &geometry,
-                  N_("Panel geometry"), N_("[WIDTH][xHEIGHT][{+-}X[{+-}Y]]") },
                 { "start-applets", 0, 0, G_OPTION_ARG_STRING, &start_applets,
                   N_("Applets to pack at the start"), N_("APPLET[:APPLET_ID] ...") },
                 { "end-applets", 0, 0, G_OPTION_ARG_STRING, &end_applets,
                   N_("Applets to pack at the end"), N_("APPLET[:APPLET_ID] ...") },
-                { "titlebar", 0, 0, G_OPTION_ARG_NONE, &want_titlebar,
-                  N_("Display in window titlebar (If Matchbox theme supports)"),
-                  NULL },
-                { "reserve-extra-width", 0, 0, G_OPTION_ARG_INT, &extra_width,
-                  N_("Extra width to reserve in panel strut in addittion to "
-                     "the window width"),
-                  N_("pixels")},
-                { "reserve-extra-height", 0, 0, G_OPTION_ARG_INT, &extra_height,
-                  N_("Extra height to reserve in panel strut in addition to "
-                     "the window height"),
-                  N_("pixels")},
-                { "center-horizontally", 0, 0, G_OPTION_ARG_NONE,
-                  &center_horizontal,
-                  N_("Center panel horizontally"),
-                  NULL },
-                { "center-vertically", 0, 0, G_OPTION_ARG_NONE,
-                  &center_vertical,
-                  N_("Center panel vertically"),
-                  NULL },
-                { "fullscreen", 0, 0, G_OPTION_ARG_NONE,
-                  &fullscreen,
-                  N_("Stretch panel to fullscreen in dominant direction "
-                     "(if used together with the --geometry options "
-                     "while the offset in the dominant direction will be "
-                     "ignored, it must not be specified with the + prefix, "
-                     "e.g., --geometry=200x32+0-0"),
-                  NULL },
+
+                { "screen", 'n', 0, G_OPTION_ARG_INT, &screen_num,
+                  N_("Screen number"), N_("SCREEN") },
+                { "monitor", 'm', 0, G_OPTION_ARG_INT, &monitor_num,
+                  N_("Monitor number"), N_("MONITOR") },
+
+                { "titlebar", 't', 0, G_OPTION_ARG_NONE, &in_titlebar,
+                  N_("Display in window titlebar (with Matchbox theme support)"), NULL },
+                { "edge", 'e', 0, G_OPTION_ARG_STRING, &edge_string,
+                  N_("Panel edge"), N_("TOP|BOTTON|LEFT|RIGHT") },
+                { "size", 's', 0, G_OPTION_ARG_INT, &size,
+                  N_("Panel size"), N_("PIXELS")},
+
                 { NULL }
         };
 
         /* Make sure that GModule is supported */
         if (!g_module_supported ()) {
-                g_warning (_("gmodule support not found. gmodule support is "
-                             "required for matchbox-panel to work"));
+                g_warning (_("GModule support not found, this is required for matchbox-panel to work"));
                 return -1;
         }
 
@@ -316,44 +327,100 @@ main (int argc, char **argv)
 
         g_option_context_free (option_context);
 
+        /* Can't be in the titlebar *and* on an edge, so check for this and exit */
+        if (in_titlebar && edge_string) {
+                g_printerr ("Cannot specify both --edge and --titlebar\n");
+                return 1;
+        }
+
+        if (edge_string) {
+                if (g_ascii_strcasecmp (edge_string, "top") == 0) {
+                        edge = GTK_POS_TOP;
+                } else if (g_ascii_strcasecmp (edge_string, "bottom") == 0) {
+                        edge = GTK_POS_BOTTOM;
+                } else if (g_ascii_strcasecmp (edge_string, "left") == 0) {
+                        edge = GTK_POS_LEFT;
+                } else if (g_ascii_strcasecmp (edge_string, "right") == 0) {
+                        edge = GTK_POS_RIGHT;
+                } else {
+                        g_printerr ("Unparsable edge '%s', expecting top/bottom/left/right\n", edge_string);
+                        return 1;
+                }
+                g_free (edge_string);
+        }
+
         /* Set app name */
         g_set_application_name (_("Matchbox Panel"));
 
+        display = gdk_display_get_default ();
+
+        get_atoms (GDK_DISPLAY_XDISPLAY (display));
+
+        if (screen_num != -1) {
+                screen = gdk_display_get_screen (display, screen_num);
+        } else {
+                screen = gdk_display_get_default_screen (display);
+        }
+
+        if (monitor_num == -1) {
+                monitor_num = gdk_screen_get_primary_monitor (screen);
+        }
+
+        /* Note that this is bare monitor geometry and not the work area, so
+           panels will overlap. */
+        gdk_screen_get_monitor_geometry (screen, monitor_num, &screen_geom);
+
         /* Create window */
         window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
-
         gtk_widget_set_name (window, "MatchboxPanel");
-
-        gtk_window_set_type_hint (GTK_WINDOW (window),
-                                  GDK_WINDOW_TYPE_HINT_DOCK);
+        gtk_window_set_type_hint (GTK_WINDOW (window), GDK_WINDOW_TYPE_HINT_DOCK);
+        gtk_window_set_resizable (GTK_WINDOW (window), FALSE);
 
         /* No key focus please */
         gtk_window_set_accept_focus (GTK_WINDOW (window), FALSE);
 
-        /* Set default panel height */
-        screen = gtk_window_get_screen (GTK_WINDOW (window));
-        gtk_window_set_default_size (GTK_WINDOW (window),
-                                     gdk_screen_get_width (screen),
-                                     DEFAULT_HEIGHT);
-
-        /* Parse geometry string */
-        if (geometry) {
-                if (!gtk_window_parse_geometry (GTK_WINDOW (window),
-                                                geometry)) {
-                        g_warning ("Failed to parse geometry string");
-
-                        gtk_widget_destroy (window);
+        gtk_widget_realize (window);
 
-                        return 1;
+        /* Set size */
+        if (!in_titlebar) {
+                /* TODO: hook this up to GdkScreen:size-changed */
+
+                /* Orientation and size */
+                switch (edge) {
+                case GTK_POS_TOP:
+                case GTK_POS_BOTTOM:
+                        orientation = GTK_ORIENTATION_HORIZONTAL;
+                        gtk_widget_set_size_request (window,
+                                           screen_geom.width, size);
+                        break;
+                case GTK_POS_LEFT:
+                case GTK_POS_RIGHT:
+                        orientation = GTK_ORIENTATION_VERTICAL;
+                        gtk_widget_set_size_request (window,
+                                           size, screen_geom.height);
+                        break;
                 }
-        }
 
-        /* Determine window size */
-        gtk_window_get_size (GTK_WINDOW (window), &panel_width, &panel_height);
+                /* Position */
+                switch (edge) {
+                case GTK_POS_TOP:
+                case GTK_POS_LEFT:
+                        gtk_window_move (GTK_WINDOW (window),
+                                         screen_geom.x, screen_geom.y);
+                        break;
+                case GTK_POS_RIGHT:
+                        gtk_window_move (GTK_WINDOW (window),
+                                         screen_geom.x + screen_geom.width - size,
+                                         screen_geom.y);
+                        break;
+                case GTK_POS_BOTTOM:
+                        gtk_window_move (GTK_WINDOW (window),
+                                         screen_geom.x,
+                                         screen_geom.y + screen_geom.height - size);
+                }
 
-        /* Force size */
-        gtk_widget_set_size_request (window, panel_width, panel_height);
-        gtk_window_resize (GTK_WINDOW (window), panel_width, panel_height);
+                set_struts (window, edge, size);
+        }
 
         /* Add frame */
         frame = gtk_frame_new (NULL);
@@ -362,91 +429,30 @@ main (int argc, char **argv)
         gtk_widget_show (frame);
 
         /* Is this a horizontal or a vertical layout? */
-        if (panel_width >= panel_height) {
-                orientation = GTK_ORIENTATION_HORIZONTAL;
-
+        if (orientation == GTK_ORIENTATION_HORIZONTAL) {
                 gtk_widget_set_name (frame, "MatchboxPanelFrameHorizontal");
-
-                box = gtk_hbox_new (FALSE, 0);
         } else {
-                orientation = GTK_ORIENTATION_VERTICAL;
-
                 gtk_widget_set_name (frame, "MatchboxPanelFrameVertical");
-
-                box = gtk_vbox_new (FALSE, 0);
         }
+        box = gtk_box_new (orientation, 0);
 
         gtk_container_add (GTK_CONTAINER (frame), box);
         gtk_widget_show (box);
 
-        gtk_widget_realize (window);
-
+#if 0
         /* Do we want to display the panel in the Matchbox titlebar? */
-        if (want_titlebar) {
-                const char *names[] = {
-                        /* Set the Matchbox-specific window state */
-                        "_MB_WM_STATE",
-                        /* To the list of these atoms */
-                        "_MB_WM_STATE_DOCK_TITLEBAR",
-                        "_MB_DOCK_TITLEBAR_SHOW_ON_DESKTOP"
-                };
-                Atom atoms[G_N_ELEMENTS (names)];
-
-                XInternAtoms (GDK_DISPLAY (), (char**)names,
-                              G_N_ELEMENTS (names), False, atoms);
-
-                XChangeProperty (GDK_DISPLAY (),
-                                 GDK_WINDOW_XID (window->window),
+        if (in_titlebar) {
+                XChangeProperty (GDK_SCREEN_XDISPLAY (screen),
+                                 GDK_WINDOW_XID (gtk_widget_get_window (window)),
                                  atoms[0], XA_ATOM, 32,
                                  PropModeReplace,
                                  (unsigned char *) &atoms[1], 2);
         } else {
-                /* If we're not in a title bar, set the struts */
-                gint screen_width  = gdk_screen_get_width (screen);
-                gint screen_height = gdk_screen_get_height (screen);
-                gint x, y, w, h;
-
-                gtk_window_get_position (GTK_WINDOW (window), &x, &y);
-                gtk_window_get_size (GTK_WINDOW (window), &w, &h);
-
-                if (fullscreen)
-                        {
-                                if (w > h)
-                                        {
-                                                w = screen_width;
-                                                x = 0;
-                                        }
-                                else
-                                        {
-                                                h = screen_height;
-                                                y = 0;
-                                        }
-
-                                gtk_widget_set_size_request (window, w, h);
-                                gtk_window_resize (GTK_WINDOW (window), w, h);
-                        }
-
-                if (center_horizontal)
-                        x = (screen_width - w) / 2;
-
-                if (center_vertical)
-                        y = (screen_height - h)/ 2;
-
-                if (center_horizontal || center_vertical || fullscreen)
-                        gtk_window_move (GTK_WINDOW (window), x, y);
-
-
-                if (x + w == screen_width)
-                        snap_right = TRUE;
-
-                if (y + h == screen_height)
-                        snap_bottom = TRUE;
-
-                set_struts (window, x, y, w, h);
                 g_signal_connect (screen, "size-changed",
                                   G_CALLBACK (screen_size_changed_cb),
                                   window);
         }
+#endif
 
         /* Load applets */
         load_applets (start_applets,
-- 
2.8.1


