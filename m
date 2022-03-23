Return-Path: <asharma@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2AD6C433EF
	for <webhook@archiver.kernel.org>; Wed, 23 Mar 2022 19:52:32 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web11.1861.1648065152438582130
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 12:52:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=Z5Iv1jwC;
 spf=pass (domain: mvista.com, ip: 209.85.210.175,
 mailfrom: asharma@mvista.com)
Received: by mail-pf1-f175.google.com with SMTP id s11so2243303pfu.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 12:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7SB7QR2ZtYmaKp7KNEzrNxj9no+TJaQTfBt8xMATLuc=;
        b=Z5Iv1jwCN2V3uuwzSS3c3JY9P+IFIo0dsTwZxPS/pS30B6m2iCRBPxcuT7PGavhr2+
         VgTbRNaoBNTX6UDoBnelFPwQCiFQtSLdVoiTsAZTtH9BYYoB4X5sjXi/N7rwKgOcEof3
         hFvHUVeur/epwbNTgANgSrPJX55wNNBAZy1/0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7SB7QR2ZtYmaKp7KNEzrNxj9no+TJaQTfBt8xMATLuc=;
        b=EFV36qH2gKEUOnMAufiSDxbWUg7GfhBvECOIdO+MaY6rgJmOaN5l4zS7UArgUJExLz
         X9WShoEkZIuh7Ec9I7DRolgv4t0Zyp50fHI9XF6kPblcII1pYkiPTJRZVM0A8NhRiaGj
         RpUl08lsHCHl7FaqrQee0CkVFjtuPvKoU6qQzum9ZX1pQLD81htaHYAlQ2o3xh9s17YQ
         5CaH4ioqwKWXnmQoml5WyszsF6s1QM1bnfIwkO5kT68fcXVsqC2ST1tkuME4ii1cvHhi
         oaAR0xrB3fjYmNjEViWuue/V3lytCrWlEl27vgD/Eu7vp1xfy96rZAy7zgnk65QAEbva
         Da9A==
X-Gm-Message-State: AOAM533ZVkgJVFbdNWwBoAWHCSrLnvzxLA5lFDZEVpG43zRVV+UeRs1W
	kRAB0AJHQYfIqIaC5MJAFRNCdoUDZklpjQ==
X-Google-Smtp-Source: 
 ABdhPJxM5J3t0VjUaSW3aH99pp61gj5RK+NkdDLcooRmS57y1h9jBa2ItHtL1V6oqOHwRGmzyMOpcg==
X-Received: by 2002:a63:de43:0:b0:383:4a1c:d0aa with SMTP id
 y3-20020a63de43000000b003834a1cd0aamr1181758pgi.464.1648065151171;
        Wed, 23 Mar 2022 12:52:31 -0700 (PDT)
Received: from asharma-Latitude-3400 ([223.190.84.201])
        by smtp.gmail.com with ESMTPSA id
 k10-20020a056a00168a00b004f7e2a550ccsm684435pfc.78.2022.03.23.12.52.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Mar 2022 12:52:30 -0700 (PDT)
Received: by asharma-Latitude-3400 (sSMTP sendmail emulation);
 Thu, 24 Mar 2022 01:22:22 +0530
From: Ashish Sharma <asharma@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Ashish Sharma <asharma@mvista.com>
Subject: [meta-selinux][PATCH] meta-selinux: Use SPDX style licensing format
Date: Thu, 24 Mar 2022 01:22:20 +0530
Message-Id: <20220323195220.12610-1-asharma@mvista.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Mar 2022 19:52:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56538

WARNING: checkpolicy-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2+ [obsolete-license] \
WARNING: setools-4.4.0-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 LGPLv2.1 [obsolete-license] \
WARNING: policycoreutils-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2+ [obsolete-license] \
WARNING: refpolicy-standard-2.20210908+gitAUTOINC+23a8d103f3-r0.2 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
WARNING: selinux-python-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2+ [obsolete-license] \
WARNING: ecryptfs-utils-111-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPL-2.0 [obsolete-license] \
WARNING: nikto-2.1.6-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
WARNING: bastille-3.2.1-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
WARNING: suricata-6.0.4-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
WARNING: samhain-server-4.4.6-r0.7 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
...

