Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2049EE00E64; Fri, 29 Apr 2016 03:41:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AE38E00E5A
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 03:41:25 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 29 Apr 2016 03:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,551,1455004800"; d="scan'208";a="794939570"
Received: from heimdall.fi.intel.com ([10.237.68.38])
	by orsmga003.jf.intel.com with ESMTP; 29 Apr 2016 03:41:23 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Apr 2016 13:41:25 +0300
Message-Id: <d18ab41e50dee480aa2d9f6216bef6005499327c.1461925753.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1461925753.git.jussi.kukkonen@intel.com>
References: <cover.1461925753.git.jussi.kukkonen@intel.com>
Subject: [matchbox-terminal][PATCH 1/1] Upgrade to current Vte and Gtk+ versions
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
X-List-Received-Date: Fri, 29 Apr 2016 10:41:33 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 Makefile.am  |  4 ++--
 configure.ac |  2 +-
 main.c       | 49 +++++++++++++++++++++++++++++++++++++++----------
 3 files changed, 42 insertions(+), 13 deletions(-)

diff --git a/Makefile.am b/Makefile.am
index 480fbc0..ef2125c 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -1,6 +1,6 @@
-AM_CPPFLAGS = $(VTE_CFLAGS)
+AM_CPPFLAGS = $(MBTERM_CFLAGS)
 AM_CFLAGS = -Wall
-LDADD = $(VTE_LIBS)
+LDADD = $(MBTERM_LIBS)
 
 bin_PROGRAMS = matchbox-terminal
 matchbox_terminal_SOURCES = main.c
diff --git a/configure.ac b/configure.ac
index d46da3d..0257274 100644
--- a/configure.ac
+++ b/configure.ac
@@ -7,7 +7,7 @@ AM_CONFIG_HEADER(config.h)
 AC_PROG_CPP
 AC_PROG_CC
 
-PKG_CHECK_MODULES(VTE, vte)
+PKG_CHECK_MODULES(MBTERM, glib-2.0 gtk+-3.0 vte-2.91)
 
 AC_OUTPUT([
 Makefile
diff --git a/main.c b/main.c
index bda26d1..0d4597c 100644
--- a/main.c
+++ b/main.c
@@ -18,13 +18,15 @@
 
 #include <gtk/gtk.h>
 #include <vte/vte.h>
+#include <glib.h>
 
 static void
 on_window_title_changed (VteTerminal *terminal, GtkWindow *window)
 {
   char *title;
 
-  title = g_strdup_printf ("%s - Terminal", terminal->window_title);
+  title = g_strdup_printf ("%s - Terminal",
+                           vte_terminal_get_window_title (terminal));
   gtk_window_set_title (window, title);
   g_free (title);
 }
@@ -38,16 +40,22 @@ on_eof (VteTerminal *terminal, gpointer user_data)
 int
 main (int argc, char **argv)
 {
-  GtkWidget *window, *box, *terminal, *scrollbar;
-  
+  GtkWidget *window, *terminal, *scrolled_win;
+  GError *err = NULL;
+  char *cmd;
+  char **cmd_argv = NULL;
+  int cmd_argc;
+
   gtk_init (&argc, &argv);
 
   window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
   g_signal_connect (window, "destroy", gtk_main_quit, NULL);
   gtk_window_set_title (GTK_WINDOW (window), "Terminal");
   
-  box = gtk_hbox_new (FALSE, 0);
-  gtk_container_add (GTK_CONTAINER (window), box);
+  scrolled_win = gtk_scrolled_window_new (NULL, NULL);
+  gtk_scrolled_window_set_policy (GTK_SCROLLED_WINDOW(scrolled_win),
+                                  GTK_POLICY_NEVER, GTK_POLICY_ALWAYS);
+  gtk_container_add (GTK_CONTAINER (window), scrolled_win);
 
   terminal = g_object_connect
     (vte_terminal_new (),
@@ -57,17 +65,38 @@ main (int argc, char **argv)
      /* Child is trying to control the terminal */
      "signal::window-title-changed", on_window_title_changed, window,
      NULL);
-  gtk_box_pack_start (GTK_BOX (box), terminal, TRUE, TRUE, 0);
+  gtk_container_add (GTK_CONTAINER (scrolled_win), terminal);
+
+  cmd = vte_get_user_shell ();
+  if (!cmd)
+    cmd = g_strdup (g_getenv ("SHELL"));
+  if (!cmd)
+    cmd = g_strdup ("/bin/sh");
+
+  if (!g_shell_parse_argv(cmd, &cmd_argc, &cmd_argv, &err)) {
+    g_printerr ("Failed to parse shell command line '%s'\n", cmd);
+  } else if (!vte_terminal_spawn_sync (VTE_TERMINAL (terminal),
+                                       VTE_PTY_DEFAULT,
+                                       NULL,
+                                       cmd_argv,
+                                       NULL,
+                                       G_SPAWN_SEARCH_PATH,
+                                       NULL,
+                                       NULL,
+                                       NULL,
+                                       NULL,
+                                       &err)) {
+    g_printerr ("Failed to spawn shell: %s\n", err->message);
+    g_error_free (err);
+  }
 
-  scrollbar = gtk_vscrollbar_new (VTE_TERMINAL (terminal)->adjustment);
-  gtk_box_pack_start (GTK_BOX (box), scrollbar, FALSE, FALSE, 0);
 
-  vte_terminal_fork_command (VTE_TERMINAL (terminal),
-                             NULL, NULL, NULL, NULL, TRUE, TRUE, TRUE);
+  gtk_window_set_default_size (GTK_WINDOW (window), 640, 480);
 
   gtk_widget_show_all (window);
 
   gtk_main ();
 
+  g_free (cmd);
   return 0;
 }
-- 
2.8.1


