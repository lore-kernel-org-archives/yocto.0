Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58519E009E6; Tue, 30 Jun 2015 01:52:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAD3BE009D9
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2015 01:52:11 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.13,665,1427731200"; d="scan'208";a="97903686"
Received: from bogon (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 30 Jun 2015 16:56:06 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t5U8oQWq017171
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2015 16:50:26 +0800
Received: from localhost.localdomain (10.167.226.31) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Tue, 30 Jun 2015 16:52:06 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Tue, 30 Jun 2015 16:42:48 +0800
Message-ID: <1435653768-43256-1-git-send-email-biannm@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.31]
Subject: [meta-cgl][PATCH] cluster-resource-agents: upgrade to 3.9.6 and rename to resource-agents
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
X-List-Received-Date: Tue, 30 Jun 2015 08:52:16 -0000
Content-Type: text/plain

Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
---
 .../disable-doc-build.patch                        | 13 ---
 .../fix-fortify_sources-optimization-calls.patch   | 12 ---
 .../fix-header-defs-lookup.patch                   | 16 ----
 .../kill-stack-protector.patch                     | 12 ---
 .../cluster-resource-agents_1.0.3.bb               | 92 ----------------------
 .../resource-agents/01-disable-doc-build.patch     | 23 ++++++
 .../02-set-OCF_ROOT_DIR-to-libdir-ocf.patch        | 23 ++++++
 .../03-fix-header-defs-lookup.patch                | 26 ++++++
 .../resource-agents_3.9.6.bb                       | 92 ++++++++++++++++++++++
 9 files changed, 164 insertions(+), 145 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/disable-doc-build.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/fix-fortify_sources-optimization-calls.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/fix-header-defs-lookup.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/kill-stack-protector.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents_1.0.3.bb
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.6.bb

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/disable-doc-build.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/disable-doc-build.patch
deleted file mode 100644
index bf02d97..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/disable-doc-build.patch
+++ /dev/null
@@ -1,13 +0,0 @@
-Index: Cluster-Resource-Agents-agents-1.0.2/Makefile.am
-===================================================================
---- Cluster-Resource-Agents-agents-1.0.2.orig/Makefile.am	2010-04-23 13:10:00.000000000 +0400
-+++ Cluster-Resource-Agents-agents-1.0.2/Makefile.am	2010-04-23 13:10:05.000000000 +0400
-@@ -19,7 +19,7 @@
- MAINTAINERCLEANFILES    = Makefile.in aclocal.m4 configure DRF/config-h.in \
-                         DRF/stamp-h.in libtool.m4 ltdl.m4 libltdl.tar
- 
--SUBDIRS	= heartbeat tools ldirectord doc
-+SUBDIRS	= heartbeat tools ldirectord
- 
- dist-clean-local:
- 	rm -f autoconf automake autoheader $(TARFILE)
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/fix-fortify_sources-optimization-calls.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/fix-fortify_sources-optimization-calls.patch
deleted file mode 100644
index c4bf093..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/fix-fortify_sources-optimization-calls.patch
+++ /dev/null
@@ -1,12 +0,0 @@
-diff -Naur a/configure.in b/configure.in
---- a/configure.in	2014-07-15 08:25:40.287040627 +0200
-+++ b/configure.in	2014-07-15 08:25:14.864135440 +0200
-@@ -643,7 +643,7 @@
-         CFLAGS="$CFLAGS -g"
- 	enable_fatal_warnings=no
- else
--        CFLAGS="$CFLAGS -ggdb3 -O0"
-+        CFLAGS="$CFLAGS -ggdb3 -O2"
- 
- 	# We had to eliminate -Wnested-externs because of libtool changes
- 	# Also remove -Waggregate-return because we use one libnet
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/fix-header-defs-lookup.patch
deleted file mode 100644
index ebd13de..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/fix-header-defs-lookup.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-Index: Cluster-Resource-Agents-agents-1.0.2/configure.in
-===================================================================
---- Cluster-Resource-Agents-agents-1.0.2.orig/configure.in	2010-04-06 12:51:22.000000000 +0400
-+++ Cluster-Resource-Agents-agents-1.0.2/configure.in	2010-04-06 12:54:10.000000000 +0400
-@@ -91,9 +91,8 @@
- 	  Cfile=/tmp/extract_define.$2.${$}
- 	  printf "#include <stdio.h>\n" > ${Cfile}.c
- 	  printf "#include <%s>\n" $1 >> ${Cfile}.c
--	  printf "int main(int argc, char **argv) { printf(\"%%s\", %s); return 0; }\n" $2 >> ${Cfile}.c
--	  $CC $CFLAGS ${Cfile}.c -o ${Cfile}
--	  value=`${Cfile}`
-+	  printf "\"%s\":%s\n" $2 $2 >> ${Cfile}.c
-+	  value=`$CC $CFLAGS -E ${Cfile}.c | grep \"$2\" | cut -f 2 -d ':'`
- 	  AC_MSG_RESULT($value)
- 	  printf $value
- 	  rm -f ${Cfile}.c ${Cfile}
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/kill-stack-protector.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/kill-stack-protector.patch
deleted file mode 100644
index d6b0253..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents/kill-stack-protector.patch
+++ /dev/null
@@ -1,12 +0,0 @@
-Index: Cluster-Resource-Agents-agents-1.0.2/configure.in
-===================================================================
---- Cluster-Resource-Agents-agents-1.0.2.orig/configure.in	2010-04-23 12:38:41.000000000 +0400
-+++ Cluster-Resource-Agents-agents-1.0.2/configure.in	2010-04-23 12:38:49.000000000 +0400
-@@ -642,7 +642,6 @@
- 	# Also remove -Waggregate-return because we use one libnet
- 	# call which returns a struct
-         EXTRA_FLAGS="-fgnu89-inline
--		-fstack-protector-all
- 		-Wall
- 		-Wbad-function-cast 
- 		-Wcast-qual 
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents_1.0.3.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents_1.0.3.bb
deleted file mode 100644
index ee733f7..0000000
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/cluster-resource-agents_1.0.3.bb
+++ /dev/null
@@ -1,92 +0,0 @@
-DESCRIPTION = "OCF resource agents for use by compatible cluster managers"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.GPLv2;md5=751419260aa954499f7abaabaa882bbe"
-DEPENDS = "cluster-glue"
-
-#PR = "r1"
-
-SRC_URI = " \
-    http://pkgs.fedoraproject.org/repo/pkgs/resource-agents/agents-${PV}.tar.bz2/fcaa2cfd83a28d1965200e11db2ddd41/agents-${PV}.tar.bz2 \
-	file://fix-header-defs-lookup.patch \
-	file://disable-doc-build.patch \
-    file://fix-fortify_sources-optimization-calls.patch \
-	"
-SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
-SRC_URI[md5sum] = "fcaa2cfd83a28d1965200e11db2ddd41"
-SRC_URI[sha256sum] = "09b58332e34cf128c8d53d5bb4b3f61e402c2e0c0c809f5abae53ca144ad101e"
-
-inherit autotools
-
-S = "${WORKDIR}/Cluster-Resource-Agents-agents-${PV}"
-
-# ARM build fails on send_arp.linux.c with
-#
-# cc1: warnings being treated as errors
-# send_arp.linux.c: In function 'send_pack':
-# send_arp.linux.c:106: error: cast increases required alignment of target type
-# send_arp.linux.c: In function 'recv_pack':
-# send_arp.linux.c:207: error: cast increases required alignment of target type
-#
-# The code itself doesn't look that bad, so just disable -Werror
-EXTRA_OECONF_arm += "--disable-fatal-warnings"
-
-PACKAGES =+ "ldirectord ldirectord-doc ocft"
-
-FILES_ldirectord = " \
-	${sbindir}/ldirectord \
-	${sysconfdir}/ha.d/resource.d/ldirectord \
-	${sysconfdir}/init.d/ldirectord \
-	${sysconfdir}/logrotate.d/ldirectord \
-	${libdir}/ocf/resource.d/heartbeat/ldirectord \
-	"
-FILES_ldirectord-doc = "${mandir}/man8/ldirectord.8*"
-
-# Missing:
-# Authen::Radius
-# Net::LDAP
-# Net::IMAP::Simple::SSL
-# Net::IMAP::Simple
-RDEPENDS_ldirectord += " \
-	libdbi-perl \
-	libmailtools-perl \
-	libnet-dns-perl \
-	libsocket6-perl \
-	libwww-perl \
-	perl \
-	perl-module-getopt-long \
-	perl-module-net-ftp \
-	perl-module-net-smtp \
-	perl-module-pod-usage \
-	perl-module-posix \
-	perl-module-socket \
-	perl-module-strict \
-	perl-module-sys-hostname \
-	perl-module-sys-syslog \
-	perl-module-vars \
-	"
-
-FILES_${PN} += " \
-	${libdir}/heartbeat/findif \
-	${libdir}/heartbeat/ocf-returncodes \
-	${libdir}/heartbeat/ocf-shellfuncs \
-	${libdir}/heartbeat/send_arp \
-	${libdir}/heartbeat/sfex_daemon \
-	${libdir}/heartbeat/tickle_tcp \
-	${libdir}/ocf/resource.d/heartbeat/ \
-	${datadir}/resource-agents/ra-api-1.dtd \
-	"
-
-RDEPENDS_ocft += " \
-	bash \
-"
-
-FILES_ocft += " \
-	${datadir}/resource-agents/ocft \
-	${sbindir}/ocft \
-	"
-
-RDEPENDS_${PN} += " \
-	bash \
-"
-
-FILES_${PN}-dbg += "${libdir}/heartbeat/.debug/ ${libdir}/ocf/resource.d/heartbeat/.debug/"
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
new file mode 100644
index 0000000..3fce743
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
@@ -0,0 +1,23 @@
+disable doc build
+
+Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+---
+ Makefile.am | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index 1769c6e..d66b2ae 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -37,7 +37,7 @@ RGMANAGER = with
+ endif
+ 
+ if BUILD_LINUX_HA
+-SUBDIRS	+= include heartbeat tools ldirectord doc
++SUBDIRS	+= include heartbeat tools ldirectord
+ LINUX_HA = without
+ else
+ LINUX_HA = with
+-- 
+1.8.3.1
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
new file mode 100644
index 0000000..4a8ac64
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
@@ -0,0 +1,23 @@
+Set OCF_ROOT_DIR to ${libdir}/ocf
+
+Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+---
+ configure.ac | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index bb45717..3326b53 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -406,7 +406,7 @@ dnl Variables needed for substitution
+ AC_CHECK_HEADERS(heartbeat/glue_config.h)
+ 
+ if test "$ac_cv_header_heartbeat_glue_config_h" = "yes"; then
+-  OCF_ROOT_DIR=`extract_header_define heartbeat/glue_config.h OCF_ROOT_DIR`
++  OCF_ROOT_DIR="${libdir}/ocf"
+ else
+   enable_libnet=no
+ fi
+-- 
+1.8.3.1
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
new file mode 100644
index 0000000..f1d3924
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
@@ -0,0 +1,26 @@
+fix header defs lookup
+
+Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+---
+ configure.ac | 5 ++---
+ 1 file changed, 2 insertions(+), 3 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index 3326b53..8b5706a 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -140,9 +140,8 @@ extract_header_define() {
+ 	  Cfile=$srcdir/extract_define.$2.${$}
+ 	  printf "#include <stdio.h>\n" > ${Cfile}.c
+ 	  printf "#include <%s>\n" $1 >> ${Cfile}.c
+-	  printf "int main(int argc, char **argv) { printf(\"%%s\", %s); return 0; }\n" $2 >> ${Cfile}.c
+-	  $CC $CFLAGS ${Cfile}.c -o ${Cfile}
+-	  value=`${Cfile}`
++	  printf "\"%s\":%s\n" $2 $2 >> ${Cfile}.c
++	  value=`$CC $CFLAGS -E ${Cfile}.c | grep \"$2\" | cut -f 2 -d ':'`
+ 	  AC_MSG_RESULT($value)
+ 	  printf $value
+ 	  rm -f ${Cfile}.c ${Cfile}
+-- 
+1.8.3.1
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.6.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.6.bb
new file mode 100644
index 0000000..18ef1e8
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.6.bb
@@ -0,0 +1,92 @@
+SUMMARY = "OCF resource agents for use by compatible cluster managers"
+DESCRIPTION = "A set of scripts to interface with several services \
+to operate in a High Availability environment for both Pacemaker and \
+rgmanager service managers."
+HOMEPAGE = "http://sources.redhat.com/cluster/wiki/"
+
+LICENSE = "GPLv2+ & LGPLv2+ & GPLv3"
+LICENSE_${PN} = "GPLv2+ & LGPLv2+"
+LICENSE_${PN}-dev = "GPLv2+ & LGPLv2+"
+LICENSE_${PN}-staticdev = "GPLv2+ & LGPLv2+"
+LICENSE_${PN}-dbg = "GPLv2+ & LGPLv2+"
+LICENSE_${PN}-doc = "GPLv2+ & LGPLv2+"
+LICENSE_${PN}-extra = "GPLv3"
+LICENSE_${PN}-extra-dbg = "GPLv3"
+LICENSE_ldirectord = "GPLv2+"
+
+SRC_URI = "https://codeload.github.com/ClusterLabs/resource-agents/tar.gz/v${PV};downloadfilename=${BPN}-${PV}.tar.gz \
+           file://01-disable-doc-build.patch \
+           file://02-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
+           file://03-fix-header-defs-lookup.patch \
+          "
+
+SRC_URI[md5sum] = "6873d5a217aee3026193fb85bfa18a4a"
+SRC_URI[sha256sum] = "39722cdee68ff96d06788f05f325bd21ec2fc59c59d847e5e4b23c6df23bf678"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
+                    file://COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c \
+                    file://COPYING.GPLv3;md5=d32239bcb673463ab874e80d47fae504"
+
+DEPENDS = "cluster-glue"
+RDEPENDS_${PN} += "bash"
+
+inherit autotools systemd
+
+EXTRA_OECONF += "--disable-fatal-warnings \
+                 --with-rsctmpdir=/var/run/heartbeat/rsctmp"
+
+do_install_append() {
+    rm -rf "${D}${localstatedir}/run"
+    rmdir --ignore-fail-on-non-empty "${D}${localstatedir}"
+}
+
+# tickle_tcp is published under GPLv3, we just split it into ${PN}-extra,
+# and it's required by portblock, so move portblock into ${PN}-extra together.
+PACKAGES_prepend  = "${PN}-extra ${PN}-extra-dbg ldirectord "
+FILES_${PN}-extra = "${libdir}/resource-agents/heartbeat/tickle_tcp \
+                     ${libdir}/ocf/resource.d/heartbeat/portblock \
+                     ${datadir}/resource-agents/ocft/configs/portblock \
+                    "
+FILES_${PN}-extra-dbg += "${libdir}/resource-agents/heartbeat/.debug/tickle_tcp"
+
+FILES_ldirectord = " \
+        ${sbindir}/ldirectord \
+        ${sysconfdir}/ha.d/resource.d/ldirectord \
+        ${sysconfdir}/init.d/ldirectord \
+        ${sysconfdir}/logrotate.d/ldirectord \
+        ${libdir}/ocf/resource.d/heartbeat/ldirectord \
+        "
+FILES_ldirectord-doc = "${mandir}/man8/ldirectord.8*"
+
+RDEPENDS_ldirectord += " \
+        ipvsadm \
+        libdbi-perl \
+        libdigest-hmac-perl \
+        libmailtools-perl \
+        libnet-dns-perl \
+        libsocket6-perl \
+        libwww-perl \
+        perl \
+        perl-module-getopt-long \
+        perl-module-net-ftp \
+        perl-module-net-smtp \
+        perl-module-pod-usage \
+        perl-module-posix \
+        perl-module-socket \
+        perl-module-strict \
+        perl-module-sys-hostname \
+        perl-module-sys-syslog \
+        perl-module-vars \
+        "
+
+SYSTEMD_PACKAGES = "ldirectord"
+SYSTEMD_SERVICE_ldirectord += "ldirectord.service"
+
+FILES_${PN} += "${datadir}/cluster/* \
+                ${libdir}/ocf/resource.d/heartbeat/ \
+                ${libdir}/ocf/lib/heartbeat/* \
+                ${libdir}/ocf/resource.d/redhat \
+                "
+
+FILES_${PN}-dbg += "${libdir}/ocf/resource.d/heartbeat/.debug \
+                    ${libdir}/resource-agents/heartbeat/.debug "
-- 
1.8.4.2


