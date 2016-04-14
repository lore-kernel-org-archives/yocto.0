Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 550A5E00D71; Thu, 14 Apr 2016 05:10:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2556BE00931
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 05:10:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 14 Apr 2016 05:10:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,484,1455004800"; d="scan'208";a="932336139"
Received: from heimdall.fi.intel.com ([10.237.68.144])
	by orsmga001.jf.intel.com with ESMTP; 14 Apr 2016 05:10:51 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Apr 2016 15:10:51 +0300
Message-Id: <b8f164945c53c1ca74800a2d3adfd5cd9d0bb1d0.1460633980.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.0.rc3
In-Reply-To: <cover.1460633980.git.jussi.kukkonen@intel.com>
References: <cover.1460633980.git.jussi.kukkonen@intel.com>
Subject: [matchbox-keyboard][PATCH 1/1] gtk-im: Add support for GTK+3 as well as GTK+2
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
X-List-Received-Date: Thu, 14 Apr 2016 12:10:58 -0000

* A few changes to avoid deprecated macros, otherwise the code works
  for both versions
* add --enable-gtk3-im configure flag

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 Makefile.am          |  6 +-----
 configure.ac         | 29 +++++++++++++++++++++--------
 gtk-im/Makefile.am   | 29 +++++++++++++++++++++++------
 gtk-im/im-context.c  |  2 +-
 gtk-im/im-protocol.c | 10 ++++++----
 5 files changed, 52 insertions(+), 24 deletions(-)

diff --git a/Makefile.am b/Makefile.am
index fb45d97..e4510f9 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -1,13 +1,9 @@
-SUBDIRS = src layouts
+SUBDIRS = src layouts gtk-im
 
 if WANT_EXAMPLES
 SUBDIRS += examples
 endif
 
-if WANT_IM
-SUBDIRS += gtk-im
-endif 
-
 if WANT_APPLET
 SUBDIRS += applet
 endif 
