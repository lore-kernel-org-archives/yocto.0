Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.28705.1583642345486541718
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Mar 2020 20:39:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WpL169UX;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id p14so3255244pfn.4
        for <yocto@lists.yoctoproject.org>; Sat, 07 Mar 2020 20:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=84Xnr8zNODi60hLAc3soxP5HOIdx4aAh9PdSb+T1aRU=;
        b=WpL169UXgijVS7Yc/Fj/TBzlZjHf6/oTYXE90BKssbfJ1X1V+nvH7n2pC/S/wgqmUI
         nD9pEKkY0Gk70yQTxqnf0/rDwuc9px0JRYg45aVtlnCFNzTR/y2ToHH5PSJSKUgW8YTv
         /OIgpE2h9yRMdLI/u0YwdBi6jI9wOk50BHnuDfdYdJ4VhWCBhdwSCJPosJHjzQ6wFTqH
         kofn3R2pYzYu0MUy4uYMgoFZ0oOBSHIZygx6nJ/XmywcmNLf661yixsCN9onmFpn1pUQ
         iieUrRn8TotWS+8VKC/JK9BSxtQ1HqPGgGB60JNVBp2Adh9LnPkOkO+pUUzMmDE3cbec
         c6bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=84Xnr8zNODi60hLAc3soxP5HOIdx4aAh9PdSb+T1aRU=;
        b=oP02FZ8jJIKdBOPFGU6nMV0/U9mSXki17BtigKXnaBT4GUxFTwWZSSUnG+pXJZJYCo
         jHhyWJgqQ0mMu27uZd0W123aEswVbbv8W8dQKxKLtHAweno+jnxYE8VfyumUycJDFTj7
         3mgdf2qvJlHh9bNngzfRYWe9ULBbPbJ/EnYtQigbnlE39s/p/fUgFgpGJVoaAxA41TY8
         ko1FGxM9jKz21iFnd6nIsXOiyYfnDsPDlWFzRIhDDKM22sQPdETULDoJjOS4FCaHKECQ
         ZcO/utHlCy9eMO2+oPxqfUOycI+irqeFvc2lJnLov7pysoJ8gmf4Imo2KmxTAXyGCL6o
         r4pg==
X-Gm-Message-State: ANhLgQ0tdXwowxUvPY/+E+b4/kQlLTLK5No080xD/Sem6e0JVcB2E1D0
	cTueNa+im1RgmJaCKP2XS+bUCUPk
X-Google-Smtp-Source: ADFU+vvi6YD+COVE1ETq1SrTNQ01jSNf0UeqErqQEQr5S8rPle7/JcQFnhdIOnl5ALV3t+lwcbfW6Q==
X-Received: by 2002:a62:ae17:: with SMTP id q23mr11338132pff.239.1583642344591;
        Sat, 07 Mar 2020 20:39:04 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:6c62:7a1c:e667:70])
        by smtp.gmail.com with ESMTPSA id d24sm42543567pfq.75.2020.03.07.20.39.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2020 20:39:04 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][v2][PATCH] libseccomp: update to 2.4.3
Date: Sat,  7 Mar 2020 20:39:02 -0800
Message-Id: <20200308043902.32513-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

dropped patch now included in update

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...SNR_xxx-instead-of-__NR_xxx-for-sysc.patch | 45 -------------------
 ...ibseccomp_2.4.2.bb => libseccomp_2.4.3.bb} |  3 +-
 2 files changed, 1 insertion(+), 47 deletions(-)
 delete mode 100644 recipes-security/libseccomp/files/0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch
 rename recipes-security/libseccomp/{libseccomp_2.4.2.bb => libseccomp_2.4.3.bb} (90%)

diff --git a/recipes-security/libseccomp/files/0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch b/recipes-security/libseccomp/files/0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch
deleted file mode 100644
index a53433f..0000000
--- a/recipes-security/libseccomp/files/0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch
+++ /dev/null
@@ -1,45 +0,0 @@
-From 1ecdddb2a5b61cf527d1f238f88a9d129239f87a Mon Sep 17 00:00:00 2001
-From: Paul Moore <paul@paul-moore.com>
-Date: Tue, 5 Nov 2019 15:11:11 -0500
-Subject: [PATCH] tests: rely on __SNR_xxx instead of __NR_xxx for syscalls
-
-We recently changed how libseccomp handles syscall numbers that are
-not defined natively, but we missed test #15.
-
-Acked-by: Tom Hromatka <tom.hromatka@oracle.com>
-Signed-off-by: Paul Moore <paul@paul-moore.com>
-
-Upstream-Status: Backport
-[https://github.com/seccomp/libseccomp/commit/1ecdddb2a5b61cf527d1f238f88a9d129239f87a]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- tests/15-basic-resolver.c | 6 +++---
- 1 file changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/tests/15-basic-resolver.c b/tests/15-basic-resolver.c
-index 6badef1..0c1eefe 100644
---- a/tests/15-basic-resolver.c
-+++ b/tests/15-basic-resolver.c
-@@ -55,15 +55,15 @@ int main(int argc, char *argv[])
- 	unsigned int arch;
- 	char *name = NULL;
- 
--	if (seccomp_syscall_resolve_name("open") != __NR_open)
-+	if (seccomp_syscall_resolve_name("open") != __SNR_open)
- 		goto fail;
--	if (seccomp_syscall_resolve_name("read") != __NR_read)
-+	if (seccomp_syscall_resolve_name("read") != __SNR_read)
- 		goto fail;
- 	if (seccomp_syscall_resolve_name("INVALID") != __NR_SCMP_ERROR)
- 		goto fail;
- 
- 	rc = seccomp_syscall_resolve_name_rewrite(SCMP_ARCH_NATIVE, "openat");
--	if (rc != __NR_openat)
-+	if (rc != __SNR_openat)
- 		goto fail;
- 
- 	while ((arch = arch_list[iter++]) != -1) {
--- 
-2.17.1
-
diff --git a/recipes-security/libseccomp/libseccomp_2.4.2.bb b/recipes-security/libseccomp/libseccomp_2.4.3.bb
similarity index 90%
rename from recipes-security/libseccomp/libseccomp_2.4.2.bb
rename to recipes-security/libseccomp/libseccomp_2.4.3.bb
index 07db82a..9ca41e6 100644
--- a/recipes-security/libseccomp/libseccomp_2.4.2.bb
+++ b/recipes-security/libseccomp/libseccomp_2.4.3.bb
@@ -4,10 +4,9 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "1b6cfd1fc0b7499a28c24299a93a80bd18619563"
+SRCREV = "1dde9d94e0848e12da20602ca38032b91d521427"
 
 SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.4 \
-           file://0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch \
            file://run-ptest \
 "
 
-- 
2.17.1

