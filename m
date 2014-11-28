Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2879BE0082F; Thu, 27 Nov 2014 18:06:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ED1EE006EF
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 18:06:27 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="44121566"
Received: from localhost (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 28 Nov 2014 10:03:07 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sAS264vx014900
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 10:06:04 +0800
Received: from localhost.localdomain (10.167.226.31) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Fri, 28 Nov 2014 10:06:27 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Fri, 28 Nov 2014 10:03:29 +0800
Message-ID: <1417140209-17415-1-git-send-email-biannm@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.31]
Subject: [PATCH] [meta-cgl] corosync: upgrade to 1.4.7
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
X-List-Received-Date: Fri, 28 Nov 2014 02:06:32 -0000
Content-Type: text/plain

upgrade corosync from 1.2.8 to 1.4.7

Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
---
 .../recipes-cgl/corosync/corosync_1.2.8.bb         | 46 -------------------
 .../recipes-cgl/corosync/corosync_1.4.7.bb         | 51 ++++++++++++++++++++++
 .../files/build-cleanup-configure-ac.patch         | 21 +++++----
 .../recipes-cgl/corosync/files/corosync-docs.patch | 25 +++++------
 .../corosync/files/fix-define-semun-union.patch    |  4 +-
 .../corosync/files/groff-desc-path.patch           | 16 +++++++
 6 files changed, 91 insertions(+), 72 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync_1.2.8.bb
 create mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb
 create mode 100644 meta-cgl-common/recipes-cgl/corosync/files/groff-desc-path.patch

diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync_1.2.8.bb b/meta-cgl-common/recipes-cgl/corosync/corosync_1.2.8.bb
deleted file mode 100644
index 487bed4..0000000
--- a/meta-cgl-common/recipes-cgl/corosync/corosync_1.2.8.bb
+++ /dev/null
@@ -1,46 +0,0 @@
-DESCRIPTION = "OSI Certified implementation of a complete cluster engine"
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=6ddd1b9ffefcca04866906195d8bda33"
-DEPENDS = "groff-native"
-
-#PR = "r1"
-
-SRC_URI = " \
-	https://github.com/corosync/corosync/archive/v1.2.8.tar.gz \
-    file://fix-lcrso-linkage.patch \
-	file://corosync-docs.patch \
-	file://init \
-	file://corosync.conf \
-	file://volatiles \
-	file://fix-define-semun-union.patch \
-    file://build-cleanup-configure-ac.patch \
-	"
-SRC_URI[md5sum] = "ac4a0d206736f0827d419a03b238da4e"
-SRC_URI[sha256sum] = "712248bf5698c0bb39c77c3f0fdaa493b92037069401121b801294487f638c26"
-
-
-inherit autotools-brokensep pkgconfig update-rc.d
-
-INITSCRIPT_NAME = "corosync-daemon"
-
-EXTRA_OECONF = "--disable-nss"
-
-FILES_${PN} += "run"
-FILES_${PN}-dbg += "${libexecdir}/lcrso/.debug"
-
-do_install_append() {
-	install -d ${D}/${sysconfdir}/init.d
-	install -d ${D}${sysconfdir}/default/volatiles
-	# Original init script is too bashy
-	rm -f ${D}/${sysconfdir}/init.d/corosync
-	install -m 0755 ${WORKDIR}/init ${D}/${sysconfdir}/init.d/corosync-daemon
-	install -m 0644 ${WORKDIR}/corosync.conf ${D}/${sysconfdir}/corosync/corosync.conf.example
-	install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/05_corosync
-}
-
-pkg_postinst_${PN} () {
-	set -e
-	grep haclient /etc/group || addgroup haclient
-	grep hacluster /etc/passwd || adduser --disabled-password --home=/var/lib/heartbeat --ingroup haclient -g "HA cluster" hacluster
-	/etc/init.d/populate-volatile.sh update
-}
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb b/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb
new file mode 100644
index 0000000..3c2b63e
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb
@@ -0,0 +1,51 @@
+SUMMARY = "The Corosync Cluster Engine and Application Programming Interfaces"
+DESCRIPTION = "This package contains the Corosync Cluster Engine Executive, several default \
+APIs and libraries, default configuration files, and an init script."
+HOMEPAGE = "http://corosync.github.io/corosync/"
+
+inherit autotools pkgconfig update-rc.d useradd
+
+SRC_URI = "http://build.clusterlabs.org/corosync/releases/${BPN}-${PV}.tar.gz \
+           file://groff-desc-path.patch \
+           file://init \
+           file://corosync.conf \
+           file://volatiles \
+           file://corosync-docs.patch \
+           file://fix-define-semun-union.patch \
+           file://build-cleanup-configure-ac.patch \
+          "
+
+SRC_URI[md5sum] = "da9b2cf0b55f08ac4cf7cd82ac2f977a"
+SRC_URI[sha256sum] = "c1d005b2093e9a725abd1dfb2be936114b561c0b3145aca11f58c1a733a05af8"
+
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=25656171d1e4054c636a9893067f8c30"
+
+DEPENDS = "groff-native nss"
+
+INSANE_SKIP_${PN} += ""
+
+EXTRA_OECONF += " --enable-nss "
+CFLAGS_append += " -fPIC "
+
+do_compile() {
+    DESCPATH="${STAGING_DATADIR_NATIVE}/groff/`groff -v | awk '{if(NR==1)print $4}'`/font"
+    oe_runmake DESCPATH=${DESCPATH}
+}
+
+do_install_append() {
+    install -d ${D}${sysconfdir}/default/volatiles
+    # Original init script is too bashy
+    rm -f ${D}/${sysconfdir}/init.d/corosync
+    install -m 0755 ${WORKDIR}/init ${D}/${sysconfdir}/init.d/corosync-daemon
+    install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/05_corosync
+}
+
+FILES_${PN} += "run"
+FILES_${PN}-dbg += "${libexecdir}/lcrso/.debug"
+
+INITSCRIPT_NAME = "corosync-daemon"
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "haclient"
+USERADD_PARAM_${PN} = "-M --home  ${localstatedir}/lib/heartbeat -g haclient hacluster"
diff --git a/meta-cgl-common/recipes-cgl/corosync/files/build-cleanup-configure-ac.patch b/meta-cgl-common/recipes-cgl/corosync/files/build-cleanup-configure-ac.patch
index c046bf2..45db70b 100644
--- a/meta-cgl-common/recipes-cgl/corosync/files/build-cleanup-configure-ac.patch
+++ b/meta-cgl-common/recipes-cgl/corosync/files/build-cleanup-configure-ac.patch
@@ -1,7 +1,7 @@
-diff -Naur a/configure.ac b/configure.ac
---- a/configure.ac	2014-07-15 15:11:25.789572061 +0200
-+++ b/configure.ac	2014-07-15 15:16:20.400941853 +0200
-@@ -62,6 +62,8 @@
+diff -Nurp corosync-1.4.7.orig/configure.ac corosync-1.4.7/configure.ac
+--- corosync-1.4.7.orig/configure.ac	2014-11-27 16:31:08.976459181 +0800
++++ corosync-1.4.7/configure.ac	2014-11-27 16:36:42.840446134 +0800
+@@ -60,6 +60,8 @@ AC_PROG_INSTALL
  AC_PROG_LN_S
  AC_PROG_MAKE_SET
  AC_PROG_RANLIB
