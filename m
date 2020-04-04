Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.10394.1586012327122226926
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Apr 2020 07:58:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 034EwiHu018282
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Sat, 4 Apr 2020 07:58:44 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Sat, 4 Apr
 2020 07:58:44 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 2/3] eudev: remove udev-cache and sync the initscript to latest oe-core version
Date: Sat, 4 Apr 2020 22:58:07 +0800
Message-ID: <20200404145808.8373-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200404145808.8373-1-yi.zhao@windriver.com>
References: <20200404145808.8373-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

The udev-cache has been remove in oe-core commit
048f4149b8438c521e8b65a3c96d850a9b4a3e5b. So we can also remove it.

Also sync the initscript to latest oe-core version.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-core/eudev/files/init       | 66 +++++------------------------
 recipes-core/eudev/files/udev-cache | 32 --------------
 2 files changed, 11 insertions(+), 87 deletions(-)
 delete mode 100644 recipes-core/eudev/files/udev-cache

diff --git a/recipes-core/eudev/files/init b/recipes-core/eudev/files/init
index ee64f86..daa4079 100644
--- a/recipes-core/eudev/files/init
+++ b/recipes-core/eudev/files/init
@@ -3,7 +3,7 @@
 ### BEGIN INIT INFO
 # Provides:          udev
 # Required-Start:    mountvirtfs
-# Required-Stop:
+# Required-Stop:     
 # Default-Start:     S
 # Default-Stop:
 # Short-Description: Start udevd, populate /dev and load drivers.
@@ -14,23 +14,10 @@ export TZ=/etc/localtime
 [ -d /sys/class ] || exit 1
 [ -r /proc/mounts ] || exit 1
 [ -x @UDEVD@ ] || exit 1
-if [ "$use_udev_cache" != "" ]; then
-	[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache
-fi
+
 [ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf
 [ -f /etc/default/rcS ] && . /etc/default/rcS
 
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
 kill_udevd () {
     pid=`pidof -x udevd`
     [ -n "$pid" ] && kill $pid
@@ -59,58 +46,27 @@ case "$1" in
     # the automount rule for udev needs /tmp directory available, as /tmp is a symlink
     # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we need to make sure
     # /var/volatile/tmp directory to be available.
-    mkdir -p /var/volatile/tmp
+    mkdir -m 1777 -p /var/volatile/tmp
 
     # restorecon /run early to allow mdadm creating dir /run/mdadm
     test ! -x /sbin/restorecon || /sbin/restorecon -F /run
 
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
     # make_extra_nodes
     kill_udevd > "/dev/null" 2>&1
 
     # trigger the sorted events
-    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug
+    [ -e /proc/sys/kernel/hotplug ] && echo -e '\000' >/proc/sys/kernel/hotplug
     @UDEVD@ -d
 
     udevadm control --env=STARTUP=1
     if [ "$not_first_boot" != "" ];then
-            udevadm trigger --action=add --subsystem-nomatch=tty --subsystem-nomatch=mem --subsystem-nomatch=vc --subsystem-nomatch=vtconsole --subsystem-nomatch=misc --subsystem-nomatch=dcon --subsystem-nomatch=pci_bus  --subsystem-nomatch=graphics	 --subsystem-nomatch=backlight --subsystem-nomatch=video4linux	--subsystem-nomatch=platform
-            (udevadm settle --timeout=10; udevadm control --env=STARTUP=)&
+            if [ "$PROBE_PLATFORM_BUS" != "yes" ]; then
+                PLATFORM_BUS_NOMATCH="--subsystem-nomatch=platform"
+            else
+                PLATFORM_BUS_NOMATCH=""
+            fi
+            udevadm trigger --action=add --subsystem-nomatch=tty --subsystem-nomatch=mem --subsystem-nomatch=vc --subsystem-nomatch=vtconsole --subsystem-nomatch=misc --subsystem-nomatch=dcon --subsystem-nomatch=pci_bus --subsystem-nomatch=graphics --subsystem-nomatch=backlight --subsystem-nomatch=video4linux $PLATFORM_BUS_NOMATCH
+            (udevadm settle --timeout=3; udevadm control --env=STARTUP=)&
     else
             udevadm trigger --action=add
             udevadm settle
diff --git a/recipes-core/eudev/files/udev-cache b/recipes-core/eudev/files/udev-cache
deleted file mode 100644
index 6898577..0000000
--- a/recipes-core/eudev/files/udev-cache
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
-- 
2.17.1

