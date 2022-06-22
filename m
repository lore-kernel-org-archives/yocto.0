Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCE49C433EF
	for <webhook@archiver.kernel.org>; Wed, 22 Jun 2022 13:51:32 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web11.7476.1655905889965888786
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jun 2022 06:51:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IYvyOX/p;
 spf=pass (domain: gmail.com, ip: 209.85.214.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id g8so15462772plt.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jun 2022 06:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rKYZUEMJ46a6qKC7AEiW5JZE9pw5sNDDwX21HaaO3Rw=;
        b=IYvyOX/pUILh06n6tqnbrzbS1MHv0vFrguJKupUEs/bQ9LbC4V6hM2cNekB7GhZvxz
         DpZ/N1zZoXhox/zYnttNyHw6T+I9rAIvwOgcs8gHtY1E8Dl6lGLCEkWeeySq6mXRxjAw
         oq7mR2fNXFSRzoSAaJOWCBWFAT15LfF527f5YhJiWc4f1XmIMHKQR4G66rb//+SR7urt
         WdyNeuLcODem/ivq5mIvAkXlnor3acUaS8YZSaYnB3oui31mbQZy4ld/X+uuYgoslzS7
         L/lF7+e6x8U5MCu42tZ/SramVSqgMsoQH8WTLuibkqszQLDMnv6wkPlKl9keMsBEFHj4
         w5+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rKYZUEMJ46a6qKC7AEiW5JZE9pw5sNDDwX21HaaO3Rw=;
        b=YJ+M0wgUaN+7BZBtSU/IdcDQcM+74+PwH/RRj7lnbnEpDBiCmT5ZDvl/7fj1Ay3WAJ
         eqcCBr9b7aGBNUeNf1JVQOLLBqpf+XeOcBOtdAieJXCmbdnfEYUW7aKHsEQyX/MQnXnE
         V0OJf8xKc6Lc+ehFwvaJExQh3MwxSXcB8We4Jg9fKtaOYVFGK1//jvB2D4QLFz7qE3gE
         w4cmD2bRt3OFQPpN1hmkY/2+f0SDhhbAODD24iNyqPBz4ATER07ubL8Eu4YNaVGD7Ymx
         EyrqYTMFOkdNkOGcFvgKgpgPxxLpd+xQ+DgLg1I2II3ibZNn9iOstZt7XZwt2KKxzE6u
         ilMA==
X-Gm-Message-State: AJIora8h/bgwz645SOgMjni/ZJPNkB5kZAh5rjf5HXbAAiOUn6t5dDWT
	ceHJXtZ7WYxDWtr3YtRUy4kzltuAoQ0=
X-Google-Smtp-Source: 
 AGRyM1sEn+8iia2GSRNl7v03qP/nxpu+3E17HPh4CWyUoPKVKOyZcG200fuz/OcKocTTAe/SGgMwVQ==
X-Received: by 2002:a17:90b:4f45:b0:1ec:d185:1cbd with SMTP id
 pj5-20020a17090b4f4500b001ecd1851cbdmr3901869pjb.168.1655905888912;
        Wed, 22 Jun 2022 06:51:28 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:1f14:600d:1ff8:5cb6])
        by smtp.gmail.com with ESMTPSA id
 e63-20020a621e42000000b0050dc762818csm13638203pfe.102.2022.06.22.06.51.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 06:51:28 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] chipsec: update to 1.8.5
Date: Wed, 22 Jun 2022 06:51:26 -0700
Message-Id: <20220622135127.19789-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jun 2022 13:51:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57372

minor recipe cleanup

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{chipsec_git.bb => chipsec_1.8.5.bb}      | 21 +++++++++----------
 1 file changed, 10 insertions(+), 11 deletions(-)
 rename recipes-security/chipsec/{chipsec_git.bb => chipsec_1.8.5.bb} (71%)

diff --git a/recipes-security/chipsec/chipsec_git.bb b/recipes-security/chipsec/chipsec_1.8.5.bb
similarity index 71%
rename from recipes-security/chipsec/chipsec_git.bb
rename to recipes-security/chipsec/chipsec_1.8.5.bb
index d6c3ff2..48dfe45 100644
--- a/recipes-security/chipsec/chipsec_git.bb
+++ b/recipes-security/chipsec/chipsec_1.8.5.bb
@@ -7,21 +7,17 @@ DESCRIPTION = "CHIPSEC is a framework for analyzing the security \
 LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=bc2d1f9b427be5fb63f6af9da56f7c5d"
 
-SRC_URI = "git://github.com/chipsec/chipsec.git;branch=master;protocol=https \
-          "
+DEPENDS = "virtual/kernel nasm-native"
 
-SRCREV = "b2a61684826dc8b9f622a844a40efea579cd7e7d"
-
-COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
+SRC_URI = "git://github.com/chipsec/chipsec.git;branch=main;protocol=https"
+SRCREV = "07a532aac9f6c3d94b8895cf89336b6a2e60c0d9"
 
 S = "${WORKDIR}/git"
-EXTRA_OEMAKE = "CC='${CC}' LDFLAGS='${LDFLAGS}' CFLAGS='${CFLAGS}'"
-
-DEPENDS = "virtual/kernel nasm-native python3-setuptools-native"
-RDEPENDS:${PN} += "python3 python3-modules"
 
 inherit module setuptools3
 
+EXTRA_OEMAKE = "CC='${CC}' LDFLAGS='${LDFLAGS}' CFLAGS='${CFLAGS}'"
+
 do_compile:append() {
 	cd ${S}/drivers/linux
 	oe_runmake  KSRC=${STAGING_KERNEL_BUILDDIR}
@@ -31,5 +27,8 @@ do_install:append() {
 	install -m 0644 ${S}/drivers/linux/chipsec.ko ${D}${PYTHON_SITEPACKAGES_DIR}/chipsec/helper/linux
 }
 
-FILES:${PN} += "${exec_prefix} \
-"
+COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
+
+FILES:${PN} += "${exec_prefix}"
+
+RDEPENDS:${PN} = "python3 python3-modules"
-- 
2.25.1


