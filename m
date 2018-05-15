Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B482EE007AD; Fri, 25 May 2018 00:25:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_00,DATE_IN_PAST_96_XX,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [183.91.158.132 listed in list.dnswl.org]
	* 3.4 DATE_IN_PAST_96_XX Date: is 96 hours or more before Received:
	date * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 170C6E006F1
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 00:25:44 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.43,368,1503331200"; d="scan'208";a="40362143"
Received: from localhost (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 25 May 2018 15:25:43 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id 2E5C74B40409
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 15:25:40 +0800 (CST)
Received: from localhost.localdomain (10.167.225.27) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.399.0; Fri, 25 May 2018 15:25:40 +0800
From: Lei Maohui <leimaohui@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Tue, 15 May 2018 15:33:03 -0700
Message-ID: <1526423583-12491-1-git-send-email-leimaohui@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.225.27]
X-yoursite-MailScanner-ID: 2E5C74B40409.AC6AB
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: leimaohui@cn.fujitsu.com
Subject: [meta-cgl][PATCH] ocfs2-tools: uppgrade from 1.8.4 to 1.8.5
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
X-List-Received-Date: Fri, 25 May 2018 07:25:46 -0000
Content-Type: text/plain

Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
---
 .../distro/include/cgl_common_security_flags.inc   |  4 +++
 .../disable-ocfs2-stack-user-support.patch         | 42 ----------------------
 .../ocfs2-tools-1.8.5-format-fortify.patch         | 13 +++++++
 .../{ocfs2-tools_1.8.4.bb => ocfs2-tools_1.8.5.bb} |  8 ++---
 4 files changed, 21 insertions(+), 46 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/disable-ocfs2-stack-user-support.patch
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch
 rename meta-cgl-common/recipes-cgl/ocfs2-tools/{ocfs2-tools_1.8.4.bb => ocfs2-tools_1.8.5.bb} (94%)

diff --git a/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc b/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
index 42c612c..a2f9857 100644
--- a/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
+++ b/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
@@ -1 +1,5 @@
 SECURITY_LDFLAGS_remove_pn-audit = "-fstack-protector-strong"
+
+SECURITY_CFLAGS_pn-ocfs2-tools = "${SECURITY_NOPIE_CFLAGS}"
+SECURITY_LDFLAGS_pn-ocfs2-tools = ""
+
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/disable-ocfs2-stack-user-support.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/disable-ocfs2-stack-user-support.patch
deleted file mode 100644
index 8d92f0c..0000000
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/disable-ocfs2-stack-user-support.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-Only support stack 'o2cb' in init script o2cb.
-
-Source file /etc/init.d/functions rather than /lib/lsb/init-functions which
-doesn't exist in wrlinux.  /etc/init.d/functions provides functions killproc
-and pidofproc, and doesn't provides function start_daemon. It doesn't matter
-that start_daemon is used by stack 'user' only.
-
-Upstream-Status: Pending
-
-Signed-off-by: Kai Kang <kai.kang@windriver.com>
----
-diff --git a/vendor/common/o2cb.init.sh b/vendor/common/o2cb.init.sh
-index 2e73108..926e61e 100755
---- a/vendor/common/o2cb.init.sh
-+++ b/vendor/common/o2cb.init.sh
-@@ -18,11 +18,11 @@
- # Force LC_ALL=C
- export LC_ALL=C
- 
--# Let's try to use the LSB functions
--. /lib/lsb/init-functions
-+# Let's try to use the init scripts functions
-+. /etc/init.d/functions
- if [ $? != 0 ]
- then
--    echo "Unable to load LSB init functions" >&2
-+    echo "Unable to load init scripts functions" >&2
-     exit 1
- fi
- 
-@@ -72,6 +72,11 @@ VERSION=@@VERSION@@
- # Need this default
- [ -z "$O2CB_STACK" ] && O2CB_STACK=o2cb
- 
-+if [ "$O2CB_STACK" != "o2cb" ]; then
-+    echo "Invalid cluster stack name \"$O2CB_STACK\""
-+    exit 1
-+fi
-+
- configfs_path()
- {
-     # Note that this is only valid *after* configfs is loaded
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch
new file mode 100644
index 0000000..f8ab313
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch
@@ -0,0 +1,13 @@
+diff --git a/tunefs.ocfs2/op_query.c b/tunefs.ocfs2/op_query.c
+index 295c185b..40394d15 100644
+--- a/tunefs.ocfs2/op_query.c
++++ b/tunefs.ocfs2/op_query.c
+@@ -339,7 +339,7 @@ static int query_run(struct tunefs_operation *op, ocfs2_filesys *fs,
+ 	register_printf_function('O', handle_ro_compat, handle_arginfo);
+ 
+ 	query_fs = fs;
+-	fprintf(stdout, fmt);
++	fprintf(stdout, fmt, "dummy");
+ 	query_fs = NULL;
+ 
+ 	ocfs2_free(&fmt);
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
similarity index 94%
rename from meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
rename to meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
index 9098fbf..946423e 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
@@ -12,19 +12,19 @@ SECTION = "System Environment/Base"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-SRC_URI = "git://oss.oracle.com/git/ocfs2-tools.git \
+SRC_URI = "git://github.com/markfasheh/ocfs2-tools \
     file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
-    file://disable-ocfs2-stack-user-support.patch \
     file://ocfs2-fix-compile-error-when-glibc-upgrade.patch \
+    file://ocfs2-tools-1.8.5-format-fortify.patch \
     file://o2cb.service \
     file://ocfs2.service \
 "
-SRCREV = "0b8be47d61dbdcd08d21c83f0b3993735b884ef9"
+SRCREV = "f1b4d073f08679f97b64b3eb88e586032f92a701"
 S = "${WORKDIR}/git"
 
 inherit autotools-brokensep pkgconfig systemd
 
-DEPENDS = "corosync cluster-glue openais pacemaker \
+DEPENDS = "corosync pacemaker \
     libxml2 linux-libc-headers libaio \
     e2fsprogs e2fsprogs-native \
 "
-- 
1.9.1