Signed-off-by: Ashish Sharma <asharma@mvista.com>
---
 meta_selinux_license_changes.patch            | 89 +++++++++++++++++++
 .../refpolicy/refpolicy_common.inc            |  2 +-
 recipes-security/selinux/checkpolicy_3.3.bb   |  2 +-
 .../selinux/policycoreutils_3.3.bb            |  2 +-
 .../selinux/selinux-python_3.3.bb             |  2 +-
 .../selinux/selinux-sandbox_3.3.bb            |  2 +-
 .../selinux/semodule-utils_3.3.bb             |  2 +-
 recipes-security/setools/setools_4.4.0.bb     |  2 +-
 8 files changed, 96 insertions(+), 7 deletions(-)
 create mode 100644 meta_selinux_license_changes.patch

diff --git a/meta_selinux_license_changes.patch b/meta_selinux_license_changes.patch
new file mode 100644
index 0000000..1ff461e
--- /dev/null
+++ b/meta_selinux_license_changes.patch
@@ -0,0 +1,89 @@
+diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
+index dffc34a..96d0da1 100644
+--- a/recipes-security/refpolicy/refpolicy_common.inc
++++ b/recipes-security/refpolicy/refpolicy_common.inc
+@@ -1,5 +1,5 @@
+ SECTION = "admin"
+-LICENSE = "GPLv2"
++LICENSE = "GPL-2.0-only"
+ 
+ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+ 
+diff --git a/recipes-security/selinux/checkpolicy_3.3.bb b/recipes-security/selinux/checkpolicy_3.3.bb
+index 99ac470..ad90cc2 100644
+--- a/recipes-security/selinux/checkpolicy_3.3.bb
++++ b/recipes-security/selinux/checkpolicy_3.3.bb
+@@ -6,7 +6,7 @@ binary policy. checkpolicy uses the static libsepol since it deals \
+ with low level details of the policy that have not been \
+ encapsulated/abstracted by a proper shared library interface."
+ SECTION = "base"
+-LICENSE = "GPLv2+"
++LICENSE = "GPL-2.0-or-later"
+ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+ 
+ require selinux_common.inc
+diff --git a/recipes-security/selinux/policycoreutils_3.3.bb b/recipes-security/selinux/policycoreutils_3.3.bb
+index 04f8ef7..552d354 100644
+--- a/recipes-security/selinux/policycoreutils_3.3.bb
++++ b/recipes-security/selinux/policycoreutils_3.3.bb
+@@ -5,7 +5,7 @@ load_policy to load policies, setfiles to label filesystems, newrole \
+ to switch roles, and run_init to run /etc/init.d scripts in the proper \
+ context."
+ SECTION = "base"
+-LICENSE = "GPLv2+"
++LICENSE = "GPL-2.0-or-later"
+ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+ 
+ require selinux_common.inc
+diff --git a/recipes-security/selinux/selinux-python_3.3.bb b/recipes-security/selinux/selinux-python_3.3.bb
+index d130900..1bf1f63 100644
+--- a/recipes-security/selinux/selinux-python_3.3.bb
++++ b/recipes-security/selinux/selinux-python_3.3.bb
+@@ -3,7 +3,7 @@ DESCRIPTION = "\
+ This package contains Python modules sepolgen, sepolicy; And the \
+ SELinux utilities audit2allow, chcat, semanage ..."
+ SECTION = "base"
+-LICENSE = "GPLv2+"
++LICENSE = "GPL-2.0-or-later"
+ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+ 
+ require selinux_common.inc
+diff --git a/recipes-security/selinux/selinux-sandbox_3.3.bb b/recipes-security/selinux/selinux-sandbox_3.3.bb
+index a20982c..cc9baad 100644
+--- a/recipes-security/selinux/selinux-sandbox_3.3.bb
++++ b/recipes-security/selinux/selinux-sandbox_3.3.bb
+@@ -4,7 +4,7 @@ Run application within a tightly confined SELinux domain. The default \
+ sandbox domain only allows applications the ability to read and write \
+ stdin, stdout and any other file descriptors handed to it."
+ SECTION = "base"
+-LICENSE = "GPLv2+"
++LICENSE = "GPL-2.0-or-later"
+ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+ 
+ require selinux_common.inc
+diff --git a/recipes-security/selinux/semodule-utils_3.3.bb b/recipes-security/selinux/semodule-utils_3.3.bb
+index a8bca0e..06e28f4 100644
+--- a/recipes-security/selinux/semodule-utils_3.3.bb
++++ b/recipes-security/selinux/semodule-utils_3.3.bb
+@@ -3,7 +3,7 @@ DESCRIPTION = "\
+ The utilities to create, expand, link and show the dependencies between \
+ the SELinux policy module packages."
+ SECTION = "base"
+-LICENSE = "GPLv2+"
++LICENSE = "GPL-2.0-or-later"
+ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+ 
+ require selinux_common.inc
+diff --git a/recipes-security/setools/setools_4.4.0.bb b/recipes-security/setools/setools_4.4.0.bb
+index b78af36..f1557b1 100644
+--- a/recipes-security/setools/setools_4.4.0.bb
++++ b/recipes-security/setools/setools_4.4.0.bb
+@@ -6,7 +6,7 @@ libraries designed to facilitate SELinux policy analysis. \
+ This meta-package depends upon the main packages necessary to run \
+ SETools."
+ SECTION = "base"
+-LICENSE = "GPLv2 & LGPLv2.1"
++LICENSE = "GPL-2.0-only & LGPL-2.1-only"
+ 
+ S = "${WORKDIR}/git"
+ SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index dffc34a..96d0da1 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -1,5 +1,5 @@
 SECTION = "admin"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
