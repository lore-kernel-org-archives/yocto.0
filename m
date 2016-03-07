Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA1EEE00833; Mon,  7 Mar 2016 09:15:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from FLEMING.seektech.com (mail.seektech.com [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8898E006CA
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 09:15:52 -0800 (PST)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Mon, 7 Mar 2016 09:15:50 -0800
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Mon, 7 Mar 2016 09:15:50 -0800
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Mon, 7 Mar 2016 09:15:50 -0800
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Philip Tricca <flihp@twobit.us>, "mark.hatle@windriver.com"
	<mark.hatle@windriver.com>
Thread-Topic: [yocto] [PATCH] udev: Rename udev bbappend to eudev.
Thread-Index: AQHRd+RLOaJa76NO8EG7e/E+4PVCgZ9OOgiu
Date: Mon, 7 Mar 2016 17:15:49 +0000
Message-ID: <1457370830386.13338@seescan.com>
References: <56D8A187.8050502@windriver.com>,
	<1457294903-74025-1-git-send-email-flihp@twobit.us>
In-Reply-To: <1457294903-74025-1-git-send-email-flihp@twobit.us>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: WRIGHT.seescan.com
X-GFI-SMTP-RemoteIP: 192.168.11.30
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] udev: Rename udev bbappend to eudev.
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
X-List-Received-Date: Mon, 07 Mar 2016 17:15:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Can someone please let me know what the reasoning behind the switch to eude=
v?=0A=
=0A=
Sincerely,=0A=
=0A=
Frederick=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Philip Tricca <flihp@twobit.us>=0A=
Sent: Sunday, March 6, 2016 12:08 PM=0A=
To: mark.hatle@windriver.com=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: [yocto] [PATCH] udev: Rename udev bbappend to eudev.=0A=
=0A=
Required by switch to eudev in oe-core. Dropping PR since this is=0A=
effectively a new recipe.=0A=
=0A=
Signed-off-by: Philip Tricca <flihp@twobit.us>=0A=
---=0A=
 recipes-core/eudev/eudev/init           | 144 ++++++++++++++++++++++++++++=
++++=0A=
 recipes-core/eudev/eudev/udev-cache     |  32 +++++++=0A=
 recipes-core/eudev/eudev_3.1.5.bbappend |   3 +=0A=
 recipes-core/udev/udev/init             | 144 ----------------------------=
----=0A=
 recipes-core/udev/udev/udev-cache       |  32 -------=0A=
 recipes-core/udev/udev_182.bbappend     |   5 --=0A=
 6 files changed, 179 insertions(+), 181 deletions(-)=0A=
 create mode 100644 recipes-core/eudev/eudev/init=0A=
 create mode 100644 recipes-core/eudev/eudev/udev-cache=0A=
 create mode 100644 recipes-core/eudev/eudev_3.1.5.bbappend=0A=
 delete mode 100644 recipes-core/udev/udev/init=0A=
 delete mode 100644 recipes-core/udev/udev/udev-cache=0A=
 delete mode 100644 recipes-core/udev/udev_182.bbappend=0A=
=0A=
diff --git a/recipes-core/eudev/eudev/init b/recipes-core/eudev/eudev/init=
=0A=
new file mode 100644=0A=
index 0000000..9a4b293=0A=
--- /dev/null=0A=
+++ b/recipes-core/eudev/eudev/init=0A=
@@ -0,0 +1,144 @@=0A=
+#!/bin/sh=0A=
+=0A=
+### BEGIN INIT INFO=0A=
+# Provides:          udev=0A=
+# Required-Start:    mountvirtfs=0A=
+# Required-Stop:=0A=
+# Default-Start:     S=0A=
+# Default-Stop:=0A=
+# Short-Description: Start udevd, populate /dev and load drivers.=0A=
+### END INIT INFO=0A=
+=0A=
+export TZ=3D/etc/localtime=0A=
+=0A=
+[ -d /sys/class ] || exit 1=0A=
+[ -r /proc/mounts ] || exit 1=0A=
+[ -x @UDEVD@ ] || exit 1=0A=
+if [ "$use_udev_cache" !=3D "" ]; then=0A=
+       [ -f /etc/default/udev-cache ] && . /etc/default/udev-cache=0A=
+fi=0A=
+[ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf=0A=
+[ -f /etc/default/rcS ] && . /etc/default/rcS=0A=
+=0A=
+readfiles () {=0A=
+   READDATA=3D""=0A=
+   for filename in $@; do=0A=
+          if [ -r $filename ]; then=0A=
+                  while read line; do=0A=
+                          READDATA=3D"$READDATA$line"=0A=
+                  done < $filename=0A=
+          fi=0A=
+   done=0A=
+}=0A=
+=0A=
+kill_udevd () {=0A=
+    pid=3D`pidof -x udevd`=0A=
+    [ -n "$pid" ] && kill $pid=0A=
+}=0A=
+=0A=
+case "$1" in=0A=
+  start)=0A=
+    export ACTION=3Dadd=0A=
+    # propagate /dev from /sys=0A=
+    echo "Starting udev"=0A=
+=0A=
+    # Check for requireed devtmpfs before trying to start udev and=0A=
+    # mount a no-existant fs.=0A=
+    if ! grep -q devtmpfs /proc/filesystems=0A=
+    then=0A=
+        echo "Missing devtmpfs, which is required for udev to run";=0A=
+        echo "Halting..."=0A=
+        halt=0A=
+    fi=0A=
+    # mount the devtmpfs on /dev, if not already done=0A=
+    LANG=3DC awk '$2 =3D=3D "/dev" && ($3 =3D=3D "devtmpfs") { exit 1 }' /=
proc/mounts && {=0A=
+            mount -n -o mode=3D0755 -t devtmpfs none "/dev"=0A=
+    }=0A=
+    [ -e /dev/pts ] || mkdir -m 0755 /dev/pts=0A=
+    [ -e /dev/shm ] || mkdir -m 1777 /dev/shm=0A=
+    # the automount rule for udev needs /tmp directory available, as /tmp =
is a symlink=0A=
+    # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we need=
 to make sure=0A=
+    # /var/volatile/tmp directory to be available.=0A=
+    mkdir -p /var/volatile/tmp=0A=
+=0A=
+    # restorecon /run early to allow mdadm creating dir /run/mdadm=0A=
+    test ! -x /sbin/restorecon || /sbin/restorecon -F /run=0A=
+=0A=
+    # Cache handling.=0A=
+    # A list of files which are used as a criteria to judge whether the ud=
ev cache could be reused.=0A=
+    CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices /proc/atags=
"=0A=
+    if [ "$use_udev_cache" !=3D "" ]; then=0A=
+           if [ "$DEVCACHE" !=3D "" ]; then=0A=
+                   if [ -e $DEVCACHE ]; then=0A=
+                           readfiles $CMP_FILE_LIST=0A=
+                           NEWDATA=3D"$READDATA"=0A=
+                           readfiles /etc/udev/cache.data=0A=
+                           OLDDATA=3D"$READDATA"=0A=
+                           if [ "$OLDDATA" =3D "$NEWDATA" ]; then=0A=
+                                   tar --directory=3D/ -xf $DEVCACHE > /de=
v/null 2>&1=0A=
+                                   not_first_boot=3D1=0A=
+                                   [ "$VERBOSE" !=3D "no" ] && echo "udev:=
 using cache file $DEVCACHE"=0A=
+                                   [ -e /dev/shm/udev.cache ] && rm -f /de=
v/shm/udev.cache=0A=
+                           else=0A=
+                                   # Output detailed reason why the cached=
 /dev is not used=0A=
+                                   if [ "$VERBOSE" !=3D "no" ]; then=0A=
+                                           echo "udev: udev cache not used=
"=0A=
+                                           echo "udev: we use $CMP_FILE_LI=
ST as criteria to judge whether the cache /dev could be resued"=0A=
+                                           echo "udev: olddata: $OLDDATA"=
=0A=
+                                           echo "udev: newdata: $NEWDATA"=
=0A=
+                                   fi=0A=
+                                   echo "$NEWDATA" > /dev/shm/udev.cache=
=0A=
+                           fi=0A=
+                           /usr/sbin/setenforce 1=0A=
+                   else=0A=
+                           if [ "$ROOTFS_READ_ONLY" !=3D "yes" ]; then=0A=
+                                   # If rootfs is not read-only, it's poss=
ible that a new udev cache would be generated;=0A=
+                                   # otherwise, we do not bother to read f=
iles.=0A=
+                                   readfiles $CMP_FILE_LIST=0A=
+                                   echo "$READDATA" > /dev/shm/udev.cache=
=0A=
+                           fi=0A=
+                   fi=0A=
+           fi=0A=
+    fi=0A=
+=0A=
+    # make_extra_nodes=0A=
+    kill_udevd > "/dev/null" 2>&1=0A=
+=0A=
+    # trigger the sorted events=0A=
+    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug=0A=
+    @UDEVD@ -d=0A=
+=0A=
+    udevadm control --env=3DSTARTUP=3D1=0A=
+    if [ "$not_first_boot" !=3D "" ];then=0A=
+            udevadm trigger --action=3Dadd --subsystem-nomatch=3Dtty --sub=
system-nomatch=3Dmem --subsystem-nomatch=3Dvc --subsystem-nomatch=3Dvtconso=
le --subsystem-nomatch=3Dmisc --subsystem-nomatch=3Ddcon --subsystem-nomatc=
h=3Dpci_bus  --subsystem-nomatch=3Dgraphics       --subsystem-nomatch=3Dbac=
klight --subsystem-nomatch=3Dvideo4linux  --subsystem-nomatch=3Dplatform=0A=
+            (udevadm settle --timeout=3D10; udevadm control --env=3DSTARTU=
P=3D)&=0A=
+    else=0A=
+            udevadm trigger --action=3Dadd=0A=
+            udevadm settle=0A=
+    fi=0A=
+=0A=
+    test ! -x /sbin/restorecon || /sbin/restorecon -F /dev /dev/shm /dev/p=
ts=0A=
+=0A=
+    ;;=0A=
+  stop)=0A=
+    echo "Stopping udevd"=0A=
+    start-stop-daemon --stop --name udevd --quiet=0A=
+    ;;=0A=
+  restart)=0A=
+    $0 stop=0A=
+    sleep 1=0A=
+    $0 start=0A=
+    ;;=0A=
+  status)=0A=
+    pid=3D`pidof -x udevd`=0A=
+    if [ -n "$pid" ]; then=0A=
+       echo "udevd (pid $pid) is running ..."=0A=
+    else=0A=
+       echo "udevd is stopped"=0A=
+    fi=0A=
+    ;;=0A=
+  *)=0A=
+    echo "Usage: $0 {start|stop|status|restart}"=0A=
+    exit 1=0A=
+esac=0A=
+exit 0=0A=
diff --git a/recipes-core/eudev/eudev/udev-cache b/recipes-core/eudev/eudev=
/udev-cache=0A=
new file mode 100644=0A=
index 0000000..6898577=0A=
--- /dev/null=0A=
+++ b/recipes-core/eudev/eudev/udev-cache=0A=
@@ -0,0 +1,32 @@=0A=
+#!/bin/sh -e=0A=
+=0A=
+### BEGIN INIT INFO=0A=
+# Provides:          udev-cache=0A=
+# Required-Start:    mountall=0A=
+# Required-Stop:=0A=
+# Default-Start:     S=0A=
+# Default-Stop:=0A=
+# Short-Description: cache /dev to speedup the udev next boot=0A=
+### END INIT INFO=0A=
+=0A=
+export TZ=3D/etc/localtime=0A=
+=0A=
+[ -r /proc/mounts ] || exit 1=0A=
+[ -x @UDEVD@ ] || exit 1=0A=
+[ -d /sys/class ] || exit 1=0A=
+=0A=
+[ -f /etc/default/rcS ] && . /etc/default/rcS=0A=
+[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache=0A=
+=0A=
+if [ "$ROOTFS_READ_ONLY" =3D "yes" ]; then=0A=
+    [ "$VERBOSE" !=3D "no" ] && echo "udev-cache: read-only rootfs, skip g=
enerating udev-cache"=0A=
+    exit 0=0A=
+fi=0A=
+=0A=
+if [ "$DEVCACHE" !=3D "" -a -e /dev/shm/udev.cache ]; then=0A=
+       echo "Populating dev cache"=0A=
+       tar --directory=3D/ --selinux --xattrs -cf "$DEVCACHE" dev=0A=
+       mv /dev/shm/udev.cache /etc/udev/cache.data=0A=
+fi=0A=
+=0A=
+exit 0=0A=
diff --git a/recipes-core/eudev/eudev_3.1.5.bbappend b/recipes-core/eudev/e=
udev_3.1.5.bbappend=0A=
new file mode 100644=0A=
index 0000000..e1e7cd1=0A=
--- /dev/null=0A=
+++ b/recipes-core/eudev/eudev_3.1.5.bbappend=0A=
@@ -0,0 +1,3 @@=0A=
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"=0A=
+=0A=
+inherit enable-selinux=0A=
diff --git a/recipes-core/udev/udev/init b/recipes-core/udev/udev/init=0A=
deleted file mode 100644=0A=
index bb8b95b..0000000=0A=
--- a/recipes-core/udev/udev/init=0A=
+++ /dev/null=0A=
@@ -1,144 +0,0 @@=0A=
-#!/bin/sh=0A=
-=0A=
-### BEGIN INIT INFO=0A=
-# Provides:          udev=0A=
-# Required-Start:    mountvirtfs=0A=
-# Required-Stop:=0A=
-# Default-Start:     S=0A=
-# Default-Stop:=0A=
-# Short-Description: Start udevd, populate /dev and load drivers.=0A=
-### END INIT INFO=0A=
-=0A=
-export TZ=3D/etc/localtime=0A=
-=0A=
-[ -d /sys/class ] || exit 1=0A=
-[ -r /proc/mounts ] || exit 1=0A=
-[ -x @UDEVD@ ] || exit 1=0A=
-if [ "$use_udev_cache" !=3D "" ]; then=0A=
-       [ -f /etc/default/udev-cache ] && . /etc/default/udev-cache=0A=
-fi=0A=
-[ -f /etc/udev/udev.conf ] && . /etc/udev/udev.conf=0A=
-[ -f /etc/default/rcS ] && . /etc/default/rcS=0A=
-=0A=
-readfiles () {=0A=
-   READDATA=3D""=0A=
-   for filename in $@; do=0A=
-          if [ -r $filename ]; then=0A=
-                  while read line; do=0A=
-                          READDATA=3D"$READDATA$line"=0A=
-                  done < $filename=0A=
-          fi=0A=
-   done=0A=
-}=0A=
-=0A=
-kill_udevd () {=0A=
-    pid=3D`pidof -x udevd`=0A=
-    [ -n "$pid" ] && kill $pid=0A=
-}=0A=
-=0A=
-case "$1" in=0A=
-  start)=0A=
-    export ACTION=3Dadd=0A=
-    # propagate /dev from /sys=0A=
-    echo "Starting udev"=0A=
-=0A=
-    # Check for requireed devtmpfs before trying to start udev and=0A=
-    # mount a no-existant fs.=0A=
-    if ! grep -q devtmpfs /proc/filesystems=0A=
-    then=0A=
-        echo "Missing devtmpfs, which is required for udev to run";=0A=
-        echo "Halting..."=0A=
-        halt=0A=
-    fi=0A=
-    # mount the devtmpfs on /dev, if not already done=0A=
-    LANG=3DC awk '$2 =3D=3D "/dev" && ($3 =3D=3D "devtmpfs") { exit 1 }' /=
proc/mounts && {=0A=
-            mount -n -o mode=3D0755 -t devtmpfs none "/dev"=0A=
-    }=0A=
-    [ -e /dev/pts ] || mkdir -m 0755 /dev/pts=0A=
-    [ -e /dev/shm ] || mkdir -m 1777 /dev/shm=0A=
-    # the automount rule for udev needs /tmp directory available, as /tmp =
is a symlink=0A=
-    # to /var/tmp which in turn is a symlink to /var/volatile/tmp, we need=
 to make sure=0A=
