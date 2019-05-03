Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F216E00D63; Thu,  2 May 2019 18:32:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 225F6E00D4A
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 18:32:50 -0700 (PDT)
Received: by mail-pg1-f172.google.com with SMTP id t22so1884852pgi.10
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 18:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=rf1TzUkuFZeGjoRGe9Wj0eTR5GnZolIAjyfeTXuWcVw=;
	b=PcN7OQO/rmQZ42BZE1xw/s1TgTbG5r0s+4w0x2Polxs2fy/eESplPHlVnwvfNpsAqF
	ye7TVvGfOi8iJVejOJ10wMvKrCGugUL4xz7p0cwEq1PA+rrQ/n6c8bMOr0pEI+sLJyRX
	riofg6XeCsEgv61WeVztfMrprAjPJNC0Vef4EOhW4H4dq/xIpSbKzCzGm94G6ThOxH6s
	GHoreXVTd4TXbPhb4Bns/sbmLkLgxmIUGrauVDc2nsC8Vikyu67l5rhuSQ6joGaSeeKn
	vzYVirSbyVrAQDjaIVFV36XqfgBc52gw/e52e7mbOrQLPicEroZtTsjC2WpseCLSBG7d
	1ksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=rf1TzUkuFZeGjoRGe9Wj0eTR5GnZolIAjyfeTXuWcVw=;
	b=JVPEncSP6mHUxctoBuRjOT6+JBg+t+O+WsfyGLwc3yUsEy2KjjQUH6FHhopKEXYQUM
	1PSdOYKCcXACFwVy2IR32zu9PJrCxw1lqbbK5UsF7368jxHJAUG8tptppo0j/e8FLb+1
	BYxzZk9oPjtCLYCC4/wbKrbxE55a7G9udUI5dGfbWibA9FT+yriyamiW3j76Cmy1nzey
	Cwgdm+GWf6mPoJ2B93eE0xmjhSaIsjZQ02hd84uZcQePZJalJyG8/zwFaop+8E8ItCIo
	xah4SIdfFIlOoZZTIg43twS8wubxFOhQBWxFOTeHqzPOHVwU2Sl+19Q8p/5NQGMTlvMC
	kK9w==
X-Gm-Message-State: APjAAAUdzwqR+EEBPENGD+NX7x4a/KKDEDpKdkfp6+qGPEWNceZF6v+x
	ybFLOOcCBYYk52PEP7IcAUu0RJsH
X-Google-Smtp-Source: APXvYqwDDbhS4PPyPI14B8XGahUjvYvpr7ZmMcZLR2wQLGqLF89tL3R/qFIWBfR/tUko+tLt4CC/2w==
X-Received: by 2002:aa7:8289:: with SMTP id s9mr7576255pfm.208.1556847169126; 
	Thu, 02 May 2019 18:32:49 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:7403:feaf:ea56:abf7])
	by smtp.gmail.com with ESMTPSA id b13sm521699pfd.12.2019.05.02.18.32.48
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 May 2019 18:32:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  2 May 2019 18:32:45 -0700
Message-Id: <1556847166-24262-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556847166-24262-1-git-send-email-akuster808@gmail.com>
References: <1556847166-24262-1-git-send-email-akuster808@gmail.com>
Subject: [meta-cgl][PATCH 2/3] openais: remove as corosync 2.x replaces functionality
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
X-List-Received-Date: Fri, 03 May 2019 01:32:53 -0000

corosync 2.x can replace corosync 1.x + openais.

