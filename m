Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web11.9979.1621350618254467506
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 08:10:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=HZKNFy3I;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.179, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f179.google.com with SMTP id x8so9601265qkl.2
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 08:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FNLFhzNgJZ12TtZG6FqixkguGc+m5ueM0p4fhy3x764=;
        b=HZKNFy3IthqLbt3A+TobE8Vq3BBQ0Do+DFFlKiIWqoe8zamf8TIRb5NtzPKYG3l3wu
         COBuL85/AKiw0uT0XhKpD8sxDQaAyuaN5cmKiCe2+Ku7gdFhCFsOUbqBo8D0pEtnTVkv
         B0SH8Vm6i/cK2yJ5HKgAkk/BqpDkH/AsBb7PN6M6sZhl6VdQsjsGgLdQF6gKJfDcscF0
         HAgR8HDxiICUk3q5KbmWZNRjea4RpsntQep2p/p7miaHPfTc00DF3DSUfCX0qWQKBlI7
         hyrrxLOhyOZCJTQ+cEUzpVTYD/4hXD/TExgFa134I/DToLS312Wair4YxZ4taDq0/UO5
         Zq4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FNLFhzNgJZ12TtZG6FqixkguGc+m5ueM0p4fhy3x764=;
        b=ZXecn4aKkl6HacEN88sDwAMs3/Zea+pc3zrnWkOudPski9VtHQetkikX2TVDTw3nq2
         AT4UOyWUATdI3E9Xlj1bM4EapYejn6Wm9owJan16/HL7mpe7mOJ2082SF5TsVuJnzx+T
         x51whg9rC6lnNOm+o7xk3HF4o7BjTOfn1nbsYkLoDHsfj393PjHV4/H/UGajtj5nRQrK
         8PlmRKVTi8WowR6CJr4Nf0KbckzGbmg5uIuUXuKvHXaa3k+kgEDEyDrbTwSb1OC3J6Mr
         AkXfS3IwQon9Ornj393t8O+WXFA4aZHfXZuLXaOIgTpnq1fm6jb6F2TH1QovvdicXksu
         E7ag==
X-Gm-Message-State: AOAM533ylQkgBI612/hrXvqDoNY+xdftTCuEFgQ34A8pemnzf4kpu+/D
	AvXtp1OHP9ttWuPKf6ZOQfjWwBoK6/zQGA==
X-Google-Smtp-Source: ABdhPJzwsCZTleh/hQTyI/6JxcYxcFi5a/Mpck2lz5sVCaOGpJ45RXow4h9WQNdD5S92s+lkODeUbQ==
X-Received: by 2002:a37:270d:: with SMTP id n13mr5932794qkn.146.1621350617086;
        Tue, 18 May 2021 08:10:17 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([136.56.1.171])
        by smtp.gmail.com with ESMTPSA id e19sm1484001qtr.45.2021.05.18.08.10.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 08:10:16 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] qemuzephyrrunner.py: use existing qemu conf file
Date: Tue, 18 May 2021 11:09:44 -0400
Message-Id: <20210518150944.25429-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Read the generated QEMU conf file, instead of using hard coded values.
This allows for machines not conforming to the hard coded values to work
with testimage.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 conf/machine/qemu-x86.conf         |  1 +
 lib/oeqa/utils/qemuzephyrrunner.py | 89 +++++++++++++++++++++++++-----
 2 files changed, 77 insertions(+), 13 deletions(-)

diff --git a/conf/machine/qemu-x86.conf b/conf/machine/qemu-x86.conf
index d85c22215520..ce79b5b1f510 100644
--- a/conf/machine/qemu-x86.conf
+++ b/conf/machine/qemu-x86.conf
@@ -9,6 +9,7 @@ ZEPHYR_INHERIT_CLASSES += "zephyr-qemuboot"
 
 # For runqemu
 QB_SYSTEM_NAME = "qemu-system-i386"
+QB_MACHINE = "-machine type=pc-1.3"
 QB_OPT_APPEND = "-nographic -no-acpi"
 QB_CPU_x86 = "-cpu qemu32,+nx,+pae"
 QB_CPU_KVM_x86 = "-cpu kvm32"
diff --git a/lib/oeqa/utils/qemuzephyrrunner.py b/lib/oeqa/utils/qemuzephyrrunner.py
index e8a1bd4544cf..a1ed30be1ca8 100644
--- a/lib/oeqa/utils/qemuzephyrrunner.py
+++ b/lib/oeqa/utils/qemuzephyrrunner.py
@@ -14,6 +14,7 @@ import select
 import bb
 import tempfile
 import sys
+import configparser
 from oeqa.utils.qemurunner import QemuRunner
 
 class QemuZephyrRunner(QemuRunner):