-    # /var/volatile/tmp directory to be available.=0A=
-    mkdir -p /var/volatile/tmp=0A=
-=0A=
-    # restorecon /run early to allow mdadm creating dir /run/mdadm=0A=
-    test ! -x /sbin/restorecon || /sbin/restorecon -F /run=0A=
-=0A=
-    # Cache handling.=0A=
-    # A list of files which are used as a criteria to judge whether the ud=
ev cache could be reused.=0A=
-    CMP_FILE_LIST=3D"/proc/version /proc/cmdline /proc/devices /proc/atags=
"=0A=
-    if [ "$use_udev_cache" !=3D "" ]; then=0A=
-           if [ "$DEVCACHE" !=3D "" ]; then=0A=
-                   if [ -e $DEVCACHE ]; then=0A=
-                           readfiles $CMP_FILE_LIST=0A=
-                           NEWDATA=3D"$READDATA"=0A=
-                           readfiles /etc/udev/cache.data=0A=
-                           OLDDATA=3D"$READDATA"=0A=
-                           if [ "$OLDDATA" =3D "$NEWDATA" ]; then=0A=
-                                   tar --directory=3D/ -xf $DEVCACHE > /de=
v/null 2>&1=0A=
-                                   not_first_boot=3D1=0A=
-                                   [ "$VERBOSE" !=3D "no" ] && echo "udev:=
 using cache file $DEVCACHE"=0A=
