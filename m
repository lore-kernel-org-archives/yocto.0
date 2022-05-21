Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA78C433FE
	for <webhook@archiver.kernel.org>; Sat, 21 May 2022 18:56:52 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web08.8595.1653159403674301674
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 May 2022 11:56:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZMdHUtVQ;
 spf=pass (domain: gmail.com, ip: 209.85.210.172,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id y199so10318409pfb.9
        for <yocto@lists.yoctoproject.org>;
 Sat, 21 May 2022 11:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5C20xTjb52pccnp/dhBbIB1zgwnjDIYi3dRzc+QT030=;
        b=ZMdHUtVQSa7pwWgsidg72lI+rbJUvA+DEby2eGLtt/ntI+jJAN9VbgmjIgOXuWGAds
         9deJIuubyMgN/nZtLLNW628enDxjV37okyhgqo3Ca3S/ahsihljM73XzWLHCIcWxBHxY
         am2Dei/5W/oEnklzilu2FjVSDKG5w8I4cfoNIf2dGQ+WKaBYGi4JaBVW8oX83apseJuQ
         uUtAqItlPbLezBj4XHCSdMrEoMYQiGJZt4UCE+zOYgEYtg66ylj+qaz85JlE83rGWwhW
         ePSkE2jFaanppl7vJoKm24I2oRvBFDfcN53LbwrZslSvoBXbxZQ2c6Np1a49uDhqetB0
         cfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5C20xTjb52pccnp/dhBbIB1zgwnjDIYi3dRzc+QT030=;
        b=kiutCwZFs75COGDo6N8qKfImAZCMKqa0lglho05wjlsoWez1VqARs9li3oxjQNchpQ
         jaGxd+AN9ikbVX7ljBrAdqWyVcgAdynU3TEowiWBQOkDDvHHdMx4jGJL1onR11uUjsTy
         sMvSS+aC+xP1ny0lsNt7DaqSA3dZij3/1/+dJSrnTYXzBUFDiwnuNtz2iGELe2yGXqNq
         5KrJLaAO/gJQZRgZs4Xok0JGZym9ddcUGqGHn7fvJtfM0/QX2keHnET06KfqVROy2VAW
         5FIEYK0Dyd4jC9Y/gP1Ob3nGtWTAfmPTzyS5oWJbcUEgKa0H14/HHqTWBo3nEMMV5WND
         7K+A==
X-Gm-Message-State: AOAM53263TIxJP0oZBMhLF1ORqObWhFSGusu2vdz9Ncaa62ctN5NsTgd
	Fwbzk8kjtBbo1bjkooF+2x04Z4SHH7s=
X-Google-Smtp-Source: 
 ABdhPJynpsD6uuHHM/lt1jgYzWT+5teoI0GtfswU6534he5S5psxI9htQ57ue2QeMNv3Sc6YGByyZA==
X-Received: by 2002:a05:6a00:80b:b0:510:845d:ff60 with SMTP id
 m11-20020a056a00080b00b00510845dff60mr16332311pfk.76.1653159402637;
        Sat, 21 May 2022 11:56:42 -0700 (PDT)
Received: from keaua.T-mobile.com (c-98-207-193-87.hsd1.ca.comcast.net.
 [98.207.193.87])
        by smtp.gmail.com with ESMTPSA id
 s1-20020a170902ea0100b0015e8d4eb1c1sm1931300plg.11.2022.05.21.11.56.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 11:56:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][PATCH 1/3] meta-parsec: Add pkg grps
Date: Sat, 21 May 2022 11:56:38 -0700
Message-Id: <20220521185640.143194-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 21 May 2022 18:56:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57150

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup-security-parsec.bb           | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb

diff --git a/meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb b/meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb
new file mode 100644
index 0000000..a8affcd
--- /dev/null
+++ b/meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb
@@ -0,0 +1,26 @@
+DESCRIPTION = "Parsec Security packagegroup for Poky"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-security-parsec \
+    packagegroup-security-parsec-tpm2 \
+    "
+
+SUMMARY:packagegroup-security-parsec = "Security Parsec"
+RDEPENDS:packagegroup-security-parsec = "\
+    softhsm \
+    parsec-tool \
+    parsec-service \
+    "
+
+SUMMARY:packagegroup-security-parsec-tpm2 = "Parsec Security TPM 2.0 support"
+RDEPENDS:packagegroup-security-parsec-tpm2 = " \
+    tpm2-tools \
+    libtss2 \
+    tpm2-abrmd \
+    swtpm \
+    "
-- 
2.25.1


