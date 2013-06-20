Return-Path: <andrei@gherzan.ro>
Received: from mail-bk0-f54.google.com (mail-bk0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF5AEE005B3
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 12:48:28 -0700 (PDT)
Received: by mail-bk0-f54.google.com with SMTP id it16so3012577bkc.41
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 12:48:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=pJMGIsqhX8G69C9rmctNmFJf84VKaeP3sHB5pwblEVU=;
	b=fFuJ4muu4z2kDdglTrbWjdVyeL9HQB1/u2hqinD/xxanJhpzWxin0tPAGgGgqERxuQ
	dzuhBAw99POlT3rtYmr2PQBlgoH+qqJl7OfYnXeUAP8crOw7yXsXDCoEWwgb1pfcakHk
	GwDGTZJGjNGiiA/yPijpkW4i9pmevmkZZfUXR2KMtm6RRH1nRbQ2rZ9s20OVhfFSbgkg
	ty0h2xRQt7rc8INUWT2F+4qHphlYQQ70eDLl9Xkf5GEhcN1ZmOKjy2VD+TyIOeSSJm/v
	xjgwPkhdeQCM8bHR2n1UigdvLHWiZbbTEOA9lvDBWU0VcgSd3GDuyNGZfkm3vPDGzo7X
	uX/g==
X-Received: by 10.204.240.15 with SMTP id ky15mr1342801bkb.144.1371757707038; 
	Thu, 20 Jun 2013 12:48:27 -0700 (PDT)
Received: from otp-agherzan-l1.corp.ad.wrs.com
	(5-13-222-51.residential.rdsnet.ro. [5.13.222.51])
	by mx.google.com with ESMTPSA id oe10sm777471bkb.1.2013.06.20.12.48.25
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 20 Jun 2013 12:48:26 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 20 Jun 2013 22:48:07 +0300
Message-Id: <1371757687-4621-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.8.1.4
X-Gm-Message-State: ALoCoQlkF9NKvIGNDrMUfwvB4OummhWW7ZFKh+NCJTZqAp72JCvQHFYBGMxW8bHBpCYdCZcI/peU
Cc: Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 1/1] dlt-daemon: Fix issue when recompiling is needed for this package
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
X-List-Received-Date: Thu, 20 Jun 2013 19:48:29 -0000

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../dlt-daemon/fix-in-build-builds.patch           | 148 +++++++++++++++++++++
 recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb    |   6 +-
 2 files changed, 152 insertions(+), 2 deletions(-)
 create mode 100644 recipes-extended/dlt-daemon/dlt-daemon/fix-in-build-builds.patch

