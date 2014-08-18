Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B34DAE007F6; Sun, 17 Aug 2014 19:42:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80774E007E6
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 19:42:25 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id eu11so6820051pac.4
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 19:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=IRgz4kq5nlyHQ+H+zZBxQvuHeI0RnWZcbOuP/9oFASs=;
	b=TjKyQ2poZi8ZEleg2JxADdGQMdn9q0dUrEBb8DP3hPtIkcQWyrOA5Am8D/mV9cbjXF
	RmFEuMHENXQZw/XfGtfYqmJalZerU/t2krO8zaRTHJ2ZPU32UBOipZJVbuz/G7kce1Ww
	HbpD9uL46jmI1SaEkj7eJJP3eTztQIofmbP4lqkF60dJw5zkHec6TEp0j0a1VhBtelUC
	niymP5M1gGnzr4wSkwdQidZGW0s5Qs/8NfzlzUa+37f0M3FHzV8UgytrYhfMdDwncGoa
	ymOKP3hCe1OY8pfRp8FrjsdT/eLCXN+2gHfOIIXgKebUPGoQAdsvu1rNRabJb24jbmIC
	v6kw==
X-Received: by 10.66.136.48 with SMTP id px16mr29747091pab.10.1408329745127;
	Sun, 17 Aug 2014 19:42:25 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	qp12sm22517640pdb.80.2014.08.17.19.42.23 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 17 Aug 2014 19:42:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 17 Aug 2014 19:42:17 -0700
Message-Id: <1408329739-14758-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1408329739-14758-1-git-send-email-akuster808@gmail.com>
References: <1408329739-14758-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 1/3] samhain: New ISD package
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
X-List-Received-Date: Mon, 18 Aug 2014 02:42:30 -0000

These are the base files needed by both
client and server recipes.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/files/samhain-client.default           |   3 +
 recipes-security/samhain/files/samhain-client.init | 122 +++++++++++++++++++++
 .../samhain/files/samhain-server-volatiles         |   1 +
 .../samhain/files/samhain-server.default           |   3 +
 recipes-security/samhain/files/samhain-server.init | 116 ++++++++++++++++++++
 recipes-security/samhain/samhain.inc               |  82 ++++++++++++++
 6 files changed, 327 insertions(+)
 create mode 100644 recipes-security/samhain/files/samhain-client.default
 create mode 100644 recipes-security/samhain/files/samhain-client.init
 create mode 100644 recipes-security/samhain/files/samhain-server-volatiles
 create mode 100644 recipes-security/samhain/files/samhain-server.default
 create mode 100644 recipes-security/samhain/files/samhain-server.init
 create mode 100644 recipes-security/samhain/samhain.inc

