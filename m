Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB3EEE00348
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 09:20:45 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Oct 2012 09:20:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,680,1344236400"; d="scan'208";a="211306113"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.102])
	by azsmga001.ch.intel.com with ESMTP; 30 Oct 2012 09:20:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Oct 2012 16:20:41 +0000
Message-Id: <ad1dfa139195f39a72b8e0fb47de5c3339397b8b.1351613968.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1351613968.git.paul.eggleton@linux.intel.com>
References: <cover.1351613968.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1351613968.git.paul.eggleton@linux.intel.com>
References: <cover.1351613968.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 1/1] proftpd: add initscript and tidy up recipe
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
X-List-Received-Date: Tue, 30 Oct 2012 16:20:46 -0000

* Add initscript, borrowed from Debian with some modifications for
  compatibility
* Use autotools.bbclass and remove unnecessary configure options
* Use useradd.bbclass to add ftp user/group
* PARALLEL_MAKE = "" is no longer needed, the bug was fixed in 1.3.3c
* Set SUMMARY (which sets DESCRIPTION) and base it on the short
  description from the website
* Add HOMEPAGE
* Add/fix description in some patches and improve recipe indentation
* Remove unnecessary chown of proftpd binary in postinst script

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-extended/proftpd/files/basic.conf.patch   |    2 +-
 recipes-extended/proftpd/files/contrib.patch      |    4 +
 recipes-extended/proftpd/files/default            |    9 +
 recipes-extended/proftpd/files/proftpd-basic.init |  220 +++++++++++++++++++++
 recipes-extended/proftpd/proftpd_1.3.4b.bb        |   72 +++----
 5 files changed, 273 insertions(+), 34 deletions(-)
 create mode 100644 recipes-extended/proftpd/files/default
 create mode 100644 recipes-extended/proftpd/files/proftpd-basic.init

diff --git a/recipes-extended/proftpd/files/basic.conf.patch b/recipes-extended/proftpd/files/basic.conf.patch
index 55059f3..4967bed 100644
--- a/recipes-extended/proftpd/files/basic.conf.patch
+++ b/recipes-extended/proftpd/files/basic.conf.patch
@@ -1,6 +1,6 @@
 Upstream-Status: Inappropriate [configuration]
 
-proftpd tris to get the IP address from the hostname.
+proftpd tries to get the IP address from the hostname.
 Unluckily now the hostname is not properly configured in /etc/hosts.
 We can use this patch as a workaround.
 
diff --git a/recipes-extended/proftpd/files/contrib.patch b/recipes-extended/proftpd/files/contrib.patch
index 6d9235a..7e2a8e3 100644
--- a/recipes-extended/proftpd/files/contrib.patch
+++ b/recipes-extended/proftpd/files/contrib.patch
@@ -1,3 +1,7 @@
+The contrib directory now contains its own Makefile which is
+used during installation. It was required to pass DESTDIR through
+when it gets called from the base Makefile.
+
 Upstream-Status: Pending
 
 Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
