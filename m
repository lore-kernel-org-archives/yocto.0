Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBFE0E01235
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313448"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:41 +0100
Message-Id: <74239e6ab658c7d7acb608b664b8eb38d30e1284.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 08/14] documentation: ensure all examples have LIC_FILES_CHKSUM
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Aug 2011 15:31:07 -0000

We really need to have LIC_FILES_CHKSUM in all of our example recipes,
because it is now mandatory.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../examples/hello-autotools/hello_2.3.bb          |    1 +
 .../poky-ref-manual/examples/hello-single/hello.bb |    1 +
 .../examples/libxpm/libxpm_3.5.6.bb                |    1 +
 .../examples/mtd-makefile/mtd-utils_1.0.0.bb       |    2 ++
 documentation/poky-ref-manual/extendpoky.xml       |    4 ++++
 5 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/documentation/poky-ref-manual/examples/hello-autotools/hello_2.3.bb b/documentation/poky-ref-manual/examples/hello-autotools/hello_2.3.bb
index 5c5332f..5dfb0b3 100644
--- a/documentation/poky-ref-manual/examples/hello-autotools/hello_2.3.bb
+++ b/documentation/poky-ref-manual/examples/hello-autotools/hello_2.3.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "GNU Helloworld application"
 SECTION = "examples"
 LICENSE = "GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=adefda309052235aa5d1e99ce7557010"
 
 SRC_URI = "${GNU_MIRROR}/hello/hello-${PV}.tar.bz2"
 
diff --git a/documentation/poky-ref-manual/examples/hello-single/hello.bb b/documentation/poky-ref-manual/examples/hello-single/hello.bb
index d815b1e..0812743 100644
--- a/documentation/poky-ref-manual/examples/hello-single/hello.bb
+++ b/documentation/poky-ref-manual/examples/hello-single/hello.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "Simple helloworld application"
 SECTION = "examples"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
 
 SRC_URI = "file://helloworld.c"
 
diff --git a/documentation/poky-ref-manual/examples/libxpm/libxpm_3.5.6.bb b/documentation/poky-ref-manual/examples/libxpm/libxpm_3.5.6.bb
index 2710189..b58d4d7 100644
--- a/documentation/poky-ref-manual/examples/libxpm/libxpm_3.5.6.bb
+++ b/documentation/poky-ref-manual/examples/libxpm/libxpm_3.5.6.bb
@@ -2,6 +2,7 @@ require xorg-lib-common.inc
 
 DESCRIPTION = "X11 Pixmap library"
 LICENSE = "X-BSD"
+LIC_FILES_CHKSUM = "file://COPYING;md5=3e07763d16963c3af12db271a31abaa5"
 DEPENDS += "libxext"
 PR = "r2"
 PE = "1"
diff --git a/documentation/poky-ref-manual/examples/mtd-makefile/mtd-utils_1.0.0.bb b/documentation/poky-ref-manual/examples/mtd-makefile/mtd-utils_1.0.0.bb
index b21dc65..5d05a43 100644
--- a/documentation/poky-ref-manual/examples/mtd-makefile/mtd-utils_1.0.0.bb
+++ b/documentation/poky-ref-manual/examples/mtd-makefile/mtd-utils_1.0.0.bb
@@ -3,6 +3,8 @@ SECTION = "base"
 DEPENDS = "zlib"
 HOMEPAGE = "http://www.linux-mtd.infradead.org/"
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
+                    file://include/common.h;beginline=1;endline=17;md5=ba05b07912a44ea2bf81ce409380049c"
 
 SRC_URI = "ftp://ftp.infradead.org/pub/mtd-utils/mtd-utils-${PV}.tar.gz"
 
diff --git a/documentation/poky-ref-manual/extendpoky.xml b/documentation/poky-ref-manual/extendpoky.xml
index 9035842..02145e0 100644
--- a/documentation/poky-ref-manual/extendpoky.xml
+++ b/documentation/poky-ref-manual/extendpoky.xml
@@ -52,6 +52,7 @@
 DESCRIPTION = "Simple helloworld application"
 SECTION = "examples"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
 PR = "r0"
 
 SRC_URI = "file://helloworld.c"
@@ -141,6 +142,8 @@ SECTION = "base"
 DEPENDS = "zlib lzo e2fsprogs util-linux"
 HOMEPAGE = "http://www.linux-mtd.infradead.org/"
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
+                    file://include/common.h;beginline=1;endline=17;md5=ba05b07912a44ea2bf81ce409380049c"
 
 SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git;tag=v${PV}"
 
@@ -179,6 +182,7 @@ require xorg-lib-common.inc
 
 DESCRIPTION = "X11 Pixmap library"
 LICENSE = "X-BSD"
+LIC_FILES_CHKSUM = "file://COPYING;md5=3e07763d16963c3af12db271a31abaa5"
 DEPENDS += "libxext libsm libxt"
 PR = "r3"
 PE = "1"
-- 
1.7.4.1


