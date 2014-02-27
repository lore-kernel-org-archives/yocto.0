Return-Path: <ajlennon@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E725EE0078B
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 06:16:54 -0800 (PST)
Received: by mail-wi0-f182.google.com with SMTP id f8so3527376wiw.15
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 06:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=a41Yxeiv+oUW27stwzvcp8I/wYi96ywVC2VfqgqRv94=;
	b=XnmvieiLqMtMyw9k2hV+IRhxc4sX34OsPoVlRg8945OV1aMA7pnKj+jBGl0W1n79dg
	n84IRy1HvHQZZKXFBL6cQ3PCoxaO3jL6/a0EU/z8ngzsdIjE73vOsHy1D5T/ODib4/Hs
	EucDlSKxuNZaByA5SWb+TQvLokdqFvnZPzO/tPONPAg+HaHSOla3lUVVltOmBozGRfRQ
	YX9ePmZiWiYBCHN6uDSmEBfhoG3AWsCLrEtWjadcLLwjSXtIt9XuGwYjd3Uj6f8o9TPd
	E5PcDUw5+qjl+lPUTCTh49jxjqRFFjZFDuLlXbxNSuP6IPlng33tlo687HsGc/ZTww7T
	j9Nw==
X-Received: by 10.180.89.211 with SMTP id bq19mr9875798wib.58.1393510613436;
	Thu, 27 Feb 2014 06:16:53 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id lz3sm15708170wic.1.2014.02.27.06.16.51
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 27 Feb 2014 06:16:52 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 27 Feb 2014 14:16:33 +0000
Message-Id: <afe40f17c9ce99846e69584fe14e5083efc90207.1393510407.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-mono] [PATCH 1/1] gtk-sharp: Updated to GTK# 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 14:16:58 -0000

Synopsis:

- Previous recipe 2.10.2 was failing to build
- Updated to current GTK# release 2.12.21
- Cleaned up recipe

Testing:

- This change has been tested on a qemux86 image with the Mono GTK# 'hello world' example

@see: http://www.mono-project.com/GtkSharp:_Hello_World

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 .../fix-ambiguous-actions-glib-includes.patch      |   99 -------------------
 recipes-mono/gtk-sharp/gtk-sharp.inc               |   36 ++++++-
 recipes-mono/gtk-sharp/gtk-sharp_2.10.2.bb         |  101 --------------------
 recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb        |   13 +++
 4 files changed, 46 insertions(+), 203 deletions(-)
 delete mode 100644 recipes-mono/gtk-sharp/files/fix-ambiguous-actions-glib-includes.patch
 delete mode 100644 recipes-mono/gtk-sharp/gtk-sharp_2.10.2.bb
 create mode 100644 recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb

