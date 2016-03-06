Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E593E00BE8; Sun,  6 Mar 2016 12:08:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA3CBE0084E
	for <yocto@yoctoproject.org>; Sun,  6 Mar 2016 12:08:45 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1acexy-00010C-6t; Sun, 06 Mar 2016 20:07:52 +0000
From: Philip Tricca <flihp@twobit.us>
To: mark.hatle@windriver.com
Date: Sun,  6 Mar 2016 20:08:23 +0000
Message-Id: <1457294903-74025-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <56D8A187.8050502@windriver.com>
References: <56D8A187.8050502@windriver.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [PATCH] udev: Rename udev bbappend to eudev.
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
X-List-Received-Date: Sun, 06 Mar 2016 20:08:49 -0000

Required by switch to eudev in oe-core. Dropping PR since this is
effectively a new recipe.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-core/eudev/eudev/init           | 144 ++++++++++++++++++++++++++++++++
 recipes-core/eudev/eudev/udev-cache     |  32 +++++++
 recipes-core/eudev/eudev_3.1.5.bbappend |   3 +
 recipes-core/udev/udev/init             | 144 --------------------------------
 recipes-core/udev/udev/udev-cache       |  32 -------
 recipes-core/udev/udev_182.bbappend     |   5 --
 6 files changed, 179 insertions(+), 181 deletions(-)
 create mode 100644 recipes-core/eudev/eudev/init
 create mode 100644 recipes-core/eudev/eudev/udev-cache
 create mode 100644 recipes-core/eudev/eudev_3.1.5.bbappend
 delete mode 100644 recipes-core/udev/udev/init
 delete mode 100644 recipes-core/udev/udev/udev-cache
 delete mode 100644 recipes-core/udev/udev_182.bbappend

