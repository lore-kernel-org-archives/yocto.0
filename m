Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56491EB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 10:42:36 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web10.7702.1687344147738521597
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 03:42:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Eba6tshv;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-51a4088c4ebso5682262a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 03:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687344146; x=1689936146;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zqwSNGZVCbOk4HG1xCcJuJHjYrXAlJVq1tWZI8LfxXA=;
        b=Eba6tshvtcdQfhctTK8+RGktuzXq7PJwIhfFF9ZJ6l/UNDfAqwqWL5Eo4uh/ouoZSd
         PFtnzU1E1mZ2jFjPNSYiXlcZFiKDCPJsVVdIUYLg6qzhCvrjqKasoyBNjFHDmQ1GUm+5
         anO9h+G7kkjjLhF8p6zKJrVd0sIZCNuHidASgrmfvcKesxpPORHBsLeErhLQzJSn0iWi
         JcwdXVuvi1F/eFvn//UOvcfYVROekxZLxlJRcjJL5WMiZ0axl8cWvEsaNKZNn1YZTqCd
         z495sg0Q3CUvoAjA2Iq0RgNm45jXiVM137JESAsaJW9iX10MWvts6I4K6WXqQXyYUJGV
         Y6/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687344146; x=1689936146;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zqwSNGZVCbOk4HG1xCcJuJHjYrXAlJVq1tWZI8LfxXA=;
        b=TylvO0HaJ3wZmhKts/0diEmA0nO3IBtFa2xmSxqo2CF3FHl5Ph5T554Si0dBXx7zSs
         wyATCp0dGPLLyMlHwHy5ez0yiNcAKlyWAvlBxPpZ1uF+6N9V9gydieFbq5MzsW4aBKGj
         kFEHw6ztHcdloFKfK/aybZepxuBoACFyJiLkRWvIgQAC1hexoH9DswCQF247M15IhN6K
         qb3yJdkJBxwZiPJih5kmcKWGjwUwMJHp3Xu221RNDctgnO3lJ7tYLelfVJ2mnKF1LGK5
         +uj6MnQmbeG1SZVTqbB721kqCi/3t3K4WKXrCOAc/eHl+lGqBZza5gX1YhfgKerh2DeV
         fFqQ==
X-Gm-Message-State: AC+VfDzGLhdsymgGc7plKk6PNpvLuaTqnr81W/PBj3edY/uSPWR1rwiu
	G+Lv+vdcmtAyMp7ny13N5fqDPwDuoSQ=
X-Google-Smtp-Source: ACHHUZ74QXDjsQbahg64g0LFzx9bnPY5tCeOTbcKkDSyn+S0WCNgtJhB/dqkqsOuLn54kWWNi5JfUw==
X-Received: by 2002:a17:906:d54b:b0:988:6041:dd13 with SMTP id cr11-20020a170906d54b00b009886041dd13mr10429830ejc.37.1687344145800;
        Wed, 21 Jun 2023 03:42:25 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id u20-20020a17090626d400b009887c9b2812sm2928517ejc.8.2023.06.21.03.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 03:42:25 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-security][PATCH] *.patch: add Upstream-Status to all patches
Date: Wed, 21 Jun 2023 12:42:15 +0200
Message-ID: <20230621104215.2137991-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 10:42:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60370

There is new patch-status QA check in oe-core:
https://git.openembedded.org/openembedded-core/commit/?id=76a685bfcf927593eac67157762a53259089ea8a

This is temporary work around just to hide _many_ warnings from
optional patch-status (if you add it to WARN_QA).

This just added
Upstream-Status: Pending
everywhere without actually investigating what's the proper status.

This is just to hide current QA warnings and to catch new .patch files being
added without Upstream-Status, but the number of Pending patches is now terrible:

0 (0%)  	meta-parsec
N/A (0%)        meta-hardening
1 (100%)        meta-integrity
15 (68%)        meta-tpm
27 (61%)        meta-security

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 ...Do-not-get-generation-using-ioctl-when-evm_portable-.patch | 4 ++++
 .../0001-create-tpm-key-support-well-known-key-option.patch   | 2 ++
 .../files/0002-libtpm-support-env-TPM_SRK_PW.patch            | 2 ++
 ...tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch | 2 ++
 ...tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch | 2 ++
 .../recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch    | 2 ++
 .../openscap/files/0002-openembedded-add-Poky-distro.patch    | 2 ++
 recipes-perl/perl/files/libwhisker2.patch                     | 2 ++
 recipes-scanners/clamav/files/test.patch                      | 2 ++
 .../ecryptfs-utils/files/define_musl_sword_type.patch         | 2 ++
 recipes-security/isic/files/configure_fix.patch               | 2 ++
 recipes-security/isic/files/isic-0.07-make.patch              | 2 ++
 recipes-security/isic/files/isic-0.07-netinet.patch           | 2 ++
 13 files changed, 28 insertions(+)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
