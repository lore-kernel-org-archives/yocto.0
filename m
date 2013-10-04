Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07751E01661
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 16:11:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Oct 2013 16:11:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1036,1371106800"; d="scan'208";a="411747500"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.174])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2013 16:09:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  5 Oct 2013 00:09:19 +0100
Message-Id: <01b1573cbe40d78ce52c5b836492be3e286b6cd3.1380928084.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 6/6] netperf: remove
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
X-List-Received-Date: Fri, 04 Oct 2013 23:11:03 -0000

This isn't actually needed by baryon; it was only used in some of the
initial performance tests. If needed there is a well-maintained version
now in meta-networking.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../netperf/netperf-2.4.4/cpu_set.patch            | 32 --------------
 recipes-connectivity/netperf/netperf-2.4.4/init    | 51 ----------------------
 .../netperf/netperf-2.4.4/vfork.patch              | 35 ---------------
 recipes-connectivity/netperf/netperf_2.4.4.bb      | 46 -------------------
 4 files changed, 164 deletions(-)
 delete mode 100644 recipes-connectivity/netperf/netperf-2.4.4/cpu_set.patch
 delete mode 100644 recipes-connectivity/netperf/netperf-2.4.4/init
 delete mode 100755 recipes-connectivity/netperf/netperf-2.4.4/vfork.patch
 delete mode 100644 recipes-connectivity/netperf/netperf_2.4.4.bb

