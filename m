Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADD9AE00DFA; Thu, 28 Apr 2016 06:04:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C469E00DD6
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:04:20 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2016 06:03:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="794230285"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2016 06:03:21 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Apr 2016 16:02:57 +0300
Message-Id: <ff787e45f66c18e2bf945b736fa81e40cdc1dbb0.1461830592.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
References: <d356f0c5b1dda0fe49944c2a5ce0d1650019ce21.1461830592.git.jussi.kukkonen@intel.com>
In-Reply-To: <cover.1461830592.git.jussi.kukkonen@intel.com>
References: <cover.1461830592.git.jussi.kukkonen@intel.com>
Subject: [matchbox-desktop-2][PATCH 04/16] main: load a custom CSS stylesheet if present
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
X-List-Received-Date: Thu, 28 Apr 2016 13:04:59 -0000

From: Ross Burton <ross.burton@intel.com>

---
 src/Makefile.am |  7 ++++++-
 src/main.c      | 31 ++++++++++++++++++++++++++-----
 2 files changed, 32 insertions(+), 6 deletions(-)

diff --git a/src/Makefile.am b/src/Makefile.am
index e8fa7e2..5f5e961 100644
--- a/src/Makefile.am
+++ b/src/Makefile.am
@@ -1,4 +1,9 @@
-AM_CPPFLAGS = $(GTK_CFLAGS) $(DBUS_CFLAGS) $(SN_CFLAGS) -I$(top_srcdir)
+AM_CPPFLAGS = \
+	$(GTK_CFLAGS) \
+	$(DBUS_CFLAGS) \
+	$(SN_CFLAGS) \
+	-I$(top_srcdir) \
+	-DPKGDATADIR=\"$(pkgdatadir)\"
 AM_CFLAGS = $(WARN_CFLAGS)
 
 bin_PROGRAMS = matchbox-desktop
diff --git a/src/main.c b/src/main.c
index e6d7231..7b8a276 100644
--- a/src/main.c
+++ b/src/main.c
@@ -43,32 +43,53 @@ emit_loaded_signal (gpointer user_data)
 
   dbus_connection_send (conn, msg, NULL);
   dbus_message_unref (msg);
-  
+
   /* Flush explicitly because we're too lazy to integrate DBus into the main
      loop. We're only sending a signal, so if we got as far as here it's
      unlikely to block. */
   dbus_connection_flush (conn);
   dbus_connection_unref (conn);
-  
+
   return FALSE;
 }
 #endif
 
+static void
+load_style (GtkWidget *widget)
+{
+  GtkCssProvider *provider;
+  GError *error = NULL;
+
+  provider = gtk_css_provider_new ();
+  gtk_css_provider_load_from_path (GTK_CSS_PROVIDER (provider),
+                                   PKGDATADIR "/style.css", &error);
+  if (error) {
+    g_warning ("Cannot load CSS: %s", error->message);
+    g_error_free (error);
+  } else {
+    gtk_style_context_add_provider_for_screen
+      (gtk_widget_get_screen (widget),
+       GTK_STYLE_PROVIDER (provider), GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
+  }
+  g_object_unref (provider);
+}
+
 int
 main (int argc, char **argv)
 {
   GtkWidget *desktop;
-  
+
   gtk_init (&argc, &argv);
   g_set_application_name (_("Desktop"));
 
 #if WITH_DBUS
   g_idle_add (emit_loaded_signal, NULL);
 #endif
-  
+
   desktop = create_desktop ();
+  load_style (desktop);
   gtk_main ();
   destroy_desktop ();
-  
+
   return 0;
 }
-- 
2.8.1