-                                   [ -e /dev/shm/udev.cache ] && rm -f /de=
v/shm/udev.cache=0A=
-                           else=0A=
-                                   # Output detailed reason why the cached=
 /dev is not used=0A=
-                                   if [ "$VERBOSE" !=3D "no" ]; then=0A=
-                                           echo "udev: udev cache not used=
"=0A=
-                                           echo "udev: we use $CMP_FILE_LI=
ST as criteria to judge whether the cache /dev could be resued"=0A=
-                                           echo "udev: olddata: $OLDDATA"=
=0A=
-                                           echo "udev: newdata: $NEWDATA"=
=0A=
-                                   fi=0A=
-                                   echo "$NEWDATA" > /dev/shm/udev.cache=
=0A=
-                           fi=0A=
-                           /usr/sbin/setenforce 1=0A=
-                   else=0A=
-                           if [ "$ROOTFS_READ_ONLY" !=3D "yes" ]; then=0A=
-                                   # If rootfs is not read-only, it's poss=
ible that a new udev cache would be generated;=0A=
-                                   # otherwise, we do not bother to read f=
iles.=0A=
-                                   readfiles $CMP_FILE_LIST=0A=
-                                   echo "$READDATA" > /dev/shm/udev.cache=
=0A=
-                           fi=0A=
-                   fi=0A=
-           fi=0A=
-    fi=0A=
-=0A=
-    # make_extra_nodes=0A=
-    kill_udevd > "/dev/null" 2>&1=0A=
-=0A=
-    # trigger the sorted events=0A=
-    echo -e '\000\000\000\000' > /proc/sys/kernel/hotplug=0A=
-    @UDEVD@ -d=0A=
-=0A=
-    udevadm control --env=3DSTARTUP=3D1=0A=
-    if [ "$not_first_boot" !=3D "" ];then=0A=
-            udevadm trigger --action=3Dadd --subsystem-nomatch=3Dtty --sub=
system-nomatch=3Dmem --subsystem-nomatch=3Dvc --subsystem-nomatch=3Dvtconso=
le --subsystem-nomatch=3Dmisc --subsystem-nomatch=3Ddcon --subsystem-nomatc=
h=3Dpci_bus  --subsystem-nomatch=3Dgraphics       --subsystem-nomatch=3Dbac=
klight --subsystem-nomatch=3Dvideo4linux  --subsystem-nomatch=3Dplatform=0A=
-            (udevadm settle --timeout=3D10; udevadm control --env=3DSTARTU=
P=3D)&=0A=
-    else=0A=
-            udevadm trigger --action=3Dadd=0A=
-            udevadm settle=0A=
-    fi=0A=
-=0A=
-    test ! -x /sbin/restorecon || /sbin/restorecon -F /dev /dev/shm /dev/p=
ts=0A=
-=0A=
-    ;;=0A=
-  stop)=0A=
-    echo "Stopping udevd"=0A=
-    start-stop-daemon --stop --name udevd --quiet=0A=
-    ;;=0A=
-  restart)=0A=
-    $0 stop=0A=
-    sleep 1=0A=
-    $0 start=0A=
-    ;;=0A=
-  status)=0A=
-    pid=3D`pidof -x udevd`=0A=
-    if [ -n "$pid" ]; then=0A=
-       echo "udevd (pid $pid) is running ..."=0A=
-    else=0A=
-       echo "udevd is stopped"=0A=
-    fi=0A=
-    ;;=0A=
-  *)=0A=
-    echo "Usage: $0 {start|stop|status|restart}"=0A=
-    exit 1=0A=
-esac=0A=
-exit 0=0A=
diff --git a/recipes-core/udev/udev/udev-cache b/recipes-core/udev/udev/ude=
v-cache=0A=
deleted file mode 100644=0A=
index 6898577..0000000=0A=
--- a/recipes-core/udev/udev/udev-cache=0A=
+++ /dev/null=0A=
@@ -1,32 +0,0 @@=0A=
-#!/bin/sh -e=0A=
-=0A=
-### BEGIN INIT INFO=0A=
-# Provides:          udev-cache=0A=
-# Required-Start:    mountall=0A=
-# Required-Stop:=0A=
-# Default-Start:     S=0A=
-# Default-Stop:=0A=
-# Short-Description: cache /dev to speedup the udev next boot=0A=
-### END INIT INFO=0A=
-=0A=
-export TZ=3D/etc/localtime=0A=
-=0A=
-[ -r /proc/mounts ] || exit 1=0A=
-[ -x @UDEVD@ ] || exit 1=0A=
-[ -d /sys/class ] || exit 1=0A=
-=0A=
-[ -f /etc/default/rcS ] && . /etc/default/rcS=0A=
-[ -f /etc/default/udev-cache ] && . /etc/default/udev-cache=0A=
-=0A=
-if [ "$ROOTFS_READ_ONLY" =3D "yes" ]; then=0A=
-    [ "$VERBOSE" !=3D "no" ] && echo "udev-cache: read-only rootfs, skip g=
enerating udev-cache"=0A=
-    exit 0=0A=
-fi=0A=
-=0A=
-if [ "$DEVCACHE" !=3D "" -a -e /dev/shm/udev.cache ]; then=0A=
-       echo "Populating dev cache"=0A=
-       tar --directory=3D/ --selinux --xattrs -cf "$DEVCACHE" dev=0A=
-       mv /dev/shm/udev.cache /etc/udev/cache.data=0A=
-fi=0A=
-=0A=
-exit 0=0A=
diff --git a/recipes-core/udev/udev_182.bbappend b/recipes-core/udev/udev_1=
82.bbappend=0A=
deleted file mode 100644=0A=
index 6f8f049..0000000=0A=
--- a/recipes-core/udev/udev_182.bbappend=0A=
+++ /dev/null=0A=
@@ -1,5 +0,0 @@=0A=
-PR .=3D ".4"=0A=
-=0A=
-FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"=0A=
-=0A=
-inherit with-selinux=0A=
--=0A=
2.1.4=0A=
=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