diff --git a/recipes-connectivity/netperf/netperf-2.4.4/cpu_set.patch b/recipes-connectivity/netperf/netperf-2.4.4/cpu_set.patch
deleted file mode 100644
index 9f51c47..0000000
--- a/recipes-connectivity/netperf/netperf-2.4.4/cpu_set.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-Correctly define NETPERF_CPU_* macros
-
-Derived from OpenEmbedded project
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-Upstream-Status: Pending
-
-Index: netperf-2.4.4/src/netlib.c
-===================================================================
---- netperf-2.4.4.orig/src/netlib.c	2007-10-17 23:16:02.000000000 +0200
-+++ netperf-2.4.4/src/netlib.c	2008-12-03 17:56:32.000000000 +0100
-@@ -1988,10 +1988,15 @@
-      fall-back on what we had before, which is to use just the size of
-      an unsigned long. raj 2006-09-14 */
- 
--#if defined(__CPU_SETSIZE)
--#define NETPERF_CPU_SETSIZE __CPU_SETSIZE
--#define NETPERF_CPU_SET(cpu, cpusetp)  __CPU_SET(cpu, cpusetp)
--#define NETPERF_CPU_ZERO(cpusetp)      __CPU_ZERO (cpusetp)
-+#if defined(CPU_SETSIZE)
-+#define NETPERF_CPU_SETSIZE CPU_SETSIZE
-+#define NETPERF_CPU_SET(cpu, cpusetp)  CPU_SET(cpu, cpusetp)
-+#define NETPERF_CPU_ZERO(cpusetp)      CPU_ZERO (cpusetp)
-+  typedef cpu_set_t netperf_cpu_set_t;
-+#elif defined(__CPU_SETSIZE)
-+#define NETPERF_CPU_SETSIZE __CPU_SETSIZE
-+#define NETPERF_CPU_SET(cpu, cpusetp)  __CPU_SET (cpu, cpusetp)
-+#define NETPERF_CPU_ZERO(cpusetp)      __CPU_ZERO (cpusetp)
-   typedef cpu_set_t netperf_cpu_set_t;
- #else
- #define NETPERF_CPU_SETSIZE sizeof(unsigned long)
diff --git a/recipes-connectivity/netperf/netperf-2.4.4/init b/recipes-connectivity/netperf/netperf-2.4.4/init
deleted file mode 100644
index 7cc053a..0000000
--- a/recipes-connectivity/netperf/netperf-2.4.4/init
+++ /dev/null
@@ -1,51 +0,0 @@
-#!/bin/sh
-#
-#
-# Written by Miquel van Smoorenburg <miquels@cistron.nl>.
-# Modified for Debian GNU/Linux by Ian Murdock <imurdock@gnu.org>.
-# Modified for Debian by Christoph Lameter <clameter@debian.org>
-# Modified for openembedded by Bruno Randolf <bruno.randolf@4g-systems.biz>
-
-PATH=/bin:/usr/bin:/sbin:/usr/sbin
-DAEMON=/usr/sbin/netserver
-
-test -f $DAEMON || exit 0
-
-case "$1" in
-  start)
-		echo -n "Starting network benchmark server: netserver"
-    start-stop-daemon -S -x $DAEMON > /dev/null 2>&1 
-		echo "."
-    ;;
-  stop)
-		echo -n "Stopping network benchmark server: netserver"
-    start-stop-daemon -K -x $DAEMON
-		echo "."
-    ;;
-  #reload)
-    #
-    # If the daemon can reload its config files on the fly
-    # for example by sending it SIGHUP, do it here.
-    #
-    # If the daemon responds to changes in its config file
-    # directly anyway, make this a do-nothing entry.
-    #
-    # start-stop-daemon --stop --signal 1 --verbose --exec $DAEMON
-    # ;;
-  restart|force-reload)
-  #
-  # If the "reload" option is implemented, move the "force-reload"
-  # option to the "reload" entry above. If not, "force-reload" is
-  # just the same as "restart".
-  #
-    start-stop-daemon -K -x $DAEMON
-    sleep 1
-    start-stop-daemon -S -x $DAEMON
-    ;;
-  *)
-    echo "Usage: /etc/init.d/netperf {start|stop|restart|force-reload}"
-    exit 1
-    ;;
-esac
-
-exit 0
diff --git a/recipes-connectivity/netperf/netperf-2.4.4/vfork.patch b/recipes-connectivity/netperf/netperf-2.4.4/vfork.patch
deleted file mode 100755
index dbef553..0000000
--- a/recipes-connectivity/netperf/netperf-2.4.4/vfork.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-If HAVE_FORK is defined, use fork().
-Otherwise, use vfork() instead.
-
-Derived from OpenEmbedded project
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-Upstream-Status: Pending
-
---- netperf-2.4.4/src/netserver.c	2007-10-17 17:09:12.000000000 -0400
-+++ netperf-2.4.4.new/src/netserver.c	2011-01-23 12:26:39.000000000 -0500
-@@ -567,7 +567,11 @@
-   fflush (stdin);
-   fflush (stdout);
-   fflush (stderr);
-+#if defined(HAVE_FORK)
-   switch (fork())
-+#else
-+  switch (vfork())
-+#endif
-     {
-     case -1:  	
-       perror("netperf server error");
-@@ -712,7 +716,11 @@
- #else
-       signal(SIGCLD, SIG_IGN);
- 	  
-+#if defined(HAVE_FORK)
- 	  switch (fork())
-+#else
-+	  switch (vfork())
-+#endif
- 	    {
- 	    case -1:
- 	      /* something went wrong */
diff --git a/recipes-connectivity/netperf/netperf_2.4.4.bb b/recipes-connectivity/netperf/netperf_2.4.4.bb
deleted file mode 100644
index 26faba0..0000000
--- a/recipes-connectivity/netperf/netperf_2.4.4.bb
+++ /dev/null
@@ -1,46 +0,0 @@
-DESCRIPTION="Network performance benchmark including tests for TCP, UDP, sockets, ATM and more."
-SECTION = "console/network"
-HOMEPAGE = "http://www.netperf.org/"
-LICENSE = "netperf"
-LIC_FILES_CHKSUM = "file://COPYING;md5=a0ab17253e7a3f318da85382c7d5d5d6"
-PR = "r0"
-
-SRC_URI="ftp://ftp.netperf.org/netperf/archive/netperf-${PV}.tar.bz2 \
-         file://cpu_set.patch \
-         file://vfork.patch \
-         file://init"
-
-inherit update-rc.d autotools
-
-S = "${WORKDIR}/netperf-${PV}"
-
-# cpu_set.patch plus _GNU_SOURCE makes src/netlib.c compile with CPU_ macros
-CFLAGS_append = " -DDO_UNIX -DDO_IPV6 -D_GNU_SOURCE"
-
-do_install() {
-        install -d ${D}${sbindir} ${D}${bindir} ${D}${sysconfdir}/init.d
-        install -m 4755 src/netperf ${D}${bindir}
-        install -m 4755 src/netserver ${D}${sbindir}
-        install -m 0755 ${WORKDIR}/init ${D}${sysconfdir}/init.d/netperf
-
-        # man
-        install -d ${D}${mandir}/man1/
-        install -m 0644 doc/netserver.man ${D}${mandir}/man1/netserver.1
-        install -m 0644 doc/netperf.man ${D}${mandir}/man1/netperf.1
-
-        # move scripts to examples directory
-        install -d ${D}${docdir}/netperf/examples
-        install -m 0644 doc/examples/*_script ${D}${docdir}/netperf/examples/
-
-        # docs ..
-        install -m 0644 COPYING ${D}${docdir}/netperf
-        install -m 0644 Release_Notes ${D}${docdir}/netperf
-        install -m 0644 README ${D}${docdir}/netperf
-        install -m 0644 doc/netperf_old.ps ${D}${docdir}/netperf
-}
-
-INITSCRIPT_NAME="netperf"
-INITSCRIPT_PARAMS="defaults"
-
-SRC_URI[md5sum] = "0e942f22864e601406a994420231075b"
-SRC_URI[sha256sum] = "28e76af491ea3696885e4558ae2f5628a4b9ebdbefc2f1d9cf1b35db2813e497"
-- 
1.8.1.2


