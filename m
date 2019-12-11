Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.43.1576043521352511812
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2019 21:52:01 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBAC7E01149; Tue, 10 Dec 2019 21:52:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99FEDE010D7
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2019 21:51:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBB5pwNS023584
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2019 21:51:59 -0800
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 10 Dec
 2019 21:51:58 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-security][PATCH] libseccomp: upgrade 2.4.1 -> 2.4.2
Date: Wed, 11 Dec 2019 13:51:56 +0800
Message-ID: <20191211055156.23565-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Backport a patch to fix ptest build failure on arm64.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...SNR_xxx-instead-of-__NR_xxx-for-sysc.patch | 45 +++++++++++++++++++
 ...ibseccomp_2.4.1.bb => libseccomp_2.4.2.bb} |  3 +-
 2 files changed, 47 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/libseccomp/files/0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch
 rename recipes-security/libseccomp/{libseccomp_2.4.1.bb => libseccomp_2.4.2.bb} (90%)

diff --git a/recipes-security/libseccomp/files/0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch b/recipes-security/libseccomp/files/0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch
new file mode 100644
index 0000000..a53433f
--- /dev/null
+++ b/recipes-security/libseccomp/files/0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch
@@ -0,0 +1,45 @@
+From 1ecdddb2a5b61cf527d1f238f88a9d129239f87a Mon Sep 17 00:00:00 2001
+From: Paul Moore <paul@paul-moore.com>
+Date: Tue, 5 Nov 2019 15:11:11 -0500
+Subject: [PATCH] tests: rely on __SNR_xxx instead of __NR_xxx for syscalls
+
+We recently changed how libseccomp handles syscall numbers that are
+not defined natively, but we missed test #15.
+
+Acked-by: Tom Hromatka <tom.hromatka@oracle.com>
+Signed-off-by: Paul Moore <paul@paul-moore.com>
+
+Upstream-Status: Backport
+[https://github.com/seccomp/libseccomp/commit/1ecdddb2a5b61cf527d1f238f88a9d129239f87a]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ tests/15-basic-resolver.c | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/tests/15-basic-resolver.c b/tests/15-basic-resolver.c
+index 6badef1..0c1eefe 100644
+--- a/tests/15-basic-resolver.c
++++ b/tests/15-basic-resolver.c
+@@ -55,15 +55,15 @@ int main(int argc, char *argv[])
+ 	unsigned int arch;
+ 	char *name = NULL;
+ 
+-	if (seccomp_syscall_resolve_name("open") != __NR_open)
++	if (seccomp_syscall_resolve_name("open") != __SNR_open)
+ 		goto fail;
+-	if (seccomp_syscall_resolve_name("read") != __NR_read)
++	if (seccomp_syscall_resolve_name("read") != __SNR_read)
+ 		goto fail;
+ 	if (seccomp_syscall_resolve_name("INVALID") != __NR_SCMP_ERROR)
+ 		goto fail;
+ 
+ 	rc = seccomp_syscall_resolve_name_rewrite(SCMP_ARCH_NATIVE, "openat");
+-	if (rc != __NR_openat)
++	if (rc != __SNR_openat)
+ 		goto fail;
+ 
+ 	while ((arch = arch_list[iter++]) != -1) {
+-- 
+2.17.1
+
diff --git a/recipes-security/libseccomp/libseccomp_2.4.1.bb b/recipes-security/libseccomp/libseccomp_2.4.2.bb
similarity index 90%
rename from recipes-security/libseccomp/libseccomp_2.4.1.bb
rename to recipes-security/libseccomp/libseccomp_2.4.2.bb
index 37a7982..07db82a 100644
--- a/recipes-security/libseccomp/libseccomp_2.4.1.bb
+++ b/recipes-security/libseccomp/libseccomp_2.4.2.bb
@@ -4,9 +4,10 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "fb43972ea1aab24f2a70193fb7445c2674f594e3"
+SRCREV = "1b6cfd1fc0b7499a28c24299a93a80bd18619563"
 
 SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.4 \
+           file://0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch \
            file://run-ptest \
 "
 
-- 
2.17.1

