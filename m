Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1096EB64D0
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 19:12:51 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web10.33.1686683569462617836
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 12:12:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=fP+1ySxw;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-56d378b75f0so27194627b3.1
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 12:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686683568; x=1689275568;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=O+piQ0MWP7dMckedPZi0squmZmVmVW2yzu7A0EojQ6k=;
        b=fP+1ySxw278OEqD/O5e5H1xApZJZxe0hC6Q4INiuXmoWincxrptpu/nhdj7nAownX4
         wdV1o3DLh/eW9Jr0ehjvhVZNJTBYkpp0K7zoPNdbhjHzDmq54ltC1aYJU1YsJOXLXI2w
         tjb/QU0cowm3R+L6zy85dxOmBlNZ3I9HJ/Qe8nJXMQyQG+0sn3bGoQBgPTRwgd5ebJms
         tiA6AKETJ/RANDG7vgEkt9l/2x9jWciknhsjCpekINM4MxhQKtuDLBA2YYyQEAehveRB
         Ta7n1cMHmwMLSNfMwMgK2V41dRGmiSSgfqHKR+/llDwktJPW/vUz822Aw8KzTrjCVcUa
         vfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683568; x=1689275568;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O+piQ0MWP7dMckedPZi0squmZmVmVW2yzu7A0EojQ6k=;
        b=iSk+cgrx5wqXLYGGIZU2nwr92TdTyQblOHaZVLkA1YnENKEep8dLE1fpPDJXZwGz2y
         oQGZas5rdWd8E4yD1nPY3rSTpqse00Ik9o7AFiIR2V3dA6/if67XtGlS37vhfple9+/v
         AvMPLfzCPHjLi4x/0X/xR0GV7kbwJEe3c32sCbZmUTnKhydLHoJj/w1nO8wNetW3Ejnp
         RmPgqyU1k5Pr1EPam7zWRhOZllFLbCf41mTsoxR85GenPs+Ap5t/NX3SqW/IEywDuXkg
         CiuTsQl008Qs9fFLuo7fYacZgXODAs1UBF63Q0r7MJ4F0U7LsIsw5MGz2XlGJYXALVcO
         q4tw==
X-Gm-Message-State: AC+VfDyAkk0OMKIdZDmKkA8FKGGW4VEeJvdkk6PTQjXmOcm0NGWAHe9P
	po/offWZ69XrruGT3rDky89yG9o5zPA=
X-Google-Smtp-Source: ACHHUZ7to4litYwC1T8KtSpIAsDvQ1cvnecusAvysXi3mQZmcgSTLrzHhAcutOLCQiTcROm9HBrgUg==
X-Received: by 2002:a81:8343:0:b0:56c:fbb4:7d46 with SMTP id t64-20020a818343000000b0056cfbb47d46mr2997490ywf.28.1686683568135;
        Tue, 13 Jun 2023 12:12:48 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:be62:56a:860e:4129])
        by smtp.gmail.com with ESMTPSA id q133-20020a815c8b000000b005569567aac1sm1971786ywb.106.2023.06.13.12.12.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 12:12:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/7] openscap-daemon: This is now obsolete
Date: Tue, 13 Jun 2023 15:12:41 -0400
Message-Id: <20230613191247.18732-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 19:12:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60274

drop pkg

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...le-and-variables-to-get-rid-of-async.patch | 130 ------------------
 .../openscap-daemon/openscap-daemon_0.1.10.bb |  23 ----
 2 files changed, 153 deletions(-)
 delete mode 100644 meta-security-compliance/recipes-openscap/openscap-daemon/files/0001-Renamed-module-and-variables-to-get-rid-of-async.patch
 delete mode 100644 meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb

diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/files/0001-Renamed-module-and-variables-to-get-rid-of-async.patch b/meta-security-compliance/recipes-openscap/openscap-daemon/files/0001-Renamed-module-and-variables-to-get-rid-of-async.patch
deleted file mode 100644
index 2a518bf..0000000
--- a/meta-security-compliance/recipes-openscap/openscap-daemon/files/0001-Renamed-module-and-variables-to-get-rid-of-async.patch
+++ /dev/null
@@ -1,130 +0,0 @@
-From c34349720a57997d30946286756e2ba9dbab6ace Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Mat=C4=9Bj=20T=C3=BD=C4=8D?= <matyc@redhat.com>
-Date: Mon, 2 Jul 2018 11:21:19 +0200
-Subject: [PATCH] Renamed module and variables to get rid of async.
-
-async is a reserved word in Python 3.7.
-
-Upstream-Status: Backport
-[https://github.com/OpenSCAP/openscap-daemon/commit/c34349720a57997d30946286756e2ba9dbab6ace]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- openscap_daemon/{async.py => async_tools.py} |  0
- openscap_daemon/dbus_daemon.py               |  2 +-
- openscap_daemon/system.py                    | 16 ++++++++--------
- tests/unit/test_basic_update.py              |  3 ++-
- 4 files changed, 11 insertions(+), 10 deletions(-)
- rename openscap_daemon/{async.py => async_tools.py} (100%)
-
-diff --git a/openscap_daemon/async.py b/openscap_daemon/async_tools.py
-similarity index 100%
-rename from openscap_daemon/async.py
-rename to openscap_daemon/async_tools.py
-diff --git a/openscap_daemon/dbus_daemon.py b/openscap_daemon/dbus_daemon.py
-index e6eadf9..cb6a8b6 100644
---- a/openscap_daemon/dbus_daemon.py
-+++ b/openscap_daemon/dbus_daemon.py
-@@ -81,7 +81,7 @@ class OpenSCAPDaemonDbus(dbus.service.Object):
-     @dbus.service.method(dbus_interface=dbus_utils.DBUS_INTERFACE,
-                          in_signature="", out_signature="a(xsi)")
-     def GetAsyncActionsStatus(self):
--        return self.system.async.get_status()
-+        return self.system.async_manager.get_status()
- 
-     @dbus.service.method(dbus_interface=dbus_utils.DBUS_INTERFACE,
-                          in_signature="s", out_signature="(sssn)")
-diff --git a/openscap_daemon/system.py b/openscap_daemon/system.py
-index 2012f6e..85c2680 100644
---- a/openscap_daemon/system.py
-+++ b/openscap_daemon/system.py
-@@ -26,7 +26,7 @@ import logging
- from openscap_daemon.task import Task
- from openscap_daemon.config import Configuration
- from openscap_daemon import oscap_helpers
--from openscap_daemon import async
-+from openscap_daemon import async_tools
- 
- 
- class ResultsNotAvailable(Exception):
-@@ -40,7 +40,7 @@ TASK_ACTION_PRIORITY = 10
- 
- class System(object):
-     def __init__(self, config_file):
--        self.async = async.AsyncManager()
-+        self.async_manager = async_tools.AsyncManager()
- 
-         logging.info("Loading configuration from '%s'.", config_file)
-         self.config = Configuration()
-@@ -90,7 +90,7 @@ class System(object):
-             input_file, tailoring_file, None
-         )
- 
--    class AsyncEvaluateSpecAction(async.AsyncAction):
-+    class AsyncEvaluateSpecAction(async_tools.AsyncAction):
-         def __init__(self, system, spec):
-             super(System.AsyncEvaluateSpecAction, self).__init__()
- 
-@@ -113,7 +113,7 @@ class System(object):
-             return "Evaluate Spec '%s'" % (self.spec)
- 
-     def evaluate_spec_async(self, spec):
--        return self.async.enqueue(
-+        return self.async_manager.enqueue(
-             System.AsyncEvaluateSpecAction(
-                 self,
-                 spec
-@@ -488,7 +488,7 @@ class System(object):
- 
-         return ret
- 
--    class AsyncUpdateTaskAction(async.AsyncAction):
-+    class AsyncUpdateTaskAction(async_tools.AsyncAction):
-         def __init__(self, system, task_id, reference_datetime):
-             super(System.AsyncUpdateTaskAction, self).__init__()
- 
-@@ -536,7 +536,7 @@ class System(object):
- 
-                 if task.should_be_updated(reference_datetime):
-                     self.tasks_scheduled.add(task.id_)
--                    self.async.enqueue(
-+                    self.async_manager.enqueue(
-                         System.AsyncUpdateTaskAction(
-                             self,
-                             task.id_,
-@@ -662,7 +662,7 @@ class System(object):
-             fix_type
-         )
- 
--    class AsyncEvaluateCVEScannerWorkerAction(async.AsyncAction):
-+    class AsyncEvaluateCVEScannerWorkerAction(async_tools.AsyncAction):
-         def __init__(self, system, worker):
-             super(System.AsyncEvaluateCVEScannerWorkerAction, self).__init__()
- 
-@@ -680,7 +680,7 @@ class System(object):
-             return "Evaluate CVE Scanner Worker '%s'" % (self.worker)
- 
-     def evaluate_cve_scanner_worker_async(self, worker):
--        return self.async.enqueue(
-+        return self.async_manager.enqueue(
-             System.AsyncEvaluateCVEScannerWorkerAction(
-                 self,
-                 worker
-diff --git a/tests/unit/test_basic_update.py b/tests/unit/test_basic_update.py
-index 6f683e6..7f953f7 100755
---- a/tests/unit/test_basic_update.py
-+++ b/tests/unit/test_basic_update.py
-@@ -37,8 +37,9 @@ class BasicUpdateTest(unit_test_harness.APITest):
-         print(self.system.tasks)
-         self.system.schedule_tasks()
- 
--        while len(self.system.async.actions) > 0:
-+        while len(self.system.async_manager.actions) > 0:
-             time.sleep(1)
- 
-+
- if __name__ == "__main__":
-     BasicUpdateTest.run()
--- 
-2.7.4
-
diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
deleted file mode 100644
index 9659323..0000000
--- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
+++ /dev/null
@@ -1,23 +0,0 @@
-# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-SUMARRY = "The OpenSCAP Daemon is a service that runs in the background."
-HOME_URL = "https://www.open-scap.org/tools/openscap-daemon/"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=40d2542b8c43a3ec2b7f5da31a697b88"
-LICENSE = "LGPL-2.1-only"
-
-DEPENDS = "python3-dbus"
-
-SRCREV = "f25b16afb6ac761fea13132ff406fba4cdfd2b76"
-SRC_URI = "git://github.com/OpenSCAP/openscap-daemon.git;branch=master;protocol=https \
-           file://0001-Renamed-module-and-variables-to-get-rid-of-async.patch \
-          "
-
-inherit python_setuptools_build_meta
-
-S = "${WORKDIR}/git"
-
-RDEPENDS:${PN} = "openscap scap-security-guide \
-                  python3-core python3-dbus \
-                  python3-pygobject \
-                 "
-- 
2.34.1


