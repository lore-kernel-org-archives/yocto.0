Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE7E9E00E16; Thu, 28 Apr 2016 06:05:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 462EEE00DE3
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:30 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230438"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:30 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:03:04 +0300
Message-Id: <4c3946fd707eb32c1d236de383af9daeea1e3780.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 11/16] desktop: add --mode
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
X-List-Received-Date: Thu, 28 Apr 2016 13:05:35 -0000

From: Ross Burton <ross.burton@intel.com>

The --mode argument takes "desktop" (be a normal desktop), "titlebar" (normal
desktop but don't hide titlebar, YMMV depending on WM) or "window" (for
testing).  This replaces the --enable-standalone configure option.
---
 src/desktop.c | 59 +++++++++++++++++++++++++++++++----------------------------
 src/desktop.h |  7 ++++++-
 src/main.c    | 48 ++++++++++++++++++++++++++++++++++++++++++++++--
 3 files changed, 83 insertions(+), 31 deletions(-)

diff --git a/src/desktop.c b/src/desktop.c
index db6e800..0b055c8 100644
--- a/src/desktop.c
+++ b/src/desktop.c
@@ -125,14 +125,12 @@ load_items (TakuMenu *menu)
   }
 }
 
-#ifndef STANDALONE
 static gboolean
 delete_event_cb (GtkWidget *widget, GdkEvent *event, gpointer user_data)
 {
   /* prevent default handler from destroying the window */
   return TRUE;
 }
-#endif
 
 static void
 workarea_changed (int x, int y, int w, int h)
@@ -143,13 +141,11 @@ workarea_changed (int x, int y, int w, int h)
 }
 
 GtkWidget *
