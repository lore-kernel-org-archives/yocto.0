Return-Path: <asharma@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1A3C433F5
	for <webhook@archiver.kernel.org>; Wed, 23 Mar 2022 20:30:31 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.2341.1648067430983295569
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 13:30:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=DZrJfOke;
 spf=pass (domain: mvista.com, ip: 209.85.216.46,
 mailfrom: asharma@mvista.com)
Received: by mail-pj1-f46.google.com with SMTP id
 bx24-20020a17090af49800b001c6872a9e4eso2994370pjb.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 13:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=r9JaSB4Lo23UE99OzGHiAXqvMA0/8iIMXjylNlqjjZ4=;
        b=DZrJfOkeLxjnzrZAhqz4SMXtRDw7EyqEAaidturccC994ofD41dwz8x7jlw2WH5/vu
         0ZOiDv56oJcS/Ljy/hRi/afCiawiYwgFFCTbvDI/zxN8KUY9TQF8hmD++azm6we6lp4j
         lZvxOMWR86wlEE8pWcpnL9NN5l8nKxkEN6Yds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=r9JaSB4Lo23UE99OzGHiAXqvMA0/8iIMXjylNlqjjZ4=;
        b=sLQ4itt4MXxBiUH3pDFa38sBWrInh3oSdWsspJHs4uA1JjPzZD2drpjj14sYJhRJGc
         89m6BE8xHsUYr8Dr/nY7KWDbZxfh6qkKCQ4dv0s8QFgMcwzZJMThO3+cgqDfU4WjQ1Gu
         Js1NmftJw6N4cBLoHfxZRdxcqwE7WpZ/+BqS8J8MNmLuUugdKpAww6PDmfcJmjmwqGPM
         VcbGEeiTdC6WwJAGHCw8X4py5UEJFgcCJBZ5/ypKWzIkDvlzeYZVxVYKk9VlpWqZ1pGr
         S7whoRus3bmEnSiOS5CFxH3ZNgq7iBVGmS0qny4A464U4K24I1AAu4alBAXluG4eKO35
         s2IQ==
X-Gm-Message-State: AOAM530R9/JIOLAkZPc926REe9XIWCOi7GnSOZ4KUzsExSy6yVa7wUPK
	QyMql7wJLPkbnrKxPu+TUyRyMDIKCbqmfg==
X-Google-Smtp-Source: 
 ABdhPJwxFAFNcrvnw0p8skYmsNKMBF14SdldwfyBgWF0YcHyKlsVRXwpZtWWdbBitlHZSTZ5I1SBxA==
X-Received: by 2002:a17:902:8bcc:b0:14f:2294:232e with SMTP id
 r12-20020a1709028bcc00b0014f2294232emr1803141plo.105.1648067430074;
        Wed, 23 Mar 2022 13:30:30 -0700 (PDT)
Received: from asharma-Latitude-3400 ([223.190.84.201])
        by smtp.gmail.com with ESMTPSA id
 om17-20020a17090b3a9100b001bf0fffee9bsm7244039pjb.52.2022.03.23.13.30.27
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Mar 2022 13:30:29 -0700 (PDT)
Received: by asharma-Latitude-3400 (sSMTP sendmail emulation);
 Thu, 24 Mar 2022 02:00:21 +0530
From: Ashish Sharma <asharma@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Ashish Sharma <asharma@mvista.com>
Subject: [meta-selinux][PATCH v2] Use SPDX style licensing format
Date: Thu, 24 Mar 2022 02:00:13 +0530
Message-Id: <20220323203013.13914-1-asharma@mvista.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Mar 2022 20:30:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56539

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
 recipes-security/refpolicy/refpolicy_common.inc | 2 +-
 recipes-security/selinux/checkpolicy_3.3.bb     | 2 +-
 recipes-security/selinux/policycoreutils_3.3.bb | 2 +-
 recipes-security/selinux/selinux-python_3.3.bb  | 2 +-
 recipes-security/selinux/selinux-sandbox_3.3.bb | 2 +-
 recipes-security/selinux/semodule-utils_3.3.bb  | 2 +-
 recipes-security/setools/setools_4.4.0.bb       | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

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


