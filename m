Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A190FE00BD5; Tue,  6 Jun 2017 23:10:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04B83E00BC1
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 23:10:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v576AJfk014055
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 6 Jun 2017 23:10:19 -0700 (PDT)
Received: from localhost (128.224.162.198) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Tue, 6 Jun 2017 23:10:18 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 7 Jun 2017 14:10:16 +0800
Message-ID: <1496815816-25600-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.198]
Subject: [meta-cgl][PATCH] ucarp: add new recipe
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
X-List-Received-Date: Wed, 07 Jun 2017 06:10:22 -0000
Content-Type: text/plain

UCARP allows a couple of hosts to share common virtual IP addresses in
order to provide automatic failover. It is a portable userland
implementation of the secure and patent-free Common Address Redundancy
Protocol (CARP).

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../ucarp/ucarp/ucarp-configure-sha1.patch         |  47 ++++++
 .../ucarp/ucarp/ucarp-configure-snprintf.patch     |  55 +++++++
 meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp.init | 162 +++++++++++++++++++++
 .../recipes-cgl/ucarp/ucarp/ucarp.service          |  11 ++
 .../recipes-cgl/ucarp/ucarp/vip-001.conf.example   |  11 ++
 .../recipes-cgl/ucarp/ucarp/vip-common.conf        |   8 +
 .../recipes-cgl/ucarp/ucarp/vip-down.sh            |   7 +
 meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh  |   7 +
 meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb   |  65 +++++++++
 9 files changed, 373 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp-configure-sha1.patch
 create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp-configure-snprintf.patch
 create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp.init
 create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp.service
 create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-001.conf.example
 create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-common.conf
 create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
 create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
 create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb

diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp-configure-sha1.patch b/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp-configure-sha1.patch
new file mode 100644
index 0000000..01167d4
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp-configure-sha1.patch
@@ -0,0 +1,47 @@
+Configure SHA1 option properly
+
+Work around a cross-compiling configuration problem by
+defaulting the USE_SYSTEM_CRYPT_SHA1 option.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Greff Moffatt <gregg.moffatt@windriver.com>
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+
+diff --git a/configure.ac b/configure.ac
+index fa6300f..3978c43 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -232,32 +232,6 @@ else
+                      [return value of an overflowed snprintf])
+ fi
+ 
+-AC_MSG_CHECKING(whether you already have a standard SHA1 implementation)
+-AC_RUN_IFELSE([AC_LANG_SOURCE([[
+-#include <stdio.h>
+-#include <string.h>
+-#include <sys/types.h>
+-#include <sha1.h>
+-
+-int main(void)
+-{
+-    SHA1_CTX ctx;
+-    char b[41];
+-    
+-    SHA1Init(&ctx);
+-    SHA1Update(&ctx, (const unsigned char *) "test", 4U);
+-    SHA1End(&ctx, b);
+-    b[40] = 0;
+-    
+-    return strcasecmp(b, "a94a8fe5ccb19ba61c4c0873d391e987982fbbd3");
+-}
+-]])],[
+-AC_MSG_RESULT(yes)
+-AC_DEFINE(USE_SYSTEM_CRYPT_SHA1,,[Define if you already have standard
+-SHA1 functions])
+-],[AC_MSG_RESULT(no)
+-],[])
+-
+ AC_MSG_CHECKING([whether syslog names are available])
+ AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
+ #define SYSLOG_NAMES 1
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp-configure-snprintf.patch b/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp-configure-snprintf.patch
new file mode 100644
index 0000000..adcdf64
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp-configure-snprintf.patch
@@ -0,0 +1,55 @@
+Configure snprintf option properly
+
+Work around a cross-compiling configuration problem by
+defaulting the CONF_SNPRINTF_TYPE option in the top-level
+Makefile, as opposed through configure.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Greff Moffatt <gregg.moffatt@windriver.com>
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+
+diff --git a/configure.ac b/configure.ac
+index 3978c43..da18a62 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -199,39 +199,6 @@ if test -r /dev/random; then
+   AC_DEFINE(HAVE_DEV_RANDOM,,[Define if you have /dev/random])
+ fi
+ 
+-AC_MSG_CHECKING(whether snprintf is C99 conformant)
+-AC_RUN_IFELSE([AC_LANG_SOURCE([[
+-#include <stdio.h>
+-#ifdef STDC_HEADERS
+-# include <stdlib.h>
+-# include <stddef.h>
+-#else
+-# if HAVE_STDLIB_H
+-#  include <stdlib.h>
+-# endif
+-#endif
+-#ifdef HAVE_UNISTD_H
+-# include <unistd.h>
+-#endif
+-
+-int main(void)
+-{
+-    char buf[4];
+-    
+-    (void) fprintf(fopen("conftestval", "w"), "%d\n",
+-        (int) snprintf(buf, sizeof buf, "12345678"));
+-    return 0;
+-}
+-]])],[CONF_SNPRINTF_TYPE=`cat conftestval`
+-],[],[])
+-AC_MSG_RESULT(done)
+-if test "x$CONF_SNPRINTF_TYPE" = "x" ; then
+-  AC_MSG_WARN(your operating system doesn't implement snprintf)
+-else
+-  AC_DEFINE_UNQUOTED(CONF_SNPRINTF_TYPE, $CONF_SNPRINTF_TYPE,
+-                     [return value of an overflowed snprintf])
+-fi
+-
+ AC_MSG_CHECKING([whether syslog names are available])
+ AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
+ #define SYSLOG_NAMES 1
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp.init b/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp.init
new file mode 100644
index 0000000..c18d029
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp.init
@@ -0,0 +1,162 @@
+#!/bin/sh
+# $Id$
+#
+# chkconfig: - 91 09
+# description: Starts and stops the common address redundancy protocol daemon
+
+### BEGIN INIT INFO
+# Provides: lsb-ucarp
+# Required-Start: $local_fs $network $remote_fs
+# Required-Stop: $local_fs $network $remote_fs
+# Default-Start:
+# Default-Stop: 0 1 6
+# Short-Description: start and stop ucarp
+# Description: Common Address Redundancy Protocol (CARP) for Unix
+### END INIT INFO
+
+# Source function library.
+. /etc/init.d/functions
+
+# Source networking configuration.
+#. /etc/sysconfig/network
+
+# Check that networking is up.
+#[ ${NETWORKING} = "no" ] && exit 0
+
+get_files() {
+    FILES=`find ${CONFDIR} -maxdepth 1 -type f -name 'vip-*.conf' \
+        -printf "%f\n" | egrep '^vip-[[:digit:]]+\.conf$' | LC_COLLATE="C" sort`
+}
+
+prog="common address redundancy protocol daemon"
+LOGGER="/usr/bin/logger -p daemon.notice -t ucarp"
+CONFDIR=/etc/ucarp
+UPSCRIPT=/usr/libexec/ucarp/vip-up.sh
+DOWNSCRIPT=/usr/libexec/ucarp/vip-down.sh
+PROGRAM=/usr/sbin/ucarp
+
+start() {
+    RETVAL=-1
+    VIP_RETVAL=0
+
+    echo -n "Starting ${prog}: "
+
+    get_files
+
+    if [ -z "${FILES}" ]; then
+        ${LOGGER} "no virtual addresses are configured in ${CONFDIR}"
+        #failure
+        RETVAL=1
+    else
+        for FILE in ${FILES}; do
+            # Check that the file name gives us an ID between 1 and 255
+            ID=`echo ${FILE}| sed 's/^vip-\(.*\).conf/\1/'`
+            if [ ${ID} -lt 1 -o ${ID} -gt 255 ]; then
+                ${LOGGER} "ID out of range (1-255) for ${FILE}, skipped VIP ID ${ID}"
+                continue
+            fi
+
+            unset PASSWORD BIND_INTERFACE SOURCE_ADDRESS VIP_ADDRESS OPTIONS
+            # Source ucarp settings
+            . ${CONFDIR}/vip-common.conf
+            . ${CONFDIR}/${FILE}
+            TMP_RETVAL=0
+
+            if [ -z "${PASSWORD}" ]; then
+                ${LOGGER} "no PASSWORD found for ${FILE}, skipped VIP ID ${ID}"
+                TMP_RETVAL=1
+            fi
+            if [ -z "${BIND_INTERFACE}" ]; then
+                ${LOGGER} "no BIND_INTERFACE found for ${FILE}, skipped VIP ID ${ID}"
+                TMP_RETVAL=1
+            fi
+            if [ -z "${SOURCE_ADDRESS}" ]; then
+                ${LOGGER} "no SOURCE_ADDRESS found for ${FILE}, skipped VIP ID ${ID}"
+                TMP_RETVAL=1
+            fi
+            if [ -z "${VIP_ADDRESS}" ]; then
+                ${LOGGER} "no VIP_ADDRESS found for ${FILE}, skipped VIP ID ${ID}"
+                TMP_RETVAL=1
+            fi
+
+            # If one of more of the above failed, skip the daemon launch
+            if [ ${TMP_RETVAL} -ne 0 ]; then
+                VIP_RETVAL=1
+                continue
+            fi
+
+            [ ${RETVAL} -eq -1 ] && RETVAL=0
+            ${PROGRAM} --daemonize --interface=${BIND_INTERFACE} --pass=${PASSWORD} --srcip=${SOURCE_ADDRESS} --vhid=${ID} --addr=${VIP_ADDRESS} ${OPTIONS} --upscript=$UPSCRIPT --downscript=$DOWNSCRIPT >/dev/null
+            LAUNCH_RETVAL=$?
+            [ ${LAUNCH_RETVAL} -ne 0 ] && RETVAL=1
+        done
+
+        # failure/success or warning if launch worked with some vip errors
+        if [ ${RETVAL} -eq 0 -a ${VIP_RETVAL} -eq 0 ]; then
+            ${LOGGER} "all ucarp configurations were applied successfully"
+            #success
+            touch /var/lock/subsys/ucarp
+        elif [ ${RETVAL} -eq 0 -a ${VIP_RETVAL} -eq 1 ]; then
+            ${LOGGER} "error in one or more of the ucarp configurations"
+            #warning
+        else
+           ${LOGGER} "error running one or more of the ucarp daemon instances"
+            #failure
+        fi
+    fi
+    echo
+}
+
+stop() {
+    echo -n "Stopping $prog: "
+    killproc ${PROGRAM} >/dev/null
+    RETVAL=$?
+
+    # With "--shutdown" in the default OPTIONS, the down script is called
+    # when ucarp is stopped, so IP addresses are released, no "leftovers".
+
+    # failure/success (no warning, too complicated to handle properly)
+    if [ ${RETVAL} -eq 1 ]; then
+        ${LOGGER} "it seems like no ucarp daemon were running"
+        #failure
+    else
+        ${LOGGER} "all ucarp daemons stopped and IP addresses unassigned"
+        #success
+        rm -f /var/lock/subsys/ucarp
+    fi
+    echo
+}
+
+# See how we were called.
+case "$1" in
+    start)
+        start
+        ;;
+    stop)
+        stop
+        ;;
+    restart)
+        stop
+        start
+        ;;
+    condrestart)
+        if [ -f /var/lock/subsys/ucarp ]; then
+            stop
+            start
+        fi
+        ;;
+    status)
+        if pidof -o %PPID ${PROGRAM} > /dev/null; then
+            echo "Running"
+            RETVAL=0
+        else
+            echo "Not running"
+            RETVAL=1
+        fi
+        ;;
+    *)
+        echo "Usage: $0 {start|stop|restart|condrestart|status}"
+        exit 1
+esac
+exit $RETVAL
+
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp.service b/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp.service
new file mode 100644
index 0000000..015837e
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/ucarp.service
@@ -0,0 +1,11 @@
+[Unit]
+Description=Common address redundancy protocol daemon
+After=syslog.target network.target
+
+[Service]
+PrivateTmp=true
+Type=forking
+ExecStart=@LIBEXECDIR@/ucarp start
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-001.conf.example b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-001.conf.example
new file mode 100644
index 0000000..2342522
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-001.conf.example
@@ -0,0 +1,11 @@
+# Virtual IP configuration file for UCARP
+# The number (from 001 to 255) in the name of the file is the identifier
+
+# In the simple scenario, you want a single virtual IP address from the _same_
+# network to be taken over by one of the routers.
+SOURCE_ADDRESS="192.168.1.20"
+VIP_ADDRESS="192.168.1.252"
+
+# In more complex scenarios, check the "vip-common" file for values to override
+# and how to add options.
+
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-common.conf b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-common.conf
new file mode 100644
index 0000000..6325346
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-common.conf
@@ -0,0 +1,8 @@
+# Common VIP settings which can be overridden in individual vip-<nnnn>.conf
+PASSWORD="vip"
+BIND_INTERFACE="eth0"
+SOURCE_ADDRESS=""
+
+# If you have extra options to add, see "ucarp --help" output
+OPTIONS="--shutdown --preempt"
+
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
new file mode 100644
index 0000000..a431c32
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
@@ -0,0 +1,7 @@
+#! /bin/sh
+exec 2> /dev/null
+
+#/sbin/ip addr del "$2"/24 dev "$1"
+
+# or alternatively:
+/sbin/ifconfig "$1":254 down
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
new file mode 100644
index 0000000..c1b8a4f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
@@ -0,0 +1,7 @@
+#! /bin/sh
+exec 2> /dev/null
+
+#/sbin/ip addr add "$2"/24 dev "$1"
+
+# or alternatively:
+/sbin/ifconfig "$1":254 "$2" netmask 255.255.255.0 
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
new file mode 100644
index 0000000..6f30bf7
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
@@ -0,0 +1,65 @@
+SUMMARY = "Common Address Redundancy Protocol for Unix"
+DESCRIPTION = "UCARP allows a couple of hosts to share common \
+virtual IP addresses in order to provide automatic failover. \
+It is a portable userland implementation of the secure and \
+patent-free Common Address Redundancy Protocol (CARP, OpenBSD's \
+alternative to the patents-bloated VRRP. \
+Strong points of the CARP protocol are: very low overhead, \
+cryptographically signed messages, interoperability between \
+different operating systems and no need for any dedicated extra \
+network link between redundant hosts."
+
+HOMEPAGE = "http://www.ucarp.org"
+
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://COPYING;md5=278a886e91f2f6c983ffdf040130cdc6"
+
+SRC_URI = "http://download.pureftpd.org/pub/ucarp/${BPN}-${PV}.tar.gz \
+           file://ucarp-configure-sha1.patch \
+           file://ucarp-configure-snprintf.patch \
+           file://ucarp.init \
+           file://vip-001.conf.example \
+           file://vip-common.conf \
+           file://vip-up.sh \
+           file://vip-down.sh \
+           file://ucarp.service \
+          "
+
+SRC_URI[md5sum] = "e3caa733316a32c09e5d3817617e9145"
+SRC_URI[sha256sum] = "f3cc77e28481fd04f62bb3d4bc03104a97dd316c80c0ed04ad7be24b544112f3"
+
+inherit autotools gettext systemd
+
+DEPENDS = "libpcap"
+
+SYSTEMD_SERVICE_${PN} = "ucarp.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN}"
+
+# fix the perms for config.rpath
+do_configure_prepend() {
+    chmod 755 ${S}/config.rpath
+}
+
+do_install_append() {
+    sed -i -e 's#\(UPSCRIPT=\).*#\1${libexecdir}/vip-up.sh#' \
+           -e 's#\(DOWNSCRIPT=\).*#\1${libexecdir}/vip-down.sh#' ${WORKDIR}/ucarp.init
+
+    install -D -m 0755 ${WORKDIR}/ucarp.init ${D}${sysconfdir}/init.d/ucarp
+
+    # For systemd
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -D -m 0755 ${WORKDIR}/ucarp.init ${D}${libexecdir}/ucarp
+        install -D -m 0644 ${WORKDIR}/ucarp.service ${D}${systemd_system_unitdir}/ucarp.service
+        sed -i -e 's,@LIBEXECDIR@,${libexecdir},g' ${D}${systemd_system_unitdir}/ucarp.service
+    fi
+
+    install -m 0755 -d ${D}${sysconfdir}/ucarp
+    install -m 0600 ${WORKDIR}/vip-001.conf.example ${D}${sysconfdir}/ucarp/vip-001.conf.example
+    install -m 0600 ${WORKDIR}/vip-common.conf ${D}${sysconfdir}/ucarp/vip-common.conf
+
+    install -m 0755 -d ${D}${libexecdir}
+    install -m 0700 ${WORKDIR}/vip-up.sh ${D}${libexecdir}/vip-up.sh
+    install -m 0700 ${WORKDIR}/vip-down.sh ${D}${libexecdir}/vip-down.sh
+}
-- 
2.7.4


