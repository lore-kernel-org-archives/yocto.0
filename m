Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C587E00E25; Mon, 11 Jul 2016 03:52:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48DDBE00DF2
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 03:52:09 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 11 Jul 2016 03:52:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,346,1464678000"; d="scan'208";a="732493240"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2016 03:52:07 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jul 2016 13:51:59 +0300
Message-Id: <0581afd6336a2ae7d3c7593fc94e4c7565c4c13e.1468233661.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <ec40860b1e5560a9afc16573c67ae4ec69cd999b.1468233661.git.jussi.kukkonen@intel.com>
References: <ec40860b1e5560a9afc16573c67ae4ec69cd999b.1468233661.git.jussi.kukkonen@intel.com>
MIME-Version: 1.0
In-Reply-To: <cover.1468233661.git.jussi.kukkonen@intel.com>
References: <cover.1468233661.git.jussi.kukkonen@intel.com>
Subject: [libmatchbox][PATCH 4/4] Keep an internal copy of xsettings-client
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
X-List-Received-Date: Mon, 11 Jul 2016 10:52:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

xsettings-client code was meant to be a copy-and-paste module, not a
shared library. Grab a copy from
git://anongit.freedesktop.org/xdg/xdg-specs and include it in the
sources.

Remove the build complications: always build with xsettings.

The new files are MIT (old style) licensed: add a COPYING.MIT file.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 COPYING.MIT              |  18 ++
 configure.ac             |  68 ------
 libmb/Makefile.am        |   8 +-
 libmb/mbmenu.c           |   9 -
 libmb/mbmenu.h           |   7 +-
 libmb/mbtray.c           |  61 +----
 libmb/xsettings-client.c | 577 +++++++++++++++++++++++++++++++++++++++++++++++
 libmb/xsettings-client.h |  72 ++++++
 libmb/xsettings-common.c | 264 ++++++++++++++++++++++
 libmb/xsettings-common.h | 110 +++++++++
 10 files changed, 1049 insertions(+), 145 deletions(-)
 create mode 100644 COPYING.MIT
 create mode 100644 libmb/xsettings-client.c
 create mode 100644 libmb/xsettings-client.h
 create mode 100644 libmb/xsettings-common.c
 create mode 100644 libmb/xsettings-common.h

diff --git a/COPYING.MIT b/COPYING.MIT
new file mode 100644
index 0000000..f7bdbba
--- /dev/null
+++ b/COPYING.MIT
@@ -0,0 +1,18 @@
+This license applies to libmb/xsettings-*:
+
+ * Permission to use, copy, modify, distribute, and sell this software and its
+ * documentation for any purpose is hereby granted without fee, provided that
+ * the above copyright notice appear in all copies and that both that
+ * copyright notice and this permission notice appear in supporting
+ * documentation, and that the name of Red Hat not be used in advertising or
+ * publicity pertaining to distribution of the software without specific,
+ * written prior permission.  Red Hat makes no representations about the
+ * suitability of this software for any purpose.  It is provided "as is"
+ * without express or implied warranty.
+ *
+ * RED HAT DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL RED HAT
+ * BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
+ * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN 
+ * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
diff --git a/configure.ac b/configure.ac
index 65d7c79..d369e2c 100644
--- a/configure.ac
+++ b/configure.ac
@@ -17,7 +17,6 @@ SUPPORTS_PNG=0
 SUPPORTS_JPEG=0
 SUPPORTS_XFT=0
 SUPPORTS_PANGO=0
-SUPPORTS_XSETTINGS=0
 
 dnl ----- Args -------------------------------------------------------------
 
@@ -41,19 +40,6 @@ AC_ARG_ENABLE(doxygen-docs,
   [  --enable-doxygen-docs   build DOXYGEN API documentation (requires Doxygen)], 
      enable_doxygen_docs=$enableval,enable_doxygen_docs=no)
 
-AC_ARG_ENABLE(xsettings,
-  [  --enable-xsettings      enable xsettings client support],
-     enable_xsettings=$enableval, enable_xsettings=no )
-
-AC_ARG_WITH(xsettings-includes,    
-  [  --with-xsettings-includes=DIR Use xsettings-client includes in DIR],
- 
-	   xsettings_includes=$withval, xsettings_includes=yes)
-
-AC_ARG_WITH(xsettings-lib,         
-  [  --with-xsettings-lib=DIR      Use xsettings-client library in DIR], 
-	   xsettings_lib=$withval, xsettings_lib=yes)
-
 AC_ARG_ENABLE(debug,
   [  --enable-debug          enable debug ( verbose ) build],
      enable_debug=$enableval, enable_debug=no )
@@ -180,56 +166,6 @@ if test x$enable_jpeg != xno; then
   fi
 fi
 
-
-dnl ------ Check for XSettings ----------------------------------------------
-
-if test x$enable_xsettings != xno; then
-  case "$xsettings_includes" in
-    yes|no)
-	XSET_CFLAGS=""
-	;;
-    *)
-	XSET_CFLAGS="-I$xsettings_includes"
-	;;
-  esac
-	
-  case "$xsettings_lib" in
-    yes)
-	XSET_LIBS="-lXsettings-client"
-	;;
-    *)
-	XSET_LIBS="-L$xsettings_lib -lXsettings-client"
-	;;
-   esac
-
-   xsetsaved_CPPFLAGS="$CPPFLAGS"
-   CPPFLAGS="$CPPFLAGS $XSET_CFLAGS $XLIBS_CFLAGS"
-   xsetsaved_LIBS="$LIBS"
-   LIBS="$LIBS $XSET_LIBS $XLIBS_LIBS"
-
-   AC_CHECK_HEADER(xsettings-client.h, [ have_xset_h="yes" ], [ have_xset_h="no" ] )
-
-   if test x$have_xset_h = xno; then
-      AC_MSG_ERROR([cannot find Xsettings-client headers])
-   fi
-
-   AC_CHECK_LIB([Xsettings-client], [xsettings_client_new], 
-                [have_xset_libs="yes"], [ have_xset_libs="no"])
-
-   if test x$have_xset_libs = x"no"; then	
-      AC_MSG_ERROR([cannot find Xsettings-client headers])
-   fi
-   	
-   CPPFLAGS="$xsetsaved_CPPFLAGS"
-   LIBS="$xsetsaved_LIBS"
-
-   MB_EXTRA_LIBS="$MB_EXTRA_LIBS $XSET_LIBS"	
-   MB_EXTRA_CFLAGS="$MB_EXTRA_CFLAGS $XSET_CFLAGS"	
-
-   AC_DEFINE(USE_XSETTINGS, [1], [Use XSettings Client])
-fi
-
-
 dnl ------ Debug -----------------------------------------------------------
 
 if test x$enable_debug != xno; then