diff --git a/recipes-extended/proftpd/files/default b/recipes-extended/proftpd/files/default
new file mode 100644
index 0000000..b31f36c
--- /dev/null
+++ b/recipes-extended/proftpd/files/default
@@ -0,0 +1,9 @@
+# Defaults for proftpd initscript
+
+# Master system-wide proftpd switch. The initscript
+# will not run if it is not set to yes.
+RUN="yes"
+
+# Default options.
+# For more exhaustive logging, try "-d 3".
+OPTIONS=""
diff --git a/recipes-extended/proftpd/files/proftpd-basic.init b/recipes-extended/proftpd/files/proftpd-basic.init
new file mode 100644
index 0000000..01c998c
--- /dev/null
+++ b/recipes-extended/proftpd/files/proftpd-basic.init
@@ -0,0 +1,220 @@
+#!/bin/sh
+
+### BEGIN INIT INFO
+# Provides:          proftpd
+# Required-Start:    $remote_fs $syslog $local_fs $network
+# Required-Stop:     $remote_fs $syslog $local_fs $network
+# Should-Start:      $named
+# Should-Stop:       $named
+# Default-Start:     2 3 4 5
+# Default-Stop:      0 1 6
+# Short-Description: Starts ProFTPD daemon
+# Description:       This script runs the FTP service offered
+#                    by the ProFTPD daemon
+### END INIT INFO
+
+# Start the proftpd FTP daemon.
+
+PATH=/bin:/usr/bin:/sbin:/usr/sbin
+DAEMON=/usr/sbin/proftpd
+NAME=proftpd
+
+# Defaults
+RUN="no"
+OPTIONS=""
+CONFIG_FILE=/etc/proftpd.conf
+
+PIDFILE=`grep -i '^pidfile' $CONFIG_FILE|awk '{ print $2 }'`
+if [ "x$PIDFILE" = "x" ];
+then
+    PIDFILE=/var/run/proftpd.pid
+fi
+
+# Read config (will override defaults)
+[ -r /etc/default/proftpd ] && . /etc/default/proftpd
+
+trap "" 1
+trap "" 15
+
+test -f $DAEMON || exit 0
+
+. /etc/init.d/functions
+
+#
+# Servertype could be inetd|standalone|none.
+# In all cases check against inetd and xinetd support.
+#
+if ! egrep -qi "^[[:space:]]*ServerType.*standalone" $CONFIG_FILE
+then
+    if egrep -qi "server[[:space:]]*=[[:space:]]*/usr/sbin/proftpd" /etc/xinetd.conf 2>/dev/null || \
+       egrep -qi "server[[:space:]]*=[[:space:]]*/usr/sbin/proftpd" /etc/xinetd.d/* 2>/dev/null || \
+       egrep -qi "^ftp.*/usr/sbin/proftpd" /etc/inetd.conf 2>/dev/null
+    then
+        RUN="no"
+        INETD="yes"
+    else
+        if ! egrep -qi "^[[:space:]]*ServerType.*inetd" $CONFIG_FILE
+        then
+            RUN="yes"
+            INETD="no"
+        else
+            RUN="no"
+            INETD="no"
+        fi
+    fi
+fi
+
+# /var/run could be on a tmpfs
+
+[ ! -d /var/run/proftpd ] && mkdir /var/run/proftpd
+
+inetd_check()
+{
+    if [ ! -x /usr/sbin/inetd -a ! -x /usr/sbin/xinetd ]; then
+        echo "Neither inetd nor xinetd appears installed: check your configuration."
+    fi
+}
+
+start()
+{
+    set -e
+    echo -n "Starting ftp server $NAME... "
+    start-stop-daemon --start --quiet --pidfile "$PIDFILE" --oknodo --exec $DAEMON -- -c $CONFIG_FILE $OPTIONS
+    echo "done."
+}
+
+signal()
+{
+
+    if [ "$1" = "stop" ]; then
+        SIGNAL="TERM"
+        echo -n "Stopping ftp server $NAME... "
+    else
+        if [ "$1" = "reload" ]; then
+            SIGNAL="HUP"
+            echo -n "Reloading ftp server $NAME... "
+        else
+            echo "ERR: wrong parameter given to signal()"
+            exit 1
+        fi
+    fi
+    if [ -f "$PIDFILE" ]; then
+        start-stop-daemon --stop --signal $SIGNAL --quiet --pidfile "$PIDFILE"
+        if [ $? = 0 ]; then
+            echo "done."
+            return
+        else
+            SIGNAL="KILL"
+            start-stop-daemon --stop --signal $SIGNAL --quiet --pidfile "$PIDFILE"
+            if [ $? != 0 ]; then
+                echo
+                [ $2 != 0 ] || exit 0
+            else
+                echo "done."
+                return
+            fi
+        fi
+        if [ "$SIGNAL" = "KILL" ]; then
+            rm -f "$PIDFILE"
+        fi
+    else
+        echo "done."
+        return
+    fi
+}
+
+case "$1" in
+    start)
+        if [ "x$RUN" = "xyes" ] ; then
+            start
+        else
+            if [ "x$INETD" = "xyes" ] ; then
+                echo "ProFTPD is started from inetd/xinetd."
+                inetd_check
+            else
+                echo "ProFTPD warning: cannot start neither in standalone nor in inetd/xinetd mode. Check your configuration."
+            fi
+        fi
+        ;;
+
+    force-start)
+        if [ "x$INETD" = "xyes" ] ; then
+            echo "Warning: ProFTPD is started from inetd/xinetd (trying to start anyway)."
+            inetd_check
+        fi
+        start
+        ;;
+
+    stop)
+        if [ "x$RUN" = "xyes" ] ; then
+            signal stop 0
+        else
+            if [ "x$INETD" = "xyes" ] ; then
+                echo "ProFTPD is started from inetd/xinetd."
+                inetd_check
+            else
+                echo "ProFTPD warning: cannot start neither in standalone nor in inetd/xinetd mode. Check your configuration."
+            fi
+        fi
+        ;;
+
+    force-stop)
+        if [ "x$INETD" = "xyes" ] ; then
+            echo "Warning: ProFTPD is started from inetd/xinetd (trying to kill anyway)."
+            inetd_check
+        fi
+        signal stop 0
+        ;;
+
+    reload)
+        signal reload 0
+        ;;
+
+    force-reload|restart)
+        if [ "x$RUN" = "xyes" ] ; then
+            signal stop 1
+            sleep 2
+            start
+        else
+            if [ "x$INETD" = "xyes" ] ; then
+                echo "ProFTPD is started from inetd/xinetd."
+                inetd_check
+            else
+                echo "ProFTPD warning: cannot start neither in standalone nor in inetd/xinetd mode. Check your configuration."
+            fi
+        fi
+        ;;
+
+    status)
+        if [ "x$INETD" = "xyes" ] ; then
+            echo "ProFTPD is started from inetd/xinetd."
+            inetd_check
+            exit 0
+        else
+            if [ -f "$PIDFILE" ]; then
+                pid=$(cat $PIDFILE)
+            else
+                pid="x"
+            fi
+            if [ `pidof proftpd|grep "$pid"|wc -l` -ne 0 ] ; then
+                echo "ProFTPD is started in standalone mode, currently running."
+                exit 0
+            else
+                echo "ProFTPD is started in standalone mode, currently not running."
+                exit 3
+            fi
+        fi
+        ;;
+
+    check-config)
+        $DAEMON -t >/dev/null && echo "ProFTPD configuration OK" && exit 0
+        exit 1
+        ;;
+
+    *)
+        echo "Usage: /etc/init.d/$NAME {start|status|force-start|stop|force-stop|reload|restart|force-reload|check-config}"
+        exit 1
+        ;;
+esac
+
+exit 0
diff --git a/recipes-extended/proftpd/proftpd_1.3.4b.bb b/recipes-extended/proftpd/proftpd_1.3.4b.bb
index 45e73d9..8ebafbf 100644
--- a/recipes-extended/proftpd/proftpd_1.3.4b.bb
+++ b/recipes-extended/proftpd/proftpd_1.3.4b.bb
@@ -1,55 +1,61 @@
-DESCRIPTION = "Secure ftp daemon"
+SUMMARY = "Secure and configurable FTP server"
 SECTION = "console/network"
