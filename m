Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A998CE0073F
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 19:53:53 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1VhASr-0001Gi-Vp; Fri, 15 Nov 2013 03:53:04 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VhATA-0003Rn-6N; Fri, 15 Nov 2013 03:53:20 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Fri, 15 Nov 2013 03:53:19 +0000
Message-Id: <1384487599-13222-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH] Bump versions to catch up with master in oe-core.
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
X-List-Received-Date: Fri, 15 Nov 2013 03:53:53 -0000

  openssh 6.2p2 -> 6.4p1
  glib-2.0 2.38.0 -> 2.38.1
  at 3.1.13 -> 3.1.14
  sudo 1.8.7 -> 1.8.8
  tar 1.26 -> 1.27
  mesa 9.1.6 -> 9.2.2
  gnupg 2.0.21 -> 2.0.22

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../openssh/openssh_6.2p2.bbappend                 |   13 --
 .../openssh/openssh_6.4p1.bbappend                 |   13 ++
 recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend     |    1 -
 recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend     |    1 +
 recipes-extended/at/at/at-3.1.13-selinux.patch     |  184 --------------------
 recipes-extended/at/at/at-3.1.14-selinux.patch     |  184 ++++++++++++++++++++
 recipes-extended/at/at_3.1.13.bbappend             |    7 -
 recipes-extended/at/at_3.1.14.bbappend             |    7 +
 recipes-extended/sudo/sudo_1.8.7.bbappend          |    3 -
 recipes-extended/sudo/sudo_1.8.8.bbappend          |    3 +
 recipes-extended/tar/tar_1.26.bbappend             |   15 --
 recipes-extended/tar/tar_1.27.bbappend             |   15 ++
 recipes-graphics/mesa/mesa_9.1.6.bbappend          |    1 -
 recipes-graphics/mesa/mesa_9.2.2.bbappend          |    1 +
 recipes-support/gnupg/gnupg_2.0.21.bbappend        |    5 -
 recipes-support/gnupg/gnupg_2.0.22.bbappend        |    5 +
 16 files changed, 229 insertions(+), 229 deletions(-)
 delete mode 100644 recipes-connectivity/openssh/openssh_6.2p2.bbappend
 create mode 100644 recipes-connectivity/openssh/openssh_6.4p1.bbappend
 delete mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend
 create mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend
 delete mode 100644 recipes-extended/at/at/at-3.1.13-selinux.patch
 create mode 100644 recipes-extended/at/at/at-3.1.14-selinux.patch
 delete mode 100644 recipes-extended/at/at_3.1.13.bbappend
 create mode 100644 recipes-extended/at/at_3.1.14.bbappend
 delete mode 100644 recipes-extended/sudo/sudo_1.8.7.bbappend
 create mode 100644 recipes-extended/sudo/sudo_1.8.8.bbappend
 delete mode 100644 recipes-extended/tar/tar_1.26.bbappend
 create mode 100644 recipes-extended/tar/tar_1.27.bbappend
 delete mode 100644 recipes-graphics/mesa/mesa_9.1.6.bbappend
 create mode 100644 recipes-graphics/mesa/mesa_9.2.2.bbappend
 delete mode 100644 recipes-support/gnupg/gnupg_2.0.21.bbappend
 create mode 100644 recipes-support/gnupg/gnupg_2.0.22.bbappend

