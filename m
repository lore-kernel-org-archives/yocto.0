Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7063CC47DA9
	for <webhook@archiver.kernel.org>; Tue, 30 Jan 2024 17:10:36 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web10.1655.1706634634821629854
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 09:10:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HGyxkCUa;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1d7354ba334so30106185ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 09:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706634634; x=1707239434; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JV+GLuBiWQqXXth7+5ZopwC6SjceXhVZDGYuFWrB4x8=;
        b=HGyxkCUaYgY/UHydRpzXR31GGzIKLAxUGC1dC01kdwiZVcb6dPGkdQvON7tP/sspSB
         1cfhKfpeUFxbpxNX/D8vGpETofrh8+Oux6n1HHzjnfVIfAjJSopKdSlIt9/VWxx42ojm
         fn/GwH2MXzMmy/Za5DIJPlVozrB3Ko+yT/nS3nroil3ZkCt4amd7F89v+2R9i9lXAygX
         ebpXpGVXjlVxsn4Z9lGFXi+rHspJ9uYSy3SJvmrxe6i1C09jbZDlVZcO/hqCPQv7vLG1
         t8OkziyolrPkisrsneoVWrPD4hDO/VL6Aup1EBfnDkrlFsIcvORfMW6TYC0Eu085tpeO
         eKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706634634; x=1707239434;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JV+GLuBiWQqXXth7+5ZopwC6SjceXhVZDGYuFWrB4x8=;
        b=i4ZshLoobRbXJwOOJxuMPtOrvFwLe8aLBq0mrGqDAPshUp7XIlyFY2iFggWTSUZipX
         TV8gAex7acAzNj08srm1FX3u/rsBzB/NvHQjcnUE8uyl/itE44wChNr8Qas3qWsUFOSp
         lojmo1IiEtwufTsJ/8Szd5u9AV/M8gzrsSVg2vHXghtXSkKBeCinAsUjtNiT8bXpekwQ
         c2dlzuDy5g+K2Vc0W3lkrtWFgYU/07CYSxToJfpNOwjF7MdAJBlbpGoZaCr5phZixCt1
         SKdGdc1RDb0Xc2zRXSlfskRdsnF8gBvrENvTMJiUKqh8/YGlNc3F2/hDBJAMC+JtQlHN
         pLcQ==
X-Gm-Message-State: AOJu0YzTEW4Orzl3Q6gYP1S7/m1u/QMGGaFSLiPWrKZFFUxW+jUqVHbG
	6K5J6HP1tMvDZbgCd2tANA0+tiMtcWvvvtk0v+I41dHDpWAs4a0aP+XwMCGfO9k=
X-Google-Smtp-Source: AGHT+IHpnIYKYZ8W+/5WTCmGD6CoMC/LclMFxKsL7KtvCt0XgOYXgPU01uNtp+Bv58KdiSlwx77aTQ==
X-Received: by 2002:a17:902:744b:b0:1d8:a86b:b4be with SMTP id e11-20020a170902744b00b001d8a86bb4bemr7729506plt.52.1706634633814;
        Tue, 30 Jan 2024 09:10:33 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9d80:4380::3f31])
        by smtp.gmail.com with ESMTPSA id t5-20020a170902dcc500b001d8cd7920b4sm4816760pll.141.2024.01.30.09.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 09:10:33 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH] nativesdk-mingw-w64-runtime: Fix build error/warning -Wincompatible-pointer-types
Date: Tue, 30 Jan 2024 09:10:28 -0800
Message-ID: <20240130171030.2154086-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 17:10:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62337

This pops up with gcc trunk

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...in-the-ucrt-__imp_vfscanf-assignment.patch | 30 +++++++++++++++++++
 .../nativesdk-mingw-w64-runtime_9.0.0.bb      |  2 ++
 2 files changed, 32 insertions(+)
 create mode 100644 recipes-devtools/mingw-w64/files/0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch

diff --git a/recipes-devtools/mingw-w64/files/0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch b/recipes-devtools/mingw-w64/files/0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch
new file mode 100644
index 0000000..bc41482
--- /dev/null
+++ b/recipes-devtools/mingw-w64/files/0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch
@@ -0,0 +1,30 @@
+From b0dcc496228373417e4f6134beb2f13ca3ed807e Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Martin=20Storsj=C3=B6?= <martin@martin.st>
+Date: Thu, 5 Aug 2021 11:08:39 +0300
+Subject: [PATCH] crt: Fix a typo in the ucrt __imp_vfscanf assignment
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+The wrong function was assigned; this was a bug present since
+0dd9563a3ad71ad75cab1699ba5cfef2dd0bf9d8 (April 2021).
+
+Upstream-Status: Backport [https://sourceforge.net/p/mingw-w64/mingw-w64/ci/b0dcc496228373417e4f6134beb2f13ca3ed807e]
+Signed-off-by: Martin Storsjö <martin@martin.st>
+---
+ mingw-w64-crt/stdio/ucrt_vfscanf.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/mingw-w64-crt/stdio/ucrt_vfscanf.c b/mingw-w64-crt/stdio/ucrt_vfscanf.c
+index fe44cdf71..8d1a76a8b 100644
+--- a/mingw-w64-crt/stdio/ucrt_vfscanf.c
++++ b/mingw-w64-crt/stdio/ucrt_vfscanf.c
+@@ -11,4 +11,4 @@
+ int __cdecl vfscanf (FILE *__stream,  const char *__format, __builtin_va_list __local_argv) {
+   return __stdio_common_vfscanf(0, __stream, __format, NULL, __local_argv);
+ }
+-int __cdecl (*__MINGW_IMP_SYMBOL(vfscanf))(FILE *, const char *, __builtin_va_list) = vsscanf;
++int __cdecl (*__MINGW_IMP_SYMBOL(vfscanf))(FILE *, const char *, __builtin_va_list) = vfscanf;
+-- 
+2.43.0
+
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
index e2ca6a5..1aa470e 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
@@ -2,6 +2,8 @@ DESCRIPTION = "Runtime libraries from MinGW-w64 project"
 
 require mingw-w64.inc
 
+SRC_URI += "file://0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch;striplevel=2"
+
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
 B = "${WORKDIR}/build-${TARGET_SYS}"
 
-- 
2.43.0


