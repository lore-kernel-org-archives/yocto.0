Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web09.4164.1578266318581427905
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 15:18:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dz8OpSKt;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id x8so25997880pgk.8
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jan 2020 15:18:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=z8vr920WRrxT810RZ6E8vE8/CbAljCLT6qmzE2gMz8E=;
        b=dz8OpSKturYe6GX7jXOCmHjXFgR1OvE2CRRL9/ZwwquGRBzqS4kRBHvPZUTQFG/NBx
         jgBUoYVV2zVx9a8DeVA17/mZsktiGdU152hLqhfDCTZNh9Wreb3gTOLBM8sJ9rIaJ+RC
         4SYTYMkd+4R61olp1HKgsZfVJ7Vi5h78uoBDx3Ji3vPgKDU58vs+eQbrXkCdF4rAN9PN
         7zyag2XnNurIAUAzuXR9zYIPKbAAc4Wd/mII7TPAn7xryZ4mdLiQ+Gb5bLaswVZs+Lc6
         HLoJtBDjYB76wNAmszacoPaIBrxyKosJpi8Dt6ByMkSnGLcyiE62/OrZWDT/IK5+PFS/
         xNCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=z8vr920WRrxT810RZ6E8vE8/CbAljCLT6qmzE2gMz8E=;
        b=XfO6BDpoq99a1YzvRW/qoNkVRbhFBSO5B9AY/8VeiBH3qHKGn4eWwUyz+KxAd5gOGY
         BcTh5KjT3voqoDWSMWhfT7Xvp2vQVRph6BGJJz8GVh7UwblSX9Tbhcf8j6CuFAYGwN6i
         JbjMRCySIJbQ8JKqBDRgHS9sUYcpddNTxrTnmYunD2DHPOjbgcN4FWBCuetYbJpMhITn
         GXP85Iq03x3F8ZhRna7N9P6rbgUhUjnBOeASk0hNX9LlEt7IXJsdQLaTIjJAutQpcXWn
         EQv/UoguIS+bL6/aJ8OJr6XFZ9ZqfMufD153s7lBXGtXuXMxNk9tmXkoBwaZuSLevO/1
         H8oA==
X-Gm-Message-State: APjAAAV1jSqDiS4tQxapGw6mWgY7x7AHZHj6IufCuY7ZN8QO/HOIQ1l0
	rG2DKEuF38DG2VHmAATeEz07nGFp
X-Google-Smtp-Source: APXvYqwo2Xin/Sj111o6Xunlepsdf9I8xVC5ne0/tsl+SQiVX/GHeIhkYAxLsxlq/8FPcOQ+C3p+0Q==
X-Received: by 2002:a63:ff52:: with SMTP id s18mr109475885pgk.253.1578266317939;
        Sun, 05 Jan 2020 15:18:37 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:24ce:b2a3:bac9:47a9])
        by smtp.gmail.com with ESMTPSA id v4sm50705947pff.174.2020.01.05.15.18.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 15:18:37 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Yi Zhao <yi.zhao@windriver.com>
Subject: [meta-security][zeus][PATCH 7/9] libseccomp: upgrade 2.4.1 -> 2.4.2
Date: Sun,  5 Jan 2020 15:18:28 -0800
Message-Id: <20200105231830.5281-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200105231830.5281-1-akuster808@gmail.com>
References: <20200105231830.5281-1-akuster808@gmail.com>

From: Yi Zhao <yi.zhao@windriver.com>

Backport a patch to fix ptest build failure on arm64.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
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

