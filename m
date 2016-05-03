Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86B98E00D67; Tue,  3 May 2016 04:31:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ECC1E00D67
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 04:31:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 04:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,572,1455004800"; d="scan'208";a="971489649"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 May 2016 04:31:00 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 14:30:28 +0300
Message-Id: <40c99f0ea050e87e0dc8209ea7d9bd886615a76c.1462274044.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
References: <f90e90faf158dc260c545a263837598c50a81cea.1462274044.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1462274044.git.jussi.kukkonen@intel.com>
References: <cover.1462274044.git.jussi.kukkonen@intel.com>
Subject: [matchbox-panel-2][PATCH 09/25] systray: port to GTK+ 3
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
X-List-Received-Date: Tue, 03 May 2016 11:31:21 -0000

From: Ross Burton <ross.burton@intel.com>

In the process refresh the bulk of the code from it's upstream in gnome-panel.
---
 applets/systray/Makefile.am       |  20 +-
 applets/systray/fixedtip.c        | 276 ++++++++++++
 applets/systray/fixedtip.h        |  68 +++
 applets/systray/na-marshal.list   |   3 -
 applets/systray/na-tray-child.c   | 526 +++++++++++++++++++++++
 applets/systray/na-tray-child.h   |  71 ++++
 applets/systray/na-tray-manager.c | 570 ++++++++++++++-----------
 applets/systray/na-tray-manager.h |  32 +-
 applets/systray/na-tray.c         | 863 ++++++++++++++++++++++++++++++++++++++
 applets/systray/na-tray.h         |  76 ++++
 applets/systray/systray.c         |  91 +---
 11 files changed, 2253 insertions(+), 343 deletions(-)
 create mode 100644 applets/systray/fixedtip.c
 create mode 100644 applets/systray/fixedtip.h
 delete mode 100644 applets/systray/na-marshal.list
 create mode 100644 applets/systray/na-tray-child.c
 create mode 100644 applets/systray/na-tray-child.h
 create mode 100644 applets/systray/na-tray.c
 create mode 100644 applets/systray/na-tray.h

diff --git a/applets/systray/Makefile.am b/applets/systray/Makefile.am
index e01fe0c..1788581 100644
--- a/applets/systray/Makefile.am
+++ b/applets/systray/Makefile.am
@@ -1,21 +1,17 @@
 include ../Makefile.applets
 
-%.c: %.list
-	$(AM_V_GEN) (echo "#include \"na-marshal.h\""; \
-	  $(GLIB_GENMARSHAL) --internal --prefix=_na_marshal $^ --body) > $@
-%.h: %.list
-	$(AM_V_GEN) $(GLIB_GENMARSHAL) --prefix=_na_marshal $^ --header > $@
-
 applet_LTLIBRARIES = libsystray.la
-libsystray_la_SOURCES = $(BUILT_SOURCES) \
+libsystray_la_SOURCES = systray.c \
+                        na-tray.c \
+			na-tray.h \
                         na-tray-manager.c \
 			na-tray-manager.h \
-			systray.c
-libsystray_la_LDFLAGS = -avoid-version -module
+                        na-tray-child.c \
+			na-tray-child.h \
+			fixedtip.c \
+			fixedtip.h
 
-EXTRA_DIST = na-marshal.list
-
-BUILT_SOURCES = na-marshal.c na-marshal.h
+libsystray_la_LDFLAGS = -avoid-version -module
 
 test_linkage_LDADD += libsystray.la
 
