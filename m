Received: from mga02.intel.com (mga02.intel.com [])
 by mx.groups.io with SMTP id smtpd.web09.3931.1576139448547174718
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Dec 2019 00:30:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Dec 2019 00:30:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; 
   d="scan'208";a="207996450"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga008.jf.intel.com with ESMTP; 12 Dec 2019 00:30:47 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/2] zephy-kernel-test: update the testcase list for x86
Date: Thu, 12 Dec 2019 16:34:51 +0800
Message-Id: <20191212083451.18422-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191212083451.18422-1-naveen.kumar.saini@intel.com>
References: <20191212083451.18422-1-naveen.kumar.saini@intel.com>

Updated the test recipes to build against Zephyr v2.0
Code clean up

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 classes/zephyrtest.bbclass                    |  2 +-
 recipes-kernel/zephyr-kernel/zephyr-image.inc |  9 +-
 .../zephyr-kernel/zephyr-kernel-test-all.bb   |  1 -
 .../zephyr-kernel/zephyr-kernel-test.inc      | 89 ++++++++++---------
 4 files changed, 53 insertions(+), 48 deletions(-)

diff --git a/classes/zephyrtest.bbclass b/classes/zephyrtest.bbclass
index 8a051db..3acc4c3 100644
--- a/classes/zephyrtest.bbclass
+++ b/classes/zephyrtest.bbclass
@@ -14,7 +14,7 @@ python zephyrtest_virtclass_handler () {
     e.data.setVar("ZEPHYR_IMAGENAME", pn + ".elf")
 
     # Most tests for Zephyr 1.6 are in the "legacy" folder
-    e.data.setVar("ZEPHYR_IMAGE_SRCDIR", "tests/legacy/kernel/" + variant)
+    e.data.setVar("ZEPHYR_SRC_DIR", "tests/kernel/" + variant)
     e.data.setVar("ZEPHYR_MAKE_OUTPUT", "zephyr.elf")
 
     # Allow to build using both foo-some_test form as well as foo-some-test
diff --git a/recipes-kernel/zephyr-kernel/zephyr-image.inc b/recipes-kernel/zephyr-kernel/zephyr-image.inc
index cf57dbf..e8b8871 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-image.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-image.inc
@@ -7,14 +7,11 @@ inherit deploy
 QEMU_BIN_PATH = "${STAGING_BINDIR_NATIVE}"
 
 ZEPHYR_BASE = "${S}"
-
-do_compile () {
-    cd ${S}
-     oe_runmake ${ZEPHYR_MAKE_ARGS} -C ${ZEPHYR_IMAGE_SRCDIR}
-}
+OECMAKE_SOURCEPATH = "${S}/${ZEPHYR_SRC_DIR}"
 
 do_deploy () {
-    install -D ${ZEPHYR_IMAGE_SRCDIR}/outdir/${BOARD}/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${ZEPHYR_IMAGENAME}
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${ZEPHYR_IMAGENAME}
 }
 
 addtask deploy after do_compile
+do_install[noexec] = "1"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test-all.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-test-all.bb
index c45124a..85efd24 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test-all.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test-all.bb
@@ -4,7 +4,6 @@ INHIBIT_DEFAULT_DEPS = "1"
 require zephyr-kernel-test.inc
 
 addtask testimage
-deltask configure
 deltask compile
 deltask install
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index 6e96ae2..d7572ef 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -1,52 +1,61 @@
+ZEPHYRTESTS_remove = "fifo fp_sharing lifo mbox mem_heap mem_pool \
+    mem_protect mem_slab msgq mutex pipe profiling sched semaphore \
+    stack threads tickless timer workq"
+
+
+# Exclude tests which does not build for various reasons
+ZEPHYRTESTS_remove = "gen_isr_table spinlock smp mp"
 
-ZEPHYRTESTS_remove = "test_static_idt test_fifo test_fp_sharing \
-    test_sema test_stackprot test_obj_tracing test_stack \
-    test_tickless test_timer"
 
 # test_context will fail because QEMU for ARM does not emulate CortexM3 BASEPRI register
-ZEPHYRTESTS_remove_arm += "test_context"
+#ZEPHYRTESTS_remove_arm += ""
 
 # test_critical never finishes in an unpatched QEMU either
-ZEPHYRTESTS_remove_arm += "test_critical"
+#ZEPHYRTESTS_remove_arm += ""
 
 #Remove ARM specific tests
-ZEPHYRTESTS_remove_x86 += "test_context test_arm_irq_vector_table"
+#ZEPHYRTESTS_remove_x86 += ""
 
 #Remove tests not intended for Nios2
-ZEPHYRTESTS_remove_nios2 += "test_context test_mem_safe"
+#ZEPHYRTESTS_remove_nios2 += ""
 
-# List of all available tests
+# List of all available kernel tests
 ZEPHYRTESTS = " \
-    test_context \
-    test_critical \
-    test_early_sleep \
-    test_errno \
-    test_events \
-    test_fifo \
-    test_fifo_priv \
-    test_fp_sharing \
-    test_libs \
-    test_lifo \
-    test_mail \
-    test_mail_priv \
-    test_map \
-    test_map_priv \
-    test_mem_safe \
-    test_mutex \
-    test_nano_work \
-    test_obj_tracing \
-    test_pend \
-    test_pipe \
-    test_pipe_priv \
-    test_pool \
-    test_sema \
-    test_sema_priv \
-    test_sleep \
-    test_stack \
-    test_stackprot \
-    test_static_idt \
-    test_task \
-    test_task_priv \
-    test_tickless \
-    test_timer \
+    boot_page_table \
+    common \
+    context \
+    critical \
+    device \
+    early_sleep \
+    fatal \
+    fifo \
+    fp_sharing \
+    gen_isr_table \
+    interrupt \
+    lifo \
+    mbox \
+    mem_heap \
+    mem_pool \
+    mem_protect \
+    mem_slab \
+    mp \
+    msgq \
+    mutex \
+    obj_tracing \
+    pending \
+    pipe \
+    poll \
+    profiling \
+    queue \
+    sched \
+    semaphore \
+    sleep \
+    smp \
+    spinlock \
+    stack \
+    threads \
+    tickless \
+    timer \
+    workq \
+    xip \
     "
-- 
2.17.1

