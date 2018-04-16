Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61268E00C76; Mon, 16 Apr 2018 08:03:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7386E00948
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:45 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id j11so4115889pff.10
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=4d6UxM3WiNdaRMYK1JhwLn08qQesZF54X1Oq9jPql3I=;
	b=l/dO5Pg3fdLZsn1106dFMErHrxpBnZgZcKoe/MVVxnsw+owTKSW1DWF93JOhjZKHrc
	LLXGMPXyvF0uR8/LJC4AHdENy9NQ1MZQyxrKEshjtT8mGDn3z9rMXR0QRlAGh+jbXc7c
	IaNILLVDGhq/8nPfUd3SmwR1WdpmIxDIJ//bDetrrU0hdcUMVs/IK3DQKCm2HQ+582cj
	SOUgamoHlyfMhoWaiFkc9DUu6lYEwISBMtwO8pP2ewZ9zudkKp41o5V9fuI96MwLYmCy
	FOSDUB/5jNuCvStgtfN4OzE/JZsgNXPBTEJia/gKSz/3poYGEmWJuGr8SHOccdtVNXoP
	OgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=4d6UxM3WiNdaRMYK1JhwLn08qQesZF54X1Oq9jPql3I=;
	b=XjoX/bvOOve6t/t3qTh0qSPPO+Gq1q/+kMBSuFhCfgEs6l5oZktg19ZhO9aZJagOCz
	ys3Y/OTrTY3HD77p77ZNjd3BsrELwnfl7GgcsYRmgRkhjZWZPLnrSil92hmnOebtf/sg
	uQb9v4Bc/0u5ASt64QN6a4xR/kgl5FstaQU+7B7YOIGLhLon4D+Moudm1MGdu46RcULk
	s4tqOl5ptrKP3vORjDlG0E2ZW/sbGMaGFLgX9heqRhfIMT3rD6B+3Ipdx9pUK93Oyg39
	BAnY9/SH8Zb+IUusP+P/oti20dzziO2slhtkVC7fM0idRju93NaWX06vwTbxQ7zkaIGh
	IuPg==
X-Gm-Message-State: ALQs6tBow26NTOw8w0CqggP5S9EbZwt8r4/FB79ZNaRbEp7AWB1iYa7G
	cEWxSwCZXwDbodsiDfuf64w=
X-Google-Smtp-Source: AIpwx488HkRpaELMylem6D4l16b/h/Qk4JY2QiT/GJP9VaWNLwk42m/ngUs6vGtNLLh6+cGddyQfNw==
X-Received: by 10.98.55.69 with SMTP id e66mr14097578pfa.253.1523891024656;
	Mon, 16 Apr 2018 08:03:44 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:846b:ecf3:2137:c7c5])
	by smtp.gmail.com with ESMTPSA id
	b6sm31386216pfm.160.2018.04.16.08.03.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Apr 2018 08:03:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Mon, 16 Apr 2018 08:03:42 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 16 Apr 2018 08:03:31 -0700
Message-Id: <1523891014-31583-3-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523891014-31583-1-git-send-email-akuster@mvista.com>
References: <1523891014-31583-1-git-send-email-akuster@mvista.com>
Subject: [meta-cgl][PATCH 2/5] Corosync: remove recipe its in meta-networking.
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
X-List-Received-Date: Mon, 16 Apr 2018 15:03:48 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 .../corosync/build-cleanup-configure-ac.patch      |  57 --------
 .../corosync/corosync/corosync-docs.patch          |  37 -----
 .../corosync/corosync/corosync-notifyd.service     |  13 --
 .../recipes-cgl/corosync/corosync/corosync.init    | 160 ---------------------
 .../recipes-cgl/corosync/corosync/corosync.service |  26 ----
 .../corosync/corosync/fix-define-semun-union.patch |  20 ---
 .../corosync/corosync/groff-desc-path.patch        |  12 --
 .../recipes-cgl/corosync/corosync/notifyd.init     | 120 ----------------
 .../recipes-cgl/corosync/corosync/volatiles        |   1 -
 .../recipes-cgl/corosync/corosync_1.4.8.bb         |  88 ------------
 10 files changed, 534 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/build-cleanup-configure-ac.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/corosync-docs.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/corosync-notifyd.service
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/corosync.init
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/corosync.service
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/fix-define-semun-union.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/groff-desc-path.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/notifyd.init
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/volatiles
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync_1.4.8.bb

diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/build-cleanup-configure-ac.patch b/meta-cgl-common/recipes-cgl/corosync/corosync/build-cleanup-configure-ac.patch
deleted file mode 100644
index 06338f6..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync/build-cleanup-configure-ac.patch
+++ /dev/null
@@ -1,57 +0,0 @@
-diff -Nurp corosync-1.4.7.orig/configure.ac corosync-1.4.7/configure.ac
---- corosync-1.4.7.orig/configure.ac	2014-06-02 21:55:54.000000000 +0900
-+++ corosync-1.4.7/configure.ac	2015-06-24 16:56:21.519999988 +0900
-@@ -60,6 +60,8 @@ AC_PROG_INSTALL
- AC_PROG_LN_S
- AC_PROG_MAKE_SET
- AC_PROG_RANLIB
-+AC_PROG_SED
-+
- AC_CHECK_PROGS([GROFF], [groff])
- AC_CHECK_PROGS([PKGCONFIG], [pkg-config])
- 
-@@ -78,7 +80,7 @@ AC_HEADER_SYS_WAIT
- AC_CHECK_HEADERS([arpa/inet.h fcntl.h limits.h netdb.h netinet/in.h stdint.h \
- 		  stdlib.h string.h sys/ioctl.h sys/param.h sys/socket.h \
- 		  sys/time.h syslog.h unistd.h sys/types.h getopt.h malloc.h \
--		  sys/sockio.h net/if_var.h])
-+		  sys/sockio.h utmpx.h ifaddrs.h stddef.h sys/file.h])
- 
- # Checks for typedefs, structures, and compiler characteristics.
- AC_C_CONST
-@@ -90,30 +92,32 @@ AC_TYPE_INT64_T
- AC_TYPE_INT8_T
- AC_TYPE_SIZE_T
- AC_TYPE_SSIZE_T
--AC_HEADER_TIME
- AC_TYPE_UINT16_T
- AC_TYPE_UINT32_T
- AC_TYPE_UINT64_T
- AC_TYPE_UINT8_T
- AC_C_VOLATILE
-+AC_TYPE_SIGNAL
- 
- # Checks for library functions.
- AC_FUNC_CLOSEDIR_VOID
- AC_FUNC_ERROR_AT_LINE
--AC_REPLACE_FNMATCH
- AC_FUNC_FORK
- AC_PROG_GCC_TRADITIONAL
- AC_FUNC_MALLOC
- AC_FUNC_MEMCMP
-+AC_FUNC_MMAP
- AC_FUNC_REALLOC
- AC_FUNC_SELECT_ARGTYPES
- AC_TYPE_SIGNAL
- AC_FUNC_VPRINTF
-+
- AC_CHECK_FUNCS([alarm alphasort atexit bzero dup2 endgrent endpwent fcntl \
- 		getcwd getpeerucred getpeereid gettimeofday inet_ntoa memmove \
- 		memset mkdir scandir select socket strcasecmp strchr strdup \
- 		strerror strrchr strspn strstr pthread_setschedparam \
--		sched_get_priority_max sched_setscheduler])
-+		sched_get_priority_max sched_setscheduler \
-+		clock_gettime ftruncate gethostname localtime_r munmap strtol])
- 
- AC_CONFIG_FILES([Makefile
- 		 exec/Makefile
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/corosync-docs.patch b/meta-cgl-common/recipes-cgl/corosync/corosync/corosync-docs.patch
deleted file mode 100644
index e13ec68..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync/corosync-docs.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-diff -Nurp corosync-1.4.7.orig/configure.ac corosync-1.4.7/configure.ac
---- corosync-1.4.7.orig/configure.ac	2015-06-24 16:56:21.519999988 +0900
-+++ corosync-1.4.7/configure.ac	2015-06-24 17:00:38.292999987 +0900
-@@ -558,7 +558,7 @@ if test "x${enable_user_flags}" = xyes; 
- fi
- 
- # final build of *FLAGS
--CFLAGS="$ENV_CFLAGS $OPT_CFLAGS $GDB_FLAGS $OS_CFLAGS \
-+CFLAGS="$ENV_CFLAGS $OS_CFLAGS \
- 	$COVERAGE_CFLAGS $EXTRA_WARNINGS $WERROR_CFLAGS $NSS_CFLAGS"
- CPPFLAGS="$ENV_CPPFLAGS $ANSI_CPPFLAGS $OS_CPPFLAGS"
- LDFLAGS="$ENV_LDFLAGS $COVERAGE_LDFLAGS $OS_LDFLAGS"
-@@ -585,7 +585,10 @@ AM_CONDITIONAL(BUILD_SOLARIS, test -n "$
- AC_SUBST([DARWIN_OPTS])
- AC_SUBST([SOLARIS_OPTS])
- 
--AM_CONDITIONAL(BUILD_HTML_DOCS, test -n "${GROFF}")
-+AC_ARG_ENABLE([doc],
-+  AS_HELP_STRING([--enable-doc],[Build html documentation])
-+)
-+AM_CONDITIONAL(BUILD_HTML_DOCS, [test -n "${GROFF}" && test "x$enable_doc" = "xyes"] )
- 
- AC_SUBST([LINT_FLAGS])
- 
-diff -Nurp corosync-1.4.7.orig/Makefile.am corosync-1.4.7/Makefile.am
---- corosync-1.4.7.orig/Makefile.am	2014-06-02 21:55:54.000000000 +0900
-+++ corosync-1.4.7/Makefile.am	2015-06-24 17:01:06.087999988 +0900
-@@ -46,9 +46,6 @@ MAINTAINERCLEANFILES	= Makefile.in acloc
- 			  config.guess config.sub missing install-sh \
- 			  autoheader automake autoconf
- 
--dist_doc_DATA		= LICENSE INSTALL README.devmap \
--			  README.recovery SECURITY TODO AUTHORS
--
- corosysconfdir		= ${COROSYSCONFDIR}
- 
- corosysconf_DATA	= conf/corosync.conf.example \
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/corosync-notifyd.service b/meta-cgl-common/recipes-cgl/corosync/corosync/corosync-notifyd.service
deleted file mode 100644
index ce576fe..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync/corosync-notifyd.service
+++ /dev/null
@@ -1,13 +0,0 @@
-[Unit]
-Description=Corosync Dbus and snmp notifier
-Wants=corosync.service
-After=corosync.service
-
-[Service]
-EnvironmentFile=@SYSCONFDIR@/sysconfig/corosync-notifyd
-ExecStart=@SBINDIR@/corosync-notifyd -f $OPTIONS
-Type=simple
-Restart=on-failure
-
-[Install]
-WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/corosync.init b/meta-cgl-common/recipes-cgl/corosync/corosync/corosync.init
deleted file mode 100644
index 6b397e5..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync/corosync.init
+++ /dev/null
@@ -1,160 +0,0 @@
-#!/bin/sh
-#
-# corosync       Start the Corosync Cluster Engine
-#
-# Author:       Andrew Beekhof <abeekhof@suse.de>
-# License:      Revised BSD
-#
-# chkconfig: - 20 20
-# processname:  corosync
-# description:  Corosync Cluster Engine
-#
-### BEGIN INIT INFO
-# Description: corosync....
-#
-# Short-Description: Corosync Cluster Engine.
-# Provides: corosync
-# Required-Start: $network
-# Should-Start: $syslog
-# Required-Stop: $network
-# Default-Start: 3 5
-# Default-Stop: 0 6
-### END INIT INFO
-
-do_force=0
-prog="corosync"
-lockfile="/var/lock/subsys/$prog"
-configfile="/etc/corosync/corosync.conf"
-
-internal_status() {
-    killall -0 corosync > /dev/null 2>&1
-    return $?
-}
-
-status() {
-    if
-	! internal_status
-    then
-	echo "Stopped"
-	return 7
-    fi
-
-    echo "Running"
-    return 0
-}
-
-start() {
-    if [ ! -f "$configfile" ]; then
-	echo "Error: corosync is not configured ($configfile missing)"
-	exit 1
-    fi
-
-    echo -n $"Starting Corosync Cluster Engine ($prog): "
-    if
-	! internal_status
-    then
-	echo -n "starting... "
-	$prog 2>&1 > /dev/null 2>&1
-	echo -n "rc=$?: "
-    fi
-
-    sleep 2 # give it time to fail... $? isn't definitive
-
-    if
-	internal_status
-    then
-	echo "OK"
-	return 0
-    fi
-
-    echo "Failed"
-    return 1
-}
-
-do_force=1
-do_forever=0
-
-stop() {
-    echo -n $"Stopping Corosync Cluster Engine ($prog): "
-
-    killall -QUIT corosync
-
-    if [ $do_forever = 0 ]; then
-	for i in 1 2 3 4 5 6 7 8 9 10 12 13 14 15 16 17 18 19 20; do
-	    if
-		internal_status
-	    then
-		sleep 2
-		echo -n "."
-	    else
-		rm -f "$lockfile"
-		echo "OK"
-		return 0
-	    fi
-	done
-
-	if [ $do_force = 1 ]; then
-	    echo -n "Escalating... "
-	    killall -KILL corosync
-            pids=`pgrep -f '/usr/lib/heartbeat/*'`
-            if [ -n "$pids" ]; then
-                kill -KILL $pids
-            fi
-	    sleep 5
-
-	    if
-		! internal_status
-	    then
-		rm -f "$lockfile"
-		echo "OK"
-		return 0
-	    fi
-	fi
-
-	echo "Failed"
-	return 1
-    fi
-
-    while
-        internal_status
-    do
-	sleep 1
-	echo -n "."
-    done
-
-    rm -f "$lockfile"
-    echo "OK"
-    return 0
-}
-
-restart() {
-    if [ ! -f "$configfile" ]; then
-	echo "Error: corosync is not configured ($configfile missing)"
-	exit 1
-    fi
-
-    stop
-    start
-}
-
-case "$1" in
-    start|stop|restart)
-        $1
-        ;;
-    force-stop)
-	do_force=1
-        stop
-        ;;
-    reload|force-reload)
-        restart
-        ;;
-    condrestart|try-restart)
-        [ ! -f "$lockfile" ] || restart
-        ;;
-    status)
-        status $prog
-        ;;
-    *)
-        echo $"Usage: $0 {start|stop|restart|try-restart|condrestart|reload|force-reload|force-stop|status}"
-        exit 2
-esac
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/corosync.service b/meta-cgl-common/recipes-cgl/corosync/corosync/corosync.service
deleted file mode 100644
index d5dd38f..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync/corosync.service
+++ /dev/null
@@ -1,26 +0,0 @@
-[Unit]
-Description=Corosync Cluster Engine
-ConditionKernelCommandLine=!nocluster
-Requires=network-online.target
-After=network-online.target
-
-[Service]
-ExecStart=@DATADIR@/corosync/corosync start
-ExecStop=@DATADIR@/corosync/corosync stop
-Type=oneshot
-RemainAfterExit=yes
-
-# The following config is for corosync with enabled watchdog service.
-#
-#  When corosync watchdog service is being enabled and using with
-#  pacemaker.service, and if you want to exert the watchdog when a
-#  corosync process is terminated abnormally,
-#  uncomment the line of the following Restart= and RestartSec=.
-#Restart=on-failure
-#  Specify a period longer than soft_margin as RestartSec.
-#RestartSec=70
-#  rewrite according to environment.
-#ExecStartPre=/sbin/modprobe softdog soft_margin=60
-
-[Install]
-WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/fix-define-semun-union.patch b/meta-cgl-common/recipes-cgl/corosync/corosync/fix-define-semun-union.patch
deleted file mode 100644
index 2f413db..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync/fix-define-semun-union.patch
+++ /dev/null
@@ -1,20 +0,0 @@
-diff -Nurp corosync-1.4.7.orig/lib/coroipcc.c corosync-1.4.7/lib/coroipcc.c
---- corosync-1.4.7.orig/lib/coroipcc.c	2014-06-02 21:55:54.000000000 +0900
-+++ corosync-1.4.7/lib/coroipcc.c	2015-06-24 17:04:24.451999987 +0900
-@@ -68,6 +68,16 @@
- #include <semaphore.h>
- #else
- #include <sys/sem.h>
-+
-+#if _SEM_SEMUN_UNDEFINED
-+union semun {
-+	int val;                           // value for SETVAL
-+	struct semid_ds *buf;              // buffer for IPC_STAT & IPC_SET
-+	unsigned short int *array;         // array for GETALL & SETALL
-+	struct seminfo *__buf;             // buffer for IPC_INFO
-+};
-+#endif
-+
- #endif
- 
- #include "util.h"
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/groff-desc-path.patch b/meta-cgl-common/recipes-cgl/corosync/corosync/groff-desc-path.patch
deleted file mode 100644
index da1378a..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync/groff-desc-path.patch
+++ /dev/null
@@ -1,12 +0,0 @@
-diff -Nurp corosync-1.3.1.org/man/Makefile.am corosync-1.3.1/man/Makefile.am
---- corosync-1.3.1.org/man/Makefile.am	2011-04-25 10:37:50.000000000 +0800
-+++ corosync-1.3.1/man/Makefile.am	2014-11-24 10:33:36.583426707 +0800
-@@ -126,7 +126,7 @@ HTML_DOCS = $(dist_man_MANS:%=%.html)
- INDEX_HTML = index.html
- 
- %.html: %
--	$(GROFF) -mandoc -Thtml $^ > $@
-+	$(GROFF) -F $(DESCPATH) -mandoc -Thtml $^ > $@
- 
- install-data-local:
- 	$(INSTALL) -d $(DESTDIR)/${docdir}/html
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/notifyd.init b/meta-cgl-common/recipes-cgl/corosync/corosync/notifyd.init
deleted file mode 100644
index 35e0cf1..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync/notifyd.init
+++ /dev/null
@@ -1,120 +0,0 @@
-### BEGIN INIT INFO
-# Description: corosync-notifyd....
-#
-# Short-Description: Corosync Dbus and snmp notifier
-# Provides: corosync-notifyd
-# Required-Start: $corosync $cman
-# Should-Start: $syslog
-# Required-Stop: $corosync $cman
-# Default-Start: 3 5
-# Default-Stop: 0 6
-### END INIT INFO
-
-do_force=0
-prog="corosync-notifyd"
-lockfile="/var/lock/subsys/$prog"
-
-internal_status() {
-    killall -0 $prog > /dev/null 2>&1
-    return $?
-}
-
-status() {
-    if
-        ! internal_status
-    then
-        echo "Stopped"
-        return 7
-    fi
-
-    echo "Running"
-    return 0
-}
-
-start() {
-    echo -n $"Starting Corosync Dbus and snmp notifier ($prog): "
-    if
-        ! internal_status
-    then
-        echo -n "starting... "
-        $prog 2>&1 > /dev/null 2>&1
-        echo -n "rc=$?: "
-    fi
-
-    sleep 2 # give it time to fail... $? isn't definitive
-
-    if
-        internal_status
-    then
-        echo "OK"
-        return 0
-    fi
-
-    echo "Failed"
-    return 1
-}
-
-do_force=1
-do_forever=0
-
-stop() {
-    echo -n $"Stopping Corosync Dbus and snmp notifier ($prog): "
-
-    killall -TERM $prog
-
-    if [ $do_forever = 0 ]; then
-        for i in 1 2 3 4 5 6 7 8 9 10 12 13 14 15 16 17 18 19 20; do
-            if
-                internal_status
-            then
-                sleep 2
-                echo -n "."
-            else
-                rm -f "$lockfile"
-                echo "OK"
-                return 0
-            fi
-        done
-
-        echo "Failed"
-        return 1
-    fi
-
-    while
-        internal_status
-    do
-        sleep 1
-        echo -n "."
-    done
-
-    rm -f "$lockfile"
-    echo "OK"
-    return 0
-}
-
-restart() {
-    stop
-    start
-}
-
-case "$1" in
-    start|stop|restart)
-        $1
-        ;;
-    force-stop)
-        do_force=1
-        stop
-        ;;
-    reload|force-reload)
-        restart
-        ;;
-    condrestart|try-restart)
-        [ ! -f "$lockfile" ] || restart
-        ;;
-    status)
-        status $prog
-        ;;
-    *)
-        echo $"Usage: $0 {start|stop|restart|try-restart|condrestart|reload|force-reload|force-stop|status}"
-        exit 2
-esac
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync/volatiles b/meta-cgl-common/recipes-cgl/corosync/corosync/volatiles
deleted file mode 100644
index 2dc6eec..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync/volatiles
+++ /dev/null
@@ -1 +0,0 @@
-d hacluster haclient 0755 /var/lib/corosync none
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.8.bb b/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.8.bb
deleted file mode 100644
index 3b5afce..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.8.bb
+++ /dev/null
@@ -1,88 +0,0 @@
-SUMMARY = "The Corosync Cluster Engine and Application Programming Interfaces"
-DESCRIPTION = "This package contains the Corosync Cluster Engine Executive, \
-several default APIs and libraries, default configuration files, and an init \
-script."
-HOMEPAGE = "http://corosync.github.io/corosync/"
-
-inherit autotools pkgconfig update-rc.d useradd systemd
-
-SRC_URI = "http://build.clusterlabs.org/corosync/releases/${BPN}-${PV}.tar.gz \
-           file://groff-desc-path.patch \
-           file://corosync-docs.patch \
-           file://fix-define-semun-union.patch \
-           file://build-cleanup-configure-ac.patch \
-           file://corosync.init \
-           file://notifyd.init \
-           file://corosync.service \
-           file://corosync-notifyd.service \
-           file://volatiles \
-          "
-
-SRC_URI[md5sum] = "e16c71db45c8b39948847655958d0dec"
-SRC_URI[sha256sum] = "64ee50f783a4bfa8a63fd576090cf7dd1810f3c60e01b4886723b87c5ff2b013"
-
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=25656171d1e4054c636a9893067f8c30"
-
-DEPENDS = "groff-native"
-
-INSANE_SKIP_${PN} += ""
-
-CFLAGS_append += " -fPIC "
-
-PACKAGECONFIG ?= "dbus nss snmp"
-PACKAGECONFIG[dbus] = "--enable-dbus,--disable-dbus,dbus"
-PACKAGECONFIG[nss] = "--enable-nss,--disable-nss,nss"
-PACKAGECONFIG[rdma] = "--enable-rdma,--disable-rdma"
-PACKAGECONFIG[snmp] = "--enable-snmp,--disable-snmp,net-snmp"
-
-do_compile() {
-    DESCPATH="${STAGING_DATADIR_NATIVE}/groff/`groff -v | awk '{if(NR==1)print $4}'`/font"
-    oe_runmake DESCPATH=${DESCPATH}
-}
-
-do_install_append() {
-    install -d ${D}${sysconfdir}/default/volatiles
-    install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/05_corosync
-    install -D -m 0644 ${S}/tools/corosync-notifyd.sysconfig.example ${D}${sysconfdir}/sysconfig/corosync-notifyd
-
-    # Original init script is too bashy
-    rm -f ${D}/${sysconfdir}/init.d/corosync
-    install -m 0755 ${WORKDIR}/corosync.init ${D}/${sysconfdir}/init.d/corosync
-    rm -rf ${D}/${sysconfdir}/init.d/corosync-notifyd
-    install -m 0755 ${WORKDIR}/notifyd.init ${D}/${sysconfdir}/init.d/corosync-notifyd
-
-    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
-        install -d ${D}${datadir}/${BPN}
-        cp ${D}/${sysconfdir}/init.d/* ${D}${datadir}/${BPN}/
-
-        install -d ${D}${systemd_system_unitdir}
-        install -m 0644 ${WORKDIR}/corosync.service ${D}${systemd_system_unitdir}
-        sed -i -e 's,@DATADIR@,${datadir},g' ${D}${systemd_system_unitdir}/corosync.service
-
-        install -m 0644 ${WORKDIR}/corosync-notifyd.service ${D}${systemd_system_unitdir}
-        sed -i -e 's,@SYSCONFDIR@,${sysconfdir},g' \
-            -e 's,@SBINDIR@,${sbindir},g' ${D}${systemd_system_unitdir}/corosync-notifyd.service
-
-        install -d ${D}${sysconfdir}/tmpfiles.d
-        echo "d ${localstatedir}/log/cluster - - - -" > ${D}${sysconfdir}/tmpfiles.d/corosync.conf
-    fi
-
-    rm -fr "${D}${localstatedir}/lock"
-    rm -fr "${D}${localstatedir}/run"
-    rmdir --ignore-fail-on-non-empty "${D}${localstatedir}"
-}
-
-FILES_${PN}-doc += "${datadir}/snmp/mibs/COROSYNC-MIB.txt"
-FILES_${PN}-dbg += "${libexecdir}/lcrso/.debug"
-
-INITSCRIPT_NAME = "corosync"
-INITSCRIPT_PARAMS = "remove"
-
-SYSTEMD_SERVICE_${PN} = "corosync.service corosync-notifyd.service"
-SYSTEMD_AUTO_ENABLE = "disable"
-
-
-USERADD_PACKAGES = "${PN}"
-GROUPADD_PARAM_${PN} = "haclient"
-USERADD_PARAM_${PN} = "-M --home  ${localstatedir}/lib/heartbeat -g haclient hacluster"
-- 
2.7.4