@@ -42,6 +43,72 @@ class QemuZephyrRunner(QemuRunner):
         # 5 minutes timeout...
         self.endtime = time.time() + 60*5
 
+        self.qemuboot = False
+        self.d = {'QB_KERNEL_ROOT': '/dev/vda'}
+
+    def get(self, key):
+        if key in self.d:
+            return self.d.get(key)
+        elif os.getenv(key):
+            return os.getenv(key)
+        else:
+            return ''
+
+    def set(self, key, value):
+        self.d[key] = value
+
+    def read_qemuboot(self):
+        if not self.qemuboot:
+            if self.get('DEPLOY_DIR_IMAGE'):
+                deploy_dir_image = self.get('DEPLOY_DIR_IMAGE')
+            else:
+                bb.warning("Can't find qemuboot conf file, DEPLOY_DIR_IMAGE is NULL!")
+                return
+
+            if self.rootfs and not os.path.exists(self.rootfs):
+                # Lazy rootfs
+                machine = self.get('MACHINE')
+                if not machine:
+                    machine = os.path.basename(deploy_dir_image)
+                self.qemuboot = "%s/%s-%s.qemuboot.conf" % (deploy_dir_image,
+                        self.rootfs, machine)
+            else:
+                cmd = 'ls -t %s/*.qemuboot.conf' %  deploy_dir_image
+                try:
+                    qbs = subprocess.check_output(cmd, shell=True).decode('utf-8')
+                except subprocess.CalledProcessError as err:
+                    raise RunQemuError(err)
+                if qbs:
+                    for qb in qbs.split():
+                        # Don't use initramfs when other choices unless fstype is ramfs
+                        if '-initramfs-' in os.path.basename(qb) and self.fstype != 'cpio.gz':
+                                continue
+                        self.qemuboot = qb
+                        break
+                    if not self.qemuboot:
+                        # Use the first one when no choice
+                        self.qemuboot = qbs.split()[0]
+                    self.qbconfload = True
+
+        if not self.qemuboot:
+            # If we haven't found a .qemuboot.conf at this point it probably
+            # doesn't exist, continue without
+            return
+
+        if not os.path.exists(self.qemuboot):
+            raise RunQemuError("Failed to find %s (wrong image name or BSP does not support running under qemu?)." % self.qemuboot)
+
+        cf = configparser.ConfigParser()
+        cf.read(self.qemuboot)
+        for k, v in cf.items('config_bsp'):
+            k_upper = k.upper()
+            if v.startswith("../"):
+                v = os.path.abspath(os.path.dirname(self.qemuboot) + "/" + v)
+            elif v == ".":
+                v = os.path.dirname(self.qemuboot)
+            self.set(k_upper, v)
+
+
     def create_socket(self):
         bb.note("waiting at most %s seconds for qemu pid" % self.runqemutime)
         tries = self.runqemutime
@@ -66,7 +133,6 @@ class QemuZephyrRunner(QemuRunner):
 
         if not os.path.exists(self.tmpdir):
             bb.error("Invalid TMPDIR path %s" % self.tmpdir)
-            #logger.error("Invalid TMPDIR path %s" % self.tmpdir)
             return False
         else:
             os.environ["OE_TMPDIR"] = self.tmpdir
@@ -82,21 +148,18 @@ class QemuZephyrRunner(QemuRunner):
             bb.error("Invalid kernel path: %s" % self.kernel)
             return False
 
-        self.qemuparams = '-nographic -serial unix:%s,server' % (self.socketname)
-        qemu_binary = ""
-        if 'arm' in self.machine or 'cortex' in self.machine:
-            qemu_binary = 'qemu-system-arm'
-            qemu_machine_args = '-machine lm3s6965evb'
-        elif 'x86' in self.machine:
-            qemu_binary = 'qemu-system-i386'
-            qemu_machine_args = '-machine type=pc-1.3 -no-acpi -nographic -cpu qemu32,+nx,+pae'
-        elif 'nios2' in self.machine:
-            qemu_binary = 'qemu-system-nios2'
-            qemu_machine_args = '-machine altera_10m50_zephyr'
-        else:
+        self.qemuparams = '-serial unix:%s,server' % (self.socketname)
+
+        self.read_qemuboot()
+        qemu_binary = self.get('QB_SYSTEM_NAME')
+        qemu_machine_args = self.get('QB_MACHINE')
+        if qemu_binary == "" or qemu_machine_args == "":
             bb.error("Unsupported QEMU: %s" % self.machine)
             return False
 
+        self.qemuparams += " %s " %self.get('QB_OPT_APPEND')
+        self.qemuparams += " %s " %self.get('QB_CPU')
+
         self.origchldhandler = signal.getsignal(signal.SIGCHLD)
         signal.signal(signal.SIGCHLD, self.handleSIGCHLD)
 
-- 
2.20.1

