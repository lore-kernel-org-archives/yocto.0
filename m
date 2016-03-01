Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F00F8E00BEC; Tue,  1 Mar 2016 06:06:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 37382E00B97
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 06:06:18 -0800 (PST)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.266.1; Tue, 1 Mar 2016
	15:06:16 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4451)	id DF0C228BA23;
	Tue,  1 Mar 2016 15:06:16 +0100 (CET)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 1 Mar 2016 15:06:16 +0100
Message-ID: <1456841176-33975-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
Subject: [meta-selinux][PATCH] at: Drop selinux patch
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
X-List-Received-Date: Tue, 01 Mar 2016 14:06:24 -0000
Content-Type: text/plain

SElinux support has been already integrated into at v3.1.18.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 recipes-extended/at/at/at-3.1.13-selinux.patch | 184 -------------------------
 recipes-extended/at/at_%.bbappend              |   4 -
 2 files changed, 188 deletions(-)
 delete mode 100644 recipes-extended/at/at/at-3.1.13-selinux.patch

diff --git a/recipes-extended/at/at/at-3.1.13-selinux.patch b/recipes-extended/at/at/at-3.1.13-selinux.patch
deleted file mode 100644
index 4e5e18c..0000000
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
--	$(CC) $(LDFLAGS) -o atd $(RUNOBJECTS) $(LIBS) $(PAMLIB)
-+	$(CC) $(LDFLAGS) -o atd $(RUNOBJECTS) $(LIBS) $(PAMLIB) $(SELINUXLIB)
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
diff --git a/recipes-extended/at/at_%.bbappend b/recipes-extended/at/at_%.bbappend
index f30abab..5ad8973 100644
--- a/recipes-extended/at/at_%.bbappend
+++ b/recipes-extended/at/at_%.bbappend
@@ -1,7 +1,3 @@
 PR .= ".2"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://at-3.1.13-selinux.patch"
-
 inherit with-selinux
-- 
1.9.1


