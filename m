Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2593CE0030D
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 22:12:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q066CDN8009663
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Jan 2012 22:12:13 -0800 (PST)
Received: from pek-yocto-build2.corp.ad.wrs.com (128.224.163.150) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 5 Jan 2012 22:12:12 -0800
From: Zumeng Chen <zumeng.chen@windriver.com>
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>,
	<bruce.ashfield@windriver.com>, <sgw@linux.intel.com>
Date: Fri, 6 Jan 2012 14:11:52 +0800
Message-ID: <bc71f5e117ed7093e89b289b00126ad797428eb3.1325824274.git.zumeng.chen@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1325824274.git.zumeng.chen@windriver.com>
References: <cover.1325824274.git.zumeng.chen@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/4] lttng-tools: Integrated from git repo.
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
X-List-Received-Date: Fri, 06 Jan 2012 06:12:19 -0000
Content-Type: text/plain

lttng-tools 2.0 is currently in pre-release phase (-pre16).

Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
---
 ...-compiling-error-for-powerpc-arm-and-mips.patch |   23 +++++++++++++++++++
 .../lttng-2.0/lttng-tools_2.0-pre16.bb             |   24 ++++++++++++++++++++
 2 files changed, 47 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-tools-fix-compiling-error-for-powerpc-arm-and-mips.patch
 create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-tools_2.0-pre16.bb

diff --git a/meta/recipes-kernel/lttng-2.0/lttng-tools-fix-compiling-error-for-powerpc-arm-and-mips.patch b/meta/recipes-kernel/lttng-2.0/lttng-tools-fix-compiling-error-for-powerpc-arm-and-mips.patch
new file mode 100644
index 0000000..c971e78
--- /dev/null
+++ b/meta/recipes-kernel/lttng-2.0/lttng-tools-fix-compiling-error-for-powerpc-arm-and-mips.patch
@@ -0,0 +1,23 @@
+Upstream-Status: Pending
+
+lttng-tools: fix compiling error for powerpc, arm
+
+Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
+---
+ librunas/runas.c |    1 +
+ 1 files changed, 1 insertions(+), 0 deletions(-)
+
+diff --git a/librunas/runas.c b/librunas/runas.c
+--- a/librunas/runas.c
++++ b/librunas/runas.c
+@@ -29,6 +29,7 @@
+ #include <fcntl.h>
+ #include <sched.h>
+ #include <sys/mman.h>
++#include <asm/mman.h>
+ 
+ #include <lttngerr.h>
+ 
+-- 
+1.7.5.4
+
diff --git a/meta/recipes-kernel/lttng-2.0/lttng-tools_2.0-pre16.bb b/meta/recipes-kernel/lttng-2.0/lttng-tools_2.0-pre16.bb
new file mode 100644
index 0000000..0b7a240
--- /dev/null
+++ b/meta/recipes-kernel/lttng-2.0/lttng-tools_2.0-pre16.bb
@@ -0,0 +1,24 @@
+SECTION = "devel"
+SUMMARY = "Linux Trace Toolkit Control"
+DESCRIPTION = "The Linux trace toolkit is a suite of tools designed to \
+extract program execution details from the Linux operating system and  \
+interpret them."
+LICENSE = "GPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=ab682a4729389c3f11913d758affe98e"
+
+DEPENDS = "liburcu popt lttng-ust"
+
+SRC_URI = "http://lttng.org/files/lttng-tools/lttng-tools-${PV}.tar.bz2 \
+	   file://fix-compiling-error-for-powerpc-arm-and-mips.patch"
+
+SRC_URI[md5sum] = "58ed0a15db80a00172d5b0413a55451c" 
+SRC_URI[sha256sum] = "188d262bda80043dd939c9aa7aec1795ca77aeec0cb3c0f23c28bfe754049491"
+
+S = "${WORKDIR}/lttng-tools-${PV}"
+
+
+inherit autotools
+
+export KERNELDIR="${STAGING_KERNEL_DIR}"
+
+COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
-- 
1.7.5.4