diff --git a/recipes-security/samhain/files/samhain-client.default b/recipes-security/samhain/files/samhain-client.default
new file mode 100644
index 0000000..9899577
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-client.default
@@ -0,0 +1,3 @@
+# Set this to "yes" to start the server, after you configure it, of
+# course.
+SAMHAIN_CLIENT_START="no"
\ No newline at end of file
diff --git a/recipes-security/samhain/files/samhain-client.init b/recipes-security/samhain/files/samhain-client.init
new file mode 100644
index 0000000..730e1c4
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-client.init
@@ -0,0 +1,122 @@
+#!/bin/bash
+# chkconfig: 2345 99 10
+# description: File Integrity Checking Daemon
+#
+# processname: samhain
+# config  : /etc/samhainrc
+# logfile : /var/log/samhain_log
+# database: /var/lib/samhain/samhain_file
+#
+
+NAME=samhain
+DAEMON=/usr/sbin/samhain
+RETVAL=0
+PIDFILE=/var/run/samhain.pid
+
+. /etc/default/rcS
+
+. /etc/default/samhain-client
+
+if [ "x$SAMHAIN_CLIENT_START" != "xyes" ]; then
+	echo "${0}: client disabled in /etc/default/samhain-client"
+	exit 0
+fi
+
+if [ -x $DAEMON ]; then
+	:
+else
+	echo "${0}: executable ${DAEMON} not found"
+	exit 1
+fi
+
+if [ ! -e /var/lib/samhain/samhain_file ]; then
+	echo "${0}: /var/lib/samhain/samhain_file does not exist.  You must"
+	echo "  run 'samhain -t init' before samhian-client can start."
+	exit 1
+fi
+
+samhain_done()
+{
+	if [ $RETVAL -eq 0 ]; then
+		echo "."
+	else
+		echo " failed."
+	fi
+}
+
+log_stat_msg () {
+case "$1" in
+	0)
+	echo "Service $NAME: Running";
+	;;
+	1)
+	echo "Service $NAME: Stopped and /var/run pid file exists";
+	;;
+	3)
+	echo "Service $NAME: Stopped";
+	;;
+	*)
+	echo "Service $NAME: Status unknown";
+	;;
+esac
+}
+
+case "$1" in
+  start)
+	#
+	# Remove a stale PID file, if found
+	#
+	if test -f ${PIDFILE}; then
+	    /bin/rm -f ${PIDFILE}
+	fi
+	#
+	echo -n "Starting ${NAME}"
+	/sbin/start-stop-daemon --start --quiet --exec $DAEMON
+	RETVAL=$?
+	samhain_done
+	;;
+
+  stop)
+	echo -n "Stopping $NAME"
+        ( /sbin/start-stop-daemon --stop --quiet --exec $DAEMON )
+	RETVAL=$? 
+
+	#
+	# Remove a stale PID file, if found
+	#
+	if test -f ${PIDFILE}; then
+	    /bin/rm -f ${PIDFILE}
+	fi
+        if test -S /var/run/${NAME}.sock; then
+            /bin/rm -f /var/run/${NAME}.sock
+        fi
+	samhain_done
+	;;
+
+  restart)
+	$0 stop
+	sleep 3
+	$0 start
+	RETVAL=$?
+	;;
+
+  reload|force-reload)
+       	echo -n "Reloading $NAME configuration files"
+       	/sbin/start-stop-daemon --stop --signal 1 --quiet --exec $DAEMON
+	RETVAL=$?
+	samhain_done
+	;;
+
+  status)
+	$DAEMON status
+	RETVAL=$?
+	log_stat_msg ${RETVAL}
+	;;
+
+  *)
+	echo "$0 usage: {start|stop|status|restart|reload}"
+	exit 1
+	;;
+esac
+
+exit $RETVAL
diff --git a/recipes-security/samhain/files/samhain-server-volatiles b/recipes-security/samhain/files/samhain-server-volatiles
new file mode 100644
index 0000000..6b80709
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-server-volatiles
@@ -0,0 +1 @@
+d daemon daemon 0775 /var/log/yule none
diff --git a/recipes-security/samhain/files/samhain-server.default b/recipes-security/samhain/files/samhain-server.default
new file mode 100644
index 0000000..bc3d67c
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-server.default
@@ -0,0 +1,3 @@
+# Set this to "yes" to start the server, after you configure it, of
+# course.
+SAMHAIN_SERVER_START="no"
\ No newline at end of file
diff --git a/recipes-security/samhain/files/samhain-server.init b/recipes-security/samhain/files/samhain-server.init
new file mode 100644
index 0000000..89bd0aa
--- /dev/null
+++ b/recipes-security/samhain/files/samhain-server.init
@@ -0,0 +1,116 @@
+#!/bin/bash
+# chkconfig: 2345 98 11
+# description: File Integrity Checking Daemon
+#
+# processname: yule
+# config  : /etc/yulerc
+# logfile : /var/log/yule/yule_log
+# database: /var/lib/yule/yule_file
+#
+
+NAME=yule
+DAEMON=/usr/sbin/yule
+RETVAL=0
+PIDFILE=/var/run/yule.pid
+
+. /etc/default/rcS
+
+. /etc/default/samhain-server
+
+if [ "x$SAMHAIN_SERVER_START" != "xyes" ]; then
+	echo "${0}: server disabled in /etc/default/samhain-server"
+	exit 0
+fi
+
+if [ -x $DAEMON ]; then
+	:
+else
+	echo "${0}: executable ${DAEMON} not found"
+	exit 1
+fi
+
+samhain_done()
+{
+	if [ $RETVAL -eq 0 ]; then
+		echo "."
+	else
+		echo " failed."
+	fi
+}
+
+log_stat_msg () {
+case "$1" in
+	0)
+	echo "Service $NAME: Running";
+	;;
+	1)
+	echo "Service $NAME: Stopped and /var/run pid file exists";
+	;;
+	3)
+	echo "Service $NAME: Stopped";
+	;;
+	*)
+	echo "Service $NAME: Status unknown";
+	;;
+esac
+}
+
+case "$1" in
+  start)
+	#
+	# Remove a stale PID file, if found
+	#
+	if test -f ${PIDFILE}; then
+	    /bin/rm -f ${PIDFILE}
+	fi
+	#
+	echo -n "Starting ${NAME}"
+	/sbin/start-stop-daemon --start --quiet --exec $DAEMON
+	RETVAL=$?
+	samhain_done
+	;;
+
+  stop)
+	echo -n "Stopping $NAME"
+        ( /sbin/start-stop-daemon --stop --quiet --exec $DAEMON )
+	RETVAL=$? 
+
+	#
+	# Remove a stale PID file, if found
+	#
+	if test -f ${PIDFILE}; then
+	    /bin/rm -f ${PIDFILE}
+	fi
+        if test -S /var/run/${NAME}.sock; then
+            /bin/rm -f /var/run/${NAME}.sock
+        fi
+	samhain_done
+	;;
+
+  restart)
+	$0 stop
+	sleep 3
+	$0 start
+	RETVAL=$?
+	;;
+
+  reload|force-reload)
+       	echo -n "Reloading $NAME configuration files"
+       	/sbin/start-stop-daemon --stop --signal 1 --quiet --exec $DAEMON
+	RETVAL=$?
+	samhain_done
+	;;
+
+  status)
+	$DAEMON status
+	RETVAL=$?
+	log_stat_msg ${RETVAL}
+	;;
+
+  *)
+	echo "$0 usage: {start|stop|status|restart|reload}"
+	exit 1
+	;;
+esac
+
+exit $RETVAL
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
new file mode 100644
index 0000000..d6f9f82
--- /dev/null
+++ b/recipes-security/samhain/samhain.inc
@@ -0,0 +1,82 @@
+DESCRIPTION = "Provides file integrity checking and log file monitoring/analysis"
+HOMEPAGE    = "http://www.la-samhna.de/samhain/"
+LICENSE     = "GPLv2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
+
+
+SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
+	   file://${INITSCRIPT_NAME}.init \
+	   file://${INITSCRIPT_NAME}.default \
+	  "
+
+SRC_URI[md5sum] = "f7fff913d016241eec6829bd5f740513"
+SRC_URI[sha256sum] = "844e8e22c0e259b4c12cd0ccacdb3d5569a2a1746b0aa1aa285febb266cbcf31"
+
+S = "${WORKDIR}/samhain-${PV}"
+
+inherit autotools-brokensep update-rc.d pkgconfig
+
+SAMHAIN_PORT ??= "49777"
+SAMHAIN_SERVER ??= "NULL"
+
+INITSCRIPT_NAME = "samhain-${SAMHAIN_MODE}"
+INITSCRIPT_PARAMS ?= "defaults"
+
+
+PACKAGECONFIG ??= ""
+
+# We have to unpack the tar ball twice to get to the source.
+# Also as soon as OE gets the tar ball it unpacks and
+# proceeds to apply the patches. But what you still have after
+# the first unpack is another tar ball. So we do a do_unpack_extra()
+# and tell OE to do the second unpack before do_patch(), otherwise
+# do_patch() will fail when trying to apply the patches.
+do_unpack_extra () {
+	cd ${WORKDIR}
+	tar -xzvf samhain-${PV}.tar.gz
+}
+addtask unpack_extra after do_unpack before do_patch
+
+# If we use oe_runconf in do_configure() it will by default
+# use the prefix --oldincludedir=/usr/include which is not
+# recognized by Samhain's configure script and would invariably
+# throw back the error "unrecognized option: --oldincludedir=/usr/include"
+do_configure () {
+    cd ${S}
+	./configure \
+	    --build=${BUILD_SYS} \
+	    --host=${HOST_SYS} \
+	    --target=${TARGET_SYS} \
+	    --prefix=${prefix} \
+	    --exec_prefix=${exec_prefix} \
+	    --bindir=${bindir} \
+	    --sbindir=${sbindir} \
+	    --libexecdir=${libexecdir} \
+	    --datadir=${datadir} \
+	    --sysconfdir=${sysconfdir} \
+	    --sharedstatedir=${sharedstatedir} \
+	    --localstatedir=${localstatedir} \
+	    --libdir=${libdir} \
+	    --includedir=${includedir} \
+	    --infodir=${infodir} \
+	    --mandir=${mandir} \
+	    ${EXTRA_OECONF}
+}
+
+# Install the init script, it's default file, and the extraneous
+# documentation.
+do_install_append () {
+    cd ${S}
+	oe_runmake install DESTDIR='${D}' INSTALL=install-boot
+	install -d ${D}${sysconfdir}/init.d
+	install -m 755 ${WORKDIR}/${INITSCRIPT_NAME}.init \
+		${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+
+	install -d ${D}${sysconfdir}/default
+	install -m 755 ${WORKDIR}/${INITSCRIPT_NAME}.default \
+		${D}${sysconfdir}/default/${INITSCRIPT_NAME}
+
+	install -d ${D}${docdir}/${PN}
+	cp -r docs/* ${D}${docdir}/${PN}
+	cp -r scripts ${D}${docdir}/${PN}
+}
-- 
1.9.1


