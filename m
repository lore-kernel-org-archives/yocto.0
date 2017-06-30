Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 406B0E00B53; Thu, 29 Jun 2017 19:37:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 191CDE00B1B
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 19:37:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5U2b1Gg011736
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 19:37:01 -0700
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Thu, 29 Jun 2017 19:37:00 -0700
From: <zhe.he@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 30 Jun 2017 10:29:44 +0800
Message-ID: <1498789784-22418-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-realtime][PATCH] schedtool-dl: Fix SCHED_DEADLINE value out of range
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
X-List-Received-Date: Fri, 30 Jun 2017 02:37:05 -0000
Content-Type: text/plain

From: He Zhe <zhe.he@windriver.com>

The upstream commit 3ffb479929c31cbae09de08f94f58b8f0f061d91
tries to fix this issue but it's not complete.

This patch adds flags at the last necessary place.

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 recipes-tools/schedtool-dl/schedtool-dl.bb         |  6 ++-
 ...-add-flags-to-parameters-of-sched_setattr.patch | 56 ++++++++++++++++++++++
 2 files changed, 61 insertions(+), 1 deletion(-)
 create mode 100644 recipes-tools/schedtool-dl/schedtool-dl/0001-schedtool-dl-add-flags-to-parameters-of-sched_setattr.patch

diff --git a/recipes-tools/schedtool-dl/schedtool-dl.bb b/recipes-tools/schedtool-dl/schedtool-dl.bb
index 578e5df..20c8919 100644
--- a/recipes-tools/schedtool-dl/schedtool-dl.bb
+++ b/recipes-tools/schedtool-dl/schedtool-dl.bb
@@ -3,13 +3,17 @@ SECTION = "devel"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=dc1f51f7ca94aebffb9b3663d82873ec"
 
-SRC_URI = "git://github.com/jlelli/schedtool-dl.git;protocol=git"
+SRC_URI = "git://github.com/jlelli/schedtool-dl.git;protocol=git \
+           file://0001-schedtool-dl-add-flags-to-parameters-of-sched_setattr.patch \
+          "
 SRCREV = "3ffb479929c31cbae09de08f94f58b8f0f061d91"
 
 S = "${WORKDIR}/git"
 
 EXTRA_OEMAKE = "'CC=${CC}'"
 
+TARGET_CC_ARCH += "${LDFLAGS}"
+
 do_compile() {
 	oe_runmake
 }
diff --git a/recipes-tools/schedtool-dl/schedtool-dl/0001-schedtool-dl-add-flags-to-parameters-of-sched_setattr.patch b/recipes-tools/schedtool-dl/schedtool-dl/0001-schedtool-dl-add-flags-to-parameters-of-sched_setattr.patch
new file mode 100644
index 0000000..65d5059
--- /dev/null
+++ b/recipes-tools/schedtool-dl/schedtool-dl/0001-schedtool-dl-add-flags-to-parameters-of-sched_setattr.patch
@@ -0,0 +1,56 @@
+From c75ae0f6ac2bb9eb893cce82e93144e1b3c36389 Mon Sep 17 00:00:00 2001
+From: Qi Hou <qi.hou@windriver.com>
+Date: Wed, 16 Mar 2016 05:44:40 +0000
+Subject: [PATCH] schedtool-dl: add flags to parameters of sched_setattr
+
+git://github.com/jlelli/schedtool-dl.git;protocol=git
+commit 3ffb479929c31cbae09de08f94f58b8f0f061d91
+
+The commit numbered as 3ffb479 has adapted to the very last changes to the ABI,except for the
+syscall of sched_setattr.
+
+While executing schedtool,there was an error,like below:
+
+root@128:/opt/wr-test/testcases/kts/edf# schedtool -E -t 8000:10000 -e yes
+ERROR: could not set PID 1731 to E: SCHED_DEADLINE - value out of range / policy not implemented
+
+The cause of this case is that the syscall of sched_setattr is declared with 3 parameters,but in
+the use of it in schedtool,there was only two parameters.So to adapt this declaration,we should
+add one more parameter,flags,when calling sched_setattr.
+
+In kernel source file kernel/sched/core.c,the declaration of the syscall of sched_setattr like below:
+/**
+ * sys_sched_setattr - same as above, but with extended sched_attr
+ * @pid: the pid in question.
+ * @uattr: structure containing the extended parameters.
+ * @flags: for future extension.
+ */
+ SYSCALL_DEFINE3(sched_setattr, pid_t, pid, struct sched_attr __user *, uattr,
+                                unsigned int, flags)
+ {
+	...
+ }
+
+In schedtool-dl source file syscall_magic.h,the use of sched_setattr like below:
+        syscall(__NR_sched_setattr, pid, attr)
+
+Upstream-Status: Backport
+
+Signed-off-by: Qi Hou <qi.hou@windriver.com>
+---
+ syscall_magic.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/syscall_magic.h b/syscall_magic.h
+index 7dcb967..2735dfb 100644
+--- a/syscall_magic.h
++++ b/syscall_magic.h
+@@ -76,4 +76,4 @@ struct sched_attr {
+ 	syscall(__NR_sched_getattr, pid, attr, size, flags)
+ 
+ #define sched_setattr(pid, attr, flags) \
+-	syscall(__NR_sched_setattr, pid, attr)
++	syscall(__NR_sched_setattr, pid, attr,flags)
+-- 
+1.9.1
+
-- 
2.8.1