@@ -10,16 +10,16 @@ diff -Naur a/configure.ac b/configure.ac
  AC_CHECK_PROGS([GROFF], [groff])
  AC_CHECK_PROGS([PKGCONFIG], [pkg-config])
  
-@@ -80,7 +82,7 @@
+@@ -78,7 +80,7 @@ AC_HEADER_SYS_WAIT
  AC_CHECK_HEADERS([arpa/inet.h fcntl.h limits.h netdb.h netinet/in.h stdint.h \
  		  stdlib.h string.h sys/ioctl.h sys/param.h sys/socket.h \
  		  sys/time.h syslog.h unistd.h sys/types.h getopt.h malloc.h \
--		  sys/sockio.h])
-+          sys/sockio.h utmpx.h ifaddrs.h stddef.h sys/file.h])
+-		  sys/sockio.h net/if_var.h])
++		  sys/sockio.h utmpx.h ifaddrs.h stddef.h sys/file.h])
  
  # Checks for typedefs, structures, and compiler characteristics.
  AC_C_CONST
-@@ -92,31 +94,33 @@
+@@ -90,30 +92,32 @@ AC_TYPE_INT64_T
  AC_TYPE_INT8_T
  AC_TYPE_SIZE_T
  AC_TYPE_SSIZE_T
@@ -48,11 +48,10 @@ diff -Naur a/configure.ac b/configure.ac
  AC_CHECK_FUNCS([alarm alphasort atexit bzero dup2 endgrent endpwent fcntl \
  		getcwd getpeerucred getpeereid gettimeofday inet_ntoa memmove \
  		memset mkdir scandir select socket strcasecmp strchr strdup \
- 		strerror strrchr strspn strstr pthread_spin_lock \
- 		pthread_spin_unlock pthread_setschedparam \
+ 		strerror strrchr strspn strstr pthread_setschedparam \
 -		sched_get_priority_max sched_setscheduler])
 +		sched_get_priority_max sched_setscheduler \
