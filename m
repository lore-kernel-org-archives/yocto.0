Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15ADC25B0C
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 18:41:22 +0000 (UTC)
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com
 [209.85.128.201])
 by mx.groups.io with SMTP id smtpd.web11.2291.1659984074305159338
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 11:41:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=Q0cqWBs+;
 spf=pass (domain: flex--jebr.bounces.google.com, ip: 209.85.128.201,
 mailfrom:
 3yvjxygqkbv4fa7nckkcha.8kiuk8pkheopo.uk8pklnkfa8p.knc@flex--jebr.bounces.google.com)
Received: by mail-yw1-f201.google.com with SMTP id
 00721157ae682-329dc6c0d21so14926077b3.16
        for <yocto@lists.yoctoproject.org>;
 Mon, 08 Aug 2022 11:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=yiEdcExjA1hozg2+u2pk3ZeUrMw8evcgqreoY4j+6wA=;
        b=Q0cqWBs+CSE3yG3i6eAO7WCQqg9EGEc6uR8zRVXKIOVTjKzjmIH28/bjcncQaD72gC
         u3uBFgWnmZUgJyQJhRQqFnMIBguHofekhm7RrKP7qqXOjOseobJBHWU4e8dSWR914Za8
         AO6B+NS7Sgs1VwKUjYuC7xpxXFHhGLK9X/Z83UMUS+JLbchgbMtEm10cyNSGiEtW6Tft
         2K3i4k7/ApSZPCdO7iHCIG2Oz2dQ3YZ2atLygtybtpeo0+lxKQMJOroJIBCSMWZ4NtK3
         Dwoh4sRRiYcrrRH+eN41Q+GlkhTajHPQXa0PVEmq8CZjDQdTH+7nxzqy/6woxCgiLOl/
         QSSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=yiEdcExjA1hozg2+u2pk3ZeUrMw8evcgqreoY4j+6wA=;
        b=1BxLlVdUhPW78ksyJyMg97/lCF+rUZKxbe7rs/MTnT9zLyenRg5Syn+nR2jH0d286C
         7qWaoBMCiu6ab6mNFMNk3cOG3AoL+857DS6MQxFpt/uRuu4iQbt1xDPLJm3bwTNr+o0A
         tVxn7ipc9dPe+9XcLHU8ZNfVQY5aiVZY4WZaicWIwoPzdJ9rSxJhuJwp6oljgDTisWDi
         MuJakMsnVrwmFm5jFWnF8iWFNJ6zlwDNeL0+hJWxNhq+IqrGoXpRkogJ7goelu0WU2ey
         0WhvEoQbE9sjO/QeiMpQDZG0xf6AQCC1U/ZFVq9kuYDCX97O+YlFWHP38cvOcsG3vHGA
         Ho4w==
X-Gm-Message-State: ACgBeo3moaY4DaMYqeQne3Q3f/4LLAQZI8imM9Br2LN/ztQwXp7MQHrm
	7vB3VQRtlRTOW3aUGiG4g8TZpz75Ba1hyA30C+7PzcHiRBdl0lVThwydBs6DSY269ZfPX8eMm30
	gTON1SvdQlwk1afy1+hdoue6YXZOqDYoUCOOv6a+VsL+ca09AHfaXP6YDg3VCLqBQ
X-Google-Smtp-Source: 
 AA6agR7i2GJEiD8rjN4yUbc30hUh+DiQ8dU+OUPD3VqsFnbKTyQB+OU84+U2UO5cgyEydDFY2eOpqoMO
X-Received: from jebr.svl.corp.google.com
 ([2620:15c:2c5:13:2d6:e3e8:c25d:e72e])
 (user=jebr job=sendgmr) by 2002:a5b:a46:0:b0:66d:f778:94cf with SMTP id
 z6-20020a5b0a46000000b0066df77894cfmr17183611ybq.578.1659984073472; Mon, 08
 Aug 2022 11:41:13 -0700 (PDT)
Date: Mon,  8 Aug 2022 11:40:51 -0700
Message-Id: <20220808184051.2098828-1-jebr@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.1.559.g78731f0fdb-goog
Subject: [meta-security][PATCH V2] meta-security: Add recipe for Glome
From: jebr@google.com
To: yocto@lists.yoctoproject.org
Cc: brandonkim@google.com, pkern@google.com, markusrudy@google.com,
	John Edward Broadbent <jebr@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 18:41:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57808

From: John Edward Broadbent <jebr@google.com>

Generic Low Overhead Message Exchange (GLOME) is a protocol providing
secure authentication and authorization for low dependency environments.

Signed-off-by: John Edward Broadbent <jebr@google.com>
---
 .../packagegroup-core-security.bb             |  1 +
 recipes-security/glome/glome_git.bb           | 24 +++++++++++++++++++
 2 files changed, 25 insertions(+)
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
index 0000000..12d6d5f
--- /dev/null
+++ b/recipes-security/glome/glome_git.bb
@@ -0,0 +1,24 @@
+SUMMARY = "GLOME Login Client"
+HOME_PAGE = "https://github.com/google/glome"
+DESCRIPTION = "GLOME is used to authorize serial console access to Linux machines"
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
+FILES:${PN} += "${libdir}/security"
+
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[glome-cli] = "-Dglome-cli=true,-Dglome-cli=false"
+PACKAGECONFIG[pam-glome] = "-Dpam-glome=true,-Dpam-glome=false,libpam"
+
+EXTRA_OEMESON = "-Dtests=false"
+
-- 
2.37.1.559.g78731f0fdb-goog