diff --git a/recipes-security/selinux/checkpolicy_3.3.bb b/recipes-security/selinux/checkpolicy_3.3.bb
index 99ac470..ad90cc2 100644
--- a/recipes-security/selinux/checkpolicy_3.3.bb
+++ b/recipes-security/selinux/checkpolicy_3.3.bb
@@ -6,7 +6,7 @@ binary policy. checkpolicy uses the static libsepol since it deals \
 with low level details of the policy that have not been \
 encapsulated/abstracted by a proper shared library interface."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/policycoreutils_3.3.bb b/recipes-security/selinux/policycoreutils_3.3.bb
index 04f8ef7..552d354 100644
--- a/recipes-security/selinux/policycoreutils_3.3.bb
+++ b/recipes-security/selinux/policycoreutils_3.3.bb
@@ -5,7 +5,7 @@ load_policy to load policies, setfiles to label filesystems, newrole \
 to switch roles, and run_init to run /etc/init.d scripts in the proper \
 context."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/selinux-python_3.3.bb b/recipes-security/selinux/selinux-python_3.3.bb
index d130900..1bf1f63 100644
--- a/recipes-security/selinux/selinux-python_3.3.bb
+++ b/recipes-security/selinux/selinux-python_3.3.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "\
 This package contains Python modules sepolgen, sepolicy; And the \
 SELinux utilities audit2allow, chcat, semanage ..."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/selinux-sandbox_3.3.bb b/recipes-security/selinux/selinux-sandbox_3.3.bb
index a20982c..cc9baad 100644
--- a/recipes-security/selinux/selinux-sandbox_3.3.bb
+++ b/recipes-security/selinux/selinux-sandbox_3.3.bb
@@ -4,7 +4,7 @@ Run application within a tightly confined SELinux domain. The default \
 sandbox domain only allows applications the ability to read and write \
 stdin, stdout and any other file descriptors handed to it."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/semodule-utils_3.3.bb b/recipes-security/selinux/semodule-utils_3.3.bb
index a8bca0e..06e28f4 100644
--- a/recipes-security/selinux/semodule-utils_3.3.bb
+++ b/recipes-security/selinux/semodule-utils_3.3.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "\
 The utilities to create, expand, link and show the dependencies between \
 the SELinux policy module packages."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/setools/setools_4.4.0.bb b/recipes-security/setools/setools_4.4.0.bb
index b78af36..f1557b1 100644
--- a/recipes-security/setools/setools_4.4.0.bb
+++ b/recipes-security/setools/setools_4.4.0.bb
@@ -6,7 +6,7 @@ libraries designed to facilitate SELinux policy analysis. \
 This meta-package depends upon the main packages necessary to run \
 SETools."
 SECTION = "base"
-LICENSE = "GPLv2 & LGPLv2.1"
+LICENSE = "GPL-2.0-only & LGPL-2.1-only"
 
 S = "${WORKDIR}/git"
 SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
-- 
2.33.0


