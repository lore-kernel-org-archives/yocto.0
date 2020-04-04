Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.10262.1586012344295675520
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Apr 2020 07:59:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 034EwK2f007244
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Sat, 4 Apr 2020 07:58:31 -0700
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Sat, 4 Apr
 2020 07:58:10 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 1/3] sysklogd: sync the initscript to latest oe-core version
Date: Sat, 4 Apr 2020 22:58:06 +0800
Message-ID: <20200404145808.8373-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

The sysklogd has been updated to 2.1.1 in oe-core and the klogd was
removed from this version since syslogd performs logging of kernel
messages. So we update the initscript to adapt it.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-extended/sysklogd/files/sysklogd | 47 +++++++++++++++---------
 1 file changed, 29 insertions(+), 18 deletions(-)
 mode change 100755 => 100644 recipes-extended/sysklogd/files/sysklogd

diff --git a/recipes-extended/sysklogd/files/sysklogd b/recipes-extended/sysklogd/files/sysklogd
old mode 100755
new mode 100644
index 8c6eeb5..e49c2da
--- a/recipes-extended/sysklogd/files/sysklogd
+++ b/recipes-extended/sysklogd/files/sysklogd
@@ -12,12 +12,13 @@
 # Short-Description:    System logger
 ### END INIT INFO
 
+# Source function library.
+. /etc/init.d/functions
+
 PATH=/bin:/usr/bin:/sbin:/usr/sbin
 
 pidfile_syslogd=/var/run/syslogd.pid
-pidfile_klogd=/var/run/klogd.pid
-binpath_syslogd=/sbin/syslogd
-binpath_klogd=/sbin/klogd
+binpath_syslogd=/usr/sbin/syslogd
 
 test -x $binpath || exit 0
 
@@ -87,6 +88,22 @@ running()
     return 0
 }
 
+waitpid ()
+{
+  pid=$1
+  # Give pid a chance to exit before we restart with a 5s timeout in 1s intervals
+  if [ -z "$pid" ]; then
+    return
+  fi
+  timeout=5;
+  while [ $timeout -gt 0 ]
+  do
+    timeout=$(( $timeout-1 ))
+    kill -0 $pid 2> /dev/null || break
+    sleep 1
+  done
+}
+
 case "$1" in
   start)
     log_begin_msg "Starting system log daemon..."
@@ -94,36 +111,24 @@ case "$1" in
     start-stop-daemon --start --quiet --pidfile $pidfile_syslogd --name syslogd --startas $binpath_syslogd -- $SYSLOGD
     test ! -x /sbin/restorecon || /sbin/restorecon -RF /dev/log /var/log/
     log_end_msg $?
-    log_begin_msg "Starting kernel log daemon..."
-    start-stop-daemon --start --quiet --pidfile $pidfile_klogd --name klogd --startas $binpath_klogd -- $KLOGD
-    log_end_msg $?
     ;;
   stop)
     log_begin_msg "Stopping system log daemon..."
     start-stop-daemon --stop --quiet --pidfile $pidfile_syslogd --name syslogd
     log_end_msg $?
-    log_begin_msg "Stopping kernel log daemon..."
-    start-stop-daemon --stop --quiet --retry 3 --exec $binpath_klogd --pidfile $pidfile_klogd
-    log_end_msg $?
     ;;
   reload|force-reload)
     log_begin_msg "Reloading system log daemon..."
     start-stop-daemon --stop --quiet --signal 1 --pidfile $pidfile_syslogd --name syslogd
     log_end_msg $?
-    log_begin_msg "Reloading kernel log daemon..."
-    start-stop-daemon --stop --quiet --retry 3 --exec $binpath_klogd --pidfile $pidfile_klogd
-    start-stop-daemon --start --quiet --pidfile $pidfile_klogd --name klogd --startas $binpath_klogd -- $KLOGD
-    log_end_msg $?
     ;;
   restart)
     log_begin_msg "Restarting system log daemon..."
+    pid=`cat $pidfile_syslogd 2> /dev/null`
     start-stop-daemon --stop --retry 5 --quiet --pidfile $pidfile_syslogd --name syslogd
+    waitpid $pid
     start-stop-daemon --start --quiet --pidfile $pidfile_syslogd --name syslogd --startas $binpath_syslogd -- $SYSLOGD
     log_end_msg $?
-    log_begin_msg "Reloading kernel log daemon..."
-    start-stop-daemon --stop --quiet --retry 3 --exec $binpath_klogd --pidfile $pidfile_klogd
-    start-stop-daemon --start --quiet --pidfile $pidfile_klogd --name klogd --startas $binpath_klogd -- $KLOGD
-    log_end_msg $?
     ;;
   reload-or-restart)
     if running
@@ -133,8 +138,14 @@ case "$1" in
 	$0 start
     fi
     ;;
+  status)
+    status syslogd
+    RETVAL=$?
+    [ $RETVAL -eq 0 ] && exit $rval
+    exit $RETVAL
+    ;;
   *)
-    log_success_msg "Usage: /etc/init.d/sysklogd {start|stop|reload|restart|force-reload|reload-or-restart}"
+    log_success_msg "Usage: /etc/init.d/sysklogd {start|stop|reload|restart|force-reload|reload-or-restart|status}"
     exit 1
 esac
 
-- 
2.17.1