-+        clock_gettime ftruncate gethostname localtime_r munmap strtol])
++		clock_gettime ftruncate gethostname localtime_r munmap strtol])
  
  AC_CONFIG_FILES([Makefile
  		 exec/Makefile
diff --git a/meta-cgl-common/recipes-cgl/corosync/files/corosync-docs.patch b/meta-cgl-common/recipes-cgl/corosync/files/corosync-docs.patch
index 1b5fc30..2fd3d1e 100644
--- a/meta-cgl-common/recipes-cgl/corosync/files/corosync-docs.patch
+++ b/meta-cgl-common/recipes-cgl/corosync/files/corosync-docs.patch
@@ -1,17 +1,16 @@
-Make docs optional
-
---- a/configure.ac
-+++ b/configure.ac
-@@ -432,7 +432,7 @@
+diff -Nurp corosync-1.4.7.orig/configure.ac corosync-1.4.7/configure.ac
+--- corosync-1.4.7.orig/configure.ac	2014-06-02 20:55:54.000000000 +0800
++++ corosync-1.4.7/configure.ac	2014-11-27 16:31:08.976459181 +0800
+@@ -554,7 +554,7 @@ if test "x${enable_user_flags}" = xyes;
  fi
  
  # final build of *FLAGS
 -CFLAGS="$ENV_CFLAGS $OPT_CFLAGS $GDB_FLAGS $OS_CFLAGS \
-+CFLAGS="$ENV_CFLAGS $OS_CFLAGS \
++CFLAGS="$ENV_CFLAGS $OPT_CFLAGS \
  	$COVERAGE_CFLAGS $EXTRA_WARNINGS $WERROR_CFLAGS $NSS_CFLAGS"
  CPPFLAGS="$ENV_CPPFLAGS $ANSI_CPPFLAGS $OS_CPPFLAGS"
  LDFLAGS="$ENV_LDFLAGS $COVERAGE_LDFLAGS $OS_LDFLAGS"
-@@ -458,7 +458,10 @@
+@@ -581,7 +581,10 @@ AM_CONDITIONAL(BUILD_SOLARIS, test -n "$
  AC_SUBST([DARWIN_OPTS])
  AC_SUBST([SOLARIS_OPTS])
  
@@ -23,9 +22,10 @@ Make docs optional
  
  AC_SUBST([LINT_FLAGS])
  
---- a/Makefile.am
-+++ b/Makefile.am
-@@ -41,9 +41,6 @@
+diff -Nurp corosync-1.4.7.orig/Makefile.am corosync-1.4.7/Makefile.am
+--- corosync-1.4.7.orig/Makefile.am	2014-06-02 20:55:54.000000000 +0800
++++ corosync-1.4.7/Makefile.am	2014-11-27 16:31:27.928458441 +0800
+@@ -46,9 +46,6 @@ MAINTAINERCLEANFILES	= Makefile.in acloc
  			  config.guess config.sub missing install-sh \
  			  autoheader automake autoconf
  
@@ -33,6 +33,5 @@ Make docs optional
 -			  README.recovery SECURITY TODO AUTHORS
 -
  corosysconfdir		= ${COROSYSCONFDIR}
-
- corosysconf_DATA        = conf/corosync.conf.example
-
+ 
+ corosysconf_DATA	= conf/corosync.conf.example \
diff --git a/meta-cgl-common/recipes-cgl/corosync/files/fix-define-semun-union.patch b/meta-cgl-common/recipes-cgl/corosync/files/fix-define-semun-union.patch
index 7ce5ab6..61c8fcd 100644
--- a/meta-cgl-common/recipes-cgl/corosync/files/fix-define-semun-union.patch
+++ b/meta-cgl-common/recipes-cgl/corosync/files/fix-define-semun-union.patch
@@ -1,6 +1,6 @@
 diff -rupN corosync-1.2.7/lib/coroipcc.c corosync-1.2.7.new/lib/coroipcc.c
---- corosync-1.2.7/lib/coroipcc.c	2010-07-22 03:13:42.000000000 +0400
-+++ corosync-1.2.7.new/lib/coroipcc.c	2010-08-03 12:06:36.000000000 +0400
+--- corosync-1.4.7.orig/lib/coroipcc.c	2010-07-22 03:13:42.000000000 +0400
++++ corosync-1.4.7/lib/coroipcc.c	2010-08-03 12:06:36.000000000 +0400
 @@ -68,6 +68,18 @@
  #include <semaphore.h>
  #else
diff --git a/meta-cgl-common/recipes-cgl/corosync/files/groff-desc-path.patch b/meta-cgl-common/recipes-cgl/corosync/files/groff-desc-path.patch
new file mode 100644
index 0000000..d134080
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/corosync/files/groff-desc-path.patch
@@ -0,0 +1,16 @@
+DESC path should be specified when build corosync for target.
+
+Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+
+diff -Nurp corosync-1.3.1.org/man/Makefile.am corosync-1.3.1/man/Makefile.am
+--- corosync-1.3.1.org/man/Makefile.am	2011-04-25 10:37:50.000000000 +0800
++++ corosync-1.3.1/man/Makefile.am	2014-11-24 10:33:36.583426707 +0800
+@@ -126,7 +126,7 @@ HTML_DOCS = $(dist_man_MANS:%=%.html)
+ INDEX_HTML = index.html
+ 
+ %.html: %
+-	$(GROFF) -mandoc -Thtml $^ > $@
++	$(GROFF) -F $(DESCPATH) -mandoc -Thtml $^ > $@
+ 
+ install-data-local:
+ 	$(INSTALL) -d $(DESTDIR)/${docdir}/html
-- 
1.9.1