-create_desktop (void)
+create_desktop (DesktopMode mode)
 {
   GtkWidget *window, *scrolled, *viewport;
-#ifndef STANDALONE
   GdkScreen *screen;
-#endif
-  int screen_w, screen_h;
+  int width, height;
 
   /* Register the magic taku-icon size so that it can be controlled from the
      theme. */
@@ -159,23 +155,32 @@ create_desktop (void)
   gtk_widget_set_name (window, "TakuWindow");
   gtk_window_set_title (GTK_WINDOW (window), _("Desktop"));
 
-#ifndef STANDALONE
-  g_signal_connect (window, "delete-event", G_CALLBACK (delete_event_cb), NULL);
-  gtk_window_set_type_hint (GTK_WINDOW (window), GDK_WINDOW_TYPE_HINT_DESKTOP);
-  gtk_window_set_skip_taskbar_hint (GTK_WINDOW (window), TRUE);
-  gtk_window_set_resizable (GTK_WINDOW (window), FALSE);
-
   screen = gtk_widget_get_screen (window);
-  screen_w = gdk_screen_get_width (screen);
-  screen_h = gdk_screen_get_height (screen);
-#else
-  g_signal_connect (window, "delete-event", G_CALLBACK (gtk_main_quit), NULL);
-  screen_w = 640;
-  screen_h = 480;
-#endif
-
-  gtk_window_set_default_size (GTK_WINDOW (window), screen_w, screen_h);
 
+  switch (mode) {
+  case MODE_DESKTOP:
+    gtk_window_fullscreen (GTK_WINDOW (window));
+  case MODE_TITLEBAR:
+    gtk_window_set_type_hint (GTK_WINDOW (window), GDK_WINDOW_TYPE_HINT_DESKTOP);
+    gtk_window_set_skip_taskbar_hint (GTK_WINDOW (window), TRUE);
+    gtk_window_set_resizable (GTK_WINDOW (window), FALSE);
+    g_signal_connect (window, "delete-event", G_CALLBACK (delete_event_cb), NULL);
+
+    width = gdk_screen_get_width (screen);
+    height = gdk_screen_get_height (screen);
+    gtk_window_set_default_size (GTK_WINDOW (window), width, height);
+    gtk_window_move (GTK_WINDOW (window), 0, 0);
+    break;
+  case MODE_WINDOW:
+    width = 640;
+    height = 480;
+    gtk_window_set_default_size (GTK_WINDOW (window), width, height);
+    g_signal_connect (window, "delete-event", G_CALLBACK (gtk_main_quit), NULL);
+    /* TODO: fake workarea_changed calls on window resize */
+    break;
+  default:
+    g_assert_not_reached ();
+  }
   gtk_widget_show (window);
 
   /* This fixed is used to position the desktop itself in the work area */
@@ -187,14 +192,12 @@ create_desktop (void)
   box = gtk_box_new (GTK_ORIENTATION_VERTICAL, 0);
   gtk_widget_show (box);
   gtk_fixed_put (GTK_FIXED (fixed), box, 0, 0);
-  /* Set a sane default in case there is no work area defined yet */
-  workarea_changed (0, 0, screen_w, screen_h);
 
-#ifdef STANDALONE
-  /* TODO: fake workarea_changed calls on window resize */
-#else
-  x_monitor_workarea (gtk_widget_get_screen (window), workarea_changed);
-#endif
+  /* Set a sane default in case there is no work area defined yet */
+  workarea_changed (0, 0, width, height);
+  if (mode == MODE_DESKTOP || mode == MODE_TITLEBAR) {
+    x_monitor_workarea (screen, workarea_changed);
+  }
 
   /* Navigation bar */
   bar = TAKU_CATEGORY_BAR (taku_category_bar_new ());
diff --git a/src/desktop.h b/src/desktop.h
index f43d02f..5c6900b 100644
--- a/src/desktop.h
+++ b/src/desktop.h
@@ -23,7 +23,12 @@
 
 #include <gtk/gtk.h>
 
+typedef enum {
+  MODE_DESKTOP,
+  MODE_TITLEBAR,
+  MODE_WINDOW
+} DesktopMode;
 
-GtkWidget *create_desktop (void);
+GtkWidget *create_desktop (DesktopMode mode);
 
 void destroy_desktop (void);
diff --git a/src/main.c b/src/main.c
index 261198e..b2794c4 100644
--- a/src/main.c
+++ b/src/main.c
@@ -78,15 +78,59 @@ int
 main (int argc, char **argv)
 {
   GtkWidget *desktop;
+  char *mode_string = NULL;
+  GError *error = NULL;
+  GOptionContext *option_context;
+  GOptionGroup *option_group;
+  GOptionEntry option_entries[] = {
+    { "mode", 'm', 0, G_OPTION_ARG_STRING, &mode_string,
+      N_("Desktop mode"), N_("DESKTOP|TITLEBAR|WINDOW") },
+    { NULL }
+  };
+  DesktopMode mode = MODE_DESKTOP;
 
-  gtk_init (&argc, &argv);
   g_set_application_name (_("Desktop"));
 
+  option_context = g_option_context_new (NULL);
+  option_group = g_option_group_new ("matchbox-desktop",
+                                     N_("Matchbox Desktop"),
+                                     N_("Matchbox Desktop options"),
+                                     NULL, NULL);
+  g_option_group_add_entries (option_group, option_entries);
+  g_option_context_set_main_group (option_context, option_group);
+  g_option_context_add_group (option_context, gtk_get_option_group (TRUE));
+
+  error = NULL;
+  if (!g_option_context_parse (option_context, &argc, &argv, &error)) {
+    g_option_context_free (option_context);
+
+    g_warning ("%s", error->message);
+    g_error_free (error);
+
+    return 1;
+  }
+
+  g_option_context_free (option_context);
+
+  if (mode_string) {
+    if (g_ascii_strcasecmp (mode_string, "desktop") == 0) {
+      mode = MODE_DESKTOP;
+    } else if (g_ascii_strcasecmp (mode_string, "titlebar") == 0) {
+      mode = MODE_TITLEBAR;
+    } else if (g_ascii_strcasecmp (mode_string, "window") == 0) {
+      mode = MODE_WINDOW;
+    } else {
+      g_printerr ("Unparsable mode '%s', expecting desktop/titlebar/window\n", mode_string);
+      return 1;
+    }
+    g_free (mode_string);
+  }
+
 #if WITH_DBUS
   g_idle_add (emit_loaded_signal, NULL);
 #endif
 
-  desktop = create_desktop ();
+  desktop = create_desktop (mode);
   load_style (desktop);
   gtk_main ();
   destroy_desktop ();
-- 
2.8.1


