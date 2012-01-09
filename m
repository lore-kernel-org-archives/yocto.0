Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A283AE0121A
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 01:24:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q099OsEH020639
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Jan 2012 01:24:54 -0800 (PST)
Received: from pek-yocto-build2.corp.ad.wrs.com (128.224.163.150) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 9 Jan 2012 01:24:53 -0800
From: Zumeng Chen <zumeng.chen@windriver.com>
To: <yocto@yoctoproject.org>, <dvhart@linux.intel.com>
Date: Mon, 9 Jan 2012 17:24:32 +0800
Message-ID: <52e7afc07c10f8bceec2b22f583729485274b68c.1326099771.git.zumeng.chen@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1326099771.git.zumeng.chen@windriver.com>
References: <cover.1326099771.git.zumeng.chen@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/4] lttng-ust: Integrate into yocto linux
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
X-List-Received-Date: Mon, 09 Jan 2012 09:24:56 -0000
Content-Type: text/plain

This patch intended to integrate the LTTng UST 2.0 package, which
contains the userspace tracer library to trace userspace codes.

Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
---
 meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb |   25 ++++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb

diff --git a/meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb b/meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb
new file mode 100644
index 0000000..846019e
--- /dev/null
+++ b/meta/recipes-kernel/lttng-2.0/lttng-ust_1.9.4.bb
@@ -0,0 +1,25 @@
+SUMMARY = "Linux Trace Toolkit Userspace Tracer 2.0"
+DESCRIPTION = "The LTTng UST 2.0 package contains the userspace tracer library to trace userspace codes."
+HOMEPAGE = "http://lttng.org/lttng2.0"
+BUGTRACKER = "n/a"
+
+LICENSE = "LGPLv2.1+ & BSD"
+LIC_FILES_CHKSUM = "file://COPYING;md5=e647752e045a8c45b6f583771bd561ef \
+                    file://snprintf/snprintf.c;endline=32;md5=d3d544959d8a3782b2e07451be0a903c \
+                    file://snprintf/various.h;endline=31;md5=89f2509b6b4682c4fc95255eec4abe44"
+
+inherit autotools
+
+DEPENDS = "liburcu util-linux"
+
+SRC_URI = "http://lttng.org/files/lttng-ust/lttng-ust-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "0f09bb954c99cb99ab6997cd492953c1"
+SRC_URI[sha256sum] = "e9ec3c55c2251b3f3b512bfa1015b0f67e35d55793850ccea5134f7b24ee3ba1"
+
+S = "${WORKDIR}/lttng-ust-${PV}"
+
+# Due to liburcu not building on MIPS currently this recipe needs to
+# be limited also.
+# So here let us first suppport x86/arm/powerpc platforms now.
+COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
-- 
1.7.5.4