diff --git a/recipes-mono/gtk-sharp/files/fix-ambiguous-actions-glib-includes.patch b/recipes-mono/gtk-sharp/files/fix-ambiguous-actions-glib-includes.patch
deleted file mode 100644
index 0a4ea26..0000000
--- a/recipes-mono/gtk-sharp/files/fix-ambiguous-actions-glib-includes.patch
+++ /dev/null
@@ -1,99 +0,0 @@
-diff -ru gtk-sharp-2.10.2.org/glib/glue/list.c gtk-sharp-2.10.2/glib/glue/list.c
---- gtk-sharp-2.10.2.org/glib/glue/list.c	2012-12-25 10:59:05.203146111 +0000
-+++ gtk-sharp-2.10.2/glib/glue/list.c	2012-12-25 11:00:50.383148628 +0000
-@@ -20,7 +20,7 @@
-  */
- 
- 
--#include <glib/glist.h>
-+#include <glib.h>
- 
- /* Forward declarations */
- gpointer gtksharp_list_get_data (GList *l);
-diff -ru gtk-sharp-2.10.2.org/glib/glue/slist.c gtk-sharp-2.10.2/glib/glue/slist.c
---- gtk-sharp-2.10.2.org/glib/glue/slist.c	2012-12-25 10:59:05.127146109 +0000
-+++ gtk-sharp-2.10.2/glib/glue/slist.c	2012-12-25 11:01:04.155148277 +0000
-@@ -20,7 +20,7 @@
-  */
- 
- 
--#include <glib/gslist.h>
-+#include <glib.h>
- 
- /* Forward declarations */
- gpointer gtksharp_slist_get_data (GSList *l);
-diff -ru gtk-sharp-2.10.2.org/glib/glue/thread.c gtk-sharp-2.10.2/glib/glue/thread.c
---- gtk-sharp-2.10.2.org/glib/glue/thread.c	2012-12-25 10:59:05.147146108 +0000
-+++ gtk-sharp-2.10.2/glib/glue/thread.c	2012-12-25 11:01:23.279148643 +0000
-@@ -20,7 +20,7 @@
-  */
- 
- 
--#include <glib/gthread.h>
-+#include <glib.h>
- 
- gboolean
- glibsharp_g_thread_supported ()
-diff -ru gtk-sharp-2.10.2.org/sample/Actions.cs gtk-sharp-2.10.2/sample/Actions.cs
---- gtk-sharp-2.10.2.org/sample/Actions.cs	2012-12-25 10:59:14.603146276 +0000
-+++ gtk-sharp-2.10.2/sample/Actions.cs	2012-12-26 08:46:36.032548890 +0000
-@@ -189,7 +189,7 @@
- 
- 		static void OnActivate (object obj, EventArgs args)
- 		{
--			Action action = (Action)obj;
-+			Gtk.Action action = (Gtk.Action)obj;
- 			Console.WriteLine ("Action {0} (type={1}) activated",
- 					   action.Name, action.GetType ().FullName);
- 		}
-@@ -218,7 +218,7 @@
- 
- 		static void OnToggleCnp (object obj, EventArgs args)
- 		{
--			Action action = (ToggleAction)obj;
-+			Gtk.Action action = (ToggleAction)obj;
- 			bool sensitive = ((ToggleAction)action).Active;
- 			action = group.GetAction ("cut");
- 			action.Sensitive = sensitive;
-@@ -262,7 +262,7 @@
- 			for (int i = 0; i < num; i++) {
- 				string name = "DynAction" + i;
- 				string label = "Dynamic Action " + i;
--				Action action = new Action (name, label);
-+				Gtk.Action action = new Gtk.Action (name, label);
- 				dynGroup.Add (action);
- 				uim.AddUi (mergeId, "/menubar/DynamicMenu", name,
- 					   name, UIManagerItemType.Menuitem, false);
-@@ -299,7 +299,7 @@
- 
- 		static void OnSelect (object obj, EventArgs args)
- 		{
--			Action action = (Action) actions[obj];
-+			Gtk.Action action = (Gtk.Action) actions[obj];
- 			if (action.Tooltip != null)
- 				statusbar.Push (0, action.Tooltip);
- 		}
-diff -ru gtk-sharp-2.10.2.org/sample/GtkDemo/DemoApplicationWindow.cs gtk-sharp-2.10.2/sample/GtkDemo/DemoApplicationWindow.cs
---- gtk-sharp-2.10.2.org/sample/GtkDemo/DemoApplicationWindow.cs	2012-12-25 10:59:14.375146291 +0000
-+++ gtk-sharp-2.10.2/sample/GtkDemo/DemoApplicationWindow.cs	2012-12-26 08:42:42.732544622 +0000
-@@ -156,7 +156,7 @@
- 
- 		private void ActionActivated (object sender, EventArgs a)
- 		{
--			Action action = sender as Action;
-+			Gtk.Action action = sender as Gtk.Action;
- 			MessageDialog md;
- 
- 			md = new MessageDialog (this, DialogFlags.DestroyWithParent,
-diff -ru gtk-sharp-2.10.2.org/sample/GtkDemo/DemoUIManager.cs gtk-sharp-2.10.2/sample/GtkDemo/DemoUIManager.cs
---- gtk-sharp-2.10.2.org/sample/GtkDemo/DemoUIManager.cs	2012-12-25 10:59:14.355146264 +0000
-+++ gtk-sharp-2.10.2/sample/GtkDemo/DemoUIManager.cs	2012-12-26 08:43:33.388545656 +0000
-@@ -132,7 +132,7 @@
- 
- 		private void ActionActivated (object sender, EventArgs a)
- 		{
--			Action action = sender as Action;
-+			Gtk.Action action = sender as Gtk.Action;
- 			Console.WriteLine ("Action \"{0}\" activated", action.Name);
- 		}
- 
diff --git a/recipes-mono/gtk-sharp/gtk-sharp.inc b/recipes-mono/gtk-sharp/gtk-sharp.inc
index d279bb8..04e25ab 100644
--- a/recipes-mono/gtk-sharp/gtk-sharp.inc
+++ b/recipes-mono/gtk-sharp/gtk-sharp.inc
@@ -1,12 +1,42 @@
-DESCRIPTION = "GTK bindings for mono"
+SUMMARY = "GUI toolkit for Mono"
+DESCRIPTION = "GTK+ bindings for Mono"
 SECTION = "devel/mono"
-
+BUGTRACKER = "http://bugzilla.xamarin.com"
 DEPENDS = "mono mono-native gtk+ atk pango cairo glib-2.0 libglade "
 RDEPENDS_${PN} = "mono"
+LICENSE = "LGPL-2.1"
 
 inherit autotools
 
 # For some reason the URL template changes from version to version,
 # therefore use some variables for the directory and extension
-SRC_URI = "http://go-mono.com/sources/gtk-sharp${SDIRVER}/gtk-sharp-${PV}.tar.${SEXT}"
+SRC_URI = "http://download.mono-project.com/sources/gtk-sharp${SDIRVER}/gtk-sharp-${PV}.tar.${SEXT}"
+
+SDIRVER = "${@gtk_sharp_download_version(d)}"
+SEXT ??= "bz2"
+
+def gtk_sharp_download_version(d):
+    pvsplit = d.getVar('PV', True).split('.')
+    return pvsplit[0] + '' + pvsplit[1]
+
+FILESPATH =. "${FILE_DIRNAME}/gtk-sharp-${PV}:"
+
+FILES_${PN} = "\
+  ${bindir}/* \
+  ${libdir}/* \
+"
+
+FILES_${PN}-dbg = "\
+    ${libdir}/.debug \
+    ${datadir}/* \
+    /usr/src/* \
+"
+
+FILES_${PN}-doc = "\
+    ${libdir}/monodoc/* \
+"
+
+FILES_${PN}-dev = "\
+    ${libdir}/pkgconfig \
+"
 
diff --git a/recipes-mono/gtk-sharp/gtk-sharp_2.10.2.bb b/recipes-mono/gtk-sharp/gtk-sharp_2.10.2.bb
deleted file mode 100644
index 8891809..0000000
--- a/recipes-mono/gtk-sharp/gtk-sharp_2.10.2.bb
+++ /dev/null
@@ -1,101 +0,0 @@
-PV = "2.10.2"
-PR = "r1"
-SDIRVER = "210"
-SEXT = "bz2"
-
-LICENSE = "LGPL-2.1"
-LIC_FILES_CHKSUM = "files://COPYING;md5=7fbc338309ac38fefcd64b04bb903e34"
-
-inherit pkgconfig
-require gtk-sharp.inc
-
-FILESEXTRAPATHS := "${THISDIR}/files"
-SRC_URI += " file://fix-ambiguous-actions-glib-includes.patch"
-
-FILES_libgtk2.0-cil = "/usr/lib/libgtksharpglue-2.so \
-/usr/lib/libgdksharpglue-2.so \
-/usr/lib/libpangosharpglue-2.so \
-/usr/lib/mono/gac/gtk-sharp \
-/usr/lib/mono/gac/gdk-sharp \
-/usr/lib/mono/gac/atk-sharp \
-/usr/lib/mono/gac/pango-sharp \
-/usr/lib/mono/gac/gtk-dotnet \
-/usr/lib/mono/gtk-sharp-2.0/gtk-sharp.dll \
-/usr/lib/mono/gtk-sharp-2.0/gdk-sharp.dll \
-/usr/lib/mono/gtk-sharp-2.0/atk-sharp.dll \
-/usr/lib/mono/gtk-sharp-2.0/pango-sharp.dll \
-/usr/lib/mono/gtk-sharp-2.0/gtk-dotnet.dll \
-/usr/lib/mono/gac/policy.2.*.gtk-sharp/ \
-/usr/lib/mono/gac/policy.2.*.gdk-sharp/ \
-/usr/lib/mono/gac/policy.2.*.atk-sharp/ \
-/usr/lib/mono/gac/policy.2.*.pango-sharp/ \
-/usr/lib/mono/gac/policy.2.*.gtk-dotnet/ \
-        /usr/lib/mono/gtk-sharp-2.0/policy.2.*.gtk-sharp.dll \
-        /usr/lib/mono/gtk-sharp-2.0/policy.2.*.gdk-sharp.dll \
-        /usr/lib/mono/gtk-sharp-2.0/policy.2.*.atk-sharp.dll \
-        /usr/lib/mono/gtk-sharp-2.0/policy.2.*.pango-sharp.dll \
-        /usr/lib/mono/gtk-sharp-2.0/policy.2.*.gtk-dotnet.dll \
-"
-FILES_libgtk2.0-cil-dev = "/usr/lib/pkgconfig/gtk-sharp-2.0.pc \
-/usr/lib/pkgconfig/gtk-dotnet-2.0.pc \
-/usr/share/gapi-2.0/pango-api.xml \
-/usr/share/gapi-2.0/atk-api.xml \
-        /usr/share/gapi-2.0/gdk-api.xml \
-        /usr/share/gapi-2.0/gtk-api.xml"
-FILES_libgtk2.0-cil-dbg += "/usr/lib/.debug/libgtksharpglue-2.so \
-/usr/lib/.debug/libgdksharpglue-2.so \
-/usr/lib/.debug/libpangosharpglue-2.so"
-
-FILES_libglib2.0-cil = "/usr/lib/mono/gac/glib-sharp \
-/usr/lib/libglibsharpglue-2.so \
-/usr/lib/mono/gtk-sharp-2.0/glib-sharp.dll \
-/usr/lib/mono/gac/policy.2.*.glib-sharp/ \
-/usr/lib/mono/gtk-sharp-2.0/policy.2.*.glib-sharp.dll"
-FILES_libglib2.0-cil-dev = "/usr/lib/pkgconfig/glib-sharp-2.0.pc"
-FILES_libglib2.0-cil-dbg += "/usr/lib/.debug/libglibsharpglue-2.so"
-
-FILES_libglade2.0-cil = "/usr/lib/mono/gac/glade-sharp \
-/usr/lib/libgladesharpglue-2.so \
-/usr/lib/mono/gtk-sharp-2.0/glade-sharp.dll \
-/usr/lib/mono/gac/policy.2.*.glade-sharp/ \
-/usr/lib/mono/gtk-sharp-2.0/policy.2.*.glade-sharp.dll"
-FILES_libglade2.0-cil-dev = "/usr/lib/pkgconfig/glade-sharp-2.0.pc \
-/usr/share/gapi-2.0/glade-api.xml"
-FILES_libglade2.0-cil-dbg += "/usr/lib/.debug/libgladesharpglue-2.so"
-
-FILES_gtk-sharp-gapi2 = " \
-/usr/bin/gapi2-* \
-/usr/lib/gtk-sharp-2.0/gapi*"
-FILES_gtk-sharp-gapi2-dev = "/usr/lib/pkgconfig/gapi-2.0.pc"
-
-FILES_gtk-sharp2-glue-staticdev = "/usr/lib/libgtksharpglue-2.la \
-/usr/lib/libgtksharpglue-2.a \
-/usr/lib/libpangosharpglue-2.la \
-/usr/lib/libpangosharpglue-2.a \
-/usr/lib/libgdksharpglue-2.la \
-/usr/lib/libgdksharpglue-2.a"
-
-FILES_glade-sharp2-glue-staticdev = " \
-/usr/lib/libgladesharpglue-2.la \
-/usr/lib/libgladesharpglue-2.a"
-
-FILES_glib-sharp2-glue-staticdev = " \
-/usr/lib/libglibsharpglue-2.la \
-/usr/lib/libglibsharpglue-2.a"
-
-PACKAGES = "libgtk2.0-cil libgtk2.0-cil-dev libgtk2.0-cil-dbg \
-libglib2.0-cil libglib2.0-cil-dev libglib2.0-cil-dbg \
-libglade2.0-cil libglade2.0-cil-dev libglade2.0-cil-dbg \
-gtk-sharp-gapi2 gtk-sharp-gapi2-dev \
-gtk-sharp2-glue-staticdev glade-sharp2-glue-staticdev glib-sharp2-glue-staticdev"
-
-SRC_URI[md5sum] = "7d509a677c58b2e6a8c85db51d0b1451"
-SRC_URI[sha256sum] = "8dc7f6180109a529b3216b6527f34a01e1e4484e42ebbd28d551e8f6ce0c243d"
-
-# There is a race condition in the gtk-sharp build which seems to result in failure to
-# properly sign assemblies (e.g. policy-2.4-foo.dll). We then fail installing those to
-# the GAC as they are delay signed rather than strong named as they should be. Until 
-# the race condition is identified and patched a workaround is to disable parallel make
-# tasks for this recipe (AJL 26/01/13)
-PARALLEL_MAKE=""
-
diff --git a/recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb b/recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb
new file mode 100644
index 0000000..a011126
--- /dev/null
+++ b/recipes-mono/gtk-sharp/gtk-sharp_2.12.21.bb
@@ -0,0 +1,13 @@
+require gtk-sharp.inc
+
+inherit pkgconfig
+
+PR = "r1"
+
+LIC_FILES_CHKSUM = "files://COPYING;md5=f14599a2f089f6ff8c97e2baa4e3d575"
+
+SRC_URI[md5sum] = "2e892f265877fe5c16f41b771edb7618"
+SRC_URI[sha256sum] = "ea02da7000433115dcc008102e0c217479c06d74b2c3af5b76527784f933b088"
+
+SEXT = "gz"
+
-- 
1.7.9.5