index 3624576..f0d8975 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
@@ -13,6 +13,8 @@ ioctl is not supported by the filesystem.
 
 Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
 ---
+Upstream-Status: Pending
+
  src/evmctl.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
@@ -30,6 +32,8 @@ index 6d2bb67..c35a28c 100644
  			int fd = open(file, 0);
  
 ---
+Upstream-Status: Pending
+
 2.39.2
 
 
diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
index bed8b92..e6068af 100644
--- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
+++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed
 Author: Junxian.Xiao <Junxian.Xiao@windriver.com>
 Date:   Wed Jun 19 18:57:13 2013 +0800
diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
index 2caaaf0..74def4f 100644
--- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
+++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed
 Author: Junxian.Xiao <Junxian.Xiao@windriver.com>
 Date:   Wed Jun 19 18:57:13 2013 +0800
diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
index cc8772d..732961d 100644
--- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
+++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
@@ -17,6 +17,8 @@ export TPM_SRK_ENC_PW=xxxxxxxx
 
 Signed-off-by: Meng Li <Meng.Li@windriver.com>
 ---
+Upstream-Status: Pending
+
  e_tpm.c     | 157 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
  e_tpm.h     |   4 ++
  e_tpm_err.c |   4 ++
diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
index 535472a..3cbfc3c 100644
--- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
+++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
@@ -12,6 +12,8 @@ wrong case.
 
 Signed-off-by: Meng Li <Meng.Li@windriver.com>
 ---
+Upstream-Status: Pending
+
  create_tpm_key.c |    3 ++-
  1 file changed, 2 insertions(+), 1 deletion(-)
 
diff --git a/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
index 40150af..d427d67 100644
--- a/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
+++ b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: git/include/tpm_tspi.h
 ===================================================================
 --- git.orig/include/tpm_tspi.h
diff --git a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
index 182d9ec..767b473 100644
--- a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
+++ b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.patch
@@ -5,6 +5,8 @@ Subject: [PATCH 2/2] openembedded: add Poky distro
 
 Signed-off-by: Armin Kuster <akuster@mvista.com>
 ---
+Upstream-Status: Pending
+
  cpe/openscap-cpe-dict.xml             |  4 ++++
  cpe/openscap-cpe-oval.xml             | 14 ++++++++++++++
  src/OVAL/probes/unix/runlevel_probe.c |  8 +++++++-
diff --git a/recipes-perl/perl/files/libwhisker2.patch b/recipes-perl/perl/files/libwhisker2.patch
index c066366..4ea1ee5 100644
--- a/recipes-perl/perl/files/libwhisker2.patch
+++ b/recipes-perl/perl/files/libwhisker2.patch
@@ -7,6 +7,8 @@ Subject: [PATCH] Mandir and perl install dir were overwritten with faulty
 
 Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
 ---
+Upstream-Status: Pending
+
  Makefile.pl |   12 +++++++-----
  1 file changed, 7 insertions(+), 5 deletions(-)
 
diff --git a/recipes-scanners/clamav/files/test.patch b/recipes-scanners/clamav/files/test.patch
index a22b45d..8d94863 100644
--- a/recipes-scanners/clamav/files/test.patch
+++ b/recipes-scanners/clamav/files/test.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: clamav-0.103.0/Makefile.am
 ===================================================================
 --- clamav-0.103.0.orig/Makefile.am
diff --git a/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
index 3b29be0..01b7dd8 100644
--- a/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
+++ b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: ecryptfs-utils-111/src/utils/mount.ecryptfs_private.c
 ===================================================================
 --- ecryptfs-utils-111.orig/src/utils/mount.ecryptfs_private.c
diff --git a/recipes-security/isic/files/configure_fix.patch b/recipes-security/isic/files/configure_fix.patch
index fc2a774..801fe0c 100644
--- a/recipes-security/isic/files/configure_fix.patch
+++ b/recipes-security/isic/files/configure_fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 isic: add with-libnet remove libnet test
 
 Inappropriate - builds fine on non-oe systems. We need to exlude
diff --git a/recipes-security/isic/files/isic-0.07-make.patch b/recipes-security/isic/files/isic-0.07-make.patch
index 9cffa8a..838c873 100644
--- a/recipes-security/isic/files/isic-0.07-make.patch
+++ b/recipes-security/isic/files/isic-0.07-make.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 isic: Fixup makefile to support destination
 
 Backport:
diff --git a/recipes-security/isic/files/isic-0.07-netinet.patch b/recipes-security/isic/files/isic-0.07-netinet.patch
index c4ea74e..4b03880 100644
--- a/recipes-security/isic/files/isic-0.07-netinet.patch
+++ b/recipes-security/isic/files/isic-0.07-netinet.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 isic: add missing header file
 
 Backport:
-- 
2.41.0


