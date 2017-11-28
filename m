Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8852BE00C0E; Mon, 27 Nov 2017 17:48:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CAF7E00B1E
	for <yocto@yoctoproject.org>; Mon, 27 Nov 2017 17:48:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vAS1mFGT029200
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 27 Nov 2017 17:48:15 -0800
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 27 Nov 2017 17:48:14 -0800
From: Dengke Du <dengke.du@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 27 Nov 2017 20:48:13 -0500
Message-ID: <1511833693-177790-1-git-send-email-dengke.du@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Cc: andrei@gherzan.com
Subject: [[meta-raspberrypi]][PATCH] bluepy: add it
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
X-List-Received-Date: Tue, 28 Nov 2017 01:48:18 -0000
Content-Type: text/plain

The bluepy can let us programming bluetooth le application in python.

Signed-off-by: Dengke Du <dengke.du@windriver.com>
---
 recipes-devtools/bluepy/bluepy_git.bb              | 48 ++++++++++++++++++++++
 ...compiling-get-the-cross-compiler-from-env.patch | 28 +++++++++++++
 2 files changed, 76 insertions(+)
 create mode 100644 recipes-devtools/bluepy/bluepy_git.bb
 create mode 100644 recipes-devtools/bluepy/files/0001-When-cross-compiling-get-the-cross-compiler-from-env.patch

diff --git a/recipes-devtools/bluepy/bluepy_git.bb b/recipes-devtools/bluepy/bluepy_git.bb
new file mode 100644
index 0000000..3e2e7de
--- /dev/null
+++ b/recipes-devtools/bluepy/bluepy_git.bb
@@ -0,0 +1,48 @@
+SUMMARY = "Python module for interfacing with BLE devices through Bluez"
+HOMEPAGE = "https://github.com/IanHarvey/bluepy"
+# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best guesses - it is
+# your responsibility to verify that the values are complete and correct.
+#
+# The following license files were not able to be identified and are
+# represented as "Unknown" below, you will need to check them yourself:
+#   LICENSE.txt
+#   bluez-5.29/COPYING.LIB
+#
+# NOTE: multiple licenses have been detected; they have been separated with &
+# in the LICENSE value for now since it is a reasonable assumption that all
+# of the licenses apply. If instead there is a choice between the multiple
+# licenses then you should change the value to separate the licenses with |
+# instead of &. If there is any doubt, check the accompanying documentation
+# to determine which situation is applicable.
+LICENSE = "Unknown & GPLv2"
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=59e0d45ea684dda215889aa1b5acd001 \
+                    file://bluez-5.29/COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e \
+                    file://bluez-5.29/COPYING.LIB;md5=fb504b67c50331fc78734fed90fb0e09"
+
+SRC_URI = "git://github.com/IanHarvey/bluepy.git;protocol=https \
+           file://0001-When-cross-compiling-get-the-cross-compiler-from-env.patch \
+"
+
+# Modify these as desired
+PV = "1.1.2+git${SRCPV}"
+SRCREV = "b1178fba2729692532e02d95e7368c742814f725"
+
+S = "${WORKDIR}/git"
+
+inherit setuptools
+
+DEPENDS += " glib-2.0"
+
+# WARNING: the following rdepends are determined through basic analysis of the
+# python sources, and might not be 100% accurate.
+RDEPENDS_${PN} += "python-argparse python-core python-io python-json python-subprocess"
+
+# WARNING: We were unable to map the following python package/module
+# dependencies to the bitbake packages which include them:
+#    bluepy
+#    bluepy.btle
+#    bs4
+#    requests
+
+INHIBIT_PACKAGE_STRIP = "1"
+INSANE_SKIP_${PN} += "ldflags"
diff --git a/recipes-devtools/bluepy/files/0001-When-cross-compiling-get-the-cross-compiler-from-env.patch b/recipes-devtools/bluepy/files/0001-When-cross-compiling-get-the-cross-compiler-from-env.patch
new file mode 100644
index 0000000..8799058
--- /dev/null
+++ b/recipes-devtools/bluepy/files/0001-When-cross-compiling-get-the-cross-compiler-from-env.patch
@@ -0,0 +1,28 @@
+From abf880ff4c276134564e1f1e63a3b6699060da7f Mon Sep 17 00:00:00 2001
+From: Dengke Du <dengke.du@windriver.com>
+Date: Mon, 27 Nov 2017 03:48:16 -0500
+Subject: [PATCH] When cross compiling, get the cross compiler from environment
+
+Signed-off-by: Dengke Du <dengke.du@windriver.com>
+---
+ bluepy/Makefile | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/bluepy/Makefile b/bluepy/Makefile
+index 76bafec..42f145b 100644
+--- a/bluepy/Makefile
++++ b/bluepy/Makefile
+@@ -9,8 +9,8 @@ BLUEZ_SRCS += src/shared/io-glib.c src/shared/timeout-glib.c
+ IMPORT_SRCS = $(addprefix $(BLUEZ_PATH)/, $(BLUEZ_SRCS))
+ LOCAL_SRCS  = bluepy-helper.c
+ 
+-CC = gcc
+-CFLAGS = -Os -g -Wall # -Werror
++CC ?= gcc
++CFLAGS ?= -Os -g -Wall # -Werror
+ 
+ CPPFLAGS = -DHAVE_CONFIG_H
+ ifneq ($(DEBUGGING),)
+-- 
+2.8.1
+
-- 
2.8.1