diff --git a/recipes-connectivity/openssh/openssh_6.2p2.bbappend b/recipes-connectivity/openssh/openssh_6.2p2.bbappend
deleted file mode 100644
index 223b8cf..0000000
--- a/recipes-connectivity/openssh/openssh_6.2p2.bbappend
+++ /dev/null
@@ -1,13 +0,0 @@
-PR .= ".5"
-
-inherit with-selinux
-
-FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
-
-# There is no distro feature just for audit.  If we want it,
-# uncomment the following.
-#
-#PACKAGECONFIG += "${@target_selinux(d, 'audit')}"
-
-PACKAGECONFIG[audit] = "--with-audit=linux,--without-audit,audit,"
-
diff --git a/recipes-connectivity/openssh/openssh_6.4p1.bbappend b/recipes-connectivity/openssh/openssh_6.4p1.bbappend
new file mode 100644
index 0000000..223b8cf
--- /dev/null
+++ b/recipes-connectivity/openssh/openssh_6.4p1.bbappend
@@ -0,0 +1,13 @@
+PR .= ".5"
+
+inherit with-selinux
+
+FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
+
+# There is no distro feature just for audit.  If we want it,
+# uncomment the following.
+#
+#PACKAGECONFIG += "${@target_selinux(d, 'audit')}"
+
+PACKAGECONFIG[audit] = "--with-audit=linux,--without-audit,audit,"
+
diff --git a/recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend b/recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend
deleted file mode 100644
index 8c11cac..0000000
--- a/recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit enable-selinux
diff --git a/recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend b/recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend
new file mode 100644
index 0000000..8c11cac
--- /dev/null
+++ b/recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend
@@ -0,0 +1 @@
+inherit enable-selinux
diff --git a/recipes-extended/at/at/at-3.1.13-selinux.patch b/recipes-extended/at/at/at-3.1.13-selinux.patch
deleted file mode 100644
index 5a08a43..0000000
--- a/recipes-extended/at/at/at-3.1.13-selinux.patch
+++ /dev/null
@@ -1,184 +0,0 @@
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Wed, 13 Jun 2012 14:47:54 +0800
-Subject: [PATCH] at: atd add SELinux support.
-
-Upstream-Status: Inappropriate [configuration]
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
----
- Makefile.in  |    1 +
- atd.c        |   83 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
- config.h.in  |    3 ++
- configure.ac |    8 +++++
- 4 files changed, 95 insertions(+), 0 deletions(-)
-
-diff --git a/Makefile.in b/Makefile.in
-index 10e7ed2..35792cd 100644
---- a/Makefile.in
-+++ b/Makefile.in
-@@ -39,6 +39,7 @@ LIBS		= @LIBS@
- LIBOBJS		= @LIBOBJS@
- INSTALL		= @INSTALL@
- PAMLIB          = @PAMLIB@
-+SELINUXLIB      = @SELINUXLIB@
- 
- CLONES		= atq atrm
- ATOBJECTS	= at.o panic.o perm.o posixtm.o y.tab.o lex.yy.o
-@@ -72,7 +72,7 @@ at: $(ATOBJECTS)
-	$(LN_S) -f at atrm
- 
- atd: $(RUNOBJECTS)
--	$(CC) $(CFLAGS) -o atd $(RUNOBJECTS) $(LIBS) $(PAMLIB) $(LDFLAGS)
-+	$(CC) $(CFLAGS) -o atd $(RUNOBJECTS) $(LIBS) $(PAMLIB) $(SELINUXLIB) $(LDFLAGS)
- 
- y.tab.c y.tab.h: parsetime.y
-	$(YACC) -d parsetime.y
-diff --git a/atd.c b/atd.c
-index af3e577..463124f 100644
---- a/atd.c
-+++ b/atd.c
-@@ -83,6 +83,14 @@
- #include "getloadavg.h"
- #endif
- 
-+#ifdef WITH_SELINUX
-+#include <selinux/selinux.h>
-+#include <selinux/get_context_list.h>
-+int selinux_enabled = 0;
-+#include <selinux/flask.h>
-+#include <selinux/av_permissions.h>
-+#endif
-+
- /* Macros */
- 
- #define BATCH_INTERVAL_DEFAULT 60
-@@ -195,6 +203,70 @@ myfork()
- #define fork myfork
- #endif
- 
-+#ifdef WITH_SELINUX
-+static int
-+set_selinux_context(const char *name, const char *filename)
-+{
-+    security_context_t user_context=NULL;
-+    security_context_t  file_context=NULL;
-+    struct av_decision avd;
-+    int retval=-1;
-+    char *seuser=NULL;
-+    char *level=NULL;
-+
-+    if (getseuserbyname(name, &seuser, &level) == 0) {
-+	retval=get_default_context_with_level(seuser, level, NULL, &user_context);
-+	free(seuser);
-+	free(level);
-+	if (retval) {
-+	    if (security_getenforce()==1) {
-+		perr("execle: couldn't get security context for user %s\n", name);
-+	    } else {
-+		syslog(LOG_ERR, "execle: couldn't get security context for user %s\n", name);
-+		return -1;
-+	    }
-+	}
-+    }
-+
-+    /*
-+    * Since crontab files are not directly executed,
-+    * crond must ensure that the crontab file has
-+    * a context that is appropriate for the context of
-+    * the user cron job.  It performs an entrypoint
-+    * permission check for this purpose.
-+    */
-+    if (fgetfilecon(STDIN_FILENO, &file_context) < 0)
-+	perr("fgetfilecon FAILED %s", filename);
-+
-+    retval = security_compute_av(user_context,
-+			file_context,
-+			SECCLASS_FILE,
-+			FILE__ENTRYPOINT,
-+			&avd);
-+    freecon(file_context);
-+    if (retval || ((FILE__ENTRYPOINT & avd.allowed) != FILE__ENTRYPOINT)) {
-+	if (security_getenforce()==1) {
-+	    perr("Not allowed to set exec context to %s for user  %s\n", user_context,name);
-+	} else {
-+	    syslog(LOG_ERR, "Not allowed to set exec context to %s for user  %s\n", user_context,name);
-+	    retval = -1;
-+	    goto err;
-+	}
-+    }
-+    if (setexeccon(user_context) < 0) {
-+	if (security_getenforce()==1) {
-+	    perr("Could not set exec context to %s for user  %s\n", user_context,name);
-+	    retval = -1;
-+	} else {
-+	    syslog(LOG_ERR, "Could not set exec context to %s for user  %s\n", user_context,name);
-+	}
-+    }
-+err:
-+    freecon(user_context);
-+    return 0;
-+}
-+#endif
-+
- static void
- run_file(const char *filename, uid_t uid, gid_t gid)
- {
-@@ -435,6 +507,13 @@ run_file(const char *filename, uid_t uid, gid_t gid)
- 
- 	    chdir("/");
- 
-+#ifdef WITH_SELINUX
-+	    if (selinux_enabled > 0) {
-+		if (set_selinux_context(pentry->pw_name, filename) < 0)
-+		    perr("SELinux Failed to set context\n");
-+	    }
-+#endif
-+
- 	    if (execle("/bin/sh", "sh", (char *) NULL, nenvp) != 0)
- 		perr("Exec failed for /bin/sh");
- 
-@@ -707,6 +786,10 @@ main(int argc, char *argv[])
-     struct passwd *pwe;
-     struct group *ge;
- 
-+#ifdef WITH_SELINUX
-+    selinux_enabled = is_selinux_enabled();
-+#endif
-+
- /* We don't need root privileges all the time; running under uid and gid
-  * daemon is fine.
-  */
-diff --git a/configure.ac b/configure.ac
-index 2db7b65..5ecc35a 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -94,6 +94,18 @@ AC_CHECK_HEADERS(security/pam_appl.h, [
-    fi])
- fi
- 
-+AC_ARG_WITH([selinux],
-+  [AS_HELP_STRING([--without-selinux], [without SELinux support])])
-+
-+if test "x$with_selinux" != xno; then
-+AC_CHECK_HEADERS(selinux/selinux.h, [
-+  SELINUXLIB="-lselinux"
-+  AC_DEFINE(WITH_SELINUX, 1, [Define to 1 for SELinux support])],
-+   [if test "x$with_selinux" = xyes; then
-+   AC_MSG_ERROR([SELinux selected but selinux/selinux.h not found])
-+   fi])
-+fi
-+
- dnl Checking for programs
- 
- AC_PATH_PROG(SENDMAIL, sendmail, , $PATH:/usr/lib:/usr/sbin )
-@@ -104,6 +116,7 @@ fi
- 
- AC_SUBST(MAIL_CMD)
- AC_SUBST(PAMLIB)
-+AC_SUBST(SELINUXLIB)
- 
- AC_MSG_CHECKING(etcdir)
- AC_ARG_WITH(etcdir,
--- 
-1.7.5.4
-
diff --git a/recipes-extended/at/at/at-3.1.14-selinux.patch b/recipes-extended/at/at/at-3.1.14-selinux.patch
new file mode 100644
index 0000000..4e5e18c
--- /dev/null
+++ b/recipes-extended/at/at/at-3.1.14-selinux.patch
@@ -0,0 +1,184 @@
+From: Xin Ouyang <Xin.Ouyang@windriver.com>
+Date: Wed, 13 Jun 2012 14:47:54 +0800
+Subject: [PATCH] at: atd add SELinux support.
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+---
+ Makefile.in  |    1 +
+ atd.c        |   83 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+ config.h.in  |    3 ++
+ configure.ac |    8 +++++
+ 4 files changed, 95 insertions(+), 0 deletions(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index 10e7ed2..35792cd 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -39,6 +39,7 @@ LIBS		= @LIBS@
+ LIBOBJS		= @LIBOBJS@
+ INSTALL		= @INSTALL@
+ PAMLIB          = @PAMLIB@
++SELINUXLIB      = @SELINUXLIB@
+ 
+ CLONES		= atq atrm
+ ATOBJECTS	= at.o panic.o perm.o posixtm.o y.tab.o lex.yy.o
+@@ -72,7 +72,7 @@ at: $(ATOBJECTS)
+	$(LN_S) -f at atrm
+ 
+ atd: $(RUNOBJECTS)
+-	$(CC) $(LDFLAGS) -o atd $(RUNOBJECTS) $(LIBS) $(PAMLIB)
++	$(CC) $(LDFLAGS) -o atd $(RUNOBJECTS) $(LIBS) $(PAMLIB) $(SELINUXLIB)
+ 
+ y.tab.c y.tab.h: parsetime.y
+	$(YACC) -d parsetime.y
+diff --git a/atd.c b/atd.c
+index af3e577..463124f 100644
+--- a/atd.c
++++ b/atd.c
+@@ -83,6 +83,14 @@
+ #include "getloadavg.h"
+ #endif
+ 
++#ifdef WITH_SELINUX
++#include <selinux/selinux.h>
++#include <selinux/get_context_list.h>
++int selinux_enabled = 0;
++#include <selinux/flask.h>
++#include <selinux/av_permissions.h>
++#endif
++
+ /* Macros */
+ 
+ #define BATCH_INTERVAL_DEFAULT 60
+@@ -195,6 +203,70 @@ myfork()
+ #define fork myfork
+ #endif
+ 
++#ifdef WITH_SELINUX
++static int
++set_selinux_context(const char *name, const char *filename)
++{
++    security_context_t user_context=NULL;
++    security_context_t  file_context=NULL;
++    struct av_decision avd;
++    int retval=-1;
++    char *seuser=NULL;
++    char *level=NULL;
++
++    if (getseuserbyname(name, &seuser, &level) == 0) {
++	retval=get_default_context_with_level(seuser, level, NULL, &user_context);
++	free(seuser);
++	free(level);
++	if (retval) {
++	    if (security_getenforce()==1) {
++		perr("execle: couldn't get security context for user %s\n", name);
++	    } else {
++		syslog(LOG_ERR, "execle: couldn't get security context for user %s\n", name);
++		return -1;
++	    }
++	}
++    }
++
++    /*
++    * Since crontab files are not directly executed,
++    * crond must ensure that the crontab file has
++    * a context that is appropriate for the context of
++    * the user cron job.  It performs an entrypoint
++    * permission check for this purpose.
++    */
++    if (fgetfilecon(STDIN_FILENO, &file_context) < 0)
++	perr("fgetfilecon FAILED %s", filename);
++
++    retval = security_compute_av(user_context,
++			file_context,
++			SECCLASS_FILE,
++			FILE__ENTRYPOINT,
++			&avd);
++    freecon(file_context);
++    if (retval || ((FILE__ENTRYPOINT & avd.allowed) != FILE__ENTRYPOINT)) {
++	if (security_getenforce()==1) {
++	    perr("Not allowed to set exec context to %s for user  %s\n", user_context,name);
++	} else {
++	    syslog(LOG_ERR, "Not allowed to set exec context to %s for user  %s\n", user_context,name);
++	    retval = -1;
++	    goto err;
++	}
++    }
++    if (setexeccon(user_context) < 0) {
++	if (security_getenforce()==1) {
++	    perr("Could not set exec context to %s for user  %s\n", user_context,name);
++	    retval = -1;
++	} else {
++	    syslog(LOG_ERR, "Could not set exec context to %s for user  %s\n", user_context,name);
++	}
++    }
++err:
++    freecon(user_context);
++    return 0;
++}
++#endif
++
+ static void
+ run_file(const char *filename, uid_t uid, gid_t gid)
+ {
+@@ -435,6 +507,13 @@ run_file(const char *filename, uid_t uid, gid_t gid)
+ 
+ 	    chdir("/");
+ 
++#ifdef WITH_SELINUX
++	    if (selinux_enabled > 0) {
++		if (set_selinux_context(pentry->pw_name, filename) < 0)
++		    perr("SELinux Failed to set context\n");
++	    }
++#endif
++
+ 	    if (execle("/bin/sh", "sh", (char *) NULL, nenvp) != 0)
+ 		perr("Exec failed for /bin/sh");
+ 
+@@ -707,6 +786,10 @@ main(int argc, char *argv[])
+     struct passwd *pwe;
+     struct group *ge;
+ 
++#ifdef WITH_SELINUX
++    selinux_enabled = is_selinux_enabled();
++#endif
++
+ /* We don't need root privileges all the time; running under uid and gid
+  * daemon is fine.
+  */
+diff --git a/configure.ac b/configure.ac
+index 2db7b65..5ecc35a 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -94,6 +94,18 @@ AC_CHECK_HEADERS(security/pam_appl.h, [
+    fi])
+ fi
+ 
++AC_ARG_WITH([selinux],
++  [AS_HELP_STRING([--without-selinux], [without SELinux support])])
++
++if test "x$with_selinux" != xno; then
++AC_CHECK_HEADERS(selinux/selinux.h, [
++  SELINUXLIB="-lselinux"
++  AC_DEFINE(WITH_SELINUX, 1, [Define to 1 for SELinux support])],
++   [if test "x$with_selinux" = xyes; then
++   AC_MSG_ERROR([SELinux selected but selinux/selinux.h not found])
++   fi])
++fi
++
+ dnl Checking for programs
+ 
+ AC_PATH_PROG(SENDMAIL, sendmail, , $PATH:/usr/lib:/usr/sbin )
+@@ -104,6 +116,7 @@ fi
+ 
+ AC_SUBST(MAIL_CMD)
+ AC_SUBST(PAMLIB)
++AC_SUBST(SELINUXLIB)
+ 
+ AC_MSG_CHECKING(etcdir)
+ AC_ARG_WITH(etcdir,
+-- 
+1.7.5.4
+
diff --git a/recipes-extended/at/at_3.1.13.bbappend b/recipes-extended/at/at_3.1.13.bbappend
deleted file mode 100644
index f30abab..0000000
--- a/recipes-extended/at/at_3.1.13.bbappend
+++ /dev/null
@@ -1,7 +0,0 @@
-PR .= ".2"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://at-3.1.13-selinux.patch"
-
-inherit with-selinux
diff --git a/recipes-extended/at/at_3.1.14.bbappend b/recipes-extended/at/at_3.1.14.bbappend
new file mode 100644
index 0000000..a7ecbc2
--- /dev/null
+++ b/recipes-extended/at/at_3.1.14.bbappend
@@ -0,0 +1,7 @@
+PR .= ".2"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += "file://at-3.1.14-selinux.patch"
+
+inherit with-selinux
diff --git a/recipes-extended/sudo/sudo_1.8.7.bbappend b/recipes-extended/sudo/sudo_1.8.7.bbappend
deleted file mode 100644
index 5ad8973..0000000
--- a/recipes-extended/sudo/sudo_1.8.7.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-PR .= ".2"
-
-inherit with-selinux
diff --git a/recipes-extended/sudo/sudo_1.8.8.bbappend b/recipes-extended/sudo/sudo_1.8.8.bbappend
new file mode 100644
index 0000000..5ad8973
--- /dev/null
+++ b/recipes-extended/sudo/sudo_1.8.8.bbappend
@@ -0,0 +1,3 @@
+PR .= ".2"
+
+inherit with-selinux
diff --git a/recipes-extended/tar/tar_1.26.bbappend b/recipes-extended/tar/tar_1.26.bbappend
deleted file mode 100644
index 2aad7a5..0000000
--- a/recipes-extended/tar/tar_1.26.bbappend
+++ /dev/null
@@ -1,15 +0,0 @@
-PR .= ".3"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://tar-1.24-xattrs.patch"
-
-inherit enable-selinux
-
-
-PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
-
-# configure has no acl enable/disable options!
-#
-PACKAGECONFIG[acl] = ",,acl,"
-
diff --git a/recipes-extended/tar/tar_1.27.bbappend b/recipes-extended/tar/tar_1.27.bbappend
new file mode 100644
index 0000000..2aad7a5
--- /dev/null
+++ b/recipes-extended/tar/tar_1.27.bbappend
@@ -0,0 +1,15 @@
+PR .= ".3"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += "file://tar-1.24-xattrs.patch"
+
+inherit enable-selinux
+
+
+PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
+
+# configure has no acl enable/disable options!
+#
+PACKAGECONFIG[acl] = ",,acl,"
+
diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend b/recipes-graphics/mesa/mesa_9.1.6.bbappend
deleted file mode 100644
index 8c11cac..0000000
--- a/recipes-graphics/mesa/mesa_9.1.6.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit enable-selinux
diff --git a/recipes-graphics/mesa/mesa_9.2.2.bbappend b/recipes-graphics/mesa/mesa_9.2.2.bbappend
new file mode 100644
index 0000000..8c11cac
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_9.2.2.bbappend
@@ -0,0 +1 @@
+inherit enable-selinux
diff --git a/recipes-support/gnupg/gnupg_2.0.21.bbappend b/recipes-support/gnupg/gnupg_2.0.21.bbappend
deleted file mode 100644
index dddd945..0000000
--- a/recipes-support/gnupg/gnupg_2.0.21.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-PR .= ".1"
-
-inherit enable-selinux
-# gnupg will not build with libselinux, so remove the depend
-PACKAGECONFIG[selinux] = "--enable-selinux-support,--disable-selinux-support,,"
diff --git a/recipes-support/gnupg/gnupg_2.0.22.bbappend b/recipes-support/gnupg/gnupg_2.0.22.bbappend
new file mode 100644
index 0000000..dddd945
--- /dev/null
+++ b/recipes-support/gnupg/gnupg_2.0.22.bbappend
@@ -0,0 +1,5 @@
+PR .= ".1"
+
+inherit enable-selinux
+# gnupg will not build with libselinux, so remove the depend
+PACKAGECONFIG[selinux] = "--enable-selinux-support,--disable-selinux-support,,"
-- 
1.7.10.4


