Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web12.1474.1577041826625056203
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Dec 2019 11:10:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YQOGXzyN;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id n96so6504988pjc.3
        for <yocto@lists.yoctoproject.org>; Sun, 22 Dec 2019 11:10:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=mWpSOuGP/FWPUgHEwiY3R/4/1qtC0Gw8uxNxfey8qSg=;
        b=YQOGXzyNF5HQ5+BBTt7qWMm2i5S78dC/uHhf7WfcQOThM+hZcIRyvJd3rFBQEEIApB
         7kjM2ka2SwVhJ4IUWSFJmxzAKbsQ4cyl8M5UbhXK6Hrzwa39mPx3TrArmDeE/Qfg8Isg
         7MVmDSqGQr8itQinHUgQA5gFwIOqayX4iWIEbgMYlEGmgm6KP0SqeheJWoBClmQe4lAT
         zpSrtArhzjV+NUKv/kMuDJ9HNpfvI7ZXWATsdg3d2WqozbthSEZdi//9J7qAIyJhlbzN
         JflbBOUTgXsx66MhzNi00MlXrUwB/1IMegIgg1gRA6P6vRfK8h8MfgyzUTpBmJrf5+JZ
         uqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=mWpSOuGP/FWPUgHEwiY3R/4/1qtC0Gw8uxNxfey8qSg=;
        b=IRddecRqPogXGE6M0ZXt2Py463KW+w4fYjd3XFkkVKOyUy6A0p8OV0KhD5ULXoTw9X
         tXuz/b58mK6488GYixGOzCkZU8GBQUjIKRiHhpHOtnWE0ADnfGGeHKoZWj2k6woKiyGr
         sqg2RazW4clRrsHq9hr/RQlnXWTmzSQAvExxOLTYaQjdStaiknPV3vPyKSelo4ICWySQ
         cVXG2YNXTfQBHM4wcTRKw1Wa272NvF1QoMYzmxzNDvES32WHezad6tA9FYRWVxSyjWY2
         IB6EIMZK5Nhn3nHGXfJudHXX3wUALSu+jShxw6Am/Z3ao0dDQUkC62UXaPKCe2EEtSp6
         dl6Q==
X-Gm-Message-State: APjAAAVqAfqSBlL8t0ohLgJ04+kQ6tsEmu4z3RClAE5SQ3ERMZ6MQSiB
	jvd61D2WwtkcI1D6xmwg1nqwQkTr9GY=
X-Google-Smtp-Source: APXvYqw5CjhOcensbaCC6hQY8I5V5ZyRZKNEs4G783o8qTGFLmr8ExKLJQhGrvdSeUq22kLEWzXI/w==
X-Received: by 2002:a17:90a:b002:: with SMTP id x2mr29449355pjq.38.1577041825961;
        Sun, 22 Dec 2019 11:10:25 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id y6sm19338974pgc.10.2019.12.22.11.10.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2019 11:10:25 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] meta-integrity: fix issues with yocto-check-layer
Date: Sun, 22 Dec 2019 19:10:22 +0000
Message-Id: <20191222191023.3913-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222191023.3913-1-akuster808@gmail.com>
References: <20191222191023.3913-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/initrdscripts/initramfs-framework-ima.bb     | 3 +++
 .../recipes-core/packagegroups/packagegroup-ima-evm-utils.bb  | 2 +-
 meta-integrity/recipes-kernel/linux/linux-%.bbappend          | 4 ++--
 .../recipes-security/ima-evm-utils/ima-evm-utils_git.bb       | 4 +++-
 .../ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb    | 3 +++
 .../ima_policy_hashed/ima-policy-hashed_1.0.bb                | 3 +++
 .../ima_policy_simple/ima-policy-simple_1.0.bb                | 3 +++
 7 files changed, 18 insertions(+), 4 deletions(-)

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
index 18acc9d..bc3ebd5 100644
--- a/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
+++ b/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
@@ -4,6 +4,6 @@ LICENSE = "MIT"
 inherit packagegroup
 
 # Only one at the moment, but perhaps more will come in the future.
-RDEPENDS_${PN} = " \
+RDEPENDS_${PN}_ima = " \
     ima-evm-utils \
 "
diff --git a/meta-integrity/recipes-kernel/linux/linux-%.bbappend b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
index f9a48cd..443289b 100644
--- a/meta-integrity/recipes-kernel/linux/linux-%.bbappend
+++ b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
@@ -1,5 +1,5 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "ima", " features/ima/ima.scc", "" ,d)}"
+KERNEL_FEATURES_append_ima = " ${@bb.utils.contains("DISTRO_FEATURES", "ima", " features/ima/ima.scc", "" ,d)}"
 
-KERNEL_FEATURES_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
+KERNEL_FEATURES_append_modsign = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
 
 inherit ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', 'kernel-modsign', '', d)}
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

