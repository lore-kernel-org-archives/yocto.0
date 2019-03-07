Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8348DE00C71; Thu,  7 Mar 2019 00:33:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8365E0048C
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 00:33:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x278X0Dm002502
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Mar 2019 00:33:15 -0800
Received: from localhost (128.224.163.192) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Thu, 7 Mar 2019 00:33:01 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <akuster808@gmail.com>
Date: Thu, 7 Mar 2019 16:32:59 +0800
Message-ID: <1551947579-27420-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.163.192]
Subject: [meta-security][PATCH] openscap-daemon: backport patch to fix build error with python 3.7
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
X-List-Received-Date: Thu, 07 Mar 2019 08:33:42 -0000
Content-Type: text/plain

Fixes build error:
  | Traceback (most recent call last):
  |   File "setup.py", line 25, in <module>
  |     from openscap_daemon import version
  |   File "/buildarea/build/tmp/work/core2-64-poky-linux/openscap-daemon/0.1.10-r0/git/openscap_daemon/__init__.py", line 22, in <module>
  |     from openscap_daemon.system import System
  |   File "/buildarea/build/tmp/work/core2-64-poky-linux/openscap-daemon/0.1.10-r0/git/openscap_daemon/system.py", line 29
  |     from openscap_daemon import async
  |                                     ^
  | SyntaxError: invalid syntax

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...-module-and-variables-to-get-rid-of-async.patch | 130 +++++++++++++++++++++
 .../openscap-daemon/openscap-daemon_0.1.10.bb      |   4 +-
 2 files changed, 133 insertions(+), 1 deletion(-)
 create mode 100644 meta-security-compliance/recipes-openscap/openscap-daemon/files/0001-Renamed-module-and-variables-to-get-rid-of-async.patch

diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/files/0001-Renamed-module-and-variables-to-get-rid-of-async.patch b/meta-security-compliance/recipes-openscap/openscap-daemon/files/0001-Renamed-module-and-variables-to-get-rid-of-async.patch
new file mode 100644
index 0000000..2a518bf
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/openscap-daemon/files/0001-Renamed-module-and-variables-to-get-rid-of-async.patch
@@ -0,0 +1,130 @@
+From c34349720a57997d30946286756e2ba9dbab6ace Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Mat=C4=9Bj=20T=C3=BD=C4=8D?= <matyc@redhat.com>
+Date: Mon, 2 Jul 2018 11:21:19 +0200
+Subject: [PATCH] Renamed module and variables to get rid of async.
+
+async is a reserved word in Python 3.7.
+
+Upstream-Status: Backport
+[https://github.com/OpenSCAP/openscap-daemon/commit/c34349720a57997d30946286756e2ba9dbab6ace]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ openscap_daemon/{async.py => async_tools.py} |  0
+ openscap_daemon/dbus_daemon.py               |  2 +-
+ openscap_daemon/system.py                    | 16 ++++++++--------
+ tests/unit/test_basic_update.py              |  3 ++-
+ 4 files changed, 11 insertions(+), 10 deletions(-)
+ rename openscap_daemon/{async.py => async_tools.py} (100%)
+
+diff --git a/openscap_daemon/async.py b/openscap_daemon/async_tools.py
+similarity index 100%
+rename from openscap_daemon/async.py
+rename to openscap_daemon/async_tools.py
+diff --git a/openscap_daemon/dbus_daemon.py b/openscap_daemon/dbus_daemon.py
+index e6eadf9..cb6a8b6 100644
+--- a/openscap_daemon/dbus_daemon.py
++++ b/openscap_daemon/dbus_daemon.py
+@@ -81,7 +81,7 @@ class OpenSCAPDaemonDbus(dbus.service.Object):
+     @dbus.service.method(dbus_interface=dbus_utils.DBUS_INTERFACE,
+                          in_signature="", out_signature="a(xsi)")
+     def GetAsyncActionsStatus(self):
+-        return self.system.async.get_status()
++        return self.system.async_manager.get_status()
+ 
+     @dbus.service.method(dbus_interface=dbus_utils.DBUS_INTERFACE,
+                          in_signature="s", out_signature="(sssn)")
+diff --git a/openscap_daemon/system.py b/openscap_daemon/system.py
+index 2012f6e..85c2680 100644
+--- a/openscap_daemon/system.py
++++ b/openscap_daemon/system.py
+@@ -26,7 +26,7 @@ import logging
+ from openscap_daemon.task import Task
+ from openscap_daemon.config import Configuration
+ from openscap_daemon import oscap_helpers
+-from openscap_daemon import async
++from openscap_daemon import async_tools
+ 
+ 
+ class ResultsNotAvailable(Exception):
+@@ -40,7 +40,7 @@ TASK_ACTION_PRIORITY = 10
+ 
+ class System(object):
+     def __init__(self, config_file):
+-        self.async = async.AsyncManager()
++        self.async_manager = async_tools.AsyncManager()
+ 
+         logging.info("Loading configuration from '%s'.", config_file)
+         self.config = Configuration()
+@@ -90,7 +90,7 @@ class System(object):
+             input_file, tailoring_file, None
+         )
+ 
+-    class AsyncEvaluateSpecAction(async.AsyncAction):
++    class AsyncEvaluateSpecAction(async_tools.AsyncAction):
+         def __init__(self, system, spec):
+             super(System.AsyncEvaluateSpecAction, self).__init__()
+ 
+@@ -113,7 +113,7 @@ class System(object):
+             return "Evaluate Spec '%s'" % (self.spec)
+ 
+     def evaluate_spec_async(self, spec):
+-        return self.async.enqueue(
++        return self.async_manager.enqueue(
+             System.AsyncEvaluateSpecAction(
+                 self,
+                 spec
+@@ -488,7 +488,7 @@ class System(object):
+ 
+         return ret
+ 
+-    class AsyncUpdateTaskAction(async.AsyncAction):
++    class AsyncUpdateTaskAction(async_tools.AsyncAction):
+         def __init__(self, system, task_id, reference_datetime):
+             super(System.AsyncUpdateTaskAction, self).__init__()
+ 
+@@ -536,7 +536,7 @@ class System(object):
+ 
+                 if task.should_be_updated(reference_datetime):
+                     self.tasks_scheduled.add(task.id_)
+-                    self.async.enqueue(
++                    self.async_manager.enqueue(
+                         System.AsyncUpdateTaskAction(
+                             self,
+                             task.id_,
+@@ -662,7 +662,7 @@ class System(object):
+             fix_type
+         )
+ 
+-    class AsyncEvaluateCVEScannerWorkerAction(async.AsyncAction):
++    class AsyncEvaluateCVEScannerWorkerAction(async_tools.AsyncAction):
+         def __init__(self, system, worker):
+             super(System.AsyncEvaluateCVEScannerWorkerAction, self).__init__()
+ 
+@@ -680,7 +680,7 @@ class System(object):
+             return "Evaluate CVE Scanner Worker '%s'" % (self.worker)
+ 
+     def evaluate_cve_scanner_worker_async(self, worker):
+-        return self.async.enqueue(
++        return self.async_manager.enqueue(
+             System.AsyncEvaluateCVEScannerWorkerAction(
+                 self,
+                 worker
+diff --git a/tests/unit/test_basic_update.py b/tests/unit/test_basic_update.py
+index 6f683e6..7f953f7 100755
+--- a/tests/unit/test_basic_update.py
++++ b/tests/unit/test_basic_update.py
+@@ -37,8 +37,9 @@ class BasicUpdateTest(unit_test_harness.APITest):
+         print(self.system.tasks)
+         self.system.schedule_tasks()
+ 
+-        while len(self.system.async.actions) > 0:
++        while len(self.system.async_manager.actions) > 0:
+             time.sleep(1)
+ 
++
+ if __name__ == "__main__":
+     BasicUpdateTest.run()
+-- 
+2.7.4
+
diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
index a6a9373..ca6e030 100644
--- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
+++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
@@ -9,7 +9,9 @@ LICENSE = "LGPL-2.1"
 DEPENDS = "python3-dbus"
 
 SRCREV = "f25b16afb6ac761fea13132ff406fba4cdfd2b76"
-SRC_URI = "git://github.com/OpenSCAP/openscap-daemon.git"
+SRC_URI = "git://github.com/OpenSCAP/openscap-daemon.git \
+           file://0001-Renamed-module-and-variables-to-get-rid-of-async.patch \
+          "
 
 inherit setuptools3
 
-- 
2.7.4