diff --git a/applets/systray/fixedtip.c b/applets/systray/fixedtip.c
new file mode 100644
index 0000000..861e4ab
--- /dev/null
+++ b/applets/systray/fixedtip.c
@@ -0,0 +1,276 @@
+/* Metacity fixed tooltip routine */
+
+/* 
+ * Copyright (C) 2001 Havoc Pennington
+ * Copyright (C) 2003-2006 Vincent Untz
+ * 
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of the
+ * License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ * 
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
+ * 02111-1307, USA.
+ */
+
+#include "fixedtip.h"
+
+/* Signals */
+enum
+{
+  CLICKED,
+  LAST_SIGNAL
+};
+
+static guint fixedtip_signals[LAST_SIGNAL] = { 0 };
+
+struct _NaFixedTipPrivate
+{
+  GtkWidget      *parent;
+  GtkWidget      *label;
+  GtkOrientation  orientation;
+};
+
+G_DEFINE_TYPE (NaFixedTip, na_fixed_tip, GTK_TYPE_WINDOW)
+
+static gboolean
+button_press_handler (GtkWidget      *fixedtip,
+                      GdkEventButton *event,
+                      gpointer        data)
+{
+  if (event->button == 1 && event->type == GDK_BUTTON_PRESS)
+    g_signal_emit (fixedtip, fixedtip_signals[CLICKED], 0);
+
+  return FALSE;
+}
+
+static gboolean
+na_fixed_tip_draw (GtkWidget *widget, cairo_t *cr)
+{
+  GtkStyleContext *context;
+  GtkStateFlags state;
+  int width, height;
+
+  width = gtk_widget_get_allocated_width (widget);
+  height = gtk_widget_get_allocated_height (widget);
+
+  state = gtk_widget_get_state_flags (widget);
+  context = gtk_widget_get_style_context (widget);
+  gtk_style_context_save (context);
+  gtk_style_context_add_class (context, GTK_STYLE_CLASS_TOOLTIP);
+  gtk_style_context_set_state (context, state);
+
+  cairo_save (cr);
+  gtk_render_background (context, cr,
+                         0., 0.,
+                         (gdouble)width,
+                         (gdouble)height);
+  cairo_restore (cr);
+
+  gtk_style_context_restore (context);
+
+  return FALSE;
+}
+
+static void
+na_fixed_tip_class_init (NaFixedTipClass *class)
+{
+  GtkWidgetClass *widget_class = GTK_WIDGET_CLASS (class);
+
+  widget_class->draw = na_fixed_tip_draw;
+
+  fixedtip_signals[CLICKED] =
+    g_signal_new ("clicked",
+		  G_OBJECT_CLASS_TYPE (class),
+		  G_SIGNAL_RUN_LAST,
+		  G_STRUCT_OFFSET (NaFixedTipClass, clicked),
+		  NULL, NULL, NULL,
+		  G_TYPE_NONE, 0);
+
+  g_type_class_add_private (class, sizeof (NaFixedTipPrivate));
+}
+
+/* Did you already see this code? Yes, it's gtk_tooltips_ force_window() ;-) */
+static void
+na_fixed_tip_init (NaFixedTip *fixedtip)
+{
+  GtkWidget *label;
+
+  fixedtip->priv = G_TYPE_INSTANCE_GET_PRIVATE (fixedtip, NA_TYPE_FIXED_TIP,
+                                                NaFixedTipPrivate);
+
+  gtk_window_set_type_hint (GTK_WINDOW (fixedtip),
+                            GDK_WINDOW_TYPE_HINT_TOOLTIP);
+
+  gtk_widget_set_app_paintable (GTK_WIDGET (fixedtip), TRUE);
+  gtk_window_set_resizable (GTK_WINDOW (fixedtip), FALSE);
+  gtk_widget_set_name (GTK_WIDGET (fixedtip), "gtk-tooltips");
+  gtk_container_set_border_width (GTK_CONTAINER (fixedtip), 4);
+
+  label = gtk_label_new (NULL);
+  gtk_label_set_line_wrap (GTK_LABEL (label), TRUE);
+  gtk_misc_set_alignment (GTK_MISC (label), 0.5, 0.5);
+  gtk_widget_show (label);
+  gtk_container_add (GTK_CONTAINER (fixedtip), label);
+  fixedtip->priv->label = label;
+
+  gtk_widget_add_events (GTK_WIDGET (fixedtip), GDK_BUTTON_PRESS_MASK);
+
+  g_signal_connect (fixedtip, "button_press_event",
+                    G_CALLBACK (button_press_handler), NULL);
+
+  fixedtip->priv->orientation = GTK_ORIENTATION_HORIZONTAL;
+}
+
+static void
+na_fixed_tip_position (NaFixedTip *fixedtip)
+{
+  GdkScreen      *screen;
+  GdkWindow      *parent_window;
+  GtkRequisition  req;
+  int             root_x;
+  int             root_y;
+  int             parent_width;
+  int             parent_height;
+  int             screen_width;
+  int             screen_height;
+
+  screen = gtk_widget_get_screen (fixedtip->priv->parent);
+  parent_window = gtk_widget_get_window (fixedtip->priv->parent);
+
+  gtk_window_set_screen (GTK_WINDOW (fixedtip), screen);
+
+  gtk_widget_get_preferred_size (GTK_WIDGET (fixedtip), &req, NULL);
+
+  gdk_window_get_origin (parent_window, &root_x, &root_y);
+  parent_width = gdk_window_get_width (parent_window);
+  parent_height = gdk_window_get_height (parent_window);
+
+  screen_width = gdk_screen_get_width (screen);
+  screen_height = gdk_screen_get_height (screen);
+
+  /* pad between panel and message window */
+#define PAD 5
+  
+  if (fixedtip->priv->orientation == GTK_ORIENTATION_VERTICAL)
+    {
+      if (root_x <= screen_width / 2)
+        root_x += parent_width + PAD;
+      else
+        root_x -= req.width + PAD;
+    }
+  else
+    {
+      if (root_y <= screen_height / 2)
+        root_y += parent_height + PAD;
+      else
+        root_y -= req.height + PAD;
+    }
+
+  /* Push onscreen */
+  if ((root_x + req.width) > screen_width)
+    root_x = screen_width - req.width;
+
+  if ((root_y + req.height) > screen_height)
+    root_y = screen_height - req.height;
+  
+  gtk_window_move (GTK_WINDOW (fixedtip), root_x, root_y);
+}
+
+static void
+na_fixed_tip_parent_size_allocated (GtkWidget     *parent,
+                                    GtkAllocation *allocation,
+                                    NaFixedTip    *fixedtip)
+{
+  na_fixed_tip_position (fixedtip);
+}
+
+static void
+na_fixed_tip_parent_screen_changed (GtkWidget  *parent,
+                                    GdkScreen  *new_screen,
+                                    NaFixedTip *fixedtip)
+{
+  na_fixed_tip_position (fixedtip);
+}
+
+GtkWidget *
+na_fixed_tip_new (GtkWidget      *parent,
+                  GtkOrientation  orientation)
+{
+  NaFixedTip *fixedtip;
+
+  g_return_val_if_fail (parent != NULL, NULL);
+
+  fixedtip = g_object_new (NA_TYPE_FIXED_TIP,
+                           "type", GTK_WINDOW_POPUP,
+                           NULL);
+
+  fixedtip->priv->parent = parent;
+
+#if 0
+  //FIXME: would be nice to be able to get the toplevel for the tip, but this
+  //doesn't work
+  GtkWidget  *toplevel;
+  
+  toplevel = gtk_widget_get_toplevel (parent);
+  /*
+  if (toplevel && gtk_widget_is_toplevel (toplevel) && GTK_IS_WINDOW (toplevel))
+    gtk_window_set_transient_for (GTK_WINDOW (fixedtip), GTK_WINDOW (toplevel));
+    */
+#endif
+
+  fixedtip->priv->orientation = orientation;
+
+  //FIXME: would be nice to move the tip when the notification area moves
+  g_signal_connect_object (parent, "size-allocate",
+                           G_CALLBACK (na_fixed_tip_parent_size_allocated),
+                           fixedtip, 0);
+  g_signal_connect_object (parent, "screen-changed",
+                           G_CALLBACK (na_fixed_tip_parent_screen_changed),
+                           fixedtip, 0);
+
+  na_fixed_tip_position (fixedtip);
+
+  return GTK_WIDGET (fixedtip);
+}
+
+void
+na_fixed_tip_set_markup (GtkWidget  *widget,
+                         const char *markup_text)
+{
+  NaFixedTip *fixedtip;
+
+  g_return_if_fail (NA_IS_FIXED_TIP (widget));
+
+  fixedtip = NA_FIXED_TIP (widget);
+
+  gtk_label_set_markup (GTK_LABEL (fixedtip->priv->label),
+                        markup_text);
+
+  na_fixed_tip_position (fixedtip);
+}
+
+void
+na_fixed_tip_set_orientation (GtkWidget      *widget,
+                              GtkOrientation  orientation)
+{
+  NaFixedTip *fixedtip;
+
+  g_return_if_fail (NA_IS_FIXED_TIP (widget));
+
+  fixedtip = NA_FIXED_TIP (widget);
+
+  if (orientation == fixedtip->priv->orientation)
+    return;
+
+  fixedtip->priv->orientation = orientation;
+
+  na_fixed_tip_position (fixedtip);
+}
diff --git a/applets/systray/fixedtip.h b/applets/systray/fixedtip.h
new file mode 100644
index 0000000..a29e85c
--- /dev/null
+++ b/applets/systray/fixedtip.h
@@ -0,0 +1,68 @@
+/* Fixed tooltip routine */
+
+/* 
+ * Copyright (C) 2001 Havoc Pennington, 2002 Red Hat Inc.
+ * Copyright (C) 2003-2006 Vincent Untz
+ * 
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of the
+ * License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ * 
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
+ * 02111-1307, USA.
+ */
+
+#ifndef FIXED_TIP_H
+#define FIXED_TIP_H
+
+#include <gtk/gtk.h>
+
+G_BEGIN_DECLS
+
+#define NA_TYPE_FIXED_TIP			(na_fixed_tip_get_type ())
+#define NA_FIXED_TIP(obj)			(G_TYPE_CHECK_INSTANCE_CAST ((obj), NA_TYPE_FIXED_TIP, NaFixedTip))
+#define NA_FIXED_TIP_CLASS(klass)		(G_TYPE_CHECK_CLASS_CAST ((klass), NA_TYPE_FIXED_TIP, NaFixedTipClass))
+#define NA_IS_FIXED_TIP(obj)			(G_TYPE_CHECK_INSTANCE_TYPE ((obj), NA_TYPE_FIXED_TIP))
+#define NA_IS_FIXED_TIP_CLASS(klass)		(G_TYPE_CHECK_CLASS_TYPE ((klass), NA_TYPE_FIXED_TIP))
+#define NA_FIXED_TIP_GET_CLASS(obj)		(G_TYPE_INSTANCE_GET_CLASS ((obj), NA_TYPE_FIXED_TIP, NaFixedTipClass))
+
+typedef struct _NaFixedTip	  NaFixedTip;
+typedef struct _NaFixedTipPrivate NaFixedTipPrivate;
+typedef struct _NaFixedTipClass   NaFixedTipClass;
+
+struct _NaFixedTip
+{
+  GtkWindow parent_instance;
+
+  NaFixedTipPrivate *priv;
+};
+
+struct _NaFixedTipClass
+{
+  GtkWindowClass parent_class;
+
+  void (* clicked)    (NaFixedTip *fixedtip);
+};
+
+GType      na_fixed_tip_get_type (void);
+
+GtkWidget *na_fixed_tip_new (GtkWidget      *parent,
+                             GtkOrientation  orientation);
+
+void       na_fixed_tip_set_markup (GtkWidget  *widget,
+                                    const char *markup_text);
+
+void       na_fixed_tip_set_orientation (GtkWidget      *widget,
+                                         GtkOrientation  orientation);
+
+G_END_DECLS
+
+#endif /* FIXED_TIP_H */
diff --git a/applets/systray/na-marshal.list b/applets/systray/na-marshal.list
deleted file mode 100644
index e3fc399..0000000
--- a/applets/systray/na-marshal.list
+++ /dev/null
@@ -1,3 +0,0 @@
-VOID:OBJECT,OBJECT
-VOID:OBJECT,STRING,LONG,LONG
-VOID:OBJECT,LONG
diff --git a/applets/systray/na-tray-child.c b/applets/systray/na-tray-child.c
new file mode 100644
index 0000000..1042940
--- /dev/null
+++ b/applets/systray/na-tray-child.c
@@ -0,0 +1,526 @@
+/* na-tray-child.c
+ * Copyright (C) 2002 Anders Carlsson <andersca@gnu.org>
+ * Copyright (C) 2003-2006 Vincent Untz
+ * Copyright (C) 2008 Red Hat, Inc.
+ *
+ * This library is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU Lesser General Public
+ * License as published by the Free Software Foundation; either
+ * version 2 of the License, or (at your option) any later version.
+ *
+ * This library is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * Lesser General Public License for more details.
+ *
+ * You should have received a copy of the GNU Lesser General Public
+ * License along with this library; if not, write to the
+ * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
+ * Boston, MA 02111-1307, USA.
+ */
+
+#include <config.h>
+#include <string.h>
+
+#include "na-tray-child.h"
+
+#include <gdk/gdk.h>
+#include <gdk/gdkx.h>
+#include <X11/Xatom.h>
+
+G_DEFINE_TYPE (NaTrayChild, na_tray_child, GTK_TYPE_SOCKET)
+
+static void
+na_tray_child_finalize (GObject *object)
+{
+  G_OBJECT_CLASS (na_tray_child_parent_class)->finalize (object);
+}
+
+static void
+na_tray_child_realize (GtkWidget *widget)
+{
+  NaTrayChild *child = NA_TRAY_CHILD (widget);
+  GdkVisual *visual = gtk_widget_get_visual (widget);
+  GdkWindow *window;
+
+  GTK_WIDGET_CLASS (na_tray_child_parent_class)->realize (widget);
+
+  window = gtk_widget_get_window (widget);
+
+  if (child->has_alpha)
+    {
+      /* We have real transparency with an ARGB visual and the Composite
+       * extension. */
+
+      /* Set a transparent background */
+      cairo_pattern_t *transparent = cairo_pattern_create_rgba (0, 0, 0, 0);
+      gdk_window_set_background_pattern (window, transparent);
+      gdk_window_set_composited (window, TRUE);
+      cairo_pattern_destroy (transparent);
+
+      child->parent_relative_bg = FALSE;
+    }
+  else if (visual == gdk_window_get_visual (gdk_window_get_parent (window)))
+    {
+      /* Otherwise, if the visual matches the visual of the parent window, we
+       * can use a parent-relative background and fake transparency. */
+      gdk_window_set_background_pattern (window, NULL);
+
+      child->parent_relative_bg = TRUE;
+    }
+  else
+    {
+      /* Nothing to do; the icon will sit on top of an ugly gray box */
+      child->parent_relative_bg = FALSE;
+    }
+
+  gdk_window_set_composited (window, child->composited);
+
+  gtk_widget_set_app_paintable (GTK_WIDGET (child),
+                                child->parent_relative_bg || child->has_alpha);
+
+  /* Double-buffering will interfere with the parent-relative-background fake
+   * transparency, since the double-buffer code doesn't know how to fill in the
+   * background of the double-buffer correctly.
+   */
+  gtk_widget_set_double_buffered (GTK_WIDGET (child),
+                                  child->parent_relative_bg);
+}
+
+static void
+na_tray_child_style_set (GtkWidget *widget,
+                         GtkStyle  *previous_style)
+{
+  /* The default handler resets the background according to the new style.
+   * We either use a transparent background or a parent-relative background
+   * and ignore the style background. So, just don't chain up.
+   */
+}
+
+#if 0
+/* This is adapted from code that was commented out in na-tray-manager.c; the
+ * code in na-tray-manager.c wouldn't have worked reliably, this will. So maybe
+ * it can be reenabled. On other hand, things seem to be working fine without
+ * it.
+ *
+ * If reenabling, you need to hook it up in na_tray_child_class_init().
+ */
+static void
+na_tray_child_size_request (GtkWidget      *widget,
+                            GtkRequisition *request)
+{
+  GTK_WIDGET_CLASS (na_tray_child_parent_class)->size_request (widget, request);
+
+  /*
+   * Make sure the icons have a meaningful size ..
+   */ 
+  if ((request->width < 16) || (request->height < 16))
+    {
+      gint nw = MAX (24, request->width);
+      gint nh = MAX (24, request->height);
+      g_warning ("Tray icon has requested a size of (%ix%i), resizing to (%ix%i)", 
+                 req.width, req.height, nw, nh);
+      request->width = nw;
+      request->height = nh;
+    }
+}
+#endif
+
+static void
+na_tray_child_size_allocate (GtkWidget      *widget,
+                             GtkAllocation  *allocation)
+{
+  NaTrayChild *child = NA_TRAY_CHILD (widget);
+  GtkAllocation widget_allocation;
+  gboolean moved, resized;
+
+  gtk_widget_get_allocation (widget, &widget_allocation);
+
+  moved = (allocation->x != widget_allocation.x ||
+	   allocation->y != widget_allocation.y);
+  resized = (allocation->width != widget_allocation.width ||
+	     allocation->height != widget_allocation.height);
+
+  /* When we are allocating the widget while mapped we need special handling
+   * for both real and fake transparency.
+   *
+   * Real transparency: we need to invalidate and trigger a redraw of the old
+   *   and new areas. (GDK really should handle this for us, but doesn't as of
+   *   GTK+-2.14)
+   *
+   * Fake transparency: if the widget moved, we need to force the contents to
+   *   be redrawn with the new offset for the parent-relative background.
+   */
+  if ((moved || resized) && gtk_widget_get_mapped (widget))
+    {
+      if (na_tray_child_has_alpha (child))
+        gdk_window_invalidate_rect (gdk_window_get_parent (gtk_widget_get_window (widget)),
+                                    &widget_allocation, FALSE);
+    }
+
+  GTK_WIDGET_CLASS (na_tray_child_parent_class)->size_allocate (widget,
+                                                                allocation);
+
+  if ((moved || resized) && gtk_widget_get_mapped (widget))
+    {
+      if (na_tray_child_has_alpha (NA_TRAY_CHILD (widget)))
+        gdk_window_invalidate_rect (gdk_window_get_parent (gtk_widget_get_window (widget)),
+                                    &widget_allocation, FALSE);
+      else if (moved && child->parent_relative_bg)
+        na_tray_child_force_redraw (child);
+    }
+}
+
+/* The plug window should completely occupy the area of the child, so we won't
+ * get a draw event. But in case we do (the plug unmaps itself, say), this
+ * draw handler draws with real or fake transparency.
+ */
+static gboolean
+na_tray_child_draw (GtkWidget *widget,
+                    cairo_t   *cr)
+{
+  NaTrayChild *child = NA_TRAY_CHILD (widget);
+
+  if (na_tray_child_has_alpha (child))
+    {
+      /* Clear to transparent */
+      cairo_set_source_rgba (cr, 0, 0, 0, 0);
+      cairo_set_operator (cr, CAIRO_OPERATOR_SOURCE);
+      cairo_paint (cr);
+    }
+  else if (child->parent_relative_bg)
+    {
+      GdkWindow *window;
+      cairo_surface_t *target;
+      GdkRectangle clip_rect;
+
+      window = gtk_widget_get_window (widget);
+      target = cairo_get_group_target (cr);
+
+      gdk_cairo_get_clip_rectangle (cr, &clip_rect);
+
+      /* Clear to parent-relative pixmap
+       * We need to use direct X access here because GDK doesn't know about
+       * the parent relative pixmap. */
+      cairo_surface_flush (target);
+
+      XClearArea (GDK_WINDOW_XDISPLAY (window),
+                  GDK_WINDOW_XID (window),
+                  clip_rect.x, clip_rect.y,
+                  clip_rect.width, clip_rect.height,
+                  False);
+      cairo_surface_mark_dirty_rectangle (target,
+                                          clip_rect.x, clip_rect.y,
+                                          clip_rect.width, clip_rect.height);
+    }
+
+  return FALSE;
+}
+
+static void
+na_tray_child_init (NaTrayChild *child)
+{
+}
+
+static void
+na_tray_child_class_init (NaTrayChildClass *klass)
+{
+  GObjectClass *gobject_class;
+  GtkWidgetClass *widget_class;
+
+  gobject_class = (GObjectClass *)klass;
+  widget_class = (GtkWidgetClass *)klass;
+
+  gobject_class->finalize = na_tray_child_finalize;
+  widget_class->style_set = na_tray_child_style_set;
+  widget_class->realize = na_tray_child_realize;
+  widget_class->size_allocate = na_tray_child_size_allocate;
+  widget_class->draw = na_tray_child_draw;
+}
+
+GtkWidget *
+na_tray_child_new (GdkScreen *screen,
+                   Window     icon_window)
+{
+  XWindowAttributes window_attributes;
+  Display *xdisplay;
+  NaTrayChild *child;
+  GdkVisual *visual;
+  gboolean visual_has_alpha;
+  int red_prec, green_prec, blue_prec, depth;
+  int result;
+
+  g_return_val_if_fail (GDK_IS_SCREEN (screen), NULL);
+  g_return_val_if_fail (icon_window != None, NULL);
+
+  xdisplay = GDK_SCREEN_XDISPLAY (screen);
+
+  /* We need to determine the visual of the window we are embedding and create
+   * the socket in the same visual.
+   */
+
+  gdk_error_trap_push ();
+  result = XGetWindowAttributes (xdisplay, icon_window,
+                                 &window_attributes);
+  gdk_error_trap_pop_ignored ();
+
+  if (!result) /* Window already gone */
+    return NULL;
+
+  visual = gdk_x11_screen_lookup_visual (screen,
+                                         window_attributes.visual->visualid);
+  if (!visual) /* Icon window is on another screen? */
+    return NULL;
+
+  child = g_object_new (NA_TYPE_TRAY_CHILD, NULL);
+  child->icon_window = icon_window;
+
+  gtk_widget_set_visual (GTK_WIDGET (child), visual);
+
+  /* We have alpha if the visual has something other than red, green,
+   * and blue */
+  gdk_visual_get_red_pixel_details (visual, NULL, NULL, &red_prec);
+  gdk_visual_get_green_pixel_details (visual, NULL, NULL, &green_prec);
+  gdk_visual_get_blue_pixel_details (visual, NULL, NULL, &blue_prec);
+  depth = gdk_visual_get_depth (visual);
+
+  visual_has_alpha = red_prec + blue_prec + green_prec < depth;
+  child->has_alpha = (visual_has_alpha &&
+                      gdk_display_supports_composite (gdk_screen_get_display (screen)));
+
+  child->composited = child->has_alpha;
+
+  return GTK_WIDGET (child);
+}
+
+char *
+na_tray_child_get_title (NaTrayChild *child)
+{
+  char *retval = NULL;
+  GdkDisplay *display;
+  Atom utf8_string, atom, type;
+  int result;
+  int format;
+  gulong nitems;
+  gulong bytes_after;
+  gchar *val;
+
+  g_return_val_if_fail (NA_IS_TRAY_CHILD (child), NULL);
+
+  display = gtk_widget_get_display (GTK_WIDGET (child));
+
+  utf8_string = gdk_x11_get_xatom_by_name_for_display (display, "UTF8_STRING");
+  atom = gdk_x11_get_xatom_by_name_for_display (display, "_NET_WM_NAME");
+
+  gdk_error_trap_push ();
+
+  result = XGetWindowProperty (GDK_DISPLAY_XDISPLAY (display),
+                               child->icon_window,
+                               atom,
+                               0, G_MAXLONG,
+                               False, utf8_string,
+                               &type, &format, &nitems,
+                               &bytes_after, (guchar **)&val);
+  
+  if (gdk_error_trap_pop () || result != Success)
+    return NULL;
+
+  if (type != utf8_string ||
+      format != 8 ||
+      nitems == 0)
+    {
+      if (val)
+        XFree (val);
+      return NULL;
+    }
+
+  if (!g_utf8_validate (val, nitems, NULL))
+    {
+      XFree (val);
+      return NULL;
+    }
+
+  retval = g_strndup (val, nitems);
+
+  XFree (val);
+
+  return retval;
+}
+
+/**
+ * na_tray_child_has_alpha;
+ * @child: a #NaTrayChild
+ *
+ * Checks if the child has an ARGB visual and real alpha transparence.
+ * (as opposed to faked alpha transparency with an parent-relative
+ * background)
+ *
+ * Return value: %TRUE if the child has an alpha transparency
+ */
+gboolean
+na_tray_child_has_alpha (NaTrayChild *child)
+{
+  g_return_val_if_fail (NA_IS_TRAY_CHILD (child), FALSE);
+
+  return child->has_alpha;
+}
+
+/**
+ * na_tray_child_set_composited;
+ * @child: a #NaTrayChild
+ * @composited: %TRUE if the child's window should be redirected
+ *
+ * Sets whether the #GdkWindow of the child should be set redirected
+ * using gdk_window_set_composited(). By default this is based off of
+ * na_tray_child_has_alpha(), but it may be useful to override it in
+ * certain circumstances; for example, if the #NaTrayChild is added
+ * to a parent window and that parent window is composited against the
+ * background.
+ */
+void
+na_tray_child_set_composited (NaTrayChild *child,
+                              gboolean     composited)
+{
+  g_return_if_fail (NA_IS_TRAY_CHILD (child));
+
+  if (child->composited == composited)
+    return;
+
+  child->composited = composited;
+  if (gtk_widget_get_realized (GTK_WIDGET (child)))
+    gdk_window_set_composited (gtk_widget_get_window (GTK_WIDGET (child)),
+                               composited);
+}
+
+/* If we are faking transparency with a window-relative background, force a
+ * redraw of the icon. This should be called if the background changes or if
+ * the child is shifted with respect to the background.
+ */
+void
+na_tray_child_force_redraw (NaTrayChild *child)
+{
+  GtkWidget *widget = GTK_WIDGET (child);
+
+  if (gtk_widget_get_mapped (widget) && child->parent_relative_bg)
+    {
+#if 1
+      /* Sending an ExposeEvent might cause redraw problems if the
+       * icon is expecting the server to clear-to-background before
+       * the redraw. It should be ok for GtkStatusIcon or EggTrayIcon.
+       */
+      Display *xdisplay = GDK_DISPLAY_XDISPLAY (gtk_widget_get_display (widget));
+      XEvent xev;
+      GdkWindow *plug_window;
+      GtkAllocation allocation;
+
+      plug_window = gtk_socket_get_plug_window (GTK_SOCKET (child));
+      gtk_widget_get_allocation (widget, &allocation);
+
+      xev.xexpose.type = Expose;
+      xev.xexpose.window = GDK_WINDOW_XID (plug_window);
+      xev.xexpose.x = 0;
+      xev.xexpose.y = 0;
+      xev.xexpose.width = allocation.width;
+      xev.xexpose.height = allocation.height;
+      xev.xexpose.count = 0;
+
+      gdk_error_trap_push ();
+      XSendEvent (xdisplay,
+                  xev.xexpose.window,
+                  False, ExposureMask,
+                  &xev);
+      gdk_error_trap_pop_ignored ();
+#else
+      /* Hiding and showing is the safe way to do it, but can result in more
+       * flickering.
+       */
+      gdk_window_hide (widget->window);
+      gdk_window_show (widget->window);
+#endif
+    }
+}
+
+/* from libwnck/xutils.c, comes as LGPLv2+ */
+static char *
+latin1_to_utf8 (const char *latin1)
+{
+  GString *str;
+  const char *p;
+
+  str = g_string_new (NULL);
+
+  p = latin1;
+  while (*p)
+    {
+      g_string_append_unichar (str, (gunichar) *p);
+      ++p;
+    }
+
+  return g_string_free (str, FALSE);
+}
+
+/* derived from libwnck/xutils.c, comes as LGPLv2+ */
+static void
+_get_wmclass (Display *xdisplay,
+              Window   xwindow,
+              char   **res_class,
+              char   **res_name)
+{
+  XClassHint ch;
+
+  ch.res_name = NULL;
+  ch.res_class = NULL;
+
+  gdk_error_trap_push ();
+  XGetClassHint (xdisplay, xwindow, &ch);
+  gdk_error_trap_pop_ignored ();
+
+  if (res_class)
+    *res_class = NULL;
+
+  if (res_name)
+    *res_name = NULL;
+
+  if (ch.res_name)
+    {
+      if (res_name)
+        *res_name = latin1_to_utf8 (ch.res_name);
+
+      XFree (ch.res_name);
+    }
+
+  if (ch.res_class)
+    {
+      if (res_class)
+        *res_class = latin1_to_utf8 (ch.res_class);
+
+      XFree (ch.res_class);
+    }
+}
+
+/**
+ * na_tray_child_get_wm_class;
+ * @child: a #NaTrayChild
+ * @res_name: return location for a string containing the application name of
+ * @child, or %NULL
+ * @res_class: return location for a string containing the application class of
+ * @child, or %NULL
+ *
+ * Fetches the resource associated with @child.
+ */
+void
+na_tray_child_get_wm_class (NaTrayChild  *child,
+                            char        **res_name,
+                            char        **res_class)
+{
+  GdkDisplay *display;
+
+  g_return_if_fail (NA_IS_TRAY_CHILD (child));
+
+  display = gtk_widget_get_display (GTK_WIDGET (child));
+
+  _get_wmclass (GDK_DISPLAY_XDISPLAY (display),
+                child->icon_window,
+                res_class,
+                res_name);
+}
diff --git a/applets/systray/na-tray-child.h b/applets/systray/na-tray-child.h
new file mode 100644
index 0000000..29cab3b
--- /dev/null
+++ b/applets/systray/na-tray-child.h
@@ -0,0 +1,71 @@
+/* -*- Mode: C; tab-width: 8; indent-tabs-mode: t; c-basic-offset: 8 -*- */
+/* na-tray-child.h
+ * Copyright (C) 2002 Anders Carlsson <andersca@gnu.org>
+ * Copyright (C) 2003-2006 Vincent Untz
+ * Copyright (C) 2008 Red Hat, Inc.
+ *
+ * This library is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU Lesser General Public
+ * License as published by the Free Software Foundation; either
+ * version 2 of the License, or (at your option) any later version.
+ *
+ * This library is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * Lesser General Public License for more details.
+ *
+ * You should have received a copy of the GNU Lesser General Public
+ * License along with this library; if not, write to the
+ * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
+ * Boston, MA 02111-1307, USA.
+ */
+
+#ifndef __NA_TRAY_CHILD_H__
+#define __NA_TRAY_CHILD_H__
+
+#include <gtk/gtk.h>
+#include <gtk/gtkx.h>
+
+G_BEGIN_DECLS
+
+#define NA_TYPE_TRAY_CHILD		(na_tray_child_get_type ())
+#define NA_TRAY_CHILD(obj)		(G_TYPE_CHECK_INSTANCE_CAST ((obj), NA_TYPE_TRAY_CHILD, NaTrayChild))
+#define NA_TRAY_CHILD_CLASS(klass)	(G_TYPE_CHECK_CLASS_CAST ((klass), NA_TYPE_TRAY_CHILD, NaTrayChildClass))
+#define NA_IS_TRAY_CHILD(obj)		(G_TYPE_CHECK_INSTANCE_TYPE ((obj), NA_TYPE_TRAY_CHILD))
+#define NA_IS_TRAY_CHILD_CLASS(klass)	(G_TYPE_CHECK_CLASS_TYPE ((klass), NA_TYPE_TRAY_CHILD))
+#define NA_TRAY_CHILD_GET_CLASS(obj)	(G_TYPE_INSTANCE_GET_CLASS ((obj), NA_TYPE_TRAY_CHILD, NaTrayChildClass))
+
+typedef struct _NaTrayChild	  NaTrayChild;
+typedef struct _NaTrayChildClass  NaTrayChildClass;
+typedef struct _NaTrayChildChild  NaTrayChildChild;
+
+struct _NaTrayChild
+{
+  GtkSocket parent_instance;
+  Window icon_window;
+  guint has_alpha : 1;
+  guint composited : 1;
+  guint parent_relative_bg : 1;
+};
+
+struct _NaTrayChildClass
+{
+  GtkSocketClass parent_class;
+};
+
+GType           na_tray_child_get_type        (void);
+
+GtkWidget      *na_tray_child_new            (GdkScreen    *screen,
+                                              Window        icon_window);
+char           *na_tray_child_get_title      (NaTrayChild  *child);
+gboolean        na_tray_child_has_alpha      (NaTrayChild  *child);
+void            na_tray_child_set_composited (NaTrayChild  *child,
+                                              gboolean      composited);
+void            na_tray_child_force_redraw   (NaTrayChild  *child);
+void            na_tray_child_get_wm_class   (NaTrayChild  *child,
+					      char        **res_name,
+					      char        **res_class);
+
+G_END_DECLS
+
+#endif /* __NA_TRAY_CHILD_H__ */
diff --git a/applets/systray/na-tray-manager.c b/applets/systray/na-tray-manager.c
index 8eaaba1..8999350 100644
--- a/applets/systray/na-tray-manager.c
+++ b/applets/systray/na-tray-manager.c
@@ -26,8 +26,6 @@
 
 #include "na-tray-manager.h"
 