openais is no longer maintainted and shutdown.
https://github.com/corosync/openais/commit/f2bc4445a7c4ba5d17a218af855dc19d55ed2803

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openais/files/build-cleanup-configure-ac.patch | 41 -----------------
 .../openais/files/fix-lcrso-linkage.patch          | 21 ---------
 .../openais/files/openais-fix-bash.patch           | 10 ----
 .../files/openais-fix-corosync-not-quit.patch      | 53 ----------------------
 .../openais/files/openais-fix-init-script.patch    | 42 -----------------
 .../files/openais-fix-resource-cleanup-entry.patch | 37 ---------------
 .../openais-saTmrTimerReschedule-test-error.patch  | 50 --------------------
 .../recipes-cgl/openais/files/openais.service      | 14 ------
 .../recipes-cgl/openais/openais_1.1.4.bb           | 35 --------------
 9 files changed, 303 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/files/build-cleanup-configure-ac.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/files/fix-lcrso-linkage.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais-fix-bash.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais-fix-corosync-not-quit.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais-fix-init-script.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais-fix-resource-cleanup-entry.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais-saTmrTimerReschedule-test-error.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/files/openais.service
 delete mode 100644 meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb

diff --git a/meta-cgl-common/recipes-cgl/openais/files/build-cleanup-configure-ac.patch b/meta-cgl-common/recipes-cgl/openais/files/build-cleanup-configure-ac.patch
deleted file mode 100644
index 48284ad..0000000
--- a/meta-cgl-common/recipes-cgl/openais/files/build-cleanup-configure-ac.patch
+++ /dev/null
@@ -1,41 +0,0 @@
-diff -Naur a/configure.ac b/configure.ac
---- a/configure.ac	2014-07-15 16:23:11.852805276 +0200
-+++ b/configure.ac	2014-07-15 16:36:00.483752038 +0200
-@@ -48,6 +48,7 @@
- AC_PROG_LN_S
- AC_PROG_MAKE_SET
- AC_PROG_RANLIB
-+AC_PROG_SED
- AC_CHECK_PROGS([GROFF], [groff])
- 
- # Checks for libraries.
-@@ -66,7 +67,7 @@
- AC_CHECK_HEADERS([arpa/inet.h fcntl.h limits.h netdb.h netinet/in.h stdint.h \
- 		  stdlib.h string.h sys/ioctl.h sys/param.h sys/socket.h \
- 		  sys/time.h syslog.h unistd.h sys/types.h getopt.h malloc.h \
--		  sys/sockio.h])
-+          sys/sockio.h utmpx.h ifaddrs.h stddef.h sys/file.h])
- 
- # Checks for typedefs, structures, and compiler characteristics.
- AC_C_CONST
-@@ -78,7 +79,6 @@
- AC_TYPE_INT8_T
- AC_TYPE_SIZE_T
- AC_TYPE_SSIZE_T
--AC_HEADER_TIME
- AC_TYPE_UINT16_T
- AC_TYPE_UINT32_T
- AC_TYPE_UINT64_T
-@@ -88,11 +88,11 @@
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
diff --git a/meta-cgl-common/recipes-cgl/openais/files/fix-lcrso-linkage.patch b/meta-cgl-common/recipes-cgl/openais/files/fix-lcrso-linkage.patch
deleted file mode 100644
index 9acfc20..0000000
--- a/meta-cgl-common/recipes-cgl/openais/files/fix-lcrso-linkage.patch
+++ /dev/null
@@ -1,21 +0,0 @@
-Index: openais-1.1.2/services/Makefile.am
-===================================================================
---- openais-1.1.2.orig/services/Makefile.am	2010-03-22 23:00:09.000000000 +0300
-+++ openais-1.1.2/services/Makefile.am	2010-03-22 22:59:51.000000000 +0300
-@@ -78,13 +78,13 @@
- 
- else
- service_amf.lcrso: $(AMF_OBJECTS)
--	$(CC) $(CFLAGS) -shared -Wl,-soname=$@ $^ -o $@
-+	$(CC) $(CFLAGS) $(LDFLAGS) -shared -Wl,-soname=$@ $^ -o $@
- 
- service_%.lcrso: %.o
--	$(CC) $(CFLAGS) -shared -Wl,-soname=$@ $^ -o $@
-+	$(CC) $(CFLAGS) $(LDFLAGS) -shared -Wl,-soname=$@ $^ -o $@
- 
- %.lcrso: %.o
--	$(CC) $(CFLAGS) -shared -Wl,-soname=$@ $^ -o $@
-+	$(CC) $(CFLAGS) $(LDFLAGS) -shared -Wl,-soname=$@ $^ -o $@
- endif
- 
- %.o: %.c
diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-bash.patch b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-bash.patch
deleted file mode 100644
index ede77e8..0000000
--- a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-bash.patch
+++ /dev/null
@@ -1,10 +0,0 @@
-Index: openais-1.1.3/init/generic.in
-===================================================================
---- openais-1.1.3.orig/init/generic.in
-+++ openais-1.1.3/init/generic.in
-@@ -1,4 +1,4 @@
--#!/bin/bash
-+#!/bin/sh
- 
- # Authors:
- #  Andrew Beekhof <abeekhof@redhat.com>
diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-corosync-not-quit.patch b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-corosync-not-quit.patch
deleted file mode 100644
index f3f7279..0000000
--- a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-corosync-not-quit.patch
+++ /dev/null
@@ -1,53 +0,0 @@
-commit e26a778dc3726666f6c15838c16efaca2e98abd6
-Author: yanjun.zhu <yanjun.zhu@windriver.com>
-Date:   Wed Mar 13 10:10:03 2013 +0800
-
-    openais: fix corosync not quit
-
-    In fsl-p5040, "/etc/init.d/openais stop" can not make corosync quit since corosync
-    does not respond to signal TERM.
-
-    Upstream-Status: Pending
-
-    Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com>
-
-diff -urpN a/init/generic.in b/init/generic.in
---- a/init/generic.in
-+++ b/init/generic.in
-@@ -39,18 +39,6 @@ failure()
- 	echo -ne "[FAILED]\r"
- }
- 
--status()
--{
--	pid=$(pidof $1 2>/dev/null)
--	rtrn=$?
--	if [ $rtrn -ne 0 ]; then
--		echo "$1 is stopped"
--	else
--		echo "$1 ($proc with pid $pid) is running..."
--	fi
--	return $rtrn
--}
--
- # rpm based distros
- if [ -d @SYSCONFDIR@/sysconfig ]; then
- 	[ -f @INITDDIR@/functions ] && . @INITDDIR@/functions
-@@ -98,16 +86,10 @@ stop()
- 	! status $proc > /dev/null 2>&1 && return
- 
- 	echo -n "Signaling $desc ($prog) to terminate: "
--	kill -TERM $(pidof $proc) > /dev/null 2>&1
-+	echo -n "Please stop corosync using /etc/init.d/corosync-daemon stop"
- 	success
- 	echo
- 
--	echo -n "Waiting for $prog services to unload:"
--	while status $proc > /dev/null 2>&1; do
--		sleep 1
--		echo -n "."
--	done
--
- 	rm -f $LOCK_FILE
- 	rm -f @LOCALSTATEDIR@/run/$prog.pid
- 	success
diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-init-script.patch b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-init-script.patch
deleted file mode 100644
index 69fddd5..0000000
--- a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-init-script.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-commit 367f4ab0b67266e07ffedcae2df74f2576ea2aeb
-Author: Aws Ismail <aws.ismail@windriver.com>
-Date:   Thu Jan 24 12:36:48 2013 -0500
-
-    openais: correct the use of proc name in init script
-    
-    openais actually runs on top of corosync. The init
-    script was checking for the pid of "openais"
-    rather than checking for corosync's pid.
-    
-    Upstream-Status: Pending
-
-    Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
-
-diff --git a/init/generic.in b/init/generic.in
-index ac63a5f..e8efbb3 100644
---- a/init/generic.in
-+++ b/init/generic.in
-@@ -46,7 +46,7 @@ status()
- 	if [ $rtrn -ne 0 ]; then
- 		echo "$1 is stopped"
- 	else
--		echo "$1 (pid $pid) is running..."
-+		echo "$1 ($proc with pid $pid) is running..."
- 	fi
- 	return $rtrn
- }
-@@ -130,12 +130,12 @@ restart|reload|force-reload)
- 	restart
- ;;
- condrestart|try-restart)
--	if status $prog > /dev/null 2>&1; then
-+	if status $proc > /dev/null 2>&1; then
- 		restart
- 	fi
- ;;
- status)
--	status $prog
-+	status $proc
- 	rtrn=$?
- ;;
- stop)
diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-resource-cleanup-entry.patch b/meta-cgl-common/recipes-cgl/openais/files/openais-fix-resource-cleanup-entry.patch
deleted file mode 100644
index 55313ce..0000000
--- a/meta-cgl-common/recipes-cgl/openais/files/openais-fix-resource-cleanup-entry.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-commit f70bea251f21a8bd646e59b34e6f74f6ee3fe29b
-Author: yanjun.zhu <yanjun.zhu@windriver.com>
-Date:   Tue Mar 19 12:23:55 2013 +0800
-
-    openais: remove cleanup entry from openais
-
-    message_handler_req_exec_lck_resourceclose is to remove cleanup
-    entry from corosync. Now this job is done by pacemaker. So remove
-    this feature from openais.
-
-    Upstream-Status: Pending
-
-    Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com>
-
-diff -urpN a/services/lck.c b/services/lck.c
---- a/services/lck.c
-+++ b/services/lck.c
-@@ -2304,17 +2304,9 @@ error_exit:
- 
- 		if (error == SA_AIS_OK) {
- 			/*
--			 * Remove the cleanup entry for this resource.
-+			 * cleanup entry for this resource can not be removed.
-+			 * This will be done by pacemaker.
- 			 */
--			cleanup = lck_resource_cleanup_find (
--				req_exec_lck_resourceclose->source.conn,
--				&req_exec_lck_resourceclose->resource_name);
--
--			if (cleanup != NULL) {
--				list_del (&cleanup->cleanup_list);
--				free (cleanup);
--			}
--
- 			hdb_handle_put (&resource_hdb, req_exec_lck_resourceclose->resource_id);
- 			hdb_handle_destroy (&resource_hdb, req_exec_lck_resourceclose->resource_id);
- 		}
diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais-saTmrTimerReschedule-test-error.patch b/meta-cgl-common/recipes-cgl/openais/files/openais-saTmrTimerReschedule-test-error.patch
deleted file mode 100644
index 6806fba..0000000
--- a/meta-cgl-common/recipes-cgl/openais/files/openais-saTmrTimerReschedule-test-error.patch
+++ /dev/null
@@ -1,50 +0,0 @@
-commit 379eb121110d22131408cedf2f200165d142852c
-Author: yanjun.zhu <yanjun.zhu@windriver.com>
-Date:   Fri Mar 1 12:25:33 2013 +0800
-
-    openais: fix saTmrTimerReschedule test error
-
-    * If req_lib_tmr_timerreschedule->timer_attributes.type is
-      SA_TIME_ABSOLUTE, an absolute time value must be higher
-      than the current absolute time.According to the type, we
-      will compare the current time with an absolute time. If
-      the type is SA_TIME_ABSOLUTE, we will compare. Or else,
-      we do nothing;
-    * For single-event timers, timerPeriodDuration = 0 is required.
-      Note that saTmrTimerReschedule() cannot be used to change a
-      timer from being a single-event timer to a periodic timer or
-      vice versa. Since the older timerPeriodDuration is 0 in testtmr.c
-      file, it is a single-event timer. The following reschedule will
-      change it to  a periodic timer. It is not permitted.
-
-    Upstream-Status: Pending
-
-    Signed-off-by: yanjun.zhu <yanjun.zhu@windriver.com>
---
-diff -urpN a/services/tmr.c b/services/tmr.c
---- a/services/tmr.c
-+++ b/services/tmr.c
-@@ -442,7 +442,8 @@ static void message_handler_req_lib_tmr_
- 
- 	current_time = (SaTimeT)(api->timer_time_get());
- 
--	if (current_time > req_lib_tmr_timerreschedule->timer_attributes.initialExpirationTime) {
-+	if ((SA_TIME_ABSOLUTE == req_lib_tmr_timerreschedule->timer_attributes.type) &&
-+		(current_time > req_lib_tmr_timerreschedule->timer_attributes.initialExpirationTime)) {
- 		error = SA_AIS_ERR_INVALID_PARAM;
- 		goto error_put;
- 	}
-diff -urpN a/test/testtmr.c b/test/testtmr.c
---- a/test/testtmr.c
-+++ b/test/testtmr.c
-@@ -86,8 +86,8 @@ int main (void)
- 	SaTmrHandleT handle;
- 	SaSelectionObjectT select_obj;
- 	SaTmrTimerAttributesT attrs;
--	SaTmrTimerAttributesT attrs_a = { SA_TIME_DURATION, TMR_30_SECONDS, 0 };
--	SaTmrTimerAttributesT attrs_b = { SA_TIME_DURATION, TMR_30_SECONDS, 0 };
-+	SaTmrTimerAttributesT attrs_a = { SA_TIME_DURATION, TMR_30_SECONDS, TMR_30_SECONDS };
-+	SaTmrTimerAttributesT attrs_b = { SA_TIME_DURATION, TMR_30_SECONDS, TMR_30_SECONDS };
- 	SaTmrTimerAttributesT new_attrs_a = { SA_TIME_DURATION, TMR_10_SECONDS, TMR_10_SECONDS };
- 	SaTmrTimerAttributesT new_attrs_b = { SA_TIME_DURATION, TMR_20_SECONDS, TMR_20_SECONDS };
- 	SaTmrTimerIdT id_a;
diff --git a/meta-cgl-common/recipes-cgl/openais/files/openais.service b/meta-cgl-common/recipes-cgl/openais/files/openais.service
deleted file mode 100644
index 230e4bb..0000000
--- a/meta-cgl-common/recipes-cgl/openais/files/openais.service
+++ /dev/null
@@ -1,14 +0,0 @@
-[Unit]
-Description=OpenAIS Cluster Framework
-ConditionKernelCommandLine=!nocluster
-Requires=network-online.target
-After=network-online.target
-
-[Service]
-ExecStart=@DATADIR@/openais/openais start
-ExecStop=@DATADIR@/openais/openais stop
-Type=oneshot
-RemainAfterExit=yes
-
-[Install]
-WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb b/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
deleted file mode 100644
index cdf1454..0000000
--- a/meta-cgl-common/recipes-cgl/openais/openais_1.1.4.bb
+++ /dev/null
@@ -1,35 +0,0 @@
-DESCRIPTION = "Implementation of the Service Availability Forum Application Interface Specification (AIS)"
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=4cb00dd52a063edbece6ae248a2ba663"
-DEPENDS = "cluster-glue corosync"
-
-
-SRC_URI = " \
-    http://tux.rainside.sk/gentoo/distfiles/openais-${PV}.tar.gz \
-    file://fix-lcrso-linkage.patch \
-    file://build-cleanup-configure-ac.patch \
-    file://openais-fix-bash.patch \
-    file://openais-fix-init-script.patch \
-    file://openais-saTmrTimerReschedule-test-error.patch \
-    file://openais-fix-corosync-not-quit.patch \
-    file://openais-fix-resource-cleanup-entry.patch \
-    file://openais.service \
-    "
-
-SRC_URI[md5sum] = "e500ad3c49fdc45d8653f864e80ed82c"
-SRC_URI[sha256sum] = "974b4959f3c401c16156dab31e65a6d45bbf84dd85a88c2a362712e738c06934"
-
-inherit autotools pkgconfig systemd
-
-SYSTEMD_SERVICE_${PN} = "openais.service"
-SYSTEMD_AUTO_ENABLE = "disable"
-
-do_install_append() {
-    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
-        install -D -m 0755 ${D}${sysconfdir}/init.d/openais ${D}${datadir}/${BPN}/openais
-        install -D -m 0644 ${WORKDIR}/openais.service ${D}${systemd_system_unitdir}/openais.service
-        sed -i -e 's,@DATADIR@,${datadir},g' ${D}${systemd_system_unitdir}/openais.service
-    fi
-}
-
-FILES_${PN}-dbg += "${libexecdir}/lcrso/.debug"
-- 
2.7.4