@@ -310,9 +246,6 @@ AC_SUBST(JPEG_LIBS)
 AC_SUBST(GCC_WARNINGS)
 AC_SUBST(CHECK_CFLAGS)
 
-AC_SUBST(XSET_LIBS)
-AC_SUBST(XSET_CFLAGS)
-
 AC_SUBST(MB_EXTRA_LIBS)
 AC_SUBST(MB_EXTRA_CFLAGS)
 AC_SUBST(XLIBS_REQUIRED)
@@ -380,7 +313,6 @@ echo "
         Building with Pango:                ${enable_pango}
         Building with PNG:                  ${enable_png}
         Building with JPG:                  ${enable_jpeg}
-        Building with XSettings:            ${enable_xsettings}
         Building with API Documentation:    ${enable_doxygen_docs}
 
 "
diff --git a/libmb/Makefile.am b/libmb/Makefile.am
index 633d76e..f78aee0 100644
--- a/libmb/Makefile.am
+++ b/libmb/Makefile.am
@@ -6,6 +6,8 @@ source_h = mb.h           \
            mbutil.h       \
            mbexp.h        \
            mbconfig.h     \
+           xsettings-client.h \
+           xsettings-common.h \
            hash.h 
 
 source_c = mbmenu.c       \
@@ -14,6 +16,8 @@ source_c = mbmenu.c       \
            mbpixbuf.c     \
            mbutil.c       \
 	   mbexp.c        \
+           xsettings-client.c \
+           xsettings-common.c \
            hash.c
 
 DATADIR=$(datadir)
@@ -21,8 +25,8 @@ DATADIR=$(datadir)
 
 lib_LTLIBRARIES      = libmb.la
 libmb_la_SOURCES     = $(source_c) $(source_h)
-libmb_la_CPPFLAGS    = -I$(top_srcdir) @GCC_WARNINGS@ @XLIBS_CFLAGS@ @PANGO_CFLAGS@ @PNG_CFLAGS@ @XSET_CFLAGS@ -DDATADIR=\"$(datadir)\"
-libmb_la_LIBADD      = @XLIBS_LIBS@ @PANGO_LIBS@ @JPEG_LIBS@ @PNG_LIBS@ @XSET_LIBS@
+libmb_la_CPPFLAGS    = -I$(top_srcdir) @GCC_WARNINGS@ @XLIBS_CFLAGS@ @PANGO_CFLAGS@ @PNG_CFLAGS@ -DDATADIR=\"$(datadir)\"
+libmb_la_LIBADD      = @XLIBS_LIBS@ @PANGO_LIBS@ @JPEG_LIBS@ @PNG_LIBS@
 
 # http://sources.redhat.com/autobook/autobook/autobook_91.html#SEC91
 # current : revision : age
diff --git a/libmb/mbmenu.c b/libmb/mbmenu.c
index 6e35bed..286ea0b 100644
--- a/libmb/mbmenu.c
+++ b/libmb/mbmenu.c
@@ -71,7 +71,6 @@ static void remove_xmenus(MBMenu *mb,MBMenuMenu *active[]);
 
 static void menu_set_theme_from_root_prop(MBMenu *mb);
 
-#ifdef USE_XSETTINGS
 /*
  Gtk/FontName
 */
@@ -131,8 +130,6 @@ mbmenu_xsettings_notify_cb (const char       *name,
     }
 }
 
-#endif
-
 MBMenu *
 mb_menu_new(Display *dpy, int screen) 
 {
@@ -195,16 +192,12 @@ mb_menu_new(Display *dpy, int screen)
 
   menu_set_theme_from_root_prop(mbmenu);
 
-#ifdef USE_XSETTINGS
-
   /* This will trigger callbacks instantly so called last */
 
   mbmenu->xsettings_client = xsettings_client_new(mbmenu->dpy, mbmenu->screen,
 						  mbmenu_xsettings_notify_cb,
 						  NULL,
 						  (void *)mbmenu );
-#endif
-
   return mbmenu;
 }
 
@@ -786,10 +779,8 @@ mb_menu_handle_xevent(MBMenu *mb, XEvent *an_event)
       return;
     }
 
-#ifdef USE_XSETTINGS
   if (mb->xsettings_client != NULL)
     xsettings_client_process_event(mb->xsettings_client, an_event);
-#endif
 
   if (an_event->type == PropertyNotify 
       && an_event->xproperty.atom == mb->atom_mbtheme) 
diff --git a/libmb/mbmenu.h b/libmb/mbmenu.h
index 1046464..1393ab2 100644
--- a/libmb/mbmenu.h
+++ b/libmb/mbmenu.h
@@ -42,10 +42,7 @@
 #include <X11/keysym.h>
 #include <X11/Xmd.h>
 
-#ifdef USE_XSETTINGS
-#include <xsettings-client.h>
-#endif 
-
+#include <libmb/xsettings-client.h>
 #include <libmb/mbpixbuf.h>
 #include <libmb/mbexp.h>
 
@@ -261,9 +258,7 @@ typedef struct _mbmemu
 
   struct _menu *keyboard_focus_menu;
 