-#include <gdkconfig.h>
-#include <glib/gi18n.h>
 #if defined (GDK_WINDOWING_X11)
 #include <gdk/gdkx.h>
 #include <X11/Xatom.h>
@@ -36,8 +34,6 @@
 #endif
 #include <gtk/gtk.h>
 
-#include "na-marshal.h"
-
 /* Signals */
 enum
 {
@@ -98,6 +94,25 @@ na_tray_manager_init (NaTrayManager *manager)
 {
   manager->invisible = NULL;
   manager->socket_table = g_hash_table_new (NULL, NULL);
+
+  manager->padding = 0;
+  manager->icon_size = 0;
+
+  manager->fg.red = 0;
+  manager->fg.green = 0;
+  manager->fg.blue = 0;
+
+  manager->error.red = 0xffff;
+  manager->error.green = 0;
+  manager->error.blue = 0;
+
+  manager->warning.red = 0xffff;
+  manager->warning.green = 0xffff;
+  manager->warning.blue = 0;
+
+  manager->success.red = 0;
+  manager->success.green = 0xffff;
+  manager->success.blue = 0;
 }
 
 static void
@@ -129,8 +144,7 @@ na_tray_manager_class_init (NaTrayManagerClass *klass)
 		  G_OBJECT_CLASS_TYPE (klass),
 		  G_SIGNAL_RUN_LAST,
 		  G_STRUCT_OFFSET (NaTrayManagerClass, tray_icon_added),
-		  NULL, NULL,
-		  g_cclosure_marshal_VOID__OBJECT,
+		  NULL, NULL, NULL,
 		  G_TYPE_NONE, 1,
 		  GTK_TYPE_SOCKET);
 
@@ -139,8 +153,7 @@ na_tray_manager_class_init (NaTrayManagerClass *klass)
 		  G_OBJECT_CLASS_TYPE (klass),
 		  G_SIGNAL_RUN_LAST,
 		  G_STRUCT_OFFSET (NaTrayManagerClass, tray_icon_removed),
-		  NULL, NULL,
-		  g_cclosure_marshal_VOID__OBJECT,
+		  NULL, NULL, NULL,
 		  G_TYPE_NONE, 1,
 		  GTK_TYPE_SOCKET);
   manager_signals[MESSAGE_SENT] =
@@ -148,8 +161,7 @@ na_tray_manager_class_init (NaTrayManagerClass *klass)
 		  G_OBJECT_CLASS_TYPE (klass),
 		  G_SIGNAL_RUN_LAST,
 		  G_STRUCT_OFFSET (NaTrayManagerClass, message_sent),
-		  NULL, NULL,
-		  _na_marshal_VOID__OBJECT_STRING_LONG_LONG,
+		  NULL, NULL, NULL,
 		  G_TYPE_NONE, 4,
 		  GTK_TYPE_SOCKET,
 		  G_TYPE_STRING,
