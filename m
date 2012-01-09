Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93928E0137D
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 01:25:04 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q099OwPi010763
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Jan 2012 01:24:58 -0800 (PST)
Received: from pek-yocto-build2.corp.ad.wrs.com (128.224.163.150) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 9 Jan 2012 01:24:58 -0800
From: Zumeng Chen <zumeng.chen@windriver.com>
To: <yocto@yoctoproject.org>, <dvhart@linux.intel.com>
Date: Mon, 9 Jan 2012 17:24:34 +0800
Message-ID: <b2bf28b8df6dcfbd985d8927d5baed0d5a66ae8f.1326099771.git.zumeng.chen@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1326099771.git.zumeng.chen@windriver.com>
References: <cover.1326099771.git.zumeng.chen@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 3/4] lttng-modules: from lttng-modules 2.0 git repo.
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
X-List-Received-Date: Mon, 09 Jan 2012 09:25:04 -0000
Content-Type: text/plain

This patch intended to integrate the lttng-modules 2.0 package
containing the kernel tracer modules.
LTTng-modules 2.0 is currently in pre-release (-pre11), so we
have to update it when official released.

Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
---
 ...modules-replace-KERNELDIR-with-KERNEL_SRC.patch |   41 ++++++++++++++++++++
 .../lttng-2.0/lttng-modules_v2.0.pre11.bb          |   23 +++++++++++
 2 files changed, 64 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
 create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb

diff --git a/meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch b/meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
new file mode 100644
index 0000000..aa24171
--- /dev/null
+++ b/meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
@@ -0,0 +1,41 @@
+Upstream-Status: Inappropriate [embedded specific]
+
+lttng-modules: replace KERNELDIR with KERNEL_SRC
+
+Since lttng-modules uses the default way of module.bbclass to
+build and install lttng-modules, we do this replacement for
+it as-is.
+
+Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
+---
+ Makefile |    7 +++----
+ 1 files changed, 3 insertions(+), 4 deletions(-)
+
+diff --git a/Makefile b/Makefile
+index 5ac13d7..25caad5 100644
+--- a/Makefile
++++ b/Makefile
+@@ -38,17 +38,16 @@ obj-m += lib/
+ endif
+
+ else
+-	KERNELDIR ?= /lib/modules/$(shell uname -r)/build
+ 	PWD := $(shell pwd)
+ 	CFLAGS = $(EXTCFLAGS)
+
+ default:
+-	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
++	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules
+
+ modules_install:
+-	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install
++	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules_install
+
+ clean:
+-	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
++	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) clean
+
+ endif
+-- 
+1.7.5.4
+
diff --git a/meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb b/meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb
new file mode 100644
index 0000000..02d8324
--- /dev/null
+++ b/meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb
@@ -0,0 +1,23 @@
+SECTION = "devel"
+SUMMARY = "Linux Trace Toolkit KERNEL MODULE"
+DESCRIPTION = "The lttng-modules 2.0 package contains the kernel tracer modules"
+LICENSE = "LGPLv2.1 & GPLv2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=1eb086682a7c65a45acd9bcdf6877b3e \
+                    file://gpl-2.0.txt;md5=751419260aa954499f7abaabaa882bbe \
+                    file://lgpl-2.1.txt;md5=243b725d71bb5df4a1e5920b344b86ad"
+
+DEPENDS = virtual/kernel
+
+inherit module
+
+SRCREV = "4d3e89e379fc66480d729abe8daa5c86eb585400"
+PV = "v2.0.pre11+git${SRCPV}"
+PR = "r0"
+
+SRC_URI = "git://git.lttng.org/lttng-modules.git;protocol=git \
+           file://lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch"
+
+export INSTALL_MOD_DIR="kernel/lttng-modules"
+
+S = "${WORKDIR}/git"
+COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
-- 
1.7.5.4