diff --git a/recipes-core/eudev/eudev/init b/recipes-core/eudev/eudev/init
new file mode 100644
index 0000000..9a4b293
--- /dev/null
+++ b/recipes-core/eudev/eudev/init
@@ -0,0 +1,144 @@
+#!/bin/sh
+
+### BEGIN INIT INFO
+# Provides:          udev
+# Required-Start:    mountvirtfs
+# Required-Stop:
+# Default-Start:     S
+# Default-Stop:
+# Short-Description: Start udevd, populate /dev and load drivers.
+### END INIT INFO
+
+export TZ=/etc/localtime
+
+[ -d /sys/class ] || exit 1
+[ -r /proc/mounts ] || exit 1
+[ -x @UDEVD@ ] || exit 1
+if [ "$use_udev_cache" != "" ]; then
+	[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
+fi
+[ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
+[ -f /etc/default/rcS ] && . /etc/default/rcS
+
+readfiles () {
+   READDATA=""
+   for filename in $@; do
+	   if [ -r $filename ]; then
+		   while read line; do
+			   READDATA="$READDATA$line"
+		   done < $filename
+	   fi
+   done
+}
+
+kill_udevd () {
+    pid=`pidof -x udevd`
+    [ -n "$pid" ] && kill $pid
+}
+
+case "$1" in
+  start)
+    export ACTION=add
+    # propagate /dev from /sys
+    echo "Starting udev"
+
+    # Check for requireed devtmpfs before trying to start udev and
+    # mount a no-existant fs.
+    if ! grep -q devtmpfs /proc/filesystems
+    then
+        echo "Missing devtmpfs, which is required for udev to run";
+        echo "Halting..."
+        halt
+    fi
+    # mount the devtmpfs on /dev, if not already done
+    LANG=C awk '$2 == "/dev" && ($3 == "devtmpfs") { exit 1 }' /proc/mounts && {
+            mount -n -o mode=0755 -t devtmpfs none "/dev"
+    }
+    [ -e /dev/pts ] || mkdir -m 0755 /dev/pts
+    [ -e /dev/shm ] || mkdir -m 1777 /dev/shm
+    # the automount rule for udev needs /tmp directory available, as /tmp is a symlink
+    # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we need to make sure
+    # /var/volatile/tmp directory to be available.
+    mkdir -p /var/volatile/tmp
+
+    # restorecon /run early to allow mdadm creating dir /run/mdadm
+    test ! -x /sbin/restorecon || /sbin/restorecon -F /run
+
+    # Cache handling.
+    # A list of files which are used as a criteria to judge whether the udev cache could be reused.
+    CMP_FILE_LIST="/proc/version /proc/cmdline /proc/devices /proc/atags"
+    if [ "$use_udev_cache" != "" ]; then
+	    if [ "$DEVCACHE" != "" ]; then
+		    if [ -e $DEVCACHE ]; then
+			    readfiles $CMP_FILE_LIST
+			    NEWDATA="$READDATA"
+			    readfiles /etc/udev/cache.data
+			    OLDDATA="$READDATA"
+			    if [ "$OLDDATA" = "$NEWDATA" ]; then
+				    tar --directory=/ -xf $DEVCACHE > /dev/null 2>&1
+				    not_first_boot=1
+				    [ "$VERBOSE" != "no" ] && echo "udev: using cache file $DEVCACHE"
+				    [ -e /dev/shm/udev.cache ] && rm -f /dev/shm/udev.cache
+			    else
+				    # Output detailed reason why the cached /dev is not used
+				    if [ "$VERBOSE" != "no" ]; then
+					    echo "udev: udev cache not used"
+					    echo "udev: we use $CMP_FILE_LIST as criteria to judge whether the cache /dev could be resued"
+					    echo "udev: olddata: $OLDDATA"
+					    echo "udev: newdata: $NEWDATA"
+				    fi
+				    echo "$NEWDATA" > /dev/shm/udev.cache
+			    fi
+			    /usr/sbin/setenforce 1
+		    else
+			    if [ "$ROOTFS_READ_ONLY" != "yes" ]; then
+				    # If rootfs is not read-only, it's possible that a new udev cache would be generated;
+				    # otherwise, we do not bother to read files.
+				    readfiles $CMP_FILE_LIST
+				    echo "$READDATA" > /dev/shm/udev.cache
+			    fi
+		    fi
+	    fi
+    fi
+
+    # make_extra_nodes
+    kill_udevd > "/dev/null" 2>&1
+
+    # trigger the sorted events
+    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
+    @UDEVD@ -d
+
+    udevadm control --env=STARTUP=1
+    if [ "$not_first_boot" != "" ];then
+            udevadm trigger --action=add --subsystem-nomatch=tty --subsystem-nomatch=mem --subsystem-nomatch=vc --subsystem-nomatch=vtconsole --subsystem-nomatch=misc --subsystem-nomatch=dcon --subsystem-nomatch=pci_bus  --subsystem-nomatch=graphics	 --subsystem-nomatch=backlight --subsystem-nomatch=video4linux	--subsystem-nomatch=platform
+            (udevadm settle --timeout=10; udevadm control --env=STARTUP=)&
+    else
+            udevadm trigger --action=add
+            udevadm settle
+    fi
+
+    test ! -x /sbin/restorecon || /sbin/restorecon -F /dev /dev/shm /dev/pts
+
+    ;;
+  stop)
+    echo "Stopping udevd"
+    start-stop-daemon --stop --name udevd --quiet
+    ;;
+  restart)
+    $0 stop
+    sleep 1
+    $0 start
+    ;;
+  status)
+    pid=`pidof -x udevd`
+    if [ -n "$pid" ]; then
+	echo "udevd (pid $pid) is running ..."
+    else
+	echo "udevd is stopped"
+    fi
+    ;;
+  *)
+    echo "Usage: $0 {start|stop|status|restart}"
+    exit 1
+esac
+exit 0
diff --git a/recipes-core/eudev/eudev/udev-cache b/recipes-core/eudev/eudev/udev-cache
new file mode 100644
index 0000000..6898577
--- /dev/null
+++ b/recipes-core/eudev/eudev/udev-cache
@@ -0,0 +1,32 @@
+#!/bin/sh -e
+
+### BEGIN INIT INFO
+# Provides:          udev-cache
+# Required-Start:    mountall
+# Required-Stop:
+# Default-Start:     S
+# Default-Stop:
+# Short-Description: cache /dev to speedup the udev next boot
+### END INIT INFO
+
+export TZ=/etc/localtime
+
+[ -r /proc/mounts ] || exit 1
+[ -x @UDEVD@ ] || exit 1
+[ -d /sys/class ] || exit 1
+
+[ -f /etc/default/rcS ] && . /etc/default/rcS
+[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
+
+if [ "$ROOTFS_READ_ONLY" = "yes" ]; then
+    [ "$VERBOSE" != "no" ] && echo "udev-cache: read-only rootfs, skip generating udev-cache"
+    exit 0
+fi
+
+if [ "$DEVCACHE" != "" -a -e /dev/shm/udev.cache ]; then
+	echo "Populating dev cache"
+	tar --directory=/ --selinux --xattrs -cf "$DEVCACHE" dev
+	mv /dev/shm/udev.cache /etc/udev/cache.data
+fi
+
+exit 0
diff --git a/recipes-core/eudev/eudev_3.1.5.bbappend b/recipes-core/eudev/eudev_3.1.5.bbappend
new file mode 100644
index 0000000..e1e7cd1
--- /dev/null
+++ b/recipes-core/eudev/eudev_3.1.5.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+inherit enable-selinux
diff --git a/recipes-core/udev/udev/init b/recipes-core/udev/udev/init
deleted file mode 100644
index bb8b95b..0000000
--- a/recipes-core/udev/udev/init
+++ /dev/null
@@ -1,144 +0,0 @@
-#!/bin/sh
-
-### BEGIN INIT INFO
-# Provides:          udev
-# Required-Start:    mountvirtfs
-# Required-Stop:     
-# Default-Start:     S
-# Default-Stop:
-# Short-Description: Start udevd, populate /dev and load drivers.
-### END INIT INFO
-
-export TZ=/etc/localtime
-
-[ -d /sys/class ] || exit 1
-[ -r /proc/mounts ] || exit 1
-[ -x @UDEVD@ ] || exit 1
-if [ "$use_udev_cache" != "" ]; then
-	[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
-fi
-[ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
-[ -f /etc/default/rcS ] && . /etc/default/rcS
-
-readfiles () {
-   READDATA=""
-   for filename in $@; do
-	   if [ -r $filename ]; then
-		   while read line; do
-			   READDATA="$READDATA$line"
-		   done < $filename
-	   fi
-   done
-}
-
-kill_udevd () {
-    pid=`pidof -x udevd`
-    [ -n "$pid" ] && kill $pid
-}
-
-case "$1" in
-  start)
-    export ACTION=add
-    # propagate /dev from /sys
-    echo "Starting udev"
-
-    # Check for requireed devtmpfs before trying to start udev and
-    # mount a no-existant fs.
-    if ! grep -q devtmpfs /proc/filesystems
-    then
-        echo "Missing devtmpfs, which is required for udev to run";
-        echo "Halting..."
-        halt
-    fi
-    # mount the devtmpfs on /dev, if not already done
-    LANG=C awk '$2 == "/dev" && ($3 == "devtmpfs") { exit 1 }' /proc/mounts && {
-            mount -n -o mode=0755 -t devtmpfs none "/dev"
-    }
-    [ -e /dev/pts ] || mkdir -m 0755 /dev/pts
-    [ -e /dev/shm ] || mkdir -m 1777 /dev/shm
-    # the automount rule for udev needs /tmp directory available, as /tmp is a symlink
-    # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we need to make sure
-    # /var/volatile/tmp directory to be available.
-    mkdir -p /var/volatile/tmp
-
-    # restorecon /run early to allow mdadm creating dir /run/mdadm
-    test ! -x /sbin/restorecon || /sbin/restorecon -F /run
-
-    # Cache handling.
-    # A list of files which are used as a criteria to judge whether the udev cache could be reused.
-    CMP_FILE_LIST="/proc/version /proc/cmdline /proc/devices /proc/atags"
-    if [ "$use_udev_cache" != "" ]; then
-	    if [ "$DEVCACHE" != "" ]; then
-		    if [ -e $DEVCACHE ]; then
-			    readfiles $CMP_FILE_LIST
-			    NEWDATA="$READDATA"
-			    readfiles /etc/udev/cache.data
-			    OLDDATA="$READDATA"
-			    if [ "$OLDDATA" = "$NEWDATA" ]; then
-				    tar --directory=/ -xf $DEVCACHE > /dev/null 2>&1
-				    not_first_boot=1
-				    [ "$VERBOSE" != "no" ] && echo "udev: using cache file $DEVCACHE"
-				    [ -e /dev/shm/udev.cache ] && rm -f /dev/shm/udev.cache
-			    else
-				    # Output detailed reason why the cached /dev is not used
-				    if [ "$VERBOSE" != "no" ]; then
-					    echo "udev: udev cache not used"
-					    echo "udev: we use $CMP_FILE_LIST as criteria to judge whether the cache /dev could be resued"
-					    echo "udev: olddata: $OLDDATA"
-					    echo "udev: newdata: $NEWDATA"
-				    fi
-				    echo "$NEWDATA" > /dev/shm/udev.cache
-			    fi
-			    /usr/sbin/setenforce 1
-		    else
-			    if [ "$ROOTFS_READ_ONLY" != "yes" ]; then
-				    # If rootfs is not read-only, it's possible that a new udev cache would be generated;
-				    # otherwise, we do not bother to read files.
-				    readfiles $CMP_FILE_LIST
-				    echo "$READDATA" > /dev/shm/udev.cache
-			    fi
-		    fi
-	    fi
-    fi
-
-    # make_extra_nodes
-    kill_udevd > "/dev/null" 2>&1
-
-    # trigger the sorted events
-    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
-    @UDEVD@ -d
-
-    udevadm control --env=STARTUP=1
-    if [ "$not_first_boot" != "" ];then
-            udevadm trigger --action=add --subsystem-nomatch=tty --subsystem-nomatch=mem --subsystem-nomatch=vc --subsystem-nomatch=vtconsole --subsystem-nomatch=misc --subsystem-nomatch=dcon --subsystem-nomatch=pci_bus  --subsystem-nomatch=graphics	 --subsystem-nomatch=backlight --subsystem-nomatch=video4linux	--subsystem-nomatch=platform
-            (udevadm settle --timeout=10; udevadm control --env=STARTUP=)&
-    else
-            udevadm trigger --action=add
-            udevadm settle
-    fi
-
-    test ! -x /sbin/restorecon || /sbin/restorecon -F /dev /dev/shm /dev/pts
-
-    ;;
-  stop)
-    echo "Stopping udevd"
-    start-stop-daemon --stop --name udevd --quiet
-    ;;
-  restart)
-    $0 stop
-    sleep 1
-    $0 start
-    ;;
-  status)
-    pid=`pidof -x udevd`
-    if [ -n "$pid" ]; then
-	echo "udevd (pid $pid) is running ..."
-    else
-	echo "udevd is stopped"
-    fi
-    ;;
-  *)
-    echo "Usage: $0 {start|stop|status|restart}"
-    exit 1
-esac
-exit 0
diff --git a/recipes-core/udev/udev/udev-cache b/recipes-core/udev/udev/udev-cache
deleted file mode 100644
index 6898577..0000000
--- a/recipes-core/udev/udev/udev-cache
+++ /dev/null
@@ -1,32 +0,0 @@
-#!/bin/sh -e
-
-### BEGIN INIT INFO
-# Provides:          udev-cache
-# Required-Start:    mountall
-# Required-Stop:
-# Default-Start:     S
-# Default-Stop:
-# Short-Description: cache /dev to speedup the udev next boot
-### END INIT INFO
-
-export TZ=/etc/localtime
-
-[ -r /proc/mounts ] || exit 1
-[ -x @UDEVD@ ] || exit 1
-[ -d /sys/class ] || exit 1
-
-[ -f /etc/default/rcS ] && . /etc/default/rcS
-[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
-
-if [ "$ROOTFS_READ_ONLY" = "yes" ]; then
-    [ "$VERBOSE" != "no" ] && echo "udev-cache: read-only rootfs, skip generating udev-cache"
-    exit 0
-fi
-
-if [ "$DEVCACHE" != "" -a -e /dev/shm/udev.cache ]; then
-	echo "Populating dev cache"
-	tar --directory=/ --selinux --xattrs -cf "$DEVCACHE" dev
-	mv /dev/shm/udev.cache /etc/udev/cache.data
-fi
-
-exit 0
diff --git a/recipes-core/udev/udev_182.bbappend b/recipes-core/udev/udev_182.bbappend
deleted file mode 100644
index 6f8f049..0000000
--- a/recipes-core/udev/udev_182.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-PR .= ".4"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-inherit with-selinux
-- 
2.1.4