@@ -160,8 +172,7 @@ na_tray_manager_class_init (NaTrayManagerClass *klass)
 		  G_OBJECT_CLASS_TYPE (klass),
 		  G_SIGNAL_RUN_LAST,
 		  G_STRUCT_OFFSET (NaTrayManagerClass, message_cancelled),
-		  NULL, NULL,
-		  _na_marshal_VOID__OBJECT_LONG,
+		  NULL, NULL, NULL,
 		  G_TYPE_NONE, 2,
 		  GTK_TYPE_SOCKET,
 		  G_TYPE_LONG);
@@ -170,8 +181,7 @@ na_tray_manager_class_init (NaTrayManagerClass *klass)
 		  G_OBJECT_CLASS_TYPE (klass),
 		  G_SIGNAL_RUN_LAST,
 		  G_STRUCT_OFFSET (NaTrayManagerClass, lost_selection),
-		  NULL, NULL,
-		  g_cclosure_marshal_VOID__VOID,
+		  NULL, NULL, NULL,
 		  G_TYPE_NONE, 0);
 
 #if defined (GDK_WINDOWING_X11)
@@ -252,120 +262,61 @@ static gboolean
 na_tray_manager_plug_removed (GtkSocket       *socket,
 			      NaTrayManager   *manager)
 {
-  Window *window;
+  NaTrayChild *child = NA_TRAY_CHILD (socket);
 
-  window = g_object_get_data (G_OBJECT (socket), "na-tray-child-window");
-
-  g_hash_table_remove (manager->socket_table, GINT_TO_POINTER (*window));
-  g_object_set_data (G_OBJECT (socket), "na-tray-child-window",
-		     NULL);
-  
-  g_signal_emit (manager, manager_signals[TRAY_ICON_REMOVED], 0, socket);
+  g_hash_table_remove (manager->socket_table,
+                       GINT_TO_POINTER (child->icon_window));
+  g_signal_emit (manager, manager_signals[TRAY_ICON_REMOVED], 0, child);
 
   /* This destroys the socket. */
   return FALSE;
 }
 
 static void
-na_tray_manager_make_socket_transparent (GtkWidget *widget,
-                                         gpointer   user_data)
+na_tray_manager_handle_dock_request (NaTrayManager       *manager,
+				     XClientMessageEvent *xevent)
 {
-  if (GTK_WIDGET_NO_WINDOW (widget))
-    return;
+  Window icon_window = xevent->data.l[2];
+  GtkWidget *child;
 
-  gdk_window_set_back_pixmap (widget->window, NULL, TRUE);
-}
-
-static gboolean
-na_tray_manager_socket_exposed (GtkWidget      *widget,
-                                GdkEventExpose *event,
-                                gpointer        user_data)
-{
-  gdk_window_clear_area (widget->window,
-                         event->area.x, event->area.y,
-                         event->area.width, event->area.height);
-  return FALSE;
-}
+  if (g_hash_table_lookup (manager->socket_table,
+                           GINT_TO_POINTER (icon_window)))
+    {
+      /* We already got this notification earlier, ignore this one */
+      return;
+    }
 
-static void
-na_tray_manager_socket_style_set (GtkWidget *widget,
-                                  GtkStyle  *previous_style,
-                                  gpointer   user_data)
-{
-  if (widget->window == NULL)
+  child = na_tray_child_new (manager->screen, icon_window);
+  if (child == NULL) /* already gone or other error */
     return;
 
-  na_tray_manager_make_socket_transparent (widget, user_data);
-}
+  g_signal_emit (manager, manager_signals[TRAY_ICON_ADDED], 0,
+		 child);
 
-static void
-na_tray_manager_handle_dock_request (NaTrayManager       *manager,
-				     XClientMessageEvent *xevent)
-{
-  GtkWidget *socket;
-  Window *window;
-  GtkRequisition req;
+  /* If the child wasn't attached, then destroy it */
 
-  if (g_hash_table_lookup (manager->socket_table, GINT_TO_POINTER (xevent->data.l[2])))
+  if (!GTK_IS_WINDOW (gtk_widget_get_toplevel (GTK_WIDGET (child))))
     {
-      /* We already got this notification earlier, ignore this one */
+      gtk_widget_destroy (child);
       return;
     }
-  
-  socket = gtk_socket_new ();
-
-  gtk_widget_set_app_paintable (socket, TRUE);
-  //FIXME: need to find a theme where this (and expose event) is needed
-  gtk_widget_set_double_buffered (socket, FALSE);
-  g_signal_connect (socket, "realize",
-                    G_CALLBACK (na_tray_manager_make_socket_transparent), NULL);
-  g_signal_connect (socket, "expose_event",
-                    G_CALLBACK (na_tray_manager_socket_exposed), NULL);
-  g_signal_connect_after (socket, "style_set",
-                          G_CALLBACK (na_tray_manager_socket_style_set), NULL);
-  
-  /* We need to set the child window here
-   * so that the client can call _get functions
-   * in the signal handler
-   */
-  window = g_new (Window, 1);
-  *window = xevent->data.l[2];
-      
-  g_object_set_data_full (G_OBJECT (socket),
-			  "na-tray-child-window",
-			  window, g_free);
-  g_signal_emit (manager, manager_signals[TRAY_ICON_ADDED], 0,
-		 socket);
 
-  /* Add the socket only if it's been attached */
-  if (GTK_IS_WINDOW (gtk_widget_get_toplevel (GTK_WIDGET (socket))))
+  g_signal_connect (child, "plug_removed",
+		    G_CALLBACK (na_tray_manager_plug_removed), manager);
+
+  gtk_socket_add_id (GTK_SOCKET (child), icon_window);
+
+  if (!gtk_socket_get_plug_window (GTK_SOCKET (child)))
     {
-      g_signal_connect (socket, "plug_removed",
-			G_CALLBACK (na_tray_manager_plug_removed), manager);
-      
-      gtk_socket_add_id (GTK_SOCKET (socket), *window);
-
-      g_hash_table_insert (manager->socket_table, GINT_TO_POINTER (*window), socket);
-
-      /*
-       * Make sure the icons have a meaningfull size ...
-       */ 
-      req.width = req.height = 1;
-      gtk_widget_size_request (socket, &req);
-      /*
-      if ((req.width < 16) || (req.height < 16))
-      {
-          gint nw = MAX (24, req.width);
-          gint nh = MAX (24, req.height);
-          g_warning (_("tray icon has requested a size of (%i x %i), resizing to (%i x %i)"), 
-                      req.width, req.height, nw, nh);
-          gtk_widget_set_size_request(icon, nw,  nh);
-      }
-      */
-      gtk_widget_show(socket);
+      /* Embedding failed, we won't get a plug-removed signal */
+      /* This signal destroys the socket */
+      g_signal_emit (manager, manager_signals[TRAY_ICON_REMOVED], 0, child);
+      return;
     }
-  else
-    gtk_widget_destroy (socket);
+
+  g_hash_table_insert (manager->socket_table,
+                       GINT_TO_POINTER (icon_window), child);
+  gtk_widget_show (child);
 }
 
 static void
@@ -375,19 +326,13 @@ pending_message_free (PendingMessage *message)
   g_free (message);
 }
 
-static GdkFilterReturn
-na_tray_manager_handle_client_message_message_data (GdkXEvent *xev,
-                                                    GdkEvent  *event,
-                                                    gpointer   data)
+static void
+na_tray_manager_handle_message_data (NaTrayManager       *manager,
+				     XClientMessageEvent *xevent)
 {
-  XClientMessageEvent *xevent;
-  NaTrayManager       *manager;
-  GList               *p;
-  int                  len;
+  GList *p;
+  int    len;
   
-  xevent  = (XClientMessageEvent *) xev;
-  manager = data;
-
   /* Try to see if we can find the pending message in the list */
   for (p = manager->messages; p; p = p->next)
     {
@@ -421,8 +366,6 @@ na_tray_manager_handle_client_message_message_data (GdkXEvent *xev,
           break;
 	}
     }
-
-  return GDK_FILTER_REMOVE;
 }
 
 static void
