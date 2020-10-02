Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web10.5541.1601606747129063661
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 19:45:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: XQuY0o22FSHX7JIGsheR2NH2Ww/vrJ+bTPbS1EyYUHQk9FFkpNuJ0f9ZrAE/EAYQWnpuCigDvV
 6I7OEIW0hL3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="150693151"
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; 
   d="scan'208";a="150693151"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2020 19:45:45 -0700
IronPort-SDR: ldaEFT8q8j7ygSleYV4xjXbTlpLDZ+j5EQscVeTiJCKlL4FtS3FladXYVZ5WrjiKQ5ekI/VQE6
 gjkaPdBs1JIw==
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; 
   d="scan'208";a="351410732"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2020 19:45:44 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] initramfs-framework/dmverity: add retry loop for slow boot devices
Date: Fri,  2 Oct 2020 10:53:50 +0800
Message-Id: <20201002025352.18830-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Detection of USB devices by the kernel is slow enough. We need to
keep trying for a while (default: 5s seconds, controlled by roottimeout=<seconds>)
and sleep between each attempt (default: one second, rootdelay=<seconds>).

Fix is based on https://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-core/initrdscripts/initramfs-framework/rootfs?id=ee6a6c3461694ce09789bf4d852cea2e22fc95e4

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../initramfs-framework/dmverity              | 64 +++++++++++--------
 1 file changed, 37 insertions(+), 27 deletions(-)

diff --git a/recipes-core/initrdscripts/initramfs-framework/dmverity b/recipes-core/initrdscripts/initramfs-framework/dmverity
index bb07aab..888052c 100644
--- a/recipes-core/initrdscripts/initramfs-framework/dmverity
+++ b/recipes-core/initrdscripts/initramfs-framework/dmverity
@@ -10,33 +10,43 @@ dmverity_run() {
 
     . /usr/share/misc/dm-verity.env
 
-    case "${bootparam_root}" in
-        ID=*)
-            RDEV="$(realpath /dev/disk/by-id/${bootparam_root#ID=})"
-            ;;
-        LABEL=*)
-            RDEV="$(realpath /dev/disk/by-label/${bootparam_root#LABEL=})"
-            ;;
-        PARTLABEL=*)
-            RDEV="$(realpath /dev/disk/by-partlabel/${bootparam_root#PARTLABEL=})"
-            ;;
-        PARTUUID=*)
-            RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
-            ;;
-        PATH=*)
-            RDEV="$(realpath /dev/disk/by-path/${bootparam_root#PATH=})"
-            ;;
-        UUID=*)
-            RDEV="$(realpath /dev/disk/by-uuid/${bootparam_root#UUID=})"
-            ;;
-        *)
-            RDEV="${bootparam_root}"
-    esac
-
-    if ! [ -b "${RDEV}" ]; then
-        echo "Root device resolution failed"
-        exit 1
-    fi
+    C=0
+    delay=${bootparam_rootdelay:-1}
+    timeout=${bootparam_roottimeout:-5}
+    RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
+    while [ ! -b "${RDEV}" ]; do
+        if [ $(( $C * $delay )) -gt $timeout ]; then
+            fatal "Root device resolution failed"
+            exit 1
+        fi
+
+        case "${bootparam_root}" in
+            ID=*)
+                RDEV="$(realpath /dev/disk/by-id/${bootparam_root#ID=})"
+                ;;
+            LABEL=*)
+                RDEV="$(realpath /dev/disk/by-label/${bootparam_root#LABEL=})"
+                ;;
+            PARTLABEL=*)
+                RDEV="$(realpath /dev/disk/by-partlabel/${bootparam_root#PARTLABEL=})"
+                ;;
+            PARTUUID=*)
+                RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
+                ;;
+            PATH=*)
+                RDEV="$(realpath /dev/disk/by-path/${bootparam_root#PATH=})"
+                ;;
+            UUID=*)
+                RDEV="$(realpath /dev/disk/by-uuid/${bootparam_root#UUID=})"
+                ;;
+            *)
+                RDEV="${bootparam_root}"
+        esac
+        debug "Sleeping for $delay second(s) to wait root to settle..."
+        sleep $delay
+        C=$(( $C + 1 ))
+
+    done
 
     veritysetup \
         --data-block-size=1024 \
-- 
2.17.1