-
+HOMEPAGE = "http://www.proftpd.org"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fb0d1484d11915fa88a6a7702f1dc184"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "ftp://ftp.proftpd.org/distrib/source/${PN}-${PV}.tar.gz \
-	file://make.patch \
-	file://basic.conf.patch \
-	file://contrib.patch \
-	"
+           file://make.patch \
+           file://basic.conf.patch \
+           file://contrib.patch \
+           file://proftpd-basic.init \
+           file://default \
+           "
 
 SRC_URI[md5sum] = "0871e0b93c9c3c88ca950b6d9a04aed2"
 SRC_URI[sha256sum] = "9f659585cea90fc6af34a0ffae4a90e4ed37abe92dbd9b6c311f95a436c961cb"
 
-EXTRA_OECONF = "ac_cv_func_setpgrp_void=yes ac_cv_func_setgrent_void=yes --disable-cap"
-LDFLAGS += "-Llib"
-PARALLEL_MAKE = ""
+inherit autotools useradd update-rc.d
+
+EXTRA_OECONF = "--disable-cap \
+                --disable-auth-pam \
+		"
 
+# proftpd uses libltdl which currently makes configuring using
+# autotools.bbclass a pain...
 do_configure () {
-	 ./configure \
-		   --disable-auth-pam \
-                   --build=${BUILD_SYS} \
-                   --host=${HOST_SYS} \
-                   --target=${TARGET_SYS} \
-                   --prefix=/usr \
-		   --sysconfdir=/etc \
-		   --sharedstatedir=/com \
-		   --localstatedir=/var \
-                   ${EXTRA_OECONF} \
-                   $@;
+	oe_runconf
 }
 
+FTPUSER = "ftp"
+FTPGROUP = "ftp"
+
 do_install () {
-    oe_runmake DESTDIR=${D} install
-    rmdir ${D}${libexecdir} ${D}${libdir}/proftpd ${D}${datadir}/locale
+	oe_runmake DESTDIR=${D} install
+	rmdir ${D}${libexecdir} ${D}${libdir}/proftpd ${D}${datadir}/locale
+	sed -i '/ *User[ \t]*/s/ftp/${FTPUSER}/' ${D}${sysconfdir}/proftpd.conf
+	sed -i '/ *Group[ \t]*/s/ftp/${FTPGROUP}/' ${D}${sysconfdir}/proftpd.conf
+	install -d ${D}${sysconfdir}/init.d
+	install -m 0755 ${WORKDIR}/proftpd-basic.init ${D}${sysconfdir}/init.d/proftpd
+	install -d ${D}${sysconfdir}/default
+	install -m 0755 ${WORKDIR}/default ${D}${sysconfdir}/default/proftpd
 }
 
-pkg_postinst () {
+INITSCRIPT_NAME = "proftpd"
+INITSCRIPT_PARAM = "defaults 85 15"
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "${FTPGROUP}"
+USERADD_PARAM_${PN} = "--system -g ${FTPGROUP} ${FTPUSER}"
+
+pkg_postinst_${PN} () {
     if [ "x$D" != "x" ] ; then
         exit 1
     fi
 
-    # more chown's might be needed
-    chown root:root /usr/sbin/proftpd
-
-    # create the ftp user
-    username='ftp'
-    addgroup ${username}
-    adduser --disabled-password ${username} --ingroup ${username}
-    mkdir -p /home/${username}/pub/
-    chown -R ftp:ftp /home/${username}/pub
+    # create the pub directory
+    mkdir -p /home/${FTPUSER}/pub/
+    chown -R ${FTPUSER}:${FTPGROUP} /home/${FTPUSER}/pub
 }
-- 
1.7.9.5


