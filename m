Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81EA2E0136D
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 22:12:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q066CHXt009675
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Jan 2012 22:12:17 -0800 (PST)
Received: from pek-yocto-build2.corp.ad.wrs.com (128.224.163.150) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 5 Jan 2012 22:12:16 -0800
From: Zumeng Chen <zumeng.chen@windriver.com>
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>,
	<bruce.ashfield@windriver.com>, <sgw@linux.intel.com>
Date: Fri, 6 Jan 2012 14:11:54 +0800
Message-ID: <6d11d61757dd2d5f41496f929f46653e25b2870e.1325824274.git.zumeng.chen@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1325824274.git.zumeng.chen@windriver.com>
References: <cover.1325824274.git.zumeng.chen@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 4/4] babeltrace: Integrated from version 0.8
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
X-List-Received-Date: Fri, 06 Jan 2012 06:12:23 -0000
Content-Type: text/plain

It provides trace read and write libraries, as well as a trace converter.

Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
---
 meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb |   30 +++++++++++++++++++++++
 1 files changed, 30 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb

diff --git a/meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb b/meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb
new file mode 100644
index 0000000..86a9d01
--- /dev/null
+++ b/meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb
@@ -0,0 +1,30 @@
+SUMMARY = "Babeltrace - Trace Format Babel Tower"
+DESCRIPTION = "Babeltrace provides trace read and write libraries in host side,\
+	       as well as a trace converter, which used to convert LTTng 2.0 \
+	       traces into human-readable log."
+HOMEPAGE = "http://www.efficios.com/babeltrace/"
+BUGTRACKER = "n/a"
+
+LICENSE = "MIT & GPLV2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=8d1a03b3c17bdd158b3cbb34813b1423"
+
+inherit autotools
+
+DEPENDS = "gtk+ util-linux"
+
+SRCREV = "31e670293588d7882a232bc14b93d5e956fa43f4"
+PV = "0.8+git${SRCPV}"
+PR = "r0"
+
+SRC_URI += "git://git.efficios.com/babeltrace.git;protocol=git"
+
+S = "${WORKDIR}/git"
+
+do_configure_prepend () {
+  ${S}/bootstrap
+}
+
+# Due to liburcu not building on MIPS currently this recipe needs to
+# be limited also.
+# So here let us first suppport x86/arm/powerpc platforms now.
+COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
-- 
1.7.5.4


