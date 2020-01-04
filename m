Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.4499.1578118558459295711
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jan 2020 22:15:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CppRuFKP;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id l35so5549139pje.3
        for <yocto@lists.yoctoproject.org>; Fri, 03 Jan 2020 22:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=AeVdwwx1JVVlTzuPN0IMNUDmj+lZo44Ha75msnCxzmU=;
        b=CppRuFKP0Ew6D+jJZFxwYAV7pSfj4Q821xP5mfJy9a90C/pgktf/CfdI4xyUz1VTOU
         OMHBfSJ8fKVk6j4PNTxB9YrPW5mZ/XD2XZ8T9+4biaVt3N3WFn2+oQV1NM/S5A7EOY/J
         1RuUzeV/OefRWadfwcklSxFc6+RSxqf2ZQ7r15dO/up7oiW5ODve2JkOxZgRQdF5ck3a
         ez8VKda0T3mKiN6M0lP0QY8esCQiQ1C99VZ/+ho6P7NluTT8UdDXHyUWZYbZSkDrQxvX
         3KVrWPFDklR+Qw7L62SH5xOWBK9PmK10gEhk1JwEyrPwQpueBGiS12OKDqSi3c91Ic/n
         Cbdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=AeVdwwx1JVVlTzuPN0IMNUDmj+lZo44Ha75msnCxzmU=;
        b=UyMRNl/IteyKTzkUBLxhp0cQyV/Ksk/7TUdOoOQ5OcUe6DcT/4fN91PTIcbeoaEdZW
         Hv9jj/AAudzy3V7xYcwVYVcXX3PkcueiBOdKnixp9oSkFCSDFmDPEvnHTzNKyFod8oCw
         OXGkbBq0GpL/uINmNpN36mkl6bZIFZ/mZ2as6YQwJDqeLe2oekEPRffLwf4hORAYgSLZ
         vLZKmDMWOAg8rG+MTaAHP5y8opiLPK7hZVjkavKKnI4V7AaeRICr5ljsevKZCRXXeU4b
         gA0hMqjfeauG8Sh7QCWuLijiNMg4rzHYQPwWg5QM0/SBRVlJecNAa5zRPl+L79pSTVW2
         j/cg==
X-Gm-Message-State: APjAAAWCv+0jVkNC2RIp9hnixtQWGk/xBQF4363wNvwQGXTr4yP+9nGr
	gzh9rnL0Fl9iikGay4SH6zaD/zy4m2M=
X-Google-Smtp-Source: APXvYqywoouG7JIpIS0cZTXO1ekzJ1akpH5KY83iSAB03bZVPG4znmR9CQ5ElKTQlnvL3OYEgkZrJA==
X-Received: by 2002:a17:902:6b03:: with SMTP id o3mr72793469plk.331.1578118557466;
        Fri, 03 Jan 2020 22:15:57 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:e812:6764:3882:fa62])
        by smtp.gmail.com with ESMTPSA id j5sm54091865pfn.180.2020.01.03.22.15.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2020 22:15:56 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][v2][PATCH] meta-integrity: fix issues with yocto-check-layer
Date: Fri,  3 Jan 2020 22:15:52 -0800
Message-Id: <20200104061552.29040-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

[v2]
re-did solutions

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/initrdscripts/initramfs-framework-ima.bb     | 3 +++
 .../recipes-core/packagegroups/packagegroup-ima-evm-utils.bb  | 4 +++-
 .../recipes-security/ima-evm-utils/ima-evm-utils_git.bb       | 4 +++-
 .../ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb    | 3 +++
 .../ima_policy_hashed/ima-policy-hashed_1.0.bb                | 3 +++
 .../ima_policy_simple/ima-policy-simple_1.0.bb                | 3 +++
 6 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
index 95c853a..dacdc8b 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
@@ -16,6 +16,9 @@ IMA_POLICY ?= "ima-policy-hashed"
 
 SRC_URI = " file://ima"
 
+inherit features_check
+REQUIRED_DISTRO_FEATURES = "ima"
+
 do_install () {
     install -d ${D}/${sysconfdir}/ima
     install -d ${D}/init.d
diff --git a/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb b/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
index 18acc9d..8196edb 100644
--- a/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
+++ b/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
@@ -1,7 +1,9 @@
 SUMMARY = "IMA/EVM userspace tools"
 LICENSE = "MIT"
 
-inherit packagegroup
+inherit packagegroup features_check
+
+REQUIRED_DISTRO_FEATURES = "ima"
 
 # Only one at the moment, but perhaps more will come in the future.
 RDEPENDS_${PN} = " \
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
index 92c24c9..7f649c2 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
@@ -23,7 +23,9 @@ SRC_URI += "file://command-line-apply-operation-to-all-paths.patch"
 
 S = "${WORKDIR}/git"
 
-inherit pkgconfig autotools
+inherit pkgconfig autotools features_check
+
+REQUIRED_DISTRO_FEATURES = "ima"
 
 EXTRA_OECONF_append_class-target = " --with-kernel-headers=${STAGING_KERNEL_BUILDDIR}"
 
diff --git a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb b/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
index b58d3fe..da62a4c 100644
--- a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
@@ -9,6 +9,9 @@ IMA_POLICY ?= "ima_policy_appraise_all"
 
 SRC_URI = " file://${IMA_POLICY}"
 
+inherit features_check
+REQUIRED_DISTRO_FEATURES = "ima"
+
 do_install () {
     install -d ${D}/${sysconfdir}/ima
     install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
diff --git a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
index 3352daa..ebb0426 100644
--- a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
@@ -11,6 +11,9 @@ SRC_URI = " \
     file://${IMA_POLICY} \
 "
 
+inherit features_check
+REQUIRED_DISTRO_FEATURES = "ima"
+
 do_install () {
     install -d ${D}/${sysconfdir}/ima
     install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
diff --git a/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb b/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
index 17132aa..cb4b6b8 100644
--- a/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
@@ -9,6 +9,9 @@ IMA_POLICY ?= "ima_policy_simple"
 
 SRC_URI = " file://${IMA_POLICY}"
 
+inherit features_check
+REQUIRED_DISTRO_FEATURES = "ima"
+
 do_install () {
     install -d ${D}/${sysconfdir}/ima
     install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
-- 
2.17.1

