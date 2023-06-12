Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95022C7EE25
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 10:57:52 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.55816.1686567465262958790
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 03:57:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=h0Y/PVnF;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-565cdb77b01so43062127b3.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 03:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686567464; x=1689159464;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=r3rnNTdn0T/LAoBSIAUCh8o5MCqdfpP9obu3KetoRDA=;
        b=h0Y/PVnFpVylgSfLtoVvRtmTFb/4JVdjPkZ6ttNEITbKypUApnkeTPPfedG9SSfBn/
         tae6WuPSqmASty7wSF+DK940DuABfhJ4TN76G8rrdr6dKyaejpXrBuZyXR0QKH+d3fHE
         d/k5dsxFhmJ+mG8v6NaT4smO3iFkGU0totH1L4WTDfsNp1RxZDYnFXRUg1leZjaynyVo
         4I/3j9QXmSlDngPCJabpo4uf95+ueU7z03NwZHUdtHxhE4OF7PyxDF/ycFboZwKle4Ck
         2CUuiJpNkv5FWiyf3gYxiStX0V2AOg0Zl0/MMFRnFTex/kPya4sYTq9WHXfX1AWfFm7F
         dQjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686567464; x=1689159464;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r3rnNTdn0T/LAoBSIAUCh8o5MCqdfpP9obu3KetoRDA=;
        b=AUeB1QG7zA9OboWdMT6gZN3zMCirW0RIz2vA/NUWR8VhOtjecBUuZi+QBJ8h7k/nTL
         SqVmPqtmdLbMSt6S6lfqCJCUL03qleXgEhB6OGlp2wXK5dUYBYj4sATlpsI9OIZpolVa
         gjD/pkBo0rjwvkSoqOXd2Upbz4W7nEbF9d64X3vks2qcJ8ExRDf7ofMm2qrou/v/04Zh
         CLWuc6YjOnyOX10uBmRvU06iJ4ii/vV/rgNVUUtrXpxj9M1YaNpFLY5qRAj5/inR+R10
         L9ZjVyI+y2GXsXApZhbyr5mLuzwrbUu0fABOGqJpxkTryeKwuNjp95w4lAxapg6ODu5/
         1iSQ==
X-Gm-Message-State: AC+VfDzJLRvlEACc/k5Cu4+eapm8uYHKFHANMshba6GKChJMaqMQwz4D
	D+mhktl107xkeqcW76gDMH5+Ks11T78=
X-Google-Smtp-Source: ACHHUZ7hla/8h68VSMl1myUtrdLVqbWX6Zr9UgAeiRWrjrDNdn6lEs+d3mzIiGVtZna03ecvaAs7Zw==
X-Received: by 2002:a0d:d74c:0:b0:56d:2490:7cde with SMTP id z73-20020a0dd74c000000b0056d24907cdemr3129374ywd.50.1686567464127;
        Mon, 12 Jun 2023 03:57:44 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:a494:ce8b:aaa1:9573])
        by smtp.gmail.com with ESMTPSA id k1-20020a819301000000b00555c30ec361sm2419491ywg.143.2023.06.12.03.57.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 03:57:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: update to tip
Date: Mon, 12 Jun 2023 06:57:43 -0400
Message-Id: <20230612105743.38112-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 10:57:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60255

Make default

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../scap-security-guide_0.1.67.bb             | 37 +++++++++++++++++--
 1 file changed, 34 insertions(+), 3 deletions(-)

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.67.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.67.bb
index af1ddf7..53ee03e 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.67.bb
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.67.bb
@@ -1,8 +1,39 @@
+# Copyright (C) 2017 - 2023 Armin Kuster  <akuster808@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
 SUMARRY = "SCAP content for various platforms, upstream version"
+HOME_URL = "https://www.open-scap.org/security-policies/scap-security-guide/"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=9bfa86579213cb4c6adaffface6b2820"
+LICENSE = "BSD-3-Clause"
 
-SRCREV = "ee688320c4478ccb0d4dbefbfbd2f10df6261e17"
+SRCREV = "dad85502ce8da722a6afc391346c41cee61e90a9"
 SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=master;protocol=https"
 
-DEFAULT_PREFERENCE = "-1"
 
-require scap-security-guide.inc
+DEPENDS = "openscap-native python3-pyyaml-native python3-jinja2-native libxml2-native expat-native coreutils-native"
+
+S = "${WORKDIR}/git"
+
+inherit cmake pkgconfig python3native python3targetconfig
+
+STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
+export OSCAP_CPE_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe"
+export OSCAP_SCHEMA_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas"
+export OSCAP_XSLT_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl"
+
+OECMAKE_GENERATOR = "Unix Makefiles"
+
+EXTRA_OECMAKE += "-DENABLE_PYTHON_COVERAGE=OFF -DSSG_PRODUCT_DEFAULT=OFF -DSSG_PRODUCT_EXAMPLE=ON"
+
+B = "${S}/build"
+
+do_configure[depends] += "openscap-native:do_install"
+
+do_configure:prepend () {
+    sed -i -e 's:NAMES\ sed:NAMES\ ${HOSTTOOLS_DIR}/sed:g' ${S}/CMakeLists.txt
+    sed -i -e 's:NAMES\ grep:NAMES\ ${HOSTTOOLS_DIR}/grep:g' ${S}/CMakeLists.txt
+}
+
+FILES:${PN} += "${datadir}/xml"
+
+RDEPENDS:${PN} = "openscap"
-- 
2.25.1