-#ifdef USE_XSETTINGS
   XSettingsClient *xsettings_client;
-#endif 
 
 } MBMenu;
 
diff --git a/libmb/mbtray.c b/libmb/mbtray.c
index 5c917fa..7207ea8 100644
--- a/libmb/mbtray.c
+++ b/libmb/mbtray.c
@@ -35,11 +35,9 @@
 #endif
 
 #include "mbtray.h"
+#include "xsettings-client.h"
 
 #include <strings.h>
-#ifdef USE_XSETTINGS
-#include <xsettings-client.h>
-#endif 
 
 #define SYSTEM_TRAY_REQUEST_DOCK    0
 #define SYSTEM_TRAY_BEGIN_MESSAGE   1
@@ -146,9 +144,7 @@ struct MBTrayApp
 
   int tray_id;
 
-#ifdef USE_XSETTINGS
   XSettingsClient *xsettings_client;
-#endif 
   
   char *theme_name;
 
@@ -161,14 +157,11 @@ struct MBTrayApp
   MBPixbuf *pb_ext_ref; 	/* XXX should be considered unsafe */
 };
 
-#ifdef USE_XSETTINGS
-
 static void 
 _xsettings_notify_cb (const char       *name,
 		      XSettingsAction   action,
 		      XSettingsSetting *setting,
 		      void             *data);
-#endif
 
 static int trapped_error_code = 0;
 static int (*old_error_handler) (Display *d, XErrorEvent *e);
@@ -222,8 +215,6 @@ _get_server_time(Display* dpy)
   }
 }
 
-#ifdef USE_XSETTINGS
-
 static void 
 _xsettings_notify_cb (const char       *name,
 		      XSettingsAction   action,
@@ -257,8 +248,6 @@ _xsettings_notify_cb (const char       *name,
 
 }
 
-#endif
-
 static Bool
 get_xevent_timed( MBTrayApp* mb, XEvent* event_return )
 {
@@ -749,43 +738,6 @@ tray_is_vertical_via_hint(MBTrayApp *mb)
 }
 
 static void
-set_theme_via_root_prop(MBTrayApp *mb)
-{
-#ifndef USE_XSETTINGS
-  Atom realType;
-  unsigned long n;
-  unsigned long extra;
-  int format;
-  int status;
-  char * value;
-  
-  status = XGetWindowProperty(mb->dpy, mb->win_root,
-			      mb->atoms[ATOM_MB_THEME], 
-			      0L, 512L, False,
-			      AnyPropertyType, &realType,
-			      &format, &n, &extra,
-			      (unsigned char **) &value);
-  
-  if (status != Success || value == 0 || *value == 0 || n == 0)
-    {
-      if (value) XFree(value);
-      return;
-    }
-  
-  if (mb->theme_name == NULL || strcmp(mb->theme_name, value))
-    {
-      if (mb->theme_name) free(mb->theme_name);
-      mb->theme_name = strdup(value);
-      
-      if (mb->theme_cb)
-	mb->theme_cb(mb, mb->theme_name); 
-      
-      XFree(value);
-    }
-#endif // USE_XSETTINGS
-}
-
-static void
 handle_property(MBTrayApp       *mb, 
 		XPropertyEvent *event )
 {
@@ -805,10 +757,6 @@ handle_property(MBTrayApp       *mb,
       mb->have_cached_bg = False;
       handle_expose( mb, NULL );
     }
-  else if (event->atom == mb->atoms[ATOM_MB_THEME])
-    {
-      set_theme_via_root_prop(mb);
-    }
 }
 
 static void
@@ -1322,12 +1270,9 @@ mb_tray_app_main_init ( MBTrayApp *mb ) /* XXX Figure out better name */
      }
 #endif
 
-#ifdef USE_XSETTINGS
-
   mb->xsettings_client = xsettings_client_new(mb->dpy, mb->screen,
 					      _xsettings_notify_cb,
 					      NULL, (void *)mb );
-#endif
 
    /* Set up standard hints */
    
@@ -1337,8 +1282,6 @@ mb_tray_app_main_init ( MBTrayApp *mb ) /* XXX Figure out better name */
    XFlush (mb->dpy);
 
    if (mb->win_tray) _init_docking (mb);
-
-   set_theme_via_root_prop(mb);
 }
 
 void 
@@ -1363,10 +1306,8 @@ mb_tray_handle_xevent(MBTrayApp *mb, XEvent *xevent)
       if (mb->xevent_cb) 
 	mb->xevent_cb (mb, xevent);
 
-#ifdef USE_XSETTINGS
 	  if (mb->xsettings_client != NULL)
 	    xsettings_client_process_event(mb->xsettings_client, xevent);
