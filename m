Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
 by mx.groups.io with SMTP id smtpd.web11.15284.1595702364142849046
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jul 2020 11:39:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=khR+5re2;
 spf=pass (domain: gmail.com, ip: 209.85.210.193, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f193.google.com with SMTP id s26so6965476pfm.4
        for <yocto@lists.yoctoproject.org>; Sat, 25 Jul 2020 11:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=fPuKfDgIchVDxg+leCCPbIcJaICDfRfCFjkxuMcRORY=;
        b=khR+5re2AOIur78wznTPaflhBTdDa2sQvRmMvSopb2X6IzBpoI1kYgM+ZXRBQqToPn
         j0H4h9UuxAesVr25l48goG5rVlZu3tf+Dn1G+MR9Qss5pzhT3AfBlzZHkKnQCOkm9Ffy
         tAbdLgApEkpbD5EF0etX0YrN8IaPFC2Iso9NBH88yNdZADFpuTmDjp0dAJS8J/S1Ide4
         KnAjqFmZeM210SLOfEvf1ZjwIBqT7mle8e1ZuUrHP38FbnxY3kgY5zIT0fPzMMj4WaTL
         SWOGy4l07jjpzyeYOMstYr8WMDaoUdEgaYa4llw56C46XAkQeG+DDjgsnpRKLfCiq4wN
         puEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=fPuKfDgIchVDxg+leCCPbIcJaICDfRfCFjkxuMcRORY=;
        b=BRk6s+53omZDKPZQZ0/U0JbmSIsepxs9SZtE9Opzjc0JNuVgYZYtQCnbBGhP3lyBK5
         +w/t7abWuQKhtET9X+q59y8TsJK5yeS1tzKMYxFwLAKTxWAu+v3aXdruqpjvhIDmIbaE
         l2lT2mAlNVAgxgkngiE1wls5iYGq7hwCUo0eFO3/W/PbcMIaqtN0GBYVzStUcSafQoye
         cma2E+GzX8mWsXVgdKCsyjiXDKO9Rv9+OVYVbaskeUTGP4hS3W5MwpqYNmUrzGhncstx
         MOZvy0qESt2uUnYkV9f2bTczmdbodfNYnpzYxfOqkUKWChpGD92o1uWIbqJdxqmJe/rk
         MLmw==
X-Gm-Message-State: AOAM531/ZmG364Kpa9YjGum+2npTg713BoL+PTx/4J6Whc1rVVcVdRM1
	e0aRLl8vdqyR+Lb82et1BrikYF2XEyc=
X-Google-Smtp-Source: ABdhPJxDIUCOJMwEtBoqKuUlE9aSsQbXzNh1omyeiW9zDldX3jAoZpf+XXYdRa2R78csUlhA3bwp8A==
X-Received: by 2002:a62:3895:: with SMTP id f143mr14162643pfa.27.1595702363280;
        Sat, 25 Jul 2020 11:39:23 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id 186sm10018456pfe.1.2020.07.25.11.39.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jul 2020 11:39:22 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] libseccomp: update to 2.5.0
Date: Sat, 25 Jul 2020 18:39:20 +0000
Message-Id: <20200725183921.12160-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Notable changes:
Add support for the 64-bit RISC-V architecture
Update the syscall tables to Linux v5.8.0-rc5
Python bindings and build now default to Python 3.x

for more info see: https://github.com/seccomp/libseccomp/blob/master/CHANGELOG

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{libseccomp_2.4.3.bb => libseccomp_2.5.0.bb}         | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)
 rename recipes-security/libseccomp/{libseccomp_2.4.3.bb => libseccomp_2.5.0.bb} (93%)

diff --git a/recipes-security/libseccomp/libseccomp_2.4.3.bb b/recipes-security/libseccomp/libseccomp_2.5.0.bb
similarity index 93%
rename from recipes-security/libseccomp/libseccomp_2.4.3.bb
rename to recipes-security/libseccomp/libseccomp_2.5.0.bb
index 37d3573..7a6b483 100644
--- a/recipes-security/libseccomp/libseccomp_2.4.3.bb
+++ b/recipes-security/libseccomp/libseccomp_2.5.0.bb
@@ -4,13 +4,14 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "1dde9d94e0848e12da20602ca38032b91d521427"
+DEPENDS += "gperf-native"
 
-SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.4 \
+SRCREV = "f13f58efc690493fe7aa69f54cb52a118f3769c1"
+
+SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.5 \
            file://run-ptest \
 "
 
-COMPATIBLE_HOST_riscv64 = "null"
 COMPATIBLE_HOST_riscv32 = "null"
 
 S = "${WORKDIR}/git"
@@ -18,7 +19,7 @@ S = "${WORKDIR}/git"
 inherit autotools-brokensep pkgconfig ptest
 
 PACKAGECONFIG ??= ""
-PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
+PACKAGECONFIG[python] = "--enable-python, --disable-python, python3"
 
 DISABLE_STATIC = ""
 
-- 
2.17.1