diff --git a/recipes-extended/dlt-daemon/dlt-daemon/fix-in-build-builds.patch b/recipes-extended/dlt-daemon/dlt-daemon/fix-in-build-builds.patch
new file mode 100644
index 0000000..b944d14
--- /dev/null
+++ b/recipes-extended/dlt-daemon/dlt-daemon/fix-in-build-builds.patch
@@ -0,0 +1,148 @@
+Index: git/src/adaptor/CMakeLists.txt
+===================================================================
+--- git.orig/src/adaptor/CMakeLists.txt	2013-06-11 17:27:50.367489635 +0300
++++ git/src/adaptor/CMakeLists.txt	2013-06-11 17:27:57.735489371 +0300
+@@ -14,12 +14,12 @@
+ # @licence end@
+ ########
+ 
+-set(dlt_adaptor_stdin_SRCS dlt-adaptor-stdin)
++set(dlt_adaptor_stdin_SRCS dlt-adaptor-stdin.c)
+ add_executable(dlt-adaptor-stdin ${dlt_adaptor_stdin_SRCS})
+ target_link_libraries(dlt-adaptor-stdin dlt)
+ set_target_properties(dlt-adaptor-stdin PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_adaptor_udp_SRCS dlt-adaptor-udp)
++set(dlt_adaptor_udp_SRCS dlt-adaptor-udp.c)
+ add_executable(dlt-adaptor-udp ${dlt_adaptor_udp_SRCS})
+ target_link_libraries(dlt-adaptor-udp dlt)
+ set_target_properties(dlt-adaptor-udp PROPERTIES LINKER_LANGUAGE C)
+Index: git/src/system/CMakeLists.txt
+===================================================================
+--- git.orig/src/system/CMakeLists.txt	2013-06-11 17:23:40.467498576 +0300
++++ git/src/system/CMakeLists.txt	2013-06-11 17:24:04.311497723 +0300
+@@ -18,9 +18,9 @@
+     message( STATUS "Added ${systemd_SRCS} to dlt-system")
+ endif(WITH_SYSTEMD_WATCHDOG OR WITH_SYSTEMD)
+ 
+-set(dlt_system_SRCS dlt-system dlt-system-options dlt-system-process-handling 
+-	dlt-system-filetransfer dlt-system-logfile dlt-system-processes dlt-system-shell
+-	dlt-system-syslog dlt-system-watchdog)
++set(dlt_system_SRCS dlt-system.c dlt-system-options.c dlt-system-process-handling.c 
++	dlt-system-filetransfer.c dlt-system-logfile.c dlt-system-processes.c dlt-system-shell.c
++	dlt-system-syslog.c dlt-system-watchdog.c)
+ add_executable(dlt-system ${dlt_system_SRCS} ${systemd_SRCS})
+ target_link_libraries(dlt-system dlt z)
+ set_target_properties(dlt-system PROPERTIES LINKER_LANGUAGE C)
+Index: git/src/tests/CMakeLists.txt
+===================================================================
+--- git.orig/src/tests/CMakeLists.txt	2013-06-11 17:22:05.139501987 +0300
++++ git/src/tests/CMakeLists.txt	2013-06-11 17:22:30.711501072 +0300
+@@ -13,42 +13,42 @@
+ #
+ # @licence end@
+ ########
+-set(dlt_test_multi_process_SRCS dlt-test-multi-process)
++set(dlt_test_multi_process_SRCS dlt-test-multi-process.c)
+ add_executable(dlt-test-multi-process ${dlt_test_multi_process_SRCS})
+ target_link_libraries(dlt-test-multi-process dlt)
+ set_target_properties(dlt-test-multi-process PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_test_multi_process_client_SRCS dlt-test-multi-process-client)
++set(dlt_test_multi_process_client_SRCS dlt-test-multi-process-client.c)
+ add_executable(dlt-test-multi-process-client ${dlt_test_multi_process_client_SRCS})
+ target_link_libraries(dlt-test-multi-process-client dlt)
+ set_target_properties(dlt-test-multi-process-client PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_test_user_SRCS dlt-test-user)
++set(dlt_test_user_SRCS dlt-test-user.c)
+ add_executable(dlt-test-user ${dlt_test_user_SRCS})
+ target_link_libraries(dlt-test-user dlt)
+ set_target_properties(dlt-test-user PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_test_client_SRCS dlt-test-client)
++set(dlt_test_client_SRCS dlt-test-client.c)
+ add_executable(dlt-test-client ${dlt_test_client_SRCS})
+ target_link_libraries(dlt-test-client dlt)
+ set_target_properties(dlt-test-client PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_test_stress_user_SRCS dlt-test-stress-user)
++set(dlt_test_stress_user_SRCS dlt-test-stress-user.c)
+ add_executable(dlt-test-stress-user ${dlt_test_stress_user_SRCS})
+ target_link_libraries(dlt-test-stress-user dlt)
+ set_target_properties(dlt-test-stress-user PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_test_stress_client_SRCS dlt-test-stress-client)
++set(dlt_test_stress_client_SRCS dlt-test-stress-client.c)
+ add_executable(dlt-test-stress-client ${dlt_test_stress_client_SRCS})
+ target_link_libraries(dlt-test-stress-client dlt)
+ set_target_properties(dlt-test-stress-client PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_test_stress_SRCS dlt-test-stress)
++set(dlt_test_stress_SRCS dlt-test-stress.c)
+ add_executable(dlt-test-stress ${dlt_test_stress_SRCS})
+ target_link_libraries(dlt-test-stress dlt)
+ set_target_properties(dlt-test-stress PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_test_filetransfer_SRCS dlt-test-filetransfer)
++set(dlt_test_filetransfer_SRCS dlt-test-filetransfer.c)
+ add_executable(dlt-test-filetransfer ${dlt_test_filetransfer_SRCS})
+ target_link_libraries(dlt-test-filetransfer dlt)
+ set_target_properties(dlt-test-filetransfer PROPERTIES LINKER_LANGUAGE C)
+Index: git/src/console/CMakeLists.txt
+===================================================================
+--- git.orig/src/console/CMakeLists.txt	2013-06-11 17:31:00.443482834 +0300
++++ git/src/console/CMakeLists.txt	2013-06-11 17:31:04.923482670 +0300
+@@ -14,12 +14,12 @@
+ # @licence end@
+ ########
+ 
+-set(dlt_convert_SRCS dlt-convert)
++set(dlt_convert_SRCS dlt-convert.c)
+ add_executable(dlt-convert ${dlt_convert_SRCS} ${dlt_most_SRCS})
+ target_link_libraries(dlt-convert dlt ${EXPAT_LIBRARIES})
+ set_target_properties(dlt-convert PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_receive_SRCS dlt-receive)
++set(dlt_receive_SRCS dlt-receive.c)
+ add_executable(dlt-receive ${dlt_receive_SRCS} ${dlt_most_SRCS})
+ target_link_libraries(dlt-receive dlt ${EXPAT_LIBRARIES})
+ set_target_properties(dlt-receive PROPERTIES LINKER_LANGUAGE C)
+Index: git/src/daemon/CMakeLists.txt
+===================================================================
+--- git.orig/src/daemon/CMakeLists.txt	2013-06-11 17:31:18.475482188 +0300
++++ git/src/daemon/CMakeLists.txt	2013-06-11 17:31:32.359481692 +0300
+@@ -19,7 +19,7 @@
+     message( STATUS "Added ${systemd_SRCS} to dlt-daemon")
+ endif(WITH_SYSTEMD_WATCHDOG OR WITH_SYSTEMD)
+ 
+-set(dlt_daemon_SRCS dlt-daemon dlt_daemon_common ${CMAKE_SOURCE_DIR}/src/shared/dlt_user_shared.c ${CMAKE_SOURCE_DIR}/src/shared/dlt_common.c ${CMAKE_SOURCE_DIR}/src/shared/dlt_shm.c ${CMAKE_SOURCE_DIR}/src/shared/dlt_offline_trace.c)
++set(dlt_daemon_SRCS dlt-daemon.c dlt_daemon_common.c ${CMAKE_SOURCE_DIR}/src/shared/dlt_user_shared.c ${CMAKE_SOURCE_DIR}/src/shared/dlt_common.c ${CMAKE_SOURCE_DIR}/src/shared/dlt_shm.c ${CMAKE_SOURCE_DIR}/src/shared/dlt_offline_trace.c)
+ add_executable(dlt-daemon ${dlt_daemon_SRCS} ${systemd_SRCS})
+ target_link_libraries(dlt-daemon rt ${CMAKE_THREAD_LIBS_INIT})
+ 
+Index: git/src/examples/CMakeLists.txt
+===================================================================
+--- git.orig/src/examples/CMakeLists.txt	2013-06-11 17:31:46.547481184 +0300
++++ git/src/examples/CMakeLists.txt	2013-06-11 17:31:55.447480864 +0300
+@@ -14,17 +14,17 @@
+ # @licence end@
+ ########
+ 
+-set(dlt_example_user_SRCS dlt-example-user)
++set(dlt_example_user_SRCS dlt-example-user.c)
+ add_executable(dlt-example-user ${dlt_example_user_SRCS})
+ target_link_libraries(dlt-example-user dlt)
+ set_target_properties(dlt-example-user PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_example_user_func_SRCS dlt-example-user-func)
++set(dlt_example_user_func_SRCS dlt-example-user-func.c)
+ add_executable(dlt-example-user-func ${dlt_example_user_func_SRCS})
+ target_link_libraries(dlt-example-user-func dlt)
+ set_target_properties(dlt-example-user-func PROPERTIES LINKER_LANGUAGE C)
+ 
+-set(dlt_example_filetransfer_SRCS dlt-example-filetransfer)
++set(dlt_example_filetransfer_SRCS dlt-example-filetransfer.c)
+ add_executable(	dlt-example-filetransfer ${dlt_example_filetransfer_SRCS})
+ target_link_libraries(dlt-example-filetransfer dlt )
+ set_target_properties(dlt-example-filetransfer PROPERTIES LINKER_LANGUAGE C)
diff --git a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
index 58aaa15..53f7d8b 100644
--- a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
+++ b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
@@ -11,7 +11,7 @@ DESCRIPTION = "This component provides a standardised log and trace interface, b
 HOMEPAGE = "https://www.genivi.org/"
 SECTION = "console/utils"
 
-PR = "r1"
+PR = "r2"
 
 inherit gzipnative
 
@@ -21,7 +21,9 @@ LIC_FILES_CHKSUM = " \
     file://MPL.txt;md5=ccdb2761cef70c8b2612624c323f89dc \
     "
 
-SRC_URI = "git://git.projects.genivi.org/${PN}.git;protocol=git;tag=v${PV}"
+SRC_URI = "git://git.projects.genivi.org/${PN}.git;protocol=git;tag=v${PV} \
+    file://fix-in-build-builds.patch \
+    "
 
 S = "${WORKDIR}/git"
 
-- 
1.8.1.4


