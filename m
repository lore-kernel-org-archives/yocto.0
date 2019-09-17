Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4124AE00D99; Tue, 17 Sep 2019 01:05:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A950DE00D33
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 01:05:19 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x8H84wIT003396
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 01:05:08 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Tue, 17 Sep 2019 01:04:47 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 17 Sep 2019 16:04:45 +0800
Message-ID: <1568707486-382596-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 1/2] core-image-cgl/core-image-cgl-initramfs: remove them
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
X-List-Received-Date: Tue, 17 Sep 2019 08:05:23 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

remove core-image-cgl.bb and core-image-cgl-initramfs.bb

* They require core-image-lsb.bb which has been removed by oe-core

* Even before LSB support is dropped by oe-core, core-image-cgl
  and core-image-cgl-initramfs cannot build success, failed during
  do_rootfs with below error, so I suppose that no one use these
  2 recipes, so remove it

Error:
 Problem: package logcheck-1.3.20-r0.core2_64 requires rsyslog, but none of the providers can be installed
  - package rsyslog-8.1907.0-r0.core2_64 conflicts with sysklogd provided by sysklogd-1.5.1-r0.core2_64
  - package sysklogd-1.5.1-r0.core2_64 conflicts with rsyslog provided by rsyslog-8.1907.0-r0.core2_64
  - package packagegroup-cgl-applications-1.0-r0.noarch requires logcheck, but none of the providers can be installed
  - package packagegroup-core-full-cmdline-initscripts-1.0-r6.noarch requires sysklogd, but none of the providers can be installed
  - package packagegroup-cgl-1.0-r0.noarch requires packagegroup-cgl-applications, but none of the providers can be installed
  - package packagegroup-core-full-cmdline-1.0-r6.noarch requires packagegroup-core-full-cmdline-initscripts, but none of the providers can be installed

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 meta-cgl-common/images/core-image-cgl-initramfs.bb | 19 ---------------
 meta-cgl-common/images/core-image-cgl.bb           | 28 ----------------------
 2 files changed, 47 deletions(-)
 delete mode 100644 meta-cgl-common/images/core-image-cgl-initramfs.bb
 delete mode 100644 meta-cgl-common/images/core-image-cgl.bb

diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-common/images/core-image-cgl-initramfs.bb
deleted file mode 100644
index 67cb4c1..0000000
--- a/meta-cgl-common/images/core-image-cgl-initramfs.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-require core-image-cgl.bb
-
-# Recipe is based on core-image-minimal.bb
-DESCRIPTION = "Initramfs used to mount multipath device as root file system"
-
-PACKAGE_INSTALL = "initramfs-cgl-boot busybox base-passwd udev"
-
-# Do not pollute the initrd image with rootfs features
-IMAGE_FEATURES = ""
-
-export IMAGE_BASENAME = "core-image-cgl-initramfs"
-IMAGE_LINGUAS = ""
-
-LICENSE = "MIT"
-IMAGE_FSTYPES ??= "cpio.gz.u-boot"
-
-IMAGE_ROOTFS_SIZE = "8192"
-
-BAD_RECOMMENDATIONS += "busybox-syslog"
diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cgl-common/images/core-image-cgl.bb
deleted file mode 100644
index 86bf7d4..0000000
--- a/meta-cgl-common/images/core-image-cgl.bb
+++ /dev/null
@@ -1,28 +0,0 @@
-require recipes-extended/images/core-image-lsb.bb
-
-
-VALGRIND ?= ""
-VALGRIND_powerpc ?= "valgrind"
-VALGRIND_e500v2 ?= ""
-VALGRIND_x86 ?= "valgrind"
-VALGRIND_x86_64 ?= "valgrind"
-VALGRIND_armv7a ?= "valgrind"
-
-# Include modules in rootfs
-IMAGE_INSTALL += "\
-    packagegroup-core-buildessential \
-    packagegroup-core-selinux \
-    packagegroup-cgl \
-    kexec-tools \
-    lttng-tools \
-    lttng-modules \
-    ${VALGRIND} \
-    "
-
-IMAGE_FSTYPES += " ext3.gz"
-
-# kexec-tools doesn't work on Mips
-KEXECTOOLS_mips ?= ""
-KEXECTOOLS_mipsel ?= ""
-
-IMAGE_FEATURES += "tools-debug tools-profile"
-- 
2.7.4


