Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D4FEE00E46; Fri, 29 Apr 2016 00:06:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 121DCE00E41
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 00:06:42 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 29 Apr 2016 00:06:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,550,1455004800"; d="scan'208";a="694154216"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by FMSMGA003.fm.intel.com with ESMTP; 29 Apr 2016 00:06:41 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Apr 2016 10:06:41 +0300
Message-Id: <50e502ee999733a064eb5b45ba87450648485929.1461913316.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1461913316.git.jussi.kukkonen@intel.com>
References: <cover.1461913316.git.jussi.kukkonen@intel.com>
Subject: [screenshot][PATCH 1/1] Quick port to Gtk/Gdk 3
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
X-List-Received-Date: Fri, 29 Apr 2016 07:06:45 -0000

This still has all the problems that the new API would allow us to
fix: mainly that multiple displays will almost certainly not work
at all.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 configure.ac       |  2 +-
 screenshot-utils.c | 77 +++++++++++++++++++++++++++++-------------------------
 2 files changed, 43 insertions(+), 36 deletions(-)

diff --git a/configure.ac b/configure.ac
index 8f41392..ba6d6f2 100644
--- a/configure.ac
+++ b/configure.ac
@@ -12,7 +12,7 @@ AC_PROG_CC
 AC_STDC_HEADERS
 AC_PROG_LIBTOOL
 
-PKG_CHECK_MODULES(DEPS, x11 gdk-x11-2.0 gtk+-2.0)
+PKG_CHECK_MODULES(DEPS, x11 gdk-x11-3.0 gtk+-3.0)
 
 MB_APPLET="yes"
 
diff --git a/screenshot-utils.c b/screenshot-utils.c
index 2d9a168..3df4666 100644
--- a/screenshot-utils.c
+++ b/screenshot-utils.c
@@ -36,12 +36,12 @@ text_property_to_utf8 (const XTextProperty *prop)
   
   list = NULL;
 
-  count = gdk_text_property_to_utf8_list (gdk_x11_xatom_to_atom (prop->encoding),
-                                          prop->format,
-                                          prop->value,
-                                          prop->nitems,
-                                          &list);
-
+  count = gdk_text_property_to_utf8_list_for_display (gdk_display_get_default (),
+                                                      gdk_x11_xatom_to_atom (prop->encoding),
+                                                      prop->format,
+                                                      prop->value,
+                                                      prop->nitems,
+                                                      &list);
   if (count == 0)
     return NULL;
 
