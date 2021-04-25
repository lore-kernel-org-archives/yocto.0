Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web12.7488.1619388463638490514
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Apr 2021 15:07:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=AvEZ9OT3;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.170, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f170.google.com with SMTP id z2so17843913qkb.9
        for <yocto@lists.yoctoproject.org>; Sun, 25 Apr 2021 15:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1t4hGgojpu3anrxsug94qE2qkR38yXGippiPL0+CL/s=;
        b=AvEZ9OT3dBOFeqz1RsgP3hqZ8tVSbYtbVqZsEGdx+fis4+j+AgwFAoQMtIrC8ZlEvG
         lGO/gLAOVN7gn9rPl4pk3FfrhnNFDUBF0G95+tIa9eSM/CkhMIJD3kJ0TWgwUW1zc/rU
         R9bVU0tKqom5mnmybkqaVFpgwgtyAq6b0iac2NjXQVHev/cdJpO9P3eZ7F1lML+6eWSL
         p1jZ5LOFqf6Oimavxy23wsP95hiDpdFRaROAX5hPUOeMB1VUkH1ij4eNLtlMIBKi+cRk
         uXSthY+WSDretKkkMb56SoejOWvJomZFC62lKd0Fb5ZXMGdcfsa6C/Owh1Bh/T1y7iVV
         o6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1t4hGgojpu3anrxsug94qE2qkR38yXGippiPL0+CL/s=;
        b=UTAD/Pan45XFu3/PVRLgGX3OIr6s0OctylNI4GdneuycMkFMKuNlKl2VZVlr8mBzU4
         ctl42vN57/cchxja+z843Z9hzo12cBRrsCTW620y3mEc9fgD8PAKVhct6T8BbkaL1KbZ
         seHf/k+CU5KovvYrKrxP5jKkagSU6OVTxkTYCDC0i5eDzA+h+YVt7MzX/hpqenn1LHll
         Eu8hLmA0qcW0Tsm9IEmVDomPsMgX1aPDKypLIVux26skJFgIiMVfWnfE+Qjz6jquPPu/
         lC3k20JhcHumeQpnntkQ/oFJe9DAYn//mW8BoalQmcd52kmvmEJD8ZU7XLnOK1HQ1aYs
         KtNQ==
X-Gm-Message-State: AOAM531nUBQEViMTfHXB5ZOrVKeONxcHMKIEUSUUEH0ds5QugcVw+SaD
	eC2islmXHKx29Y/2/wnbJgipJGX6c9x6ow==
X-Google-Smtp-Source: ABdhPJxV4fnpc2nW+fG71Db9CpSY9iyMVEcm5p7UWKQhyfJq3XpfuCLGL8aRt1r92ootvubwA3SH9Q==
X-Received: by 2002:a37:5fc2:: with SMTP id t185mr14329563qkb.254.1619388462617;
        Sun, 25 Apr 2021 15:07:42 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([2605:a601:a601:f800:c0d4:704b:b40b:4308])
        by smtp.gmail.com with ESMTPSA id x9sm2319747qki.82.2021.04.25.15.07.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Apr 2021 15:07:42 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] qemuzephyrrunner.py: add tmpfsdir support
Date: Sun, 25 Apr 2021 18:07:41 -0400
Message-Id: <20210425220741.5936-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

OE-Core rev: fd1c26ab426c3699ffd8082b83d65a84c8eb8bff added an
additional parameter, tmpfsdir, to the API.  This caused testimage to no
longer work in meta-zephyr.  Add that parameter and everything is happy
now.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 lib/oeqa/controllers/zephyrtargetcontrol.py | 6 +++---
 lib/oeqa/utils/qemuzephyrrunner.py          | 8 ++++++--
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/lib/oeqa/controllers/zephyrtargetcontrol.py b/lib/oeqa/controllers/zephyrtargetcontrol.py
index 8e94cb53673d..1dd7fd22543f 100644
--- a/lib/oeqa/controllers/zephyrtargetcontrol.py
+++ b/lib/oeqa/controllers/zephyrtargetcontrol.py
@@ -14,8 +14,8 @@ class QemuTargetZephyr(OETarget):
     def __init__(self, logger, ip, server_ip,
             machine='', rootfs='', tmpdir ='',dir_image ='',display=None,
             kernel='',boottime=60,bootlog='',kvm=False,slirp=False,
-            dump_dir='',serial_ports=0,ovmf=None,target_modules_path='',powercontrol_cmd='',powercontrol_extra_args='',
-            serialcontrol_cmd=None,serialcontrol_extra_args='',testimage_dump_target='' ):
+            dump_dir='',serial_ports=0,ovmf=None,tmpfsdir='' ,target_modules_path='',powercontrol_cmd='',powercontrol_extra_args='',
+            serialcontrol_cmd=None,serialcontrol_extra_args='',testimage_dump_target=''):
 
         timeout =  300
         user = 'root'
@@ -48,7 +48,7 @@ class QemuTargetZephyr(OETarget):
                                  logfile=self.qemulog, boottime=boottime,
                                  use_kvm=kvm, dump_dir=dump_dir,
                                  dump_host_cmds=dump_host_cmds,
-                                 logger = logger)
+                                 logger = logger, tmpfsdir=tmpfsdir)
 
 
     def start(self, params=None, runqemuparams=None, extra_bootparams=None):
diff --git a/lib/oeqa/utils/qemuzephyrrunner.py b/lib/oeqa/utils/qemuzephyrrunner.py
index 0308f1e50e29..e8a1bd4544cf 100644
--- a/lib/oeqa/utils/qemuzephyrrunner.py
+++ b/lib/oeqa/utils/qemuzephyrrunner.py
@@ -18,11 +18,12 @@ from oeqa.utils.qemurunner import QemuRunner
 
 class QemuZephyrRunner(QemuRunner):
 
-    def __init__(self, machine, rootfs, display, tmpdir, deploy_dir_image, logfile, boottime, dump_dir, dump_host_cmds, use_kvm, logger):
+    def __init__(self, machine, rootfs, display, tmpdir, deploy_dir_image, logfile, boottime, dump_dir, dump_host_cmds, use_kvm, logger, tmpfsdir):
+
 
         QemuRunner.__init__(self, machine, rootfs, display, tmpdir,
                             deploy_dir_image, logfile, boottime, None,
-                            None, use_kvm, logger)
+                            None, use_kvm, logger, tmpfsdir)
 
         # Popen object for runqemu
         self.socketfile = tempfile.NamedTemporaryFile()
@@ -32,6 +33,7 @@ class QemuZephyrRunner(QemuRunner):
 
         self.kernel = rootfs
         self.deploy_dir_image = deploy_dir_image
+        self.tmpfsdir = tmpfsdir
         self.logfile = logfile
         self.use_kvm = use_kvm
 
@@ -73,6 +75,8 @@ class QemuZephyrRunner(QemuRunner):
             return False
         else:
             os.environ["DEPLOY_DIR_IMAGE"] = self.deploy_dir_image
+        if self.tmpfsdir:
+            env["RUNQEMU_TMPFS_DIR"] = self.tmpfsdir
 
         if not os.path.exists(self.kernel):
             bb.error("Invalid kernel path: %s" % self.kernel)
-- 
2.20.1