@@ -442,26 +385,26 @@ na_tray_manager_handle_begin_message (NaTrayManager       *manager,
   if (!socket)
     return;
 
+  timeout = xevent->data.l[2];
+  len     = xevent->data.l[3];
+  id      = xevent->data.l[4];
+
   /* Check if the same message is already in the queue and remove it if so */
   for (p = manager->messages; p; p = p->next)
     {
-      PendingMessage *msg = p->data;
+      PendingMessage *pmsg = p->data;
 
-      if (xevent->window == msg->window &&
-	  xevent->data.l[4] == msg->id)
+      if (xevent->window == pmsg->window &&
+	  id == pmsg->id)
 	{
 	  /* Hmm, we found it, now remove it */
-	  pending_message_free (msg);
+	  pending_message_free (pmsg);
 	  manager->messages = g_list_remove_link (manager->messages, p);
           g_list_free_1 (p);
 	  break;
 	}
     }
 
-  timeout = xevent->data.l[2];
-  len     = xevent->data.l[3];
-  id      = xevent->data.l[4];
-
   if (len == 0)
     {
       g_signal_emit (manager, manager_signals[MESSAGE_SENT], 0,
@@ -488,6 +431,9 @@ na_tray_manager_handle_cancel_message (NaTrayManager       *manager,
 {
   GList     *p;
   GtkSocket *socket;
+  long       id;
+
+  id = xevent->data.l[2];
   
   /* Check if the message is in the queue and remove it if so */
   for (p = manager->messages; p; p = p->next)
@@ -495,7 +441,7 @@ na_tray_manager_handle_cancel_message (NaTrayManager       *manager,
       PendingMessage *msg = p->data;
 
       if (xevent->window == msg->window &&
-	  xevent->data.l[4] == msg->id)
+	  id == msg->id)
 	{
 	  pending_message_free (msg);
 	  manager->messages = g_list_remove_link (manager->messages, p);
@@ -515,39 +461,6 @@ na_tray_manager_handle_cancel_message (NaTrayManager       *manager,
 }
 
 static GdkFilterReturn
-na_tray_manager_handle_client_message_opcode (GdkXEvent *xev,
-                                              GdkEvent  *event,
-                                              gpointer   data)
-{
-  XClientMessageEvent *xevent;
-  NaTrayManager       *manager;
-
-  xevent  = (XClientMessageEvent *) xev;
-  manager = data;
-
-  switch (xevent->data.l[1])
-    {
-    case SYSTEM_TRAY_REQUEST_DOCK:
-      /* Ignore this one since we don't know on which window this was received
-       * and so we can't know for which screen this is. It will be handled
-       * in na_tray_manager_window_filter() since we also receive it there */
-      break;
-
-    case SYSTEM_TRAY_BEGIN_MESSAGE:
-      na_tray_manager_handle_begin_message (manager, xevent);
-      return GDK_FILTER_REMOVE;
-
-    case SYSTEM_TRAY_CANCEL_MESSAGE:
-      na_tray_manager_handle_cancel_message (manager, xevent);
-      return GDK_FILTER_REMOVE;
-    default:
-      break;
-    }
-
-  return GDK_FILTER_CONTINUE;
-}
-
-static GdkFilterReturn
 na_tray_manager_window_filter (GdkXEvent *xev,
                                GdkEvent  *event,
                                gpointer   data)
@@ -557,8 +470,7 @@ na_tray_manager_window_filter (GdkXEvent *xev,
 
   if (xevent->type == ClientMessage)
     {
-      /* We handle this client message here. See comment in
-       * na_tray_manager_handle_client_message_opcode() for details */
+      /* _NET_SYSTEM_TRAY_OPCODE: SYSTEM_TRAY_REQUEST_DOCK */
       if (xevent->xclient.message_type == manager->opcode_atom &&
           xevent->xclient.data.l[1]    == SYSTEM_TRAY_REQUEST_DOCK)
 	{
@@ -566,6 +478,29 @@ na_tray_manager_window_filter (GdkXEvent *xev,
                                                (XClientMessageEvent *) xevent);
           return GDK_FILTER_REMOVE;
 	}
+      /* _NET_SYSTEM_TRAY_OPCODE: SYSTEM_TRAY_BEGIN_MESSAGE */
+      else if (xevent->xclient.message_type == manager->opcode_atom &&
+               xevent->xclient.data.l[1]    == SYSTEM_TRAY_BEGIN_MESSAGE)
+        {
+          na_tray_manager_handle_begin_message (manager,
+                                                (XClientMessageEvent *) event);
+          return GDK_FILTER_REMOVE;
+        }
+      /* _NET_SYSTEM_TRAY_OPCODE: SYSTEM_TRAY_CANCEL_MESSAGE */
+      else if (xevent->xclient.message_type == manager->opcode_atom &&
+               xevent->xclient.data.l[1]    == SYSTEM_TRAY_CANCEL_MESSAGE)
+        {
+          na_tray_manager_handle_cancel_message (manager,
+                                                 (XClientMessageEvent *) event);
+          return GDK_FILTER_REMOVE;
+        }
+      /* _NET_SYSTEM_TRAY_MESSAGE_DATA */
+      else if (xevent->xclient.message_type == manager->message_data_atom)
+        {
+          na_tray_manager_handle_message_data (manager,
+                                               (XClientMessageEvent *) event);
+          return GDK_FILTER_REMOVE;
+        }
     }
   else if (xevent->type == SelectionClear)
     {
@@ -598,21 +533,24 @@ na_tray_manager_unmanage (NaTrayManager *manager)
   GdkDisplay *display;
   guint32     timestamp;
   GtkWidget  *invisible;
+  GdkWindow  *window;
 
   if (manager->invisible == NULL)
     return;
 
   invisible = manager->invisible;
+  window = gtk_widget_get_window (invisible);
+
   g_assert (GTK_IS_INVISIBLE (invisible));
   g_assert (gtk_widget_get_realized (invisible));
-  g_assert (GDK_IS_WINDOW (invisible->window));
+  g_assert (GDK_IS_WINDOW (window));
   
   display = gtk_widget_get_display (invisible);
   
   if (gdk_selection_owner_get_for_display (display, manager->selection_atom) ==
-      invisible->window)
+      window)
     {
-      timestamp = gdk_x11_get_server_time (invisible->window);      
+      timestamp = gdk_x11_get_server_time (window);
       gdk_selection_owner_set_for_display (display,
                                            NULL,
                                            manager->selection_atom,
@@ -620,10 +558,7 @@ na_tray_manager_unmanage (NaTrayManager *manager)
                                            TRUE);
     }
 
-  //FIXME: we should also use gdk_remove_client_message_filter when it's
-  //available
-  // See bug #351254
-  gdk_window_remove_filter (invisible->window,
+  gdk_window_remove_filter (window,
                             na_tray_manager_window_filter, manager);  
 
   manager->invisible = NULL; /* prior to destroy for reentrancy paranoia */
@@ -636,12 +571,14 @@ static void
 na_tray_manager_set_orientation_property (NaTrayManager *manager)
 {
 #ifdef GDK_WINDOWING_X11
+  GdkWindow  *window;
   GdkDisplay *display;
   Atom        orientation_atom;
   gulong      data[1];
 
-  if (!manager->invisible || !manager->invisible->window)
-    return;
+  g_return_if_fail (manager->invisible != NULL);
+  window = gtk_widget_get_window (manager->invisible);
+  g_return_if_fail (window != NULL);
 
   display = gtk_widget_get_display (manager->invisible);
   orientation_atom = gdk_x11_get_xatom_by_name_for_display (display,
@@ -652,7 +589,7 @@ na_tray_manager_set_orientation_property (NaTrayManager *manager)
 		SYSTEM_TRAY_ORIENTATION_VERT;
 
   XChangeProperty (GDK_DISPLAY_XDISPLAY (display),
-		   GDK_WINDOW_XWINDOW (manager->invisible->window),
+		   GDK_WINDOW_XID (window),
                    orientation_atom,
 		   XA_CARDINAL, 32,
 		   PropModeReplace,
@@ -660,6 +597,150 @@ na_tray_manager_set_orientation_property (NaTrayManager *manager)
 #endif
 }
 
+static void
+na_tray_manager_set_visual_property (NaTrayManager *manager)
+{
+#ifdef GDK_WINDOWING_X11
+  GdkWindow  *window;
+  GdkDisplay *display;
+  Visual     *xvisual;
+  Atom        visual_atom;
+  gulong      data[1];
+
+  g_return_if_fail (manager->invisible != NULL);
+  window = gtk_widget_get_window (manager->invisible);
+  g_return_if_fail (window != NULL);
+
+  /* The visual property is a hint to the tray icons as to what visual they
+   * should use for their windows. If the X server has RGBA colormaps, then
+   * we tell the tray icons to use a RGBA colormap and we'll composite the
+   * icon onto its parents with real transparency. Otherwise, we just tell
+   * the icon to use our colormap, and we'll do some hacks with parent
+   * relative backgrounds to simulate transparency.
+   */
+
+  display = gtk_widget_get_display (manager->invisible);
+  visual_atom = gdk_x11_get_xatom_by_name_for_display (display,
+						       "_NET_SYSTEM_TRAY_VISUAL");
+
+  if (gdk_screen_get_rgba_visual (manager->screen) != NULL &&
+      gdk_display_supports_composite (display))
+    xvisual = GDK_VISUAL_XVISUAL (gdk_screen_get_rgba_visual (manager->screen));
+  else
+    {
+      /* We actually want the visual of the tray where the icons will
+       * be embedded. In almost all cases, this will be the same as the visual
+       * of the screen.
+       */
+      xvisual = GDK_VISUAL_XVISUAL (gdk_screen_get_system_visual (manager->screen));
+    }
+
+  data[0] = XVisualIDFromVisual (xvisual);
+
+  XChangeProperty (GDK_DISPLAY_XDISPLAY (display),
+                   GDK_WINDOW_XID (window),
+                   visual_atom,
+                   XA_VISUALID, 32,
+                   PropModeReplace,
+                   (guchar *) &data, 1);
+#endif
+}
+
+static void
+na_tray_manager_set_padding_property (NaTrayManager *manager)
+{
+#ifdef GDK_WINDOWING_X11
+  GdkWindow  *window;
+  GdkDisplay *display;
+  Atom        atom;
+  gulong      data[1];
+
+  g_return_if_fail (manager->invisible != NULL);
+  window = gtk_widget_get_window (manager->invisible);
+  g_return_if_fail (window != NULL);
+
+  display = gtk_widget_get_display (manager->invisible);
+  atom = gdk_x11_get_xatom_by_name_for_display (display,
+                                                "_NET_SYSTEM_TRAY_PADDING");
+
+  data[0] = manager->padding;
+
+  XChangeProperty (GDK_DISPLAY_XDISPLAY (display),
+                   GDK_WINDOW_XID (window),
+                   atom,
+                   XA_CARDINAL, 32,
+                   PropModeReplace,
+                   (guchar *) &data, 1);
+#endif
+}
+
+static void
+na_tray_manager_set_icon_size_property (NaTrayManager *manager)
+{
+#ifdef GDK_WINDOWING_X11
+  GdkWindow  *window;
+  GdkDisplay *display;
+  Atom        atom;
+  gulong      data[1];
+
+  g_return_if_fail (manager->invisible != NULL);
+  window = gtk_widget_get_window (manager->invisible);
+  g_return_if_fail (window != NULL);
+
+  display = gtk_widget_get_display (manager->invisible);
+  atom = gdk_x11_get_xatom_by_name_for_display (display,
+                                                "_NET_SYSTEM_TRAY_ICON_SIZE");
+
+  data[0] = manager->icon_size;
+
+  XChangeProperty (GDK_DISPLAY_XDISPLAY (display),
+                   GDK_WINDOW_XID (window),
+                   atom,
+                   XA_CARDINAL, 32,
+                   PropModeReplace,
+                   (guchar *) &data, 1);
+#endif
+}
+
+static void
+na_tray_manager_set_colors_property (NaTrayManager *manager)
+{
+#ifdef GDK_WINDOWING_X11
+  GdkWindow  *window;
+  GdkDisplay *display;
+  Atom        atom;
+  gulong      data[12];
+
+  g_return_if_fail (manager->invisible != NULL);
+  window = gtk_widget_get_window (manager->invisible);
+  g_return_if_fail (window != NULL);
+
+  display = gtk_widget_get_display (manager->invisible);
+  atom = gdk_x11_get_xatom_by_name_for_display (display,
+                                                "_NET_SYSTEM_TRAY_COLORS");
+
+  data[0] = manager->fg.red;
+  data[1] = manager->fg.green;
+  data[2] = manager->fg.blue;
+  data[3] = manager->error.red;
+  data[4] = manager->error.green;
+  data[5] = manager->error.blue;
+  data[6] = manager->warning.red;
+  data[7] = manager->warning.green;
+  data[8] = manager->warning.blue;
+  data[9] = manager->success.red;
+  data[10] = manager->success.green;
+  data[11] = manager->success.blue;
+
+  XChangeProperty (GDK_DISPLAY_XDISPLAY (display),
+                   GDK_WINDOW_XID (window),
+                   atom,
+                   XA_CARDINAL, 32,
+                   PropModeReplace,
+                   (guchar *) &data, 12);
+#endif
+}
+
 #ifdef GDK_WINDOWING_X11
 
 static gboolean
@@ -669,6 +750,7 @@ na_tray_manager_manage_screen_x11 (NaTrayManager *manager,
   GdkDisplay *display;
   Screen     *xscreen;
   GtkWidget  *invisible;
+  GdkWindow  *window;
   char       *selection_atom_name;
   guint32     timestamp;
   
@@ -682,6 +764,9 @@ na_tray_manager_manage_screen_x11 (NaTrayManager *manager,
   if (na_tray_manager_check_running_screen_x11 (screen))
     return FALSE;
 #endif
+  
+  manager->screen = screen;
+
   display = gdk_screen_get_display (screen);
   xscreen = GDK_SCREEN_XSCREEN (screen);
   
@@ -696,13 +781,22 @@ na_tray_manager_manage_screen_x11 (NaTrayManager *manager,
   manager->selection_atom = gdk_atom_intern (selection_atom_name, FALSE);
   g_free (selection_atom_name);
 
+  manager->invisible = invisible;
+  g_object_ref (G_OBJECT (manager->invisible));
+
   na_tray_manager_set_orientation_property (manager);
+  na_tray_manager_set_visual_property (manager);
+  na_tray_manager_set_padding_property (manager);
+  na_tray_manager_set_icon_size_property (manager);
+  na_tray_manager_set_colors_property (manager);
   
-  timestamp = gdk_x11_get_server_time (invisible->window);
+  window = gtk_widget_get_window (invisible);
+
+  timestamp = gdk_x11_get_server_time (window);
 
   /* Check if we could set the selection owner successfully */
   if (gdk_selection_owner_set_for_display (display,
-                                           invisible->window,
+                                           window,
                                            manager->selection_atom,
                                            timestamp,
                                            TRUE))
@@ -720,7 +814,7 @@ na_tray_manager_manage_screen_x11 (NaTrayManager *manager,
       xev.data.l[0] = timestamp;
       xev.data.l[1] = gdk_x11_atom_to_xatom_for_display (display,
                                                          manager->selection_atom);
-      xev.data.l[2] = GDK_WINDOW_XWINDOW (invisible->window);
+      xev.data.l[2] = GDK_WINDOW_XID (window);
       xev.data.l[3] = 0;	/* manager specific data */
       xev.data.l[4] = 0;	/* manager specific data */
 
@@ -728,15 +822,14 @@ na_tray_manager_manage_screen_x11 (NaTrayManager *manager,
 		  RootWindowOfScreen (xscreen),
 		  False, StructureNotifyMask, (XEvent *)&xev);
 
-      manager->invisible = invisible;
-      g_object_ref (G_OBJECT (manager->invisible));
-      
       opcode_atom = gdk_atom_intern ("_NET_SYSTEM_TRAY_OPCODE", FALSE);
       manager->opcode_atom = gdk_x11_atom_to_xatom_for_display (display,
                                                                 opcode_atom);
 
       message_data_atom = gdk_atom_intern ("_NET_SYSTEM_TRAY_MESSAGE_DATA",
                                            FALSE);
+      manager->message_data_atom = gdk_x11_atom_to_xatom_for_display (display,
+                                                                      message_data_atom);
 
       /* Add a window filter */
 #if 0
@@ -745,22 +838,17 @@ na_tray_manager_manage_screen_x11 (NaTrayManager *manager,
                         G_CALLBACK (na_tray_manager_selection_clear_event),
                         manager);
 #endif
-      /* This is for SYSTEM_TRAY_REQUEST_DOCK and SelectionClear */
-      gdk_window_add_filter (invisible->window,
+      gdk_window_add_filter (window,
                              na_tray_manager_window_filter, manager);
-      /* This is for SYSTEM_TRAY_BEGIN_MESSAGE and SYSTEM_TRAY_CANCEL_MESSAGE */
-      gdk_display_add_client_message_filter (display, opcode_atom,
-                                             na_tray_manager_handle_client_message_opcode,
-                                             manager);
-      /* This is for _NET_SYSTEM_TRAY_MESSAGE_DATA */
-      gdk_display_add_client_message_filter (display, message_data_atom,
-                                             na_tray_manager_handle_client_message_message_data,
-                                             manager);
       return TRUE;
     }
   else
     {
       gtk_widget_destroy (invisible);
+      g_object_unref (invisible);
+      manager->invisible = NULL;
+
+      manager->screen = NULL;
  
       return FALSE;
     }
@@ -819,80 +907,70 @@ na_tray_manager_check_running (GdkScreen *screen)
 #endif
 }
 
-char *
-na_tray_manager_get_child_title (NaTrayManager      *manager,
-				 NaTrayManagerChild *child)
+void
+na_tray_manager_set_orientation (NaTrayManager  *manager,
+				 GtkOrientation  orientation)
 {
-  char *retval = NULL;
-#ifdef GDK_WINDOWING_X11
-  GdkDisplay *display;
-  Window *child_window;
-  Atom utf8_string, atom, type;
-  int result;
-  int format;
-  gulong nitems;
-  gulong bytes_after;
-  gchar *val;
-
-  g_return_val_if_fail (NA_IS_TRAY_MANAGER (manager), NULL);
-  g_return_val_if_fail (GTK_IS_SOCKET (child), NULL);
-  
-  display = gdk_screen_get_display (manager->screen);
+  g_return_if_fail (NA_IS_TRAY_MANAGER (manager));
 
-  child_window = g_object_get_data (G_OBJECT (child),
-				    "na-tray-child-window");
+  if (manager->orientation != orientation)
+    {
+      manager->orientation = orientation;
 
-  utf8_string = gdk_x11_get_xatom_by_name_for_display (display, "UTF8_STRING");
-  atom = gdk_x11_get_xatom_by_name_for_display (display, "_NET_WM_NAME");
+      na_tray_manager_set_orientation_property (manager);
 
-  gdk_error_trap_push ();
+      g_object_notify (G_OBJECT (manager), "orientation");
+    }
+}
 
-  result = XGetWindowProperty (GDK_DISPLAY_XDISPLAY (display),
-			       *child_window,
-			       atom,
-			       0, G_MAXLONG,
-			       False, utf8_string,
-			       &type, &format, &nitems,
-			       &bytes_after, (guchar **)(gpointer)&val);
-  
-  if (gdk_error_trap_pop () || result != Success)
-    return NULL;
+void
+na_tray_manager_set_padding (NaTrayManager *manager,
+                             gint           padding)
+{
+  g_return_if_fail (NA_IS_TRAY_MANAGER (manager));
 
-  if (type != utf8_string ||
-      format != 8 ||
-      nitems == 0)
+  if (manager->padding != padding)
     {
-      if (val)
-	XFree (val);
-      return NULL;
-    }
+      manager->padding = padding;
 
-  if (!g_utf8_validate (val, nitems, NULL))
-    {
-      XFree (val);
-      return NULL;
+      na_tray_manager_set_padding_property (manager);
     }
+}
+
+void
+na_tray_manager_set_icon_size (NaTrayManager *manager,
+                               gint           icon_size)
+{
+  g_return_if_fail (NA_IS_TRAY_MANAGER (manager));
 
-  retval = g_strndup (val, nitems);
+  if (manager->icon_size != icon_size)
+    {
+      manager->icon_size = icon_size;
 
-  XFree (val);
-#endif
-  return retval;
+      na_tray_manager_set_icon_size_property (manager);
+    }
 }
 
 void
-na_tray_manager_set_orientation (NaTrayManager  *manager,
-				 GtkOrientation  orientation)
+na_tray_manager_set_colors (NaTrayManager *manager,
+                            GdkColor      *fg,
+                            GdkColor      *error,
+                            GdkColor      *warning,
+                            GdkColor      *success)
 {
   g_return_if_fail (NA_IS_TRAY_MANAGER (manager));
 
-  if (manager->orientation != orientation)
+  if (!gdk_color_equal (&manager->fg, fg) ||
+      !gdk_color_equal (&manager->error, error) ||
+      !gdk_color_equal (&manager->warning, warning) ||
+      !gdk_color_equal (&manager->success, success))
     {
-      manager->orientation = orientation;
+      manager->fg = *fg;
+      manager->error = *error;
+      manager->warning = *warning;
+      manager->success = *success;
 
-      na_tray_manager_set_orientation_property (manager);
-
-      g_object_notify (G_OBJECT (manager), "orientation");
+      na_tray_manager_set_colors_property (manager);
     }
 }
 
diff --git a/applets/systray/na-tray-manager.h b/applets/systray/na-tray-manager.h
index a1781a7..0408959 100644
--- a/applets/systray/na-tray-manager.h
+++ b/applets/systray/na-tray-manager.h
@@ -24,10 +24,12 @@
 #ifndef __NA_TRAY_MANAGER_H__
 #define __NA_TRAY_MANAGER_H__
 
-#include <gtk/gtk.h>
 #ifdef GDK_WINDOWING_X11
 #include <gdk/gdkx.h>
 #endif
+#include <gtk/gtk.h>
+
+#include "na-tray-child.h"
 
 G_BEGIN_DECLS
 
@@ -40,7 +42,6 @@ G_BEGIN_DECLS
 	
 typedef struct _NaTrayManager	    NaTrayManager;
 typedef struct _NaTrayManagerClass  NaTrayManagerClass;
-typedef struct _NaTrayManagerChild  NaTrayManagerChild;
 
 struct _NaTrayManager
 {
@@ -49,11 +50,18 @@ struct _NaTrayManager
 #ifdef GDK_WINDOWING_X11
   GdkAtom selection_atom;
   Atom    opcode_atom;
+  Atom    message_data_atom;
 #endif
   
   GtkWidget *invisible;
   GdkScreen *screen;
   GtkOrientation orientation;
+  gint padding;
+  gint icon_size;
+  GdkColor fg;
+  GdkColor error;
+  GdkColor warning;
+  GdkColor success;
 
   GList *messages;
   GHashTable *socket_table;
@@ -64,18 +72,18 @@ struct _NaTrayManagerClass
   GObjectClass parent_class;
 
   void (* tray_icon_added)   (NaTrayManager      *manager,
-			      NaTrayManagerChild *child);
+			      NaTrayChild        *child);
   void (* tray_icon_removed) (NaTrayManager      *manager,
-			      NaTrayManagerChild *child);
+			      NaTrayChild        *child);
 
   void (* message_sent)      (NaTrayManager      *manager,
-			      NaTrayManagerChild *child,
+			      NaTrayChild        *child,
 			      const gchar        *message,
 			      glong               id,
 			      glong               timeout);
   
   void (* message_cancelled) (NaTrayManager      *manager,
-			      NaTrayManagerChild *child,
+			      NaTrayChild        *child,
 			      glong               id);
 
   void (* lost_selection)    (NaTrayManager      *manager);
@@ -87,11 +95,19 @@ gboolean        na_tray_manager_check_running   (GdkScreen          *screen);
 NaTrayManager  *na_tray_manager_new             (void);
 gboolean        na_tray_manager_manage_screen   (NaTrayManager      *manager,
 						 GdkScreen          *screen);
-char           *na_tray_manager_get_child_title (NaTrayManager      *manager,
-						 NaTrayManagerChild *child);
 void            na_tray_manager_set_orientation (NaTrayManager      *manager,
 						 GtkOrientation      orientation);
 GtkOrientation  na_tray_manager_get_orientation (NaTrayManager      *manager);
+void            na_tray_manager_set_padding     (NaTrayManager      *manager,
+						 gint                padding);
+void            na_tray_manager_set_icon_size   (NaTrayManager      *manager,
+						 gint                padding);
+void            na_tray_manager_set_colors      (NaTrayManager      *manager,
+						 GdkColor           *fg,
+						 GdkColor           *error,
+						 GdkColor           *warning,
+						 GdkColor           *success);
+
 
 G_END_DECLS
 
diff --git a/applets/systray/na-tray.c b/applets/systray/na-tray.c
new file mode 100644
index 0000000..7da908f
--- /dev/null
+++ b/applets/systray/na-tray.c
@@ -0,0 +1,863 @@
+/*
+ * Copyright (C) 2002 Red Hat, Inc.
+ * Copyright (C) 2003-2006 Vincent Untz
+ * Copyright (C) 2007 Christian Persch
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of the
+ * License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ * 
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
+ * 02111-1307, USA.
+ */
+
+#include <config.h>
+#include <string.h>
+
+#include <gtk/gtk.h>
+
+#include "na-tray-manager.h"
+#include "fixedtip.h"
+
+#include "na-tray.h"
+
+#define ICON_SPACING 1
+#define MIN_BOX_SIZE 3
+
+typedef struct
+{
+  NaTrayManager *tray_manager;
+  GSList        *all_trays;
+  GHashTable    *icon_table;
+  GHashTable    *tip_table;
+} TraysScreen;
+
+struct _NaTrayPrivate
+{
+  GdkScreen   *screen;
+  TraysScreen *trays_screen;
+
+  GtkWidget *box;
+  GtkWidget *frame;
+
+  guint idle_redraw_id;
+
+  GtkOrientation orientation;
+};
+
+typedef struct
+{
+  char  *text;
+  glong  id;
+  glong  timeout;
+} IconTipBuffer;
+
+typedef struct
+{
+  NaTray *tray;      /* tray containing the tray icon */
+  GtkWidget  *icon;      /* tray icon sending the message */
+  GtkWidget  *fixedtip;
+  guint       source_id;
+  glong       id;        /* id of the current message */
+  GSList     *buffer;    /* buffered messages */
+} IconTip;
+
+enum
+{
+  PROP_0,
+  PROP_ORIENTATION,
+  PROP_SCREEN
+};
+
+static gboolean     initialized   = FALSE;
+static TraysScreen *trays_screens = NULL;
+
+static void icon_tip_show_next (IconTip *icontip);
+
+/* NaTray */
+
+G_DEFINE_TYPE (NaTray, na_tray, GTK_TYPE_BIN)
+
+static NaTray *
+get_tray (TraysScreen *trays_screen)
+{
+  if (trays_screen->all_trays == NULL)
+    return NULL;
+  
+  return trays_screen->all_trays->data;
+}
+
+const char *ordered_roles[] = {
+  "keyboard",
+  "volume",
+  "bluetooth",
+  "network",
+  "battery",
+  NULL
+};
+
+const char *wmclass_roles[] = {
+  "Bluetooth-applet", "bluetooth",
+  "Gnome-volume-control-applet", "volume",
+  "Nm-applet", "network",
+  "Gnome-power-manager", "battery",
+  "keyboard", "keyboard",
+  NULL,
+};
+
+static const char *
+find_role (const char *wmclass)
+{
+  int i;
+
+  for (i = 0; wmclass_roles[i]; i += 2)
+    {
+      if (strcmp (wmclass, wmclass_roles[i]) == 0)
+        return wmclass_roles[i + 1];
+    }
+
+  return NULL;
+}
+
+static int
+find_role_position (const char *role)
+{
+  int i;
+
+  for (i = 0; ordered_roles[i]; i++)
+    {
+      if (strcmp (role, ordered_roles[i]) == 0)
+        break;
+    }
+
+  return i + 1;
+}
+
+static int
+find_icon_position (NaTray    *tray,
+                    GtkWidget *icon)
+{
+  NaTrayPrivate *priv;
+  int            position;
+  char          *class_a;
+  const char    *role;
+  int            role_position;
+  GList         *l, *children;
+
+  /* We insert the icons with a known roles in a specific order (the one
+   * defined by ordered_roles), and all other icons at the beginning of the box
+   * (left in LTR). */
+
+  priv = tray->priv;
+  position = 0;
+
+  class_a = NULL;
+  na_tray_child_get_wm_class (NA_TRAY_CHILD (icon), NULL, &class_a);
+  if (!class_a)
+    return position;
+
+  role = find_role (class_a);
+  g_free (class_a);
+  if (!role)
+    return position;
+
+  role_position = find_role_position (role);
+  g_object_set_data (G_OBJECT (icon), "role-position", GINT_TO_POINTER (role_position));
+
+  children = gtk_container_get_children (GTK_CONTAINER (priv->box));
+  for (l = g_list_last (children); l; l = l->prev)
+    {
+      GtkWidget *child = l->data;
+      int        rp;
+
+      rp = GPOINTER_TO_INT (g_object_get_data (G_OBJECT (child), "role-position"));
+      if (rp == 0 || rp < role_position)
+        {
+          position = g_list_index (children, child) + 1;
+          break;
+        }
+    }
+  g_list_free (children);
+
+  /* should never happen, but it doesn't hurt to be on the safe side */
+  if (position < 0)
+    position = 0;
+
+  return position;
+}
+
+static void
+tray_added (NaTrayManager *manager,
+            GtkWidget     *icon,
+            TraysScreen   *trays_screen)
+{
+  NaTray *tray;
+  NaTrayPrivate *priv;
+  int position;
+
+  tray = get_tray (trays_screen);
+  if (tray == NULL)
+    return;
+
+  priv = tray->priv;
+
+  g_assert (priv->trays_screen == trays_screen);
+
+  g_hash_table_insert (trays_screen->icon_table, icon, tray);
+
+  position = find_icon_position (tray, icon);
+  gtk_box_pack_start (GTK_BOX (priv->box), icon, FALSE, FALSE, 0);
+  gtk_box_reorder_child (GTK_BOX (priv->box), icon, position);
+
+  gtk_widget_show (icon);
+}
+
+static void
+tray_removed (NaTrayManager *manager,
+              GtkWidget     *icon,
+              TraysScreen   *trays_screen)
+{
+  NaTray *tray;
+  NaTrayPrivate *priv;
+
+  tray = g_hash_table_lookup (trays_screen->icon_table, icon);
+  if (tray == NULL)
+    return;
+
+  priv = tray->priv;
+
+  g_assert (tray->priv->trays_screen == trays_screen);
+
+  gtk_container_remove (GTK_CONTAINER (priv->box), icon);
+
+  g_hash_table_remove (trays_screen->icon_table, icon);
+  /* this will also destroy the tip associated to this icon */
+  g_hash_table_remove (trays_screen->tip_table, icon);
+}
+
+static void
+icon_tip_buffer_free (gpointer data,
+                      gpointer userdata)
+{
+  IconTipBuffer *buffer;
+
+  buffer = data;
+
+  g_free (buffer->text);
+  buffer->text = NULL;
+
+  g_free (buffer);
+}
+
+static void
+icon_tip_free (gpointer data)
+{
+  IconTip *icontip;
+
+  if (data == NULL)
+    return;
+
+  icontip = data;
+
+  if (icontip->fixedtip != NULL)
+    gtk_widget_destroy (GTK_WIDGET (icontip->fixedtip));
+  icontip->fixedtip = NULL;
+
+  if (icontip->source_id != 0)
+    g_source_remove (icontip->source_id);
+  icontip->source_id = 0;
+
+  if (icontip->buffer != NULL)
+    {
+      g_slist_foreach (icontip->buffer, icon_tip_buffer_free, NULL);
+      g_slist_free (icontip->buffer);
+    }
+  icontip->buffer = NULL;
+
+  g_free (icontip);
+}
+
+static int
+icon_tip_buffer_compare (gconstpointer a,
+                         gconstpointer b)
+{
+  const IconTipBuffer *buffer_a = a;
+  const IconTipBuffer *buffer_b = b;
+
+  if (buffer_a == NULL || buffer_b == NULL)
+    return !(buffer_a == buffer_b);
+
+  return buffer_a->id - buffer_b->id;
+}
+
+static void
+icon_tip_show_next_clicked (GtkWidget *widget,
+                            gpointer   data)
+{
+  icon_tip_show_next ((IconTip *) data);
+}
+
+static gboolean
+icon_tip_show_next_timeout (gpointer data)
+{
+  IconTip *icontip = (IconTip *) data;
+
+  icon_tip_show_next (icontip);
+
+  return FALSE;
+}
+
+static void
+icon_tip_show_next (IconTip *icontip)
+{
+  IconTipBuffer *buffer;
+
+  if (icontip->buffer == NULL)
+    {
+      /* this will also destroy the tip window */
+      g_hash_table_remove (icontip->tray->priv->trays_screen->tip_table,
+                           icontip->icon);
+      return;
+    }
+
+  if (icontip->source_id != 0)
+    g_source_remove (icontip->source_id);
+  icontip->source_id = 0;
+
+  buffer = icontip->buffer->data;
+  icontip->buffer = g_slist_remove (icontip->buffer, buffer);
+
+  if (icontip->fixedtip == NULL)
+    {
+      icontip->fixedtip = na_fixed_tip_new (icontip->icon,
+                                            na_tray_get_orientation (icontip->tray));
+
+      g_signal_connect (icontip->fixedtip, "clicked",
+                        G_CALLBACK (icon_tip_show_next_clicked), icontip);
+    }
+
+  na_fixed_tip_set_markup (icontip->fixedtip, buffer->text);
+
+  if (!gtk_widget_get_mapped (icontip->fixedtip))
+    gtk_widget_show (icontip->fixedtip);
+
+  icontip->id = buffer->id;
+
+  if (buffer->timeout > 0)
+    icontip->source_id = g_timeout_add_seconds (buffer->timeout,
+                                                icon_tip_show_next_timeout,
+                                                icontip);
+
+  icon_tip_buffer_free (buffer, NULL);
+}
+
+static void
+message_sent (NaTrayManager *manager,
+              GtkWidget     *icon,
+              const char    *text,
+              glong          id,
+              glong          timeout,
+              TraysScreen   *trays_screen)
+{
+  IconTip       *icontip;
+  IconTipBuffer  find_buffer;
+  IconTipBuffer *buffer;
+  gboolean       show_now;
+
+  icontip = g_hash_table_lookup (trays_screen->tip_table, icon);
+
+  find_buffer.id = id;
+  if (icontip && 
+      (icontip->id == id ||
+       g_slist_find_custom (icontip->buffer, &find_buffer,
+                            icon_tip_buffer_compare) != NULL))
+    /* we already have this message, so ignore it */
+    /* FIXME: in an ideal world, we'd remember all the past ids and ignore them
+     * too */
+    return;
+
+  show_now = FALSE;
+
+  if (icontip == NULL)
+    {
+      NaTray *tray;
+
+      tray = g_hash_table_lookup (trays_screen->icon_table, icon);
+      if (tray == NULL)
+        {
+          /* We don't know about the icon sending the message, so ignore it.
+           * But this should never happen since NaTrayManager shouldn't send
+           * us the message if there's no socket for it. */
+          g_critical ("Ignoring a message sent by a tray icon "
+                      "we don't know: \"%s\".\n", text);
+          return;
+        }
+
+      icontip = g_new0 (IconTip, 1);
+      icontip->tray = tray;
+      icontip->icon = icon;
+
+      g_hash_table_insert (trays_screen->tip_table, icon, icontip);
+
+      show_now = TRUE;
+    }
+
+  buffer = g_new0 (IconTipBuffer, 1);
+
+  buffer->text    = g_strdup (text);
+  buffer->id      = id;
+  buffer->timeout = timeout;
+
+  icontip->buffer = g_slist_append (icontip->buffer, buffer);
+
+  if (show_now)
+    icon_tip_show_next (icontip);
+}
+
+static void
+message_cancelled (NaTrayManager *manager,
+                   GtkWidget     *icon,
+                   glong          id,
+                   TraysScreen   *trays_screen)
+{
+  IconTip       *icontip;
+  IconTipBuffer  find_buffer;
+  GSList        *cancel_buffer_l;
+  IconTipBuffer *cancel_buffer;
+
+  icontip = g_hash_table_lookup (trays_screen->tip_table, icon);
+  if (icontip == NULL)
+    return;
+
+  if (icontip->id == id)
+    {
+      icon_tip_show_next (icontip);
+      return;
+    }
+
+  find_buffer.id = id;
+  cancel_buffer_l = g_slist_find_custom (icontip->buffer, &find_buffer,
+                                         icon_tip_buffer_compare);
+  if (cancel_buffer_l == NULL)
+    return;
+
+  cancel_buffer = cancel_buffer_l->data;
+  icon_tip_buffer_free (cancel_buffer, NULL);
+
+  icontip->buffer = g_slist_remove_link (icontip->buffer, cancel_buffer_l);
+  g_slist_free_1 (cancel_buffer_l);
+}
+
+static void
+update_orientation_for_messages (gpointer key,
+                                 gpointer value,
+                                 gpointer data)
+{
+  NaTray *tray;
+  IconTip    *icontip;
+
+  if (value == NULL)
+    return;
+
+  icontip = value;
+  tray    = data;
+  if (icontip->tray != tray)
+    return;
+
+  if (icontip->fixedtip)
+    na_fixed_tip_set_orientation (icontip->fixedtip, tray->priv->orientation);
+}
+
+static void
+update_size_and_orientation (NaTray *tray)
+{
+  NaTrayPrivate *priv = tray->priv;
+
+  gtk_orientable_set_orientation (GTK_ORIENTABLE (priv->box), priv->orientation);
+
+  /* This only happens when setting the property during object construction */
+  if (!priv->trays_screen)
+    return;
+
+  g_hash_table_foreach (priv->trays_screen->tip_table,
+                        update_orientation_for_messages, tray);
+
+  if (get_tray (priv->trays_screen) == tray)
+    na_tray_manager_set_orientation (priv->trays_screen->tray_manager,
+                                     priv->orientation);
+
+  /* note, you want this larger if the frame has non-NONE relief by default. */
+  switch (priv->orientation)
+    {
+    case GTK_ORIENTATION_VERTICAL:
+      /* Give box a min size so the frame doesn't look dumb */
+      gtk_widget_set_size_request (priv->box, MIN_BOX_SIZE, -1);
+      break;
+    case GTK_ORIENTATION_HORIZONTAL:
+      gtk_widget_set_size_request (priv->box, -1, MIN_BOX_SIZE);
+      break;
+    }
+}
+
+/* Children with alpha channels have been set to be composited by calling
+ * gdk_window_set_composited(). We need to paint these children ourselves.
+ */
+static void
+na_tray_draw_icon (GtkWidget *widget,
+		   gpointer   data)
+{
+  cairo_t *cr = (cairo_t *) data;
+
+  if (na_tray_child_has_alpha (NA_TRAY_CHILD (widget)))
+    {
+      GtkAllocation allocation;
+
+      gtk_widget_get_allocation (widget, &allocation);
+
+      cairo_save (cr);
+      gdk_cairo_set_source_window (cr,
+                                   gtk_widget_get_window (widget),
+				   allocation.x,
+				   allocation.y);
+      cairo_rectangle (cr, allocation.x, allocation.y, allocation.width, allocation.height);
+      cairo_clip (cr);
+      cairo_paint (cr);
+      cairo_restore (cr);
+    }
+}
+
+static void
+na_tray_draw_box (GtkWidget *box,
+		  cairo_t   *cr)
+{
+  gtk_container_foreach (GTK_CONTAINER (box), na_tray_draw_icon, cr);
+}
+
+static void
+na_tray_init (NaTray *tray)
+{
+  NaTrayPrivate *priv;
+
+  priv = tray->priv = G_TYPE_INSTANCE_GET_PRIVATE (tray, NA_TYPE_TRAY, NaTrayPrivate);
+
+  priv->screen = NULL;
+  priv->orientation = GTK_ORIENTATION_HORIZONTAL;
+
+  priv->frame = gtk_alignment_new (0.5, 0.5, 1.0, 1.0);
+  gtk_container_add (GTK_CONTAINER (tray), priv->frame);
+  gtk_widget_show (priv->frame);
+
+  priv->box = gtk_box_new (priv->orientation, ICON_SPACING);
+  g_signal_connect (priv->box, "draw",
+                    G_CALLBACK (na_tray_draw_box), NULL);
+  gtk_container_add (GTK_CONTAINER (priv->frame), priv->box);
+  gtk_widget_show (priv->box);
+}
+
+static GObject *
+na_tray_constructor (GType type,
+                     guint n_construct_properties,
+                     GObjectConstructParam *construct_params)
+{
+  GObject *object;
+  NaTray *tray;
+  NaTrayPrivate *priv;
+  int screen_number;
+
+  object = G_OBJECT_CLASS (na_tray_parent_class)->constructor (type,
+                                                               n_construct_properties,
+                                                               construct_params);
+  tray = NA_TRAY (object);
+  priv = tray->priv;
+
+  g_assert (priv->screen != NULL);
+
+  if (!initialized)
+    {
+      GdkDisplay *display;
+      int n_screens;
+
+      display = gdk_display_get_default ();
+      n_screens = gdk_display_get_n_screens (display);
+      trays_screens = g_new0 (TraysScreen, n_screens);
+      initialized = TRUE;
+    }
+
+  screen_number = gdk_screen_get_number (priv->screen);
+
+  if (trays_screens [screen_number].tray_manager == NULL)
+    {
+      NaTrayManager *tray_manager;
+
+      tray_manager = na_tray_manager_new ();
+
+      if (na_tray_manager_manage_screen (tray_manager, priv->screen))
+        {
+          trays_screens [screen_number].tray_manager = tray_manager;
+
+          g_signal_connect (tray_manager, "tray_icon_added",
+                            G_CALLBACK (tray_added),
+                            &trays_screens [screen_number]);
+          g_signal_connect (tray_manager, "tray_icon_removed",
+                            G_CALLBACK (tray_removed),
+                            &trays_screens [screen_number]);
+          g_signal_connect (tray_manager, "message_sent",
+                            G_CALLBACK (message_sent),
+                            &trays_screens [screen_number]);
+          g_signal_connect (tray_manager, "message_cancelled",
+                            G_CALLBACK (message_cancelled),
+                            &trays_screens [screen_number]);
+
+          trays_screens [screen_number].icon_table = g_hash_table_new (NULL,
+                                                                       NULL);
+          trays_screens [screen_number].tip_table = g_hash_table_new_full (
+                                                                NULL,
+                                                                NULL,
+                                                                NULL,
+                                                                icon_tip_free);
+        }
+      else
+        {
+          g_printerr ("System tray didn't get the system tray manager selection for screen %d\n",
+		      screen_number);
+          g_object_unref (tray_manager);
+        }
+    }
+      
+  priv->trays_screen = &trays_screens [screen_number];
+  trays_screens [screen_number].all_trays = g_slist_append (trays_screens [screen_number].all_trays,
+                                                            tray);
+
+  update_size_and_orientation (tray);
+
+  return object;
+}
+
+static void
+na_tray_dispose (GObject *object)
+{
+  NaTray *tray = NA_TRAY (object);
+  NaTrayPrivate *priv = tray->priv;
+  TraysScreen *trays_screen = priv->trays_screen;
+
+  if (trays_screen != NULL)
+    {
+      trays_screen->all_trays = g_slist_remove (trays_screen->all_trays, tray);
+
+      if (trays_screen->all_trays == NULL)
+        {
+          /* Make sure we drop the manager selection */
+          g_object_unref (trays_screen->tray_manager);
+          trays_screen->tray_manager = NULL;
+
+          g_hash_table_destroy (trays_screen->icon_table);
+          trays_screen->icon_table = NULL;
+
+          g_hash_table_destroy (trays_screen->tip_table);
+          trays_screen->tip_table = NULL;
+        }
+      else
+        {
+          NaTray *new_tray;
+
+          new_tray = get_tray (trays_screen);
+          if (new_tray != NULL)
+            na_tray_manager_set_orientation (trays_screen->tray_manager,
+                                             na_tray_get_orientation (new_tray));
+        }
+    }
+
+  priv->trays_screen = NULL;
+
+  if (priv->idle_redraw_id != 0)
+    {
+      g_source_remove (priv->idle_redraw_id);
+      priv->idle_redraw_id = 0;
+    }
+
+  G_OBJECT_CLASS (na_tray_parent_class)->dispose (object);
+}
+
+static void
+na_tray_set_property (GObject      *object,
+		      guint         prop_id,
+		      const GValue *value,
+		      GParamSpec   *pspec)
+{
+  NaTray *tray = NA_TRAY (object);
+  NaTrayPrivate *priv = tray->priv;
+
+  switch (prop_id)
+    {
+    case PROP_ORIENTATION:
+      na_tray_set_orientation (tray, g_value_get_enum (value));
+      break;
+    case PROP_SCREEN:
+      priv->screen = g_value_get_object (value);
+      break;
+    default:
+      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, prop_id, pspec);
+      break;
+    }
+}
+
+static void
+na_tray_get_preferred_width (GtkWidget *widget,
+                             gint      *minimal_width,
+                             gint      *natural_width)
+{
+  gtk_widget_get_preferred_width (gtk_bin_get_child (GTK_BIN (widget)),
+                                  minimal_width,
+                                  natural_width);
+}
+
+static void
+na_tray_get_preferred_height (GtkWidget *widget,
+                              gint      *minimal_height,
+                              gint      *natural_height)
+{
+  gtk_widget_get_preferred_height (gtk_bin_get_child (GTK_BIN (widget)),
+                                   minimal_height,
+                                   natural_height);
+}
+
+static void
+na_tray_size_allocate (GtkWidget        *widget,
+                       GtkAllocation    *allocation)
+{
+  gtk_widget_size_allocate (gtk_bin_get_child (GTK_BIN (widget)), allocation);
+  gtk_widget_set_allocation (widget, allocation);
+}
+
+static void
+na_tray_class_init (NaTrayClass *klass)
+{
+  GObjectClass *gobject_class = G_OBJECT_CLASS (klass);
+  GtkWidgetClass *widget_class = GTK_WIDGET_CLASS (klass);
+
+  gobject_class->constructor = na_tray_constructor;
+  gobject_class->set_property = na_tray_set_property;
+  gobject_class->dispose = na_tray_dispose;
+  widget_class->get_preferred_width = na_tray_get_preferred_width;
+  widget_class->get_preferred_height = na_tray_get_preferred_height;
+  widget_class->size_allocate = na_tray_size_allocate;
+
+  g_object_class_install_property
+    (gobject_class,
+     PROP_ORIENTATION,
+     g_param_spec_enum ("orientation", "orientation", "orientation",
+		        GTK_TYPE_ORIENTATION,
+			GTK_ORIENTATION_HORIZONTAL,
+			G_PARAM_WRITABLE |
+			G_PARAM_CONSTRUCT_ONLY |
+			G_PARAM_STATIC_NAME |
+			G_PARAM_STATIC_NICK |
+			G_PARAM_STATIC_BLURB));
+  
+  g_object_class_install_property
+    (gobject_class,
+     PROP_SCREEN,
+     g_param_spec_object ("screen", "screen", "screen",
+			  GDK_TYPE_SCREEN,
+			  G_PARAM_WRITABLE |
+			  G_PARAM_CONSTRUCT_ONLY |
+			  G_PARAM_STATIC_NAME |
+			  G_PARAM_STATIC_NICK |
+			  G_PARAM_STATIC_BLURB));
+
+  g_type_class_add_private (gobject_class, sizeof (NaTrayPrivate));
+}
+
+NaTray *
+na_tray_new_for_screen (GdkScreen      *screen,
+		        GtkOrientation  orientation)
+{
+  return g_object_new (NA_TYPE_TRAY,
+		       "screen", screen,
+		       "orientation", orientation,
+		       NULL);
+}
+
+void
+na_tray_set_orientation (NaTray         *tray,
+			 GtkOrientation  orientation)
+{
+  NaTrayPrivate *priv = tray->priv;
+
+  if (orientation == priv->orientation)
+    return;
+  
+  priv->orientation = orientation;
+
+  update_size_and_orientation (tray);
+}
+
+GtkOrientation
+na_tray_get_orientation (NaTray *tray)
+{
+  return tray->priv->orientation;
+}
+
+static gboolean
+idle_redraw_cb (NaTray *tray)
+{
+  NaTrayPrivate *priv = tray->priv;
+
+  gtk_container_foreach (GTK_CONTAINER (priv->box), (GtkCallback)na_tray_child_force_redraw, tray);
+  
+  priv->idle_redraw_id = 0;
+
+  return FALSE;
+}
+
+void
+na_tray_set_padding (NaTray *tray,
+                     gint    padding)
+{
+  NaTrayPrivate *priv = tray->priv;
+
+  if (get_tray (priv->trays_screen) == tray)
+    na_tray_manager_set_padding (priv->trays_screen->tray_manager, padding);
+}
+
+void
+na_tray_set_icon_size (NaTray *tray,
+                       gint    size)
+{
+  NaTrayPrivate *priv = tray->priv;
+
+  if (get_tray (priv->trays_screen) == tray)
+    na_tray_manager_set_icon_size (priv->trays_screen->tray_manager, size);
+}
+
+void
+na_tray_set_colors (NaTray   *tray,
+                    GdkColor *fg,
+                    GdkColor *error,
+                    GdkColor *warning,
+                    GdkColor *success)
+{
+  NaTrayPrivate *priv = tray->priv;
+
+  if (get_tray (priv->trays_screen) == tray)
+    na_tray_manager_set_colors (priv->trays_screen->tray_manager, fg, error, warning, success);
+}
+
+void
+na_tray_force_redraw (NaTray *tray)
+{
+  NaTrayPrivate *priv = tray->priv;
+
+  /* Force the icons to redraw their backgrounds.
+   */
+  if (priv->idle_redraw_id == 0)
+    priv->idle_redraw_id = g_idle_add ((GSourceFunc) idle_redraw_cb, tray);
+}
diff --git a/applets/systray/na-tray.h b/applets/systray/na-tray.h
new file mode 100644
index 0000000..8fd7db4
--- /dev/null
+++ b/applets/systray/na-tray.h
@@ -0,0 +1,76 @@
+/* -*- Mode: C; tab-width: 8; indent-tabs-mode: t; c-basic-offset: 8 -*- */
+/* na-tray-tray.h
+ * Copyright (C) 2002 Anders Carlsson <andersca@gnu.org>
+ * Copyright (C) 2003-2006 Vincent Untz
+ *
+ * This library is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU Lesser General Public
+ * License as published by the Free Software Foundation; either
+ * version 2 of the License, or (at your option) any later version.
+ *
+ * This library is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * Lesser General Public License for more details.
+ *
+ * You should have received a copy of the GNU Lesser General Public
+ * License along with this library; if not, write to the
+ * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
+ * Boston, MA 02111-1307, USA.
+ *
+ * Used to be: eggtraytray.h
+ */
+
+#ifndef __NA_TRAY_H__
+#define __NA_TRAY_H__
+
+#ifdef GDK_WINDOWING_X11
+#include <gdk/gdkx.h>
+#endif
+#include <gtk/gtk.h>
+
+G_BEGIN_DECLS
+
+#define NA_TYPE_TRAY			(na_tray_get_type ())
+#define NA_TRAY(obj)			(G_TYPE_CHECK_INSTANCE_CAST ((obj), NA_TYPE_TRAY, NaTray))
+#define NA_TRAY_CLASS(klass)		(G_TYPE_CHECK_CLASS_CAST ((klass), NA_TYPE_TRAY, NaTrayClass))
+#define NA_IS_TRAY(obj)			(G_TYPE_CHECK_INSTANCE_TYPE ((obj), NA_TYPE_TRAY))
+#define NA_IS_TRAY_CLASS(klass)		(G_TYPE_CHECK_CLASS_TYPE ((klass), NA_TYPE_TRAY))
+#define NA_TRAY_GET_CLASS(obj)		(G_TYPE_INSTANCE_GET_CLASS ((obj), NA_TYPE_TRAY, NaTrayClass))
+	
+typedef struct _NaTray		NaTray;
+typedef struct _NaTrayPrivate	NaTrayPrivate;
+typedef struct _NaTrayClass	NaTrayClass;
+
+struct _NaTray
+{
+  GtkBin parent_instance;
+
+  NaTrayPrivate *priv;
+};
+
+struct _NaTrayClass
+{
+  GtkBinClass parent_class;
+};
+
+GType           na_tray_get_type        (void);
+NaTray         *na_tray_new_for_screen  (GdkScreen     *screen,
+					 GtkOrientation orientation);
+void            na_tray_set_orientation	(NaTray        *tray,
+					 GtkOrientation orientation);
+GtkOrientation  na_tray_get_orientation (NaTray        *tray);
+void            na_tray_set_padding     (NaTray        *tray,
+					 gint           padding);
+void            na_tray_set_icon_size   (NaTray        *tray,
+					 gint           icon_size);
+void            na_tray_set_colors      (NaTray        *tray,
+					 GdkColor      *fg,
+					 GdkColor      *error,
+					 GdkColor      *warning,
+					 GdkColor      *success);
+void		na_tray_force_redraw	(NaTray        *tray);
+
+G_END_DECLS
+
+#endif /* __NA_TRAY_H__ */
diff --git a/applets/systray/systray.c b/applets/systray/systray.c
index 71736dc..39698a8 100644
--- a/applets/systray/systray.c
+++ b/applets/systray/systray.c
@@ -1,7 +1,9 @@
-/* 
- * (C) 2006 OpenedHand Ltd.
+/* -*- Mode: C; tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 8 -*- */
+/*
+ * (C) 2006-2013 Intel Corp
  *
  * Author: Jorn Baayen <jorn@openedhand.com>
+ *         Ross Burton <ross.burton@intel.com>
  *
  * Licensed under the GPL v2 or greater.
  */
@@ -10,98 +12,39 @@
 #include <gtk/gtk.h>
 #include <matchbox-panel/mb-panel.h>
 
-#include "na-tray-manager.h"
-
-/* We need to force the redraw like this because gtk_widget_queue_draw ()
- * doesn't help.
- */
+#include "na-tray.h"
 
 static void
-force_icon_redraw (GtkWidget *box)
+on_realize (GtkWidget *widget, gpointer user_data)
 {
-       gtk_widget_hide (box);
-       gtk_widget_show (box);
-}
+  GdkScreen *screen;
+  GtkWidget *tray;
+  GtkOrientation orientation;
 
-static void
-style_set_cb (GtkWidget *widget, 
-              GtkStyle  *old_style, 
-              gpointer  user_data)
-{
-        force_icon_redraw (widget);
-}
+  screen = gtk_widget_get_screen (widget);
 
-/* Tray icon added */
-static void
-tray_icon_added_cb (NaTrayManager *manager,
-                    GtkWidget      *icon,
-                    GtkBox         *box)
-{
-        gtk_box_pack_start (box, icon, FALSE, FALSE, 0);
-        force_icon_redraw (GTK_WIDGET (box));
-}
+  /* Bit ugly but works to save passing a struct */
+  orientation = GPOINTER_TO_INT (user_data);
 
-/* Screen changed */
-static void
-screen_changed_cb (GtkWidget      *widget,
-                   GdkScreen      *old_screen,
-                   NaTrayManager *manager)
-{
-        GdkScreen *screen;
-
-        screen = gtk_widget_get_screen (widget);
-        if (na_tray_manager_check_running (screen)) {
-                g_warning ("Another system tray manager is running. "
-                           "Not managing screen.");
-
-                return;
-        }
+  tray = (GtkWidget *)na_tray_new_for_screen (screen, orientation);
 
-        na_tray_manager_manage_screen (manager, screen);
+  gtk_widget_show (tray);
 
-        force_icon_redraw (widget);
+  gtk_container_add (GTK_CONTAINER (widget), tray);
 }
 
 G_MODULE_EXPORT GtkWidget *
 mb_panel_applet_create (const char    *id,
                         GtkOrientation orientation)
 {
-        NaTrayManager *manager;
         GtkWidget *box;
 
-        /* Is this a horizontal panel? */
-        if (orientation == GTK_ORIENTATION_HORIZONTAL)
-                box = gtk_hbox_new (0, FALSE);
-        else
-                box = gtk_vbox_new (0, FALSE);
+        box = gtk_box_new (GTK_ORIENTATION_HORIZONTAL, 0);
 
         gtk_widget_set_name (box, "MatchboxPanelSystemTray");
 
-        /* Create tray manager */
-        manager = na_tray_manager_new ();
-        na_tray_manager_set_orientation (manager, orientation);
-
-        g_signal_connect (manager,
-                          "tray-icon-added",
-                          G_CALLBACK (tray_icon_added_cb),
-                          box);
-
-        g_signal_connect (box,
-                          "screen-changed",
-                          G_CALLBACK (screen_changed_cb),
-                          manager);
-
-        g_signal_connect (box,
-                          "style-set",
-                          G_CALLBACK (style_set_cb),
-                          NULL);
-
+        g_signal_connect (box, "realize", G_CALLBACK (on_realize), GINT_TO_POINTER (orientation));
 
-        g_object_weak_ref (G_OBJECT (box),
-                           (GWeakNotify) g_object_unref,
-                           manager);
-        
-        /* Show! */
         gtk_widget_show (box);
 
         return box;
-- 
2.8.1