@@ -69,7 +69,7 @@ get_window_property (Window  xwindow,
   gdk_error_trap_push ();
 
   type = None;
-  result = XGetWindowProperty (gdk_display,
+  result = XGetWindowProperty (gdk_x11_get_default_xdisplay (),
 			       xwindow,
 			       atom,
 			       0, G_MAXLONG,
@@ -103,7 +103,7 @@ get_text_property (Window  xwindow,
   gdk_error_trap_push ();
 
   text.nitems = 0;
-  if (XGetTextProperty (gdk_display,
+  if (XGetTextProperty (gdk_x11_get_default_xdisplay (),
                         xwindow,
                         &text,
                         atom))
@@ -141,7 +141,7 @@ get_utf8_property (Window  xwindow,
   gdk_error_trap_push ();
   type = None;
   val = NULL;
-  result = XGetWindowProperty (gdk_display,
+  result = XGetWindowProperty (gdk_x11_get_default_xdisplay (),
 			       xwindow,
 			       atom,
 			       0, G_MAXLONG,
@@ -194,7 +194,7 @@ get_atom_property (Window  xwindow,
   
   gdk_error_trap_push ();
   type = None;
-  result = XGetWindowProperty (gdk_display,
+  result = XGetWindowProperty (gdk_x11_get_default_xdisplay (),
 			       xwindow,
 			       atom,
 			       0, G_MAXLONG,
@@ -228,10 +228,11 @@ screenshot_grab_lock (void)
   Atom selection_atom;
   GdkCursor *cursor;
   gboolean result = FALSE;
+  Display *display = gdk_x11_get_default_xdisplay ();
 
   selection_atom = gdk_x11_get_xatom_by_name (SELECTION_NAME);
-  XGrabServer (GDK_DISPLAY ());
-  if (XGetSelectionOwner (GDK_DISPLAY(), selection_atom) != None)
+  XGrabServer (display);
+  if (XGetSelectionOwner (display, selection_atom) != None)
     goto out;
 
   selection_window = gtk_invisible_new ();
@@ -246,15 +247,15 @@ screenshot_grab_lock (void)
       goto out;
     }
 
-  cursor = gdk_cursor_new (GDK_WATCH);
-  gdk_pointer_grab (selection_window->window, FALSE, 0, NULL,
+  cursor = gdk_cursor_new_for_display (gdk_display_get_default(), GDK_WATCH);
+  gdk_pointer_grab (gtk_widget_get_window (selection_window), FALSE, 0, NULL,
 		    cursor, GDK_CURRENT_TIME);
   gdk_cursor_unref (cursor);
 
   result = TRUE;
 
  out:
-  XUngrabServer (GDK_DISPLAY ());
+  XUngrabServer (display);
   gdk_flush ();
 
   return result;
@@ -280,7 +281,7 @@ find_toplevel_window (Window xid)
 
   do
     {
-      if (XQueryTree (GDK_DISPLAY (), xid, &root,
+      if (XQueryTree (gdk_x11_get_default_xdisplay (), xid, &root,
 		      &parent, &children, &nchildren) == 0)
 	{
 	  g_warning ("Couldn't find window manager window");
@@ -303,7 +304,8 @@ screenshot_find_active_window (void)
 
   root_window = GDK_ROOT_WINDOW ();
 
-  if (gdk_net_wm_supports (gdk_atom_intern ("_NET_ACTIVE_WINDOW", FALSE)))
+  if (gdk_x11_screen_supports_net_wm_hint (gdk_screen_get_default(),
+                                           gdk_atom_intern ("_NET_ACTIVE_WINDOW", FALSE)))
     {
       retval = get_window_property (root_window,
 				    gdk_x11_get_xatom_by_name ("_NET_ACTIVE_WINDOW"));
@@ -320,7 +322,8 @@ screenshot_window_is_desktop (Window xid)
   if (xid == root_window)
     return TRUE;
 
-  if (gdk_net_wm_supports (gdk_atom_intern ("_NET_WM_WINDOW_TYPE", FALSE)))
+  if (gdk_x11_screen_supports_net_wm_hint (gdk_screen_get_default(),
+                                           gdk_atom_intern ("_NET_WM_WINDOW_TYPE", FALSE)))
     {
       gboolean retval;
       Atom property;
@@ -347,7 +350,7 @@ screenshot_find_pointer_window (void)
 
   root_window = GDK_ROOT_WINDOW ();
 
-  XQueryPointer (GDK_DISPLAY (), root_window,
+  XQueryPointer (gdk_x11_get_default_xdisplay (), root_window,
 		 &root_return, &child, &unused,
 		 &unused, &unused, &unused, &mask);
 
@@ -368,8 +371,9 @@ look_for_hint_helper (Window    xid,
   gulong *prop;
   Window root, parent, *children, window;
   unsigned int nchildren, i;
+  Display *display = gdk_x11_get_default_xdisplay ();
 
-  if (XGetWindowProperty (GDK_DISPLAY (), xid, property, 0, 1,
+  if (XGetWindowProperty (display, xid, property, 0, 1,
 			  False, AnyPropertyType, &actual_type,
 			  &actual_format, &nitems, &bytes_after,
 			  (gpointer) &prop) == Success
@@ -385,7 +389,7 @@ look_for_hint_helper (Window    xid,
 
   if (depth < MAXIMUM_WM_REPARENTING_DEPTH)
     {
-      if (XQueryTree (GDK_DISPLAY (), xid, &root,
+      if (XQueryTree (display, xid, &root,
 		      &parent, &children, &nchildren) != 0)
 	{
 	  window = None;
@@ -473,12 +477,13 @@ screenshot_get_pixbuf (Window w)
 #endif
 
 
-  window = gdk_window_foreign_new (w);
+  window = gdk_x11_window_foreign_new_for_display (gdk_display_get_default (), w);
   if (window == NULL)
     return NULL;
   
-  root = gdk_window_foreign_new (GDK_ROOT_WINDOW ());
-  gdk_drawable_get_size (window, &real_width, &real_height);
+  root = gdk_x11_window_foreign_new_for_display (gdk_display_get_default (), GDK_ROOT_WINDOW ());
+  real_height = gdk_window_get_height (window);
+  real_width = gdk_window_get_width (window);
   gdk_window_get_origin (window, &x_real_orig, &y_real_orig);
 
   x_orig = x_real_orig;
@@ -504,11 +509,11 @@ screenshot_get_pixbuf (Window w)
 
 
 #ifdef HAVE_X11_EXTENSIONS_SHAPE_H
-  tmp = gdk_pixbuf_get_from_drawable (NULL, root, NULL,
-				      x_orig, y_orig, 0, 0,
-				      width, height);
+  tmp = gdk_pixbuf_get_from_window (root,
+				    x_orig, y_orig,
+				    width, height);
 
-  rectangles = XShapeGetRectangles (GDK_DISPLAY (), GDK_WINDOW_XWINDOW (window),
+  rectangles = XShapeGetRectangles (gdk_x11_get_default_xdisplay (), GDK_WINDOW_XWINDOW (window),
 				    ShapeBounding, &rectangle_count, &rectangle_order);
   if (rectangle_count > 0)
     {
@@ -578,9 +583,9 @@ screenshot_get_pixbuf (Window w)
       screenshot = tmp;
     }
 #else /* HAVE_X11_EXTENSIONS_SHAPE_H */
-  screenshot = gdk_pixbuf_get_from_drawable (NULL, root, NULL,
-					     x_orig, y_orig, 0, 0,
-					     width, height);
+  screenshot = gdk_pixbuf_get_from_window (root,
+					   x_orig, y_orig,
+					   width, height);
 #endif /* HAVE_X11_EXTENSIONS_SHAPE_H */
 
   return screenshot;
@@ -634,10 +639,12 @@ screenshot_show_error_dialog (GtkWindow   *parent,
   if (detail)
     gtk_message_dialog_format_secondary_text (GTK_MESSAGE_DIALOG (dialog),
   					      "%s", detail);
-  
-  if (parent && parent->group)
-    gtk_window_group_add_window (parent->group, GTK_WINDOW (dialog));
-  
+  if (parent) {
+    GtkWindowGroup *group = gtk_window_get_group (parent);
+    if (group)
+      gtk_window_group_add_window (group, GTK_WINDOW (dialog));
+  }
+
   gtk_dialog_run (GTK_DIALOG (dialog));
   
   gtk_widget_destroy (dialog);
-- 
2.8.1


