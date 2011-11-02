Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C28EE0136A
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 06:11:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Nov 2011 06:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70404438"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.100])
	by orsmga001.jf.intel.com with ESMTP; 02 Nov 2011 06:11:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Nov 2011 13:11:09 +0000
Message-Id: <1320239469-20779-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH] oprofileui: allow build of server without X libs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Nov 2011 13:11:11 -0000

Fix the configure script to allow oprofile-server to be built
standalone (without needing GTK+ and other X-requiring libraries)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 configure.ac |   15 +++++++++++----
 1 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/configure.ac b/configure.ac
index d49952e..2a7010b 100644
--- a/configure.ac
+++ b/configure.ac
@@ -29,9 +29,11 @@ AC_ARG_ENABLE(client,
 AM_CONDITIONAL(ENABLE_SERVER, test x$enable_server = xyes)
 AM_CONDITIONAL(ENABLE_CLIENT, test x$enable_client = xyes)
 
-PKG_CHECK_MODULES(OPROFILEUI, [glib-2.0 libglade-2.0 gtk+-2.0 libxml-2.0 gconf-2.0])
-AC_SUBST(OPROFILEUI_CFLAGS)
-AC_SUBST(OPROFILEUI_LIBS)
+AS_IF([test "x$enable_client" = "xyes"], [
+        PKG_CHECK_MODULES(OPROFILEUI, [glib-2.0 libglade-2.0 gtk+-2.0 libxml-2.0 gconf-2.0])
+        AC_SUBST(OPROFILEUI_CFLAGS)
+        AC_SUBST(OPROFILEUI_LIBS)
+])
 
 PKG_CHECK_MODULES(OPROFILE_SERVER, [glib-2.0])
 AC_SUBST(OPROFILE_SERVER_CFLAGS)
@@ -41,7 +43,12 @@ AC_ARG_WITH(avahi,
         [AC_HELP_STRING([--with-avahi], [Use Avahi to announce and search for OProfile servers])],
         with_avahi="$withval", with_avahi=no)
 if test $with_avahi = "yes"; then
-        PKG_CHECK_MODULES(AVAHI, [avahi-client avahi-glib avahi-ui])
+        AS_IF([test "x$enable_client" = "xyes"], [
+                PKG_CHECK_MODULES(AVAHI, [avahi-client avahi-glib avahi-ui])
+        ],[
+                PKG_CHECK_MODULES(AVAHI, [avahi-client avahi-glib])
+        ])
+
         AC_DEFINE_UNQUOTED(WITH_AVAHI, [1], [Using Avahi])
 fi
 AM_CONDITIONAL(WITH_AVAHI, test x$with_avahi = xyes)
-- 
1.7.5.4


