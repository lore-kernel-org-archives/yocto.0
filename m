Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2185C00140
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 18:06:42 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com
 [209.85.219.201])
 by mx.groups.io with SMTP id smtpd.web09.1881.1659982001525865441
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 11:06:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=bfHdRDMt;
 spf=pass (domain: flex--jebr.bounces.google.com, ip: 209.85.219.201,
 mailfrom:
 3sfdxygqkbtuavsixffxcv.tfdpftkfczjkj.pftkfgifavtk.fix@flex--jebr.bounces.google.com)
Received: by mail-yb1-f201.google.com with SMTP id
 bu13-20020a056902090d00b00671743601f1so7956286ybb.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 11:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=QDecUy0RUAfqwTx59Sh78m0pXmpyedkl40i6S0RHzKA=;
        b=bfHdRDMt88+OT542s++yr497b4JVr/zdVWYNxbNK/O5M2LxOn3ZjAw+sG7fF75cGfP
         alC1qF9DxNqY6YVszxdzvhbtfqpsYQ7I84t6mYlyp11v0L2wH+eIKpo1/ysb3nQB4nYC
         A1pVs5vPMBN96IpENvfSKJcJbD4zwatU5xKGL33NhsOu85XcRZqRdWJP3IMCy2exL+AD
         gkvcnziohF+RoChUWVqaOZ+BLeGd79E2lFPpeKifE3lJaCAlhUxMXtwMiQwplJPP7hG7
         80ImdthOzd9wTfJWXiYt668wW9+lTKL+eADTKT0SjadZuvbB2NBv1fS0asLnVH90vDdK
         o3iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=QDecUy0RUAfqwTx59Sh78m0pXmpyedkl40i6S0RHzKA=;
        b=iIs5/wy6dy6L2laL0s975cPPHGmxMZlHbob0oZGrb8dn816aU3EYc5bkVYP53hygrR
         nO80BQHZgtYwQ7VyUCTgX7coBRnleFcKRsIJLjifNaPloUYk+yQztYEVPPQxB7yunQD1
         CMjrreXXIGToE5CnEKy9rT5FtPWQNvBkV0nSOik43Kel6dOx7bG4vWHpIvYiYrsJfbd9
         188F8lujlPhdmjseHxbNBf/akv6whY8B6xJre1A+VvifaVyles9zEFvc1H61IjnZDz7f
         pDqoSgtkXBAFD7P6rGg1WYYLAuX7nxrXV1dZ6UQ5sRkMlkkfTbJGMcbuWsMvROXBw/g2
         u2+Q==
X-Gm-Message-State: ACgBeo0B2Ne11QCWKZWI0c/MqKqlQXqV68CtkSET4zhLsPie+ytobkTh
	FJricXic0oknfsD5lc7qQWiSCqx0O55obKle8A4FCskCvD4KPj5ErTCTgeXbyIhAPVRuAw8XAoa
	vckKgOvIGoa9Na5QWX8zLLrXyIYlzdjtrV63ZO0g0iaSI55ZUJ2mJreri0nOXvweQ
X-Google-Smtp-Source: 
 AA6agR4s964EREWdgxOqSgB/1o6ZLCSJq2jg4xI6IleJtdWuU4CFJVMM0uOeBLUnYD/xZiYX0Pw0HGrv
X-Received: from jebr.svl.corp.google.com
 ([2620:15c:2c5:13:2d6:e3e8:c25d:e72e])
 (user=jebr job=sendgmr) by 2002:a0d:ebc9:0:b0:31f:474a:4264 with SMTP id
 u192-20020a0debc9000000b0031f474a4264mr19630766ywe.269.1659982000128; Mon, 08
 Aug 2022 11:06:40 -0700 (PDT)
Date: Mon,  8 Aug 2022 11:06:25 -0700
Message-Id: <20220808180625.2094979-1-jebr@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.1.559.g78731f0fdb-goog
Subject: [meta-security][PATCH] meta-security: Add recipe for Glome
From: jebr@google.com
To: yocto@lists.yoctoproject.org
Cc: brandonkim@google.com, pkern@google.com, markusrudy@google.com,
	John Edward Broadbent <jebr@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 18:06:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57806

From: John Edward Broadbent <jebr@google.com>

Generic Low Overhead Message Exchange (GLOME) is a protocol providing
secure authentication and authorization for low dependency environments.

Signed-off-by: John Edward Broadbent <jebr@google.com>
---
 .../packagegroup-core-security.bb             |  1 +
 recipes-security/glome/glome_git.bb           | 25 +++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-security/glome/glome_git.bb

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index a12a4c2..c028c3d 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -31,6 +31,7 @@ RDEPENDS:packagegroup-security-utils = "\
     ding-libs \
     ecryptfs-utils \
     fscryptctl \
+    glome \
     keyutils \
     nmap \
     pinentry \
diff --git a/recipes-security/glome/glome_git.bb b/recipes-security/glome/glome_git.bb
new file mode 100644
index 0000000..5a2a114
--- /dev/null
+++ b/recipes-security/glome/glome_git.bb
@@ -0,0 +1,25 @@
+SUMMARY = "GLOME Login Client"
+HOME_PAGE = "https://github.com/google/glome"
+DESCRIPTION = "GLOME is used to authorize serial console access to Linux machines"
+PR = "r1"
+PV = "0.1+git${SRCPV}"
+
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
+
+inherit meson pkgconfig
+
+DEPENDS += "openssl"
+
+S = "${WORKDIR}/git"
+SRC_URI = "git://github.com/google/glome.git;branch=master;protocol=https"
+SRCREV = "978ad9fb165f1e382c875f2ce08a1fc4f2ddcf1b"
+
+FILES_${PN} += "${libdir}/security"
+
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[glome-cli] = "-Dglome-cli=true,-Dglome-cli=false"
+PACKAGECONFIG[pam-glome] = "-Dpam-glome=true,-Dpam-glome=false,libpam"
+
+EXTRA_OEMESON = "-Dtests=false"
+
-- 
2.37.1.559.g78731f0fdb-goog