-#endif
 
       switch (xevent->type) 
 	{
diff --git a/libmb/xsettings-client.c b/libmb/xsettings-client.c
new file mode 100644
index 0000000..50c33ce
--- /dev/null
+++ b/libmb/xsettings-client.c
@@ -0,0 +1,577 @@
+/*
+ * Copyright © 2001 Red Hat, Inc.
+ *
+ * Permission to use, copy, modify, distribute, and sell this software and its
+ * documentation for any purpose is hereby granted without fee, provided that
+ * the above copyright notice appear in all copies and that both that
+ * copyright notice and this permission notice appear in supporting
+ * documentation, and that the name of Red Hat not be used in advertising or
+ * publicity pertaining to distribution of the software without specific,
+ * written prior permission.  Red Hat makes no representations about the
+ * suitability of this software for any purpose.  It is provided "as is"
+ * without express or implied warranty.
+ *
+ * RED HAT DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL RED HAT
+ * BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
+ * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN 
+ * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ *
+ * Author:  Owen Taylor, Red Hat, Inc.
+ */
+#include <limits.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+
+#include <X11/Xlib.h>
+#include <X11/Xmd.h>		/* For CARD16 */
+
+#include "xsettings-client.h"
+
+struct _XSettingsClient
+{
+  Display *display;
+  int screen;
+  XSettingsNotifyFunc notify;
+  XSettingsWatchFunc watch;
+  void *cb_data;
+
+  XSettingsGrabFunc grab;
+  XSettingsGrabFunc ungrab;
+
+  Window manager_window;
+  Atom manager_atom;
+  Atom selection_atom;
+  Atom xsettings_atom;
+
+  XSettingsList *settings;
+};
+
+static void
+notify_changes (XSettingsClient *client,
+		XSettingsList   *old_list)
+{
+  XSettingsList *old_iter = old_list;
+  XSettingsList *new_iter = client->settings;
+
+  if (!client->notify)
+    return;
+
+  while (old_iter || new_iter)
+    {
+      int cmp;
+      
+      if (old_iter && new_iter)
+	cmp = strcmp (old_iter->setting->name, new_iter->setting->name);
+      else if (old_iter)
+	cmp = -1;
+      else
+	cmp = 1;
+
+      if (cmp < 0)
+	{
+	  client->notify (old_iter->setting->name,
+			  XSETTINGS_ACTION_DELETED,
+			  NULL,
+			  client->cb_data);
+	}
+      else if (cmp == 0)
+	{
+	  if (!xsettings_setting_equal (old_iter->setting,
+					new_iter->setting))
+	    client->notify (old_iter->setting->name,
+			    XSETTINGS_ACTION_CHANGED,
+			    new_iter->setting,
+			    client->cb_data);
+	}
+      else
+	{
+	  client->notify (new_iter->setting->name,
+			  XSETTINGS_ACTION_NEW,
+			  new_iter->setting,
+			  client->cb_data);
+	}
+
+      if (old_iter)
+	old_iter = old_iter->next;
+      if (new_iter)
+	new_iter = new_iter->next;
+    }
+}
+
+static int
+ignore_errors (Display *display, XErrorEvent *event)
+{
+  return True;
+}
+
+static char local_byte_order = '\0';
+
+#define BYTES_LEFT(buffer) ((buffer)->data + (buffer)->len - (buffer)->pos)
+
+static XSettingsResult
+fetch_card16 (XSettingsBuffer *buffer,
+	      CARD16          *result)
+{
+  CARD16 x;
+
+  if (BYTES_LEFT (buffer) < 2)
+    return XSETTINGS_ACCESS;
+
+  x = *(CARD16 *)buffer->pos;
+  buffer->pos += 2;
+  
+  if (buffer->byte_order == local_byte_order)
+    *result = x;
+  else
+    *result = (x << 8) | (x >> 8);
+
+  return XSETTINGS_SUCCESS;
+}
+
+static XSettingsResult
+fetch_ushort (XSettingsBuffer *buffer,
+	      unsigned short  *result) 
+{
+  CARD16 x;
+  XSettingsResult r;  
+
+  r = fetch_card16 (buffer, &x);
+  if (r == XSETTINGS_SUCCESS)
+    *result = x;
+
+  return r;
+}
+
+static XSettingsResult
+fetch_card32 (XSettingsBuffer *buffer,
+	      CARD32          *result)
+{
+  CARD32 x;
+
+  if (BYTES_LEFT (buffer) < 4)
+    return XSETTINGS_ACCESS;
+
+  x = *(CARD32 *)buffer->pos;
+  buffer->pos += 4;
+  
+  if (buffer->byte_order == local_byte_order)
+    *result = x;
+  else
+    *result = (x << 24) | ((x & 0xff00) << 8) | ((x & 0xff0000) >> 8) | (x >> 24);
+  
+  return XSETTINGS_SUCCESS;
+}
+
+static XSettingsResult
+fetch_card8 (XSettingsBuffer *buffer,
+	     CARD8           *result)
+{
+  if (BYTES_LEFT (buffer) < 1)
+    return XSETTINGS_ACCESS;
+
+  *result = *(CARD8 *)buffer->pos;
+  buffer->pos += 1;
+
+  return XSETTINGS_SUCCESS;
+}
+
+#define XSETTINGS_PAD(n,m) ((n + m - 1) & (~(m-1)))
+
+static XSettingsList *
+parse_settings (unsigned char *data,
+		size_t         len)
+{
+  XSettingsBuffer buffer;
+  XSettingsResult result = XSETTINGS_SUCCESS;
+  XSettingsList *settings = NULL;
+  CARD32 serial;
+  CARD32 n_entries;
+  CARD32 i;
+  XSettingsSetting *setting = NULL;
+  
+  local_byte_order = xsettings_byte_order ();
+
+  buffer.pos = buffer.data = data;
+  buffer.len = len;
+  
+  result = fetch_card8 (&buffer, (char *)&buffer.byte_order);
+  if (buffer.byte_order != MSBFirst &&
+      buffer.byte_order != LSBFirst)
+    {
+      fprintf (stderr, "Invalid byte order in XSETTINGS property\n");
+      result = XSETTINGS_FAILED;
+      goto out;
+    }
+
+  buffer.pos += 3;
+
+  result = fetch_card32 (&buffer, &serial);
+  if (result != XSETTINGS_SUCCESS)
+    goto out;
+
+  result = fetch_card32 (&buffer, &n_entries);
+  if (result != XSETTINGS_SUCCESS)
+    goto out;
+
+  for (i = 0; i < n_entries; i++)
+    {
+      CARD8 type;
+      CARD16 name_len;
+      CARD32 v_int;
+      size_t pad_len;
+      
+      result = fetch_card8 (&buffer, &type);
+      if (result != XSETTINGS_SUCCESS)
+	goto out;
+
+      buffer.pos += 1;
+
+      result = fetch_card16 (&buffer, &name_len);
+      if (result != XSETTINGS_SUCCESS)
+	goto out;
+
+      pad_len = XSETTINGS_PAD(name_len, 4);
+      if (BYTES_LEFT (&buffer) < pad_len)
+	{
+	  result = XSETTINGS_ACCESS;
+	  goto out;
+	}
+
+      setting = malloc (sizeof *setting);
+      if (!setting)
+	{
+	  result = XSETTINGS_NO_MEM;
+	  goto out;
+	}
+      setting->type = XSETTINGS_TYPE_INT; /* No allocated memory */
+
+      setting->name = malloc (name_len + 1);
+      if (!setting->name)
+	{
+	  result = XSETTINGS_NO_MEM;
+	  goto out;
+	}
+
+      memcpy (setting->name, buffer.pos, name_len);
+      setting->name[name_len] = '\0';
+      buffer.pos += pad_len;
+
+      result = fetch_card32 (&buffer, &v_int);
+      if (result != XSETTINGS_SUCCESS)
+	goto out;
+      setting->last_change_serial = v_int;
+
+      switch (type)
+	{
+	case XSETTINGS_TYPE_INT:
+	  result = fetch_card32 (&buffer, &v_int);
+	  if (result != XSETTINGS_SUCCESS)
+	    goto out;
+
+	  setting->data.v_int = (INT32)v_int;
+	  break;
+	case XSETTINGS_TYPE_STRING:
+	  result = fetch_card32 (&buffer, &v_int);
+	  if (result != XSETTINGS_SUCCESS)
+	    goto out;
+
+	  pad_len = XSETTINGS_PAD (v_int, 4);
+	  if (v_int + 1 == 0 || /* Guard against wrap-around */
+	      BYTES_LEFT (&buffer) < pad_len)
+	    {
+	      result = XSETTINGS_ACCESS;
+	      goto out;
+	    }
+
+	  setting->data.v_string = malloc (v_int + 1);
+	  if (!setting->data.v_string)
+	    {
+	      result = XSETTINGS_NO_MEM;
+	      goto out;
+	    }
+	  
+	  memcpy (setting->data.v_string, buffer.pos, v_int);
+	  setting->data.v_string[v_int] = '\0';
+	  buffer.pos += pad_len;
+
+	  break;
+	case XSETTINGS_TYPE_COLOR:
+	  result = fetch_ushort (&buffer, &setting->data.v_color.red);
+	  if (result != XSETTINGS_SUCCESS)
+	    goto out;
+	  result = fetch_ushort (&buffer, &setting->data.v_color.green);
+	  if (result != XSETTINGS_SUCCESS)
+	    goto out;
+	  result = fetch_ushort (&buffer, &setting->data.v_color.blue);
+	  if (result != XSETTINGS_SUCCESS)
+	    goto out;
+	  result = fetch_ushort (&buffer, &setting->data.v_color.alpha);
+	  if (result != XSETTINGS_SUCCESS)
+	    goto out;
+
+	  break;
+	default:
+	  /* Quietly ignore unknown types */
+	  break;
+	}
+
+      setting->type = type;
+
+      result = xsettings_list_insert (&settings, setting);
+      if (result != XSETTINGS_SUCCESS)
+	goto out;
+
+      setting = NULL;
+    }
+
+ out:
+
+  if (result != XSETTINGS_SUCCESS)
+    {
+      switch (result)
+	{
+	case XSETTINGS_NO_MEM:
+	  fprintf(stderr, "Out of memory reading XSETTINGS property\n");
+	  break;
+	case XSETTINGS_ACCESS:
+	  fprintf(stderr, "Invalid XSETTINGS property (read off end)\n");
+	  break;
+	case XSETTINGS_DUPLICATE_ENTRY:
+	  fprintf (stderr, "Duplicate XSETTINGS entry for '%s'\n", setting->name);
+	case XSETTINGS_FAILED:
+	case XSETTINGS_SUCCESS:
+	case XSETTINGS_NO_ENTRY:
+	  break;
+	}
+
+      if (setting)
+	xsettings_setting_free (setting);
+
+      xsettings_list_free (settings);
+      settings = NULL;
+
+    }
+
+  return settings;
+}
+
+static void
+read_settings (XSettingsClient *client)
+{
+  Atom type;
+  int format;
+  unsigned long n_items;
+  unsigned long bytes_after;
+  unsigned char *data;
+  int result;
+
+  int (*old_handler) (Display *, XErrorEvent *);
+  
+  XSettingsList *old_list = client->settings;
+
+  client->settings = NULL;
+
+  if (client->manager_window)
+    {
+      old_handler = XSetErrorHandler (ignore_errors);
+      result = XGetWindowProperty (client->display, client->manager_window,
+				   client->xsettings_atom, 0, LONG_MAX,
+				   False, client->xsettings_atom,
+				   &type, &format, &n_items, &bytes_after, &data);
+      XSetErrorHandler (old_handler);
+      
+      if (result == Success && type != None)
+	{
+	  if (type != client->xsettings_atom)
+	    {
+	      fprintf (stderr, "Invalid type for XSETTINGS property");
+	    }
+	  else if (format != 8)
+	    {
+	      fprintf (stderr, "Invalid format for XSETTINGS property %d", format);
+	    }
+	  else
+	    client->settings = parse_settings (data, n_items);
+	  
+	  XFree (data);
+	}
+    }
+
+  notify_changes (client, old_list);
+  xsettings_list_free (old_list);
+}
+
+static void
+add_events (Display *display,
+	    Window   window,
+	    long     mask)
+{
+  XWindowAttributes attr;
+
+  XGetWindowAttributes (display, window, &attr);
+  XSelectInput (display, window, attr.your_event_mask | mask);
+}
+
+static void
+check_manager_window (XSettingsClient *client)
+{
+  if (client->manager_window && client->watch)
+    client->watch (client->manager_window, False, 0, client->cb_data);
+
+  if (client->grab)
+    client->grab (client->display);
+  else
+    XGrabServer (client->display);
+
+  client->manager_window = XGetSelectionOwner (client->display,
+					       client->selection_atom);
+  if (client->manager_window)
+    XSelectInput (client->display, client->manager_window,
+		  PropertyChangeMask | StructureNotifyMask);
+
+  if (client->ungrab)
+    client->ungrab (client->display);
+  else
+    XUngrabServer (client->display);
+  
+  XFlush (client->display);
+
+  if (client->manager_window && client->watch)
+    client->watch (client->manager_window, True, 
+		   PropertyChangeMask | StructureNotifyMask,
+		   client->cb_data);
+  
+  read_settings (client);
+}
+
+XSettingsClient *
+xsettings_client_new (Display             *display,
+		      int                  screen,
+		      XSettingsNotifyFunc  notify,
+		      XSettingsWatchFunc   watch,
+		      void                *cb_data)
+{
+  XSettingsClient *client;
+  char buffer[256];
+  char *atom_names[3];
+  Atom atoms[3];
+  
+  client = malloc (sizeof *client);
+  if (!client)
+    return NULL;
+
+  client->display = display;
+  client->screen = screen;
+  client->notify = notify;
+  client->watch = watch;
+  client->cb_data = cb_data;
+  client->grab = NULL;
+  client->ungrab = NULL;
+  
+  client->manager_window = None;
+  client->settings = NULL;
+
+  sprintf(buffer, "_XSETTINGS_S%d", screen);
+  atom_names[0] = buffer;
+  atom_names[1] = "_XSETTINGS_SETTINGS";
+  atom_names[2] = "MANAGER";
+
+  XInternAtoms (display, atom_names, 3, False, atoms);
+  
+  client->selection_atom = atoms[0];
+  client->xsettings_atom = atoms[1];
+  client->manager_atom = atoms[2];
+
+  /* Select on StructureNotify so we get MANAGER events
+   */
+  add_events (display, RootWindow (display, screen), StructureNotifyMask);
+
+  if (client->watch)
+    client->watch (RootWindow (display, screen), True, StructureNotifyMask,
+		   client->cb_data);
+
+  check_manager_window (client);
+
+  return client;
+}
+
+void
+xsettings_client_set_grab_func   (XSettingsClient      *client,
+				  XSettingsGrabFunc     grab)
+{
+  client->grab = grab;
+}
+
+void
+xsettings_client_set_ungrab_func (XSettingsClient      *client,
+				  XSettingsGrabFunc     ungrab)
+{
+  client->ungrab = ungrab;
+}
+
+void
+xsettings_client_destroy (XSettingsClient *client)
+{
+  if (client->watch)
+    client->watch (RootWindow (client->display, client->screen),
+		   False, 0, client->cb_data);
+  if (client->manager_window && client->watch)
+    client->watch (client->manager_window, False, 0, client->cb_data);
+  
+  xsettings_list_free (client->settings);
+  free (client);
+}
+
+XSettingsResult
+xsettings_client_get_setting (XSettingsClient   *client,
+			      const char        *name,
+			      XSettingsSetting **setting)
+{
+  XSettingsSetting *search = xsettings_list_lookup (client->settings, name);
+  if (search)
+    {
+      *setting = xsettings_setting_copy (search);
+      return *setting ? XSETTINGS_SUCCESS : XSETTINGS_NO_MEM;
+    }
+  else
+    return XSETTINGS_NO_ENTRY;
+}
+
+Bool
+xsettings_client_process_event (XSettingsClient *client,
+				XEvent          *xev)
+{
+  /* The checks here will not unlikely cause us to reread
+   * the properties from the manager window a number of
+   * times when the manager changes from A->B. But manager changes
+   * are going to be pretty rare.
+   */
+  if (xev->xany.window == RootWindow (client->display, client->screen))
+    {
+      if (xev->xany.type == ClientMessage &&
+	  xev->xclient.message_type == client->manager_atom &&
+	  xev->xclient.data.l[1] == client->selection_atom)
+	{
+	  check_manager_window (client);
+	  return True;
+	}
+    }
+  else if (xev->xany.window == client->manager_window)
+    {
+      if (xev->xany.type == DestroyNotify)
+	{
+	  check_manager_window (client);
+	  return True;
+	}
+      else if (xev->xany.type == PropertyNotify)
+	{
+	  read_settings (client);
+	  return True;
+	}
+    }
+  
+  return False;
+}
diff --git a/libmb/xsettings-client.h b/libmb/xsettings-client.h
new file mode 100644
index 0000000..b916eba
--- /dev/null
+++ b/libmb/xsettings-client.h
@@ -0,0 +1,72 @@
+/*
+ * Copyright © 2001 Red Hat, Inc.
+ *
+ * Permission to use, copy, modify, distribute, and sell this software and its
+ * documentation for any purpose is hereby granted without fee, provided that
+ * the above copyright notice appear in all copies and that both that
+ * copyright notice and this permission notice appear in supporting
+ * documentation, and that the name of Red Hat not be used in advertising or
+ * publicity pertaining to distribution of the software without specific,
+ * written prior permission.  Red Hat makes no representations about the
+ * suitability of this software for any purpose.  It is provided "as is"
+ * without express or implied warranty.
+ *
+ * RED HAT DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL RED HAT
+ * BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
+ * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN 
+ * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ *
+ * Author:  Owen Taylor, Red Hat, Inc.
+ */
+#ifndef XSETTINGS_CLIENT_H
+#define XSETTINGS_CLIENT_H
+
+#include <X11/Xlib.h>
+#include "xsettings-common.h"
+
+#ifdef __cplusplus
+extern "C" {
+#endif /* __cplusplus */
+
+typedef struct _XSettingsClient XSettingsClient;
+
+typedef enum 
+{
+  XSETTINGS_ACTION_NEW,
+  XSETTINGS_ACTION_CHANGED,
+  XSETTINGS_ACTION_DELETED
+} XSettingsAction;
+
+typedef void (*XSettingsNotifyFunc) (const char       *name,
+				     XSettingsAction   action,
+				     XSettingsSetting *setting,
+				     void             *cb_data);
+typedef void (*XSettingsWatchFunc)  (Window            window,
+				     Bool              is_start,
+				     long              mask,
+				     void             *cb_data);
+typedef void (*XSettingsGrabFunc)   (Display          *display);
+
+XSettingsClient *xsettings_client_new             (Display             *display,
+						   int                  screen,
+						   XSettingsNotifyFunc  notify,
+						   XSettingsWatchFunc   watch,
+						   void                *cb_data);
+void             xsettings_client_set_grab_func   (XSettingsClient     *client,
+						   XSettingsGrabFunc    grab);
+void             xsettings_client_set_ungrab_func (XSettingsClient     *client,
+						   XSettingsGrabFunc    ungrab);
+void             xsettings_client_destroy         (XSettingsClient     *client);
+Bool             xsettings_client_process_event   (XSettingsClient     *client,
+						   XEvent              *xev);
+XSettingsResult  xsettings_client_get_setting     (XSettingsClient     *client,
+						   const char          *name,
+						   XSettingsSetting   **setting);
+
+#ifdef __cplusplus
+}
+#endif /* __cplusplus */
+
+#endif /* XSETTINGS_CLIENT_H */
diff --git a/libmb/xsettings-common.c b/libmb/xsettings-common.c
new file mode 100644
index 0000000..3d74440
--- /dev/null
+++ b/libmb/xsettings-common.c
@@ -0,0 +1,264 @@
+/*
+ * Copyright © 2001 Red Hat, Inc.
+ *
+ * Permission to use, copy, modify, distribute, and sell this software and its
+ * documentation for any purpose is hereby granted without fee, provided that
+ * the above copyright notice appear in all copies and that both that
+ * copyright notice and this permission notice appear in supporting
+ * documentation, and that the name of Red Hat not be used in advertising or
+ * publicity pertaining to distribution of the software without specific,
+ * written prior permission.  Red Hat makes no representations about the
+ * suitability of this software for any purpose.  It is provided "as is"
+ * without express or implied warranty.
+ *
+ * RED HAT DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL RED HAT
+ * BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
+ * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN 
+ * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ *
+ * Author:  Owen Taylor, Red Hat, Inc.
+ */
+#include "string.h"
+#include "stdlib.h"
+
+#include <X11/Xlib.h>
+#include <X11/Xmd.h>		/* For CARD32 */
+
+#include "xsettings-common.h"
+
+XSettingsSetting *
+xsettings_setting_copy (XSettingsSetting *setting)
+{
+  XSettingsSetting *result;
+  size_t str_len;
+  
+  result = malloc (sizeof *result);
+  if (!result)
+    return NULL;
+
+  str_len = strlen (setting->name);
+  result->name = malloc (str_len + 1);
+  if (!result->name)
+    goto err;
+
+  memcpy (result->name, setting->name, str_len + 1);
+
+  result->type = setting->type;
+
+  switch (setting->type)
+    {
+    case XSETTINGS_TYPE_INT:
+      result->data.v_int = setting->data.v_int;
+      break;
+    case XSETTINGS_TYPE_COLOR:
+      result->data.v_color = setting->data.v_color;
+      break;
+    case XSETTINGS_TYPE_STRING:
+      str_len = strlen (setting->data.v_string);
+      result->data.v_string = malloc (str_len + 1);
+      if (!result->data.v_string)
+	goto err;
+
+      memcpy (result->data.v_string, setting->data.v_string, str_len + 1);
+      break;
+    }
+
+  result->last_change_serial = setting->last_change_serial;
+
+  return result;
+
+ err:
+  if (result->name)
+    free (result->name);
+  free (result);
+  
+  return NULL;
+}
+
+XSettingsList *
+xsettings_list_copy (XSettingsList *list)
+{
+  XSettingsList *new = NULL;
+  XSettingsList *old_iter = list;
+  XSettingsList *new_iter = NULL;
+
+  while (old_iter)
+    {
+      XSettingsList *new_node;
+
+      new_node = malloc (sizeof *new_node);
+      if (!new_node)
+	goto error;
+
+      new_node->setting = xsettings_setting_copy (old_iter->setting);
+      if (!new_node->setting)
+	{
+	  free (new_node);
+	  goto error;
+	}
+
+      if (new_iter)
+	new_iter->next = new_node;
+      else
+	new = new_node;
+
+      new_iter = new_node;
+      
+      old_iter = old_iter->next;
+    }
+
+  return new;
+
+ error:
+  xsettings_list_free (new);
+  return NULL;
+}
+
+int
+xsettings_setting_equal (XSettingsSetting *setting_a,
+			 XSettingsSetting *setting_b)
+{
+  if (setting_a->type != setting_b->type)
+    return 0;
+
+  if (strcmp (setting_a->name, setting_b->name) != 0)
+    return 0;
+
+  switch (setting_a->type)
+    {
+    case XSETTINGS_TYPE_INT:
+      return setting_a->data.v_int == setting_b->data.v_int;
+    case XSETTINGS_TYPE_COLOR:
+      return (setting_a->data.v_color.red == setting_b->data.v_color.red &&
+	      setting_a->data.v_color.green == setting_b->data.v_color.green &&
+	      setting_a->data.v_color.blue == setting_b->data.v_color.blue &&
+	      setting_a->data.v_color.alpha == setting_b->data.v_color.alpha);
+    case XSETTINGS_TYPE_STRING:
+      return strcmp (setting_a->data.v_string, setting_b->data.v_string) == 0;
+    }
+
+  return 0;
+}
+
+void
+xsettings_setting_free (XSettingsSetting *setting)
+{
+  if (setting->type == XSETTINGS_TYPE_STRING)
+    free (setting->data.v_string);
+
+  if (setting->name)
+    free (setting->name);
+  
+  free (setting);
+}
+
+void
+xsettings_list_free (XSettingsList *list)
+{
+  while (list)
+    {
+      XSettingsList *next = list->next;
+
+      xsettings_setting_free (list->setting);
+      free (list);
+
+      list = next;
+    }
+}
+
+XSettingsResult
+xsettings_list_insert (XSettingsList    **list,
+		       XSettingsSetting  *setting)
+{
+  XSettingsList *node;
+  XSettingsList *iter;
+  XSettingsList *last = NULL;
+
+  node = malloc (sizeof *node);
+  if (!node)
+    return XSETTINGS_NO_MEM;
+  node->setting = setting;
+
+  iter = *list;
+  while (iter)
+    {
+      int cmp = strcmp (setting->name, iter->setting->name);
+
+      if (cmp < 0)
+	break;
+      else if (cmp == 0)
+	{
+	  free (node);
+	  return XSETTINGS_DUPLICATE_ENTRY;
+	}
+
+      last = iter;
+      iter = iter->next;
+    }
+  
+  if (last)
+    last->next = node;
+  else
+    *list = node;
+  
+  node->next = iter;
+  
+  return XSETTINGS_SUCCESS;
+}
+
+XSettingsResult
+xsettings_list_delete (XSettingsList **list,
+		       const char     *name)
+{
+  XSettingsList *iter;
+  XSettingsList *last = NULL;
+
+  iter = *list;
+  while (iter)
+    {
+      if (strcmp (name, iter->setting->name) == 0)
+	{
+	  if (last)
+	    last->next = iter->next;
+	  else
+	    *list = iter->next;
+  
+	  xsettings_setting_free (iter->setting);
+	  free (iter);
+
+	  return XSETTINGS_SUCCESS;
+	}
+
+      last = iter;
+      iter = iter->next;
+    }
+
+  return XSETTINGS_FAILED;
+}
+
+XSettingsSetting *
+xsettings_list_lookup (XSettingsList *list,
+		       const char    *name)
+{
+  XSettingsList *iter;
+
+  iter = list;
+  while (iter)
+    {
+      if (strcmp (name, iter->setting->name) == 0)
+	return iter->setting;
+
+      iter = iter->next;
+    }
+
+  return NULL;
+}
+
+char
+xsettings_byte_order (void)
+{
+  CARD32 myint = 0x01020304;
+  return (*(char *)&myint == 1) ? MSBFirst : LSBFirst;
+}
diff --git a/libmb/xsettings-common.h b/libmb/xsettings-common.h
new file mode 100644
index 0000000..e3af4a6
--- /dev/null
+++ b/libmb/xsettings-common.h
@@ -0,0 +1,110 @@
+/*
+ * Copyright © 2001 Red Hat, Inc.
+ *
+ * Permission to use, copy, modify, distribute, and sell this software and its
+ * documentation for any purpose is hereby granted without fee, provided that
+ * the above copyright notice appear in all copies and that both that
+ * copyright notice and this permission notice appear in supporting
+ * documentation, and that the name of Red Hat not be used in advertising or
+ * publicity pertaining to distribution of the software without specific,
+ * written prior permission.  Red Hat makes no representations about the
+ * suitability of this software for any purpose.  It is provided "as is"
+ * without express or implied warranty.
+ *
+ * RED HAT DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL RED HAT
+ * BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
+ * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN 
+ * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ *
+ * Author:  Owen Taylor, Red Hat, Inc.
+ */
+#ifndef XSETTINGS_COMMON_H
+#define XSETTINGS_COMMON_H
+
+#ifdef __cplusplus
+extern "C" {
+#endif /* __cplusplus */
+
+typedef struct _XSettingsBuffer  XSettingsBuffer;
+typedef struct _XSettingsColor   XSettingsColor;
+typedef struct _XSettingsList    XSettingsList;
+typedef struct _XSettingsSetting XSettingsSetting;
+
+/* Types of settings possible. Enum values correspond to
+ * protocol values.
+ */
+typedef enum 
+{
+  XSETTINGS_TYPE_INT     = 0,
+  XSETTINGS_TYPE_STRING  = 1,
+  XSETTINGS_TYPE_COLOR   = 2
+} XSettingsType;
+
+typedef enum
+{
+  XSETTINGS_SUCCESS,
+  XSETTINGS_NO_MEM,
+  XSETTINGS_ACCESS,
+  XSETTINGS_FAILED,
+  XSETTINGS_NO_ENTRY,
+  XSETTINGS_DUPLICATE_ENTRY
+} XSettingsResult;
+
+struct _XSettingsBuffer
+{
+  char byte_order;
+  size_t len;
+  unsigned char *data;
+  unsigned char *pos;
+};
+
+struct _XSettingsColor
+{
+  unsigned short red, green, blue, alpha;
+};
+
+struct _XSettingsList
+{
+  XSettingsSetting *setting;
+  XSettingsList *next;
+};
+
+struct _XSettingsSetting
+{
+  char *name;
+  XSettingsType type;
+  
+  union {
+    int v_int;
+    char *v_string;
+    XSettingsColor v_color;
+  } data;
+
+  unsigned long last_change_serial;
+};
+
+XSettingsSetting *xsettings_setting_copy  (XSettingsSetting *setting);
+void              xsettings_setting_free  (XSettingsSetting *setting);
+int               xsettings_setting_equal (XSettingsSetting *setting_a,
+					   XSettingsSetting *setting_b);
+
+void              xsettings_list_free   (XSettingsList     *list);
+XSettingsList    *xsettings_list_copy   (XSettingsList     *list);
+XSettingsResult   xsettings_list_insert (XSettingsList    **list,
+					 XSettingsSetting  *setting);
+XSettingsSetting *xsettings_list_lookup (XSettingsList     *list,
+					 const char        *name);
+XSettingsResult   xsettings_list_delete (XSettingsList    **list,
+					 const char        *name);
+
+char xsettings_byte_order (void);
+
+#define XSETTINGS_PAD(n,m) ((n + m - 1) & (~(m-1)))
+
+#ifdef __cplusplus
+}
+#endif /* __cplusplus */
+
+#endif /* XSETTINGS_COMMON_H */
-- 
2.8.1