diff --git a/configure.ac b/configure.ac
index 2e86301..6c1b4ea 100644
--- a/configure.ac
+++ b/configure.ac
@@ -45,10 +45,16 @@ AC_ARG_ENABLE(examples,
 AM_CONDITIONAL(WANT_EXAMPLES, test x$enable_examples = xyes)
  
 AC_ARG_ENABLE(gtk-im,
-  AC_HELP_STRING([--enable-gtk-im], [enable GTK+ IM support [default=no]]),
-   		enable_im=$enableval, 
-		enable_im=no)	    
-AM_CONDITIONAL(WANT_IM, test x$enable_im = xyes)
+  AC_HELP_STRING([--enable-gtk-im], [enable GTK2+ IM support [default=no]]),
+                 enable_gtk2_im=$enableval,
+                 enable_gtk2_im=no)
+AM_CONDITIONAL(WANT_GTK2_IM, test x$enable_gtk2_im = xyes)
+
+AC_ARG_ENABLE(gtk3-im,
+  AC_HELP_STRING([--enable-gtk3-im], [enable GTK3+ IM support [default=no]]),
+                enable_gtk3_im=$enableval,
+                enable_gtk3_im=no)
+AM_CONDITIONAL(WANT_GTK3_IM, test x$enable_gtk3_im = xyes)
 
 AC_ARG_ENABLE(applet,
   AC_HELP_STRING([--enable-applet], [enable panel applet [default=no]]),
@@ -98,16 +104,22 @@ if test x$enable_cairo = xyes; then
    AC_DEFINE_UNQUOTED(WANT_CAIRO, 1, [Use Cairo to paint libs])
 fi
 
-if test x$enable_examples = xyes || test x$enable_im = xyes || test x$enable_gtk_widget = xyes; then
+if test x$enable_examples = xyes || test x$enable_gtk2_im = xyes || test x$enable_gtk_widget = xyes; then
    PKG_CHECK_MODULES(GTK2, gtk+-2.0)
    GTK_VERSION=`$PKG_CONFIG --variable=gtk_binary_version gtk+-2.0`
    AC_SUBST(GTK_VERSION)
-
-   if test x$enable_im = xyes || test x$enable_gtk_widget = xyes; then
+   if test x$enable_gtk_widget = xyes; then
       LIBRARY_REQUIRES="$LIBRARY_REQUIRES gtk+-2.0"
    fi
 fi
 
+if test x$enable_gtk3_im = xyes; then
+   PKG_CHECK_MODULES(GTK3, gtk+-3.0)
+   GTK3VERSION=`$PKG_CONFIG --variable=gtk_binary_version gtk+-3.0`
+   AC_SUBST(GTK3VERSION)
+fi
+
+
 if test x$enable_applet = xyes; then
    PKG_CHECK_MODULES(APPLET, matchbox-panel)
 fi
@@ -260,6 +272,7 @@ echo "
             Building with Cairo:          ${enable_cairo}
             Building Gtk widget:          ${enable_gtk_widget}
             Building Examples:            ${enable_examples}
-            Building GTK+ Input Method:   ${enable_im}
+            Building GTK2+ Input Method:  ${enable_gtk2_im}
+            Building GTK3+ Input Method:  ${enable_gtk3_im}
             Building panel applet:        ${enable_applet}
 "
diff --git a/gtk-im/Makefile.am b/gtk-im/Makefile.am
index 9b797d0..66bfcee 100644
--- a/gtk-im/Makefile.am
+++ b/gtk-im/Makefile.am
@@ -1,14 +1,31 @@
 AM_CFLAGS = -Wall
 
-imdir = @libdir@/gtk-2.0/@GTK_VERSION@/immodules/
-im_LTLIBRARIES = libmb-im-invoker.la
+if WANT_GTK2_IM
+gtk2imdir = @libdir@/gtk-2.0/@GTK_VERSION@/immodules/
+gtk2im_LTLIBRARIES = libmbgtk2-im-invoker.la
 # TODO: remove lib prefix
 
-libmb_im_invoker_la_CPPFLAGS = @GTK2_CFLAGS@ -I${top_srcdir}/src
-libmb_im_invoker_la_LDFLAGS = -avoid-version
-libmb_im_invoker_la_LIBADD = @GTK2_LIBS@
+libmbgtk2_im_invoker_la_CPPFLAGS = @GTK2_CFLAGS@ -I${top_srcdir}/src
+libmbgtk2_im_invoker_la_LDFLAGS = -avoid-version
+libmbgtk2_im_invoker_la_LIBADD = @GTK2_LIBS@
 
-libmb_im_invoker_la_SOURCES = \
+libmbgtk2_im_invoker_la_SOURCES = \
+        im-module.c \
+        im-context.h im-context.c \
+        im-protocol.h im-protocol.c
+endif
+
+if WANT_GTK3_IM
+gtk3imdir = @libdir@/gtk-3.0/@GTK3VERSION@/immodules/
+gtk3im_LTLIBRARIES = libmbgtk3-im-invoker.la
+# TODO: remove lib prefix
+
+libmbgtk3_im_invoker_la_CPPFLAGS = @GTK3_CFLAGS@ -I${top_srcdir}/src
+libmbgtk3_im_invoker_la_LDFLAGS = -avoid-version
+libmbgtk3_im_invoker_la_LIBADD = @GTK3_LIBS@
+
+libmbgtk3_im_invoker_la_SOURCES = \
 	im-module.c \
 	im-context.h im-context.c \
 	im-protocol.h im-protocol.c
+endif
diff --git a/gtk-im/im-context.c b/gtk-im/im-context.c
index 087cc14..3e1749e 100644
--- a/gtk-im/im-context.c
+++ b/gtk-im/im-context.c
@@ -16,7 +16,7 @@
  *
  */
 
-#include <gtk/gtkimcontextsimple.h>
+#include <gtk/gtk.h>
 
 #include "im-context.h"
 #include "im-protocol.h"
diff --git a/gtk-im/im-protocol.c b/gtk-im/im-protocol.c
index ac2711a..de98fd6 100644
--- a/gtk-im/im-protocol.c
+++ b/gtk-im/im-protocol.c
@@ -29,24 +29,26 @@ protocol_send_event (MBKeyboardRemoteOperation op)
 {
   XEvent event;
   int xerror;
+  Display *display = gdk_x11_get_default_xdisplay ();
+  Window window = gdk_x11_get_default_root_xwindow ();
 
   memset (&event, 0, sizeof (XEvent));
 
   event.xclient.type = ClientMessage;
-  event.xclient.window = gdk_x11_get_default_root_xwindow ();
+  event.xclient.window = window;
   event.xclient.message_type = gdk_x11_get_xatom_by_name ("_MB_IM_INVOKER_COMMAND");
   event.xclient.format = 32;
   event.xclient.data.l[0] = op;
 
   gdk_error_trap_push ();
 
-  XSendEvent (GDK_DISPLAY (), 
-	      gdk_x11_get_default_root_xwindow (), 
+  XSendEvent (display,
+	      window,
 	      False,
 	      SubstructureRedirectMask | SubstructureNotifyMask,
 	      &event);
 
-  XSync (GDK_DISPLAY(), False);
+  XSync (display, False);
   
   if ((xerror = gdk_error_trap_pop ())) {
     g_warning ("X error %d", xerror);
-- 
2.8.0.rc3


