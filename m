Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFC77C7EE2A
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:11 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web11.61673.1684354503970585963
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:15:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=ERmabsnS;
 spf=pass (domain: baylibre.com, ip: 209.85.160.182, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-3f507edcaaaso12755511cf.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354503; x=1686946503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dU1jC2lOeLWIMKDv/TEFIzWlCwbDadc9bpYojEepYDs=;
        b=ERmabsnScdPflR+uZUnDCklo/YCKf4RMD0cYrpfzgfZDLhovCiGUck7AZTRDXus6Os
         FQQvAeH2rP6chsdOjURXBTkXB8ogmQyccMRqoo0fwnlU5vrjbN7v7CeIrbJ4vomJAZl7
         DJZT6sQTNYwRtBIuwbvhy42hI5hwaLdcjDAw+3b8+xy/XkG5gmAXrXXEh0HYeOAUPfqT
         Jus8kW+lWoC8nkizuy4tk53PbvCisY5VcJwiDhUm5vc0a7wNalVC9p+p5EtME39vNCKa
         eU08N8MoTDmzkA3KDdOLrJ1u/S5ueVceUJwj//8feE399WSnyAMrhI68aes7YI0kxkbN
         CCiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354503; x=1686946503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dU1jC2lOeLWIMKDv/TEFIzWlCwbDadc9bpYojEepYDs=;
        b=Sjm3VzIMseGmqJ79Zyb01N1zJ4/5otgtWOreMklSzapjGtD2R6/pfht1/K/KnK2pbk
         +SgHToQGRO4781/2JMnwLT4Iok34oGrmnBXIQ++2rI0QnTDnRp/DqFY0tb6GjUJUMG0Z
         wBQKKecH2o2SHrDRr8FPDd122j7TB7lj0t2//855WebICqSoLH1fnkIpv4pwURCMXdWy
         w/njS1F/ER5Nox3Rfc4W+VuU9eSHy2jEFB1it5qkz0JEBNvEzijrDdvIaLN7eSFY/cJp
         syiCDqs9VZTO15fFED+DLVQu3U443DMM9Rv8P3u5KMVd3ILmNL33F77EJwjPBW+uzoEv
         zbAw==
X-Gm-Message-State: AC+VfDz5cdvd3/YAOqb92rNNsr6h7EKBmyCdBG59fMDiCkiCVufyJv3V
	gW+OFlDbh9kpJdVBxFzNPkEzbssf8aU4/dOBeDJ0pA==
X-Google-Smtp-Source: ACHHUZ6ers7LXIZJt4pw6l+6QWIc+nuRoiOh9pn76FZ1DJpAbWkgxRPX2yIgLWczvHKbXADil/QEzA==
X-Received: by 2002:a05:622a:15ca:b0:3f5:320e:8b14 with SMTP id d10-20020a05622a15ca00b003f5320e8b14mr1480530qty.52.1684354502904;
        Wed, 17 May 2023 13:15:02 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.15.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:15:02 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 10/11] python3-platformdirs: add recipe
Date: Wed, 17 May 2023 16:14:55 -0400
Message-Id: <20230517201456.1608917-11-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60057

python3-pylint requires python3-platformdirs, so copy it from
meta-python to avoid requiring that layer for patchtest.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-platformdirs/run-ptest     |  3 ++
 .../python/python3-platformdirs_3.5.1.bb      | 35 +++++++++++++++++++
 2 files changed, 38 insertions(+)
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-platformdirs/run-ptest
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-platformdirs_3.5.1.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-platformdirs/run-ptest b/meta-patchtest/recipes-devtools/python/python3-platformdirs/run-ptest
new file mode 100644
index 0000000..b63c4de
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-platformdirs/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+pytest -o log_cli=true -o log_cli_level=INFO | sed -e 's/\[...%\]//g'| sed -e 's/PASSED/PASS/g'| sed -e 's/FAILED/FAIL/g'|sed -e 's/SKIPPED/SKIP/g'| awk '{if ($NF=="PASS" || $NF=="FAIL" || $NF=="SKIP" || $NF=="XFAIL" || $NF=="XPASS"){printf "%s: %s\n", $NF, $0}else{print}}'| awk '{if ($NF=="PASS" || $NF=="FAIL" || $NF=="SKIP" || $NF=="XFAIL" || $NF=="XPASS") {$NF="";print $0}else{print}}'
diff --git a/meta-patchtest/recipes-devtools/python/python3-platformdirs_3.5.1.bb b/meta-patchtest/recipes-devtools/python/python3-platformdirs_3.5.1.bb
new file mode 100644
index 0000000..4fefe56
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-platformdirs_3.5.1.bb
@@ -0,0 +1,35 @@
+SUMMARY = "A small Python module for determining appropriate platform-specific dirs"
+HOMEPAGE = "https://github.com/platformdirs/platformdirs"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=ea4f5a41454746a9ed111e3d8723d17a"
+
+SRC_URI = " \
+    git://github.com/platformdirs/platformdirs.git;branch=main;protocol=https \
+    file://run-ptest \
+"
+
+SRCREV ?= "b8c42ddca4def1fba38b9815a7d94ec2ac630b29"
+SRC_URI[sha256sum] = "7954a68d0ba23558d753f73437c55f89027cf8f5108c19844d4b82e5af396335"
+
+inherit python_setuptools_build_meta ptest
+
+DEPENDS += " \
+    python3-hatch-vcs-native \
+    python3-setuptools-scm-native \
+    python3-toml-native \
+"
+
+S = "${WORKDIR}/git"
+
+RDEPENDS:${PN}-ptest += " \
+    ${PYTHON_PN}-appdirs \
+    ${PYTHON_PN}-pytest \
+    ${PYTHON_PN}-pytest-mock \
+"
+
+do_install_ptest() {
+        install -d ${D}${PTEST_PATH}/Tests
+        cp -rf ${S}/tests ${D}${PTEST_PATH}/
+}
+
+BBCLASSEXTEND = "native"
-- 
2.40.1


